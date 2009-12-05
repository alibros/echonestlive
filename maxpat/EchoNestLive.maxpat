{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 69.0, 836.0, 527.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 69.0, 836.0, 527.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 9.0,
		"default_fontface" : 0,
		"default_fontname" : "Monaco",
		"gridonopen" : 0,
		"gridsize" : [ 10.0, 10.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Random Playback",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 709.0, 47.0, 54.0, 29.0 ],
					"presentation" : 1,
					"id" : "obj-62",
					"fontname" : "Arial Bold",
					"presentation_rect" : [ 261.0, 107.0, 55.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 695.0, 83.0, 29.0, 29.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-57",
					"presentation_rect" : [ 314.0, 107.0, 43.0, 43.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "setrandom $1",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 695.0, 168.0, 75.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-52",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t false",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 739.0, 141.0, 48.0, 19.0 ],
					"outlettype" : [ "false" ],
					"id" : "obj-49",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t true",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 695.0, 142.0, 43.0, 19.0 ],
					"outlettype" : [ "true" ],
					"id" : "obj-47",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1 0",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"patching_rect" : [ 695.0, 116.0, 48.0, 19.0 ],
					"outlettype" : [ "bang", "bang", "" ],
					"id" : "obj-46",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s toENL",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 163.0, 296.0, 48.0, 19.0 ],
					"id" : "obj-45",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s toENL",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 46.0, 296.0, 48.0, 19.0 ],
					"id" : "obj-39",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s toENL",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 274.0, 175.0, 48.0, 19.0 ],
					"id" : "obj-35",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r toENL",
					"numinlets" : 0,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 472.0, 20.0, 48.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-14",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s toENL",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 204.0, 458.0, 48.0, 19.0 ],
					"id" : "obj-8",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Volume",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 163.0, 113.0, 48.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-34",
					"fontname" : "Arial Bold",
					"presentation_rect" : [ 367.0, 7.0, 72.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "% 12",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 46.0, 249.0, 33.0, 18.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-11",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"patching_rect" : [ 46.0, 179.0, 84.0, 53.0 ],
					"range" : 12,
					"presentation" : 1,
					"outlettype" : [ "int", "int" ],
					"id" : "obj-1",
					"presentation_rect" : [ 266.0, 29.0, 84.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Enable",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 274.0, 29.0, 50.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-33",
					"fontname" : "Arial Bold",
					"presentation_rect" : [ 24.0, 6.0, 46.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pitch",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 46.0, 153.0, 34.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-7",
					"fontname" : "Arial Bold",
					"presentation_rect" : [ 268.0, 7.0, 55.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Drop .mp3",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 204.0, 366.0, 70.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-28",
					"fontname" : "Arial Bold",
					"presentation_rect" : [ 106.0, 79.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"types" : [  ],
					"numoutlets" : 2,
					"patching_rect" : [ 204.0, 388.0, 163.0, 42.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-32",
					"border" : 4.0,
					"presentation_rect" : [ 106.0, 100.0, 135.0, 41.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Drop .wav",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 26.0, 366.0, 68.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-15",
					"fontname" : "Arial Bold",
					"presentation_rect" : [ 106.0, 7.0, 68.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "transport",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 9,
					"patching_rect" : [ 274.0, 107.0, 127.0, 18.0 ],
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
					"id" : "obj-40",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 274.0, 54.0, 55.0, 18.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-37",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 4n @quantize 64n @autostart 1 @autostarttime 0",
					"linecount" : 2,
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 274.0, 75.0, 158.0, 29.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-36",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 242.0, 56.0, 29.0, 29.0 ],
					"presentation" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-30",
					"presentation_rect" : [ 24.0, 53.0, 43.0, 43.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 274.0, 153.0, 32.5, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "loadFile $1",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 204.0, 435.0, 62.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-16",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "stripnote",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 25.0, 106.0, 53.0, 18.0 ],
					"outlettype" : [ "int", "int" ],
					"id" : "obj-27",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 25.0, 81.0, 62.0, 18.0 ],
					"outlettype" : [ "int", "int" ],
					"id" : "obj-26",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "% 12",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 25.0, 129.0, 33.0, 18.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-25",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiparse",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 7,
					"patching_rect" : [ 25.0, 53.0, 100.0, 18.0 ],
					"outlettype" : [ "", "", "", "int", "int", "int", "int" ],
					"id" : "obj-13",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiin",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 25.0, 30.0, 40.0, 18.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-12",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "filterBeatsByPitch $1",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 46.0, 278.0, 111.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"numinlets" : 2,
					"listmode" : 1,
					"size" : 60.0,
					"numoutlets" : 2,
					"patching_rect" : [ 163.0, 139.0, 72.0, 132.0 ],
					"presentation" : 1,
					"floatoutput" : 1,
					"outlettype" : [ "", "" ],
					"min" : -60,
					"id" : "obj-54",
					"presentation_rect" : [ 367.0, 27.0, 72.0, 124.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "filterBeatsByVolume $1 $2",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 163.0, 278.0, 135.0, 16.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-51",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print duration",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 569.0, 69.0, 75.0, 18.0 ],
					"id" : "obj-48",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "nextBeat",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 288.0, 131.0, 53.0, 16.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-24",
					"fontname" : "Arial Bold",
					"presentation_rect" : [ 20.0, 133.0, 53.0, 16.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj com.mtn.echonestlive.m4l.TrackAnalyzer",
					"numinlets" : 2,
					"bgcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 10.0,
					"color" : [ 0.537255, 0.537255, 0.537255, 1.0 ],
					"numoutlets" : 2,
					"patching_rect" : [ 472.0, 41.0, 226.0, 18.0 ],
					"outlettype" : [ "", "" ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-3",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 26.0, 468.0, 33.0, 18.0 ],
					"id" : "obj-17",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0. 0.",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 472.0, 69.0, 68.0, 18.0 ],
					"outlettype" : [ "float", "float" ],
					"id" : "obj-22",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "duration",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"patching_rect" : [ 410.0, 449.0, 61.0, 19.0 ],
					"hidden" : 1,
					"id" : "obj-5",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"types" : [  ],
					"numoutlets" : 2,
					"patching_rect" : [ 26.0, 388.0, 163.0, 42.0 ],
					"presentation" : 1,
					"outlettype" : [ "", "" ],
					"id" : "obj-10",
					"border" : 4.0,
					"presentation_rect" : [ 106.0, 27.0, 135.0, 37.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend read",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 26.0, 435.0, 73.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-18",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patching_rect" : [ 471.0, 192.0, 38.0, 19.0 ],
					"outlettype" : [ "signal", "bang" ],
					"id" : "obj-19",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 0. 0. 0.",
					"numinlets" : 3,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 472.0, 145.0, 75.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-64",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1000.",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 528.0, 92.0, 48.0, 19.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-61",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1000.",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 472.0, 93.0, 48.0, 19.0 ],
					"outlettype" : [ "float" ],
					"id" : "obj-60",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 500.0, 120.0, 32.5, 19.0 ],
					"outlettype" : [ "int" ],
					"id" : "obj-59",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "$1, $2 $3",
					"numinlets" : 2,
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"patching_rect" : [ 472.0, 169.0, 59.0, 17.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-58",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "play~ ---pitchTest 2",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patching_rect" : [ 471.0, 217.0, 117.0, 19.0 ],
					"outlettype" : [ "signal", "signal" ],
					"id" : "obj-20",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "buffer~ ---pitchTest",
					"numinlets" : 1,
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"patching_rect" : [ 73.0, 468.0, 117.0, 19.0 ],
					"outlettype" : [ "float", "bang" ],
					"id" : "obj-21",
					"fontname" : "Monaco"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Device vertical limit",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 410.0, 426.0, 117.0, 18.0 ],
					"hidden" : 1,
					"id" : "obj-9",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "plugout~",
					"numinlets" : 2,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 471.0, 245.0, 53.0, 18.0 ],
					"outlettype" : [ "signal", "signal" ],
					"id" : "obj-2",
					"fontname" : "Arial Bold"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 351.0, 368.0, 154.0 ],
					"presentation" : 1,
					"id" : "obj-63",
					"presentation_rect" : [ 6.0, 5.0, 84.0, 155.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 453.0, 9.0, 347.0, 334.0 ],
					"presentation" : 1,
					"id" : "obj-66",
					"presentation_rect" : [ 94.0, 5.0, 160.0, 155.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 9.0, 433.0, 334.0 ],
					"presentation" : 1,
					"id" : "obj-65",
					"presentation_rect" : [ 258.0, 5.0, 191.0, 155.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 271.5, 55.5, 271.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 35.5, 462.5, 82.5, 462.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-64", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-64", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-59", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 251.5, 147.0, 283.5, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [ 481.5, 64.0, 578.5, 64.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 1 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [ 704.5, 192.0, 794.0, 192.0, 794.0, 31.0, 688.5, 31.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
