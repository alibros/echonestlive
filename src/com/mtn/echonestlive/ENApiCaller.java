package com.mtn.echonestlive;

import processing.core.*;
import com.melka.echonest.*;


public class ENApiCaller extends processing.core.PApplet
{
	EchoNest nest;
	ENTrack track;
	boolean loaded = false;
	boolean wait = false;
	float startTime, endTime;
	int s =0;
	PFont font;
	String waitPoints = "";
	IENLoadListener loader;
	
	public void subscribeLoadListener(IENLoadListener loader)
	{
		this.loader = loader;
		init();
	}
	
	public void setup()
	{
		System.out.println("Started ENApiCaller");
	  	init();
	}
	
	public void loadFile(String filePath)
	{
		System.out.println("ENApiCaller - Processing " + filePath);
		new EchoNest(this,"3D09PRFOZMPFJD1YX",filePath);
	}

	public void draw() {
		  background(255);
		  if(wait)
		  {}
		  else if (loaded) {
			  loader.TracksLoaded();
			  wait = true;
		  } else {
		    fill(0);
		    if (millis()/1000 >= s+1) {
		      s++;
		      waitPoints += ".";
		    }
		  }
	}
	
	public void ENTrackLoaded(ENTrack track) {
		  this.track = track;
		  loaded = true;
		}
	
	public ENTrack getTrack(int index)
	{
		return track;
	}
}