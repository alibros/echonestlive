//
// ENNest.java
// echonestp5
// 
// The Echo Nest API Processing Wrapper
// http://the.echonest.com/
// Copyright (C) 2009 melka - Kamel Makhloufi
// http://melka.one.free.fr/blog/

// Includes code by Vlad Patryshev
// http://www.myjavatools.com/

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

package com.melka.echonest;

import java.lang.reflect.Method;
import com.melka.echonest.ENTrack.*;

import processing.core.*;

public class EchoNest extends Thread {

    @SuppressWarnings("unused")
	private boolean running;           // Is the thread running?  Yes or no?
    @SuppressWarnings("unused")
	private int wait;                  // How many milliseconds should we wait in between executions?
    @SuppressWarnings("unused")
	private String id;                 // Thread name
    @SuppressWarnings("unused")
	private int count;                 // counter
	
	// Echonest
	public String APIKey;
	public String fileName;
	public ENNest nest;
	public int analysis_version = 3;
	ENTrack track;
	ENBar[] bars;
	ENBeat[] beats;
	ENDuration duration;
	ENEndOfFadeIn endOfFadeIn;
	ENKey trackKey;
	ENLoudness loudness;
	ENMetadata metadata;
	ENMode mode;
	ENSection[] sections;
	ENSegment[] segments;
	ENStartOfFadeOut startOfFadeOut;
	ENTatum[] tatums;
	ENTempo tempo;
	ENTimeSignature timeSignature;
	
	PApplet p;
	
	Method dataLoaded;
	
	boolean loaded;
	
	/**
	 * Initializes the EchoNest thread for testing if the file exists on the
	 * server + downloading all the available data from the Echo Nest servers
	 * once upload and analysis are done.
	 */
	@SuppressWarnings("unchecked")
	public EchoNest(PApplet parent, String ApiKey, String FileName, int Version) {
		wait = 0;
        running = false;
        id = "nest";
        count = 0;
        
        APIKey = ApiKey;
        fileName = FileName;
        
        analysis_version = Version; 
        
        p = parent;
        p.registerDispose(this);
        
        try {
			Class[] args = new Class[1];
			args[0] = ENTrack.class;
            dataLoaded = p.getClass().getMethod("ENTrackLoaded",args);
		} catch (NoSuchMethodException e) {
			System.err.println("Method ENTrackLoaded(ENTrack track) not found");
		}
		
		nest = new ENNest();
		start();
	}
	
	public EchoNest(PApplet parent, String ApiKey, String FileName) {
		this(parent,ApiKey,FileName,3);
	}
	
	public EchoNest(PApplet parent, String ApiKey) {
		this(parent,ApiKey,null);
	}	
	
	public EchoNest(PApplet parent) {
		this(parent,null);
	}

	public void dispose() {
	    // Code in here will be executed when the parent applet shuts down
	    // (note: http://dev.processing.org/bugs/show_bug.cgi?id=183)
	}
	
	public void start() {
		running = true;
		super.start();
	}
	
	public void run() {
		nest.init(p, APIKey);
		nest.setAnalysisVersion(analysis_version);
		if (fileName!=null) {
			retrieveData(fileName);
		}
	}
	
	public void retrieveData(String file) {
		System.out.println(">> DOWNLOADING DATA");
		if (nest.uploadFile(file)) {
			track = nest.initTrack();
			track.setAnalysisVersion(analysis_version);
			bars = track.getBars(); beats = track.getBeats();
			duration = track.getDuration();
			endOfFadeIn = track.getEndOfFadeIn(); 
			trackKey = track.getKey();
			loudness = track.getLoudness();
			//metadata = track.getMetadata();
			mode = track.getMode(); 
			sections = track.getSections();
			segments = track.getSegments();
			startOfFadeOut = track.getStartOfFadeOut();
			tatums = track.getTatums();
			tempo = track.getTempo();
			timeSignature = track.getTimeSignature();
			loaded = true;
			if (dataLoaded != null) {
				try {
					dataLoaded.invoke(p, new Object[] {track});
				} catch (Exception ex) {
					System.err.println("Disabling ENTrackLoaded");
					ex.printStackTrace();
					dataLoaded = null;
				}
			}
		} else {
			System.err.println("*** ERROR, NO FILE ***");
		}		
	}
}
