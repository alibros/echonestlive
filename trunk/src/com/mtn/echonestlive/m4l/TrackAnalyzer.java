package com.mtn.echonestlive.m4l;

import java.util.ArrayList;
import com.cycling74.max.*;
import com.melka.echonest.*;
import com.mtn.echonestlive.ENApiCaller;
import com.mtn.echonestlive.IENLoadListener;

public class TrackAnalyzer extends MaxObject implements IENLoadListener
{
	ENApiCaller e;
	ENTrack track;
	int curSampleIndex = 0;
	double beatDuration = 0;
	boolean enableRandom = false;
	ArrayList<ENTrack.ENSegment> validSegments;
	ArrayList<ENTrack.ENBeat> validBeats;
	double beatDurationMultiplier = 1;
	int key;
	int mode;
	private int pitchStart;
	private int pitchEnd;
	private double minVol;
	private double maxVol;
	private boolean filterByPitch = false;
	private boolean filterByVolume = false;

	public TrackAnalyzer(Atom[] args) 
	{
		declareInlets(new int[]{ DataTypes.ALL, DataTypes.ALL}); 
		declareOutlets(new int[]{ DataTypes.ALL});
	}
	
	public void setRandom(Atom[] args)
	{
		enableRandom = (boolean)Boolean.valueOf(args[0].getString());
	}
	
	/*
	 * Loads the specified file and subscribes this to the ApiCaller.  "TracksLoaded()" is called when the API analysis is complete.
	 */
	public void loadFile(Atom[] args)
	{
		String filePath = args[0].toString();
		e = new ENApiCaller();
		e.subscribeLoadListener(this);
		e.loadFile(filePath);
	}
	
	/*
	 * Sets a multiplier to extend the duration of each beat that is sent to the buffer
	 */
	public void setDurationMultiplier(Atom[] args)
	{
		beatDurationMultiplier  = args[0].toDouble();
	}
	
	/*
	 * Retrieves the next beat of the track and sends the time & duration to the Max buffer
	 */
	public void nextBeat()
	{
		if(validBeats.isEmpty())
		{	
			post("ValidBeats is empty");
			curSampleIndex = 0;
			return;
		}
		if(enableRandom)
			sendSample(validBeats.get((int)(Math.random() * validBeats.size())).time, beatDuration * beatDurationMultiplier);
		else
			sendSample(validBeats.get(curSampleIndex).time, beatDuration* beatDurationMultiplier);
		if(curSampleIndex >= validBeats.size())
			curSampleIndex = 0;
		return;
	}
	
	/*
	 * Receives a 
	 */
	public void filterBeatsByVolume(Atom[] args)
	{
		post("starting filterBeatsByVolume");
		if(args.length != 2)
		{
			bail("Received invalid number of arguments to loadBeatsByVolume.  Expected 2, received " + args.length);
			return;
		}
		
		this.filterByVolume = true;
		this.minVol = args[0].getFloat();
		this.maxVol = args[1].getFloat();
		
		loadValidBeats();
		post("received: " + validBeats.size() + " beats after filtering by volume");
	}
	
	/*
	 * Sets the pitch start and end index and calls loadValidBeats()
	 */
	public void filterBeatsByPitch(Atom[] args)
	{
		post("starting filterBeatsByPitch");
		if(args.length != 1)
		{
			bail("Received invalid number of arguments to loadBeatsByPitch.  Expected 1, received " + args.length);
			return;
		}
		
		this.filterByPitch = true;
		int pitchStartIndex = args[0].getInt();
		int pitchEndIndex =0;
		//Handle C Major
		switch(pitchStartIndex)
		{
		//C
		case 0: pitchStartIndex = 0;
				pitchEndIndex = 1;
				break;
		//C#
		case 1: pitchStartIndex = 0;
				pitchEndIndex = 1;
				break;		
		//D
		case 2: pitchStartIndex = 2;
				pitchEndIndex = 3;
				break;		
		//D#
		case 3: pitchStartIndex = 2;
				pitchEndIndex = 3;
				break;		
		//E
		case 4: pitchStartIndex = 4;
				pitchEndIndex = 4;
				break;		
		//F
		case 5: pitchStartIndex = 5;
				pitchEndIndex = 6;
				break;		
		//F#
		case 6: pitchStartIndex = 5;
				pitchEndIndex = 6;
				break;		
		//G
		case 7: pitchStartIndex = 7;
				pitchEndIndex = 8;
				break;		
		//G#
		case 8: pitchStartIndex = 7;
				pitchEndIndex = 8;
				break;		
		//A
		case 9: pitchStartIndex = 9;
				pitchEndIndex = 10;
				break;		
		//A#
		case 10: pitchStartIndex = 9;
				 pitchEndIndex = 10;
				 break;
		//B
		case 11: 	pitchStartIndex = 11;
		 			pitchEndIndex = 11;
		 			break;
		}
		
		this.pitchStart = pitchStartIndex;
		this.pitchEnd = pitchEndIndex;
				
		loadValidBeats();
		post("received: " + validBeats.size() + " beats by pitches: [" + pitchStartIndex + "-" + pitchEndIndex + "]");
	}
	
	/*
	public void loadSegmentsByVolume(Atom[] args)
	{
		post("starting list function");
		if(args.length != 3)
		{
			bail("Received invalid number of arguments to inlet 1.  Expected 3, received " + args.length);
			return;
		}
		
		int trackNum = args[0].getInt();
		float minVol = args[1].getFloat();
		float maxVol = args[2].getFloat();
		
		post("received: " + trackNum + ", " + minVol + ", " + maxVol);
		
		loadSegmentsByLoudness(trackNum, minVol, maxVol);
	}
	*/
	
	private void loadValidBeats()
	{
		int avgPitch = -1;
		double avgVolume = 0;
		validBeats = new ArrayList<ENTrack.ENBeat>();
		
		for(int i =10;i<track.beats.length;i++)
		{	
			avgPitch = getAvgPitchOfBeat(track.beats[i]);
			avgVolume = getAvgVolumeOfBeat(track.beats[i]);

			//Only filter by pitch if it's been set
			if((!filterByPitch) || ((avgPitch >= pitchStart && avgPitch <= pitchEnd) && avgPitch >= 0) )
				//Only filter by volume if it's been set
				if((!filterByVolume) || (avgVolume <= 0 && avgVolume > minVol && avgVolume < maxVol))
					validBeats.add(track.beats[i]);
		}
		
		curSampleIndex = 0;
	}
	
	private double getAvgVolumeOfBeat(ENTrack.ENBeat beat)
	{
		double start = beat.time;
		double end = beat.time + beatDuration;
		int numSegments = 0;
		ArrayList<Double> volumes = new ArrayList<Double>();
		
		
		for(int i=0;i < track.segments.length;i++)
		{
			if(track.segments[i].start >= start && track.segments[i].duration  + track.segments[i].start <= end)
			{
				numSegments++;
				volumes.add(Double.valueOf(track.segments[i].averageLoudness.loudness));
			}
			
		}
		
		if(numSegments == 0)
			return 1; //no segments found
		
		double totalVolume = 0;
		for(int i=0;i<volumes.size();i++)
		{
			totalVolume += volumes.get(i);
		}
		return totalVolume / (double)numSegments;
	}
	
	private int getAvgPitchOfBeat(ENTrack.ENBeat beat)
	{
		double start = beat.time;
		double end = beat.time + beatDuration;
		ArrayList<double[]> validSegmentsByTime = new ArrayList<double[]>();
		ENTrack.ENSegment curSegment;
		
		//collect all segments valid by time
		for(int i=0;i < track.segments.length;i++)
		{
			curSegment = track.segments[i];
			if(curSegment.start >= start && curSegment.start <= end)
			{
				
				//add together all individual pitches
				double[] singleSegment = new double[12];
				//Add 12 pitches to array
				for(int j =0; j<12;j++)
					singleSegment[j] = curSegment.pitches[j];
				
				validSegmentsByTime.add(singleSegment);		
			}
		}
		
		//post("# of valid segments in beat, " + validSegmentsByTime.size());
		
		if(validSegmentsByTime.size() == 0)
			return -1; //no valid segments
		
		double[] totalPitches = new double[12];
		for(int i=0;i<validSegmentsByTime.size();i++)
		{
			for(int j=0;j<12;j++)
				totalPitches[j]+=validSegmentsByTime.get(i)[j];
		}
		
		double maxPitch = 0;
		double curAvgPitch = 0;
		int maxPitchIndex = 0;
		for(int j=0;j<12;j++)
		{
			curAvgPitch=totalPitches[j] / (double)validSegmentsByTime.size();
			if(curAvgPitch > maxPitch)
			{	
				maxPitch = curAvgPitch;
				maxPitchIndex = j;
			}
			
			//post("avg for " + j + " is " + totalPitches[j]);
		}
		
		return maxPitchIndex;
	}
	
	//Sends the time information of a single segment out to max
	public void sendSample(double start, double duration)
	{
		outlet(0, new Atom[]{Atom.newAtom(start),  Atom.newAtom(duration)});
		curSampleIndex++;
	}
	
	//Method called by the ApiCaller when the track has been loaded
	public void TracksLoaded() {
		//Do stuff
		track = e.getTrack(0);
		beatDuration = 1 / (track.tempo.tempo / 60); //in seconds
		key = track.getKey().key;
		mode = track.getMode().mode;
	}
	
	
	
	
	
	
}
