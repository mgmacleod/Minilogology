{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 2,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 202.0, 222.0, 893.0, 360.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 72.0, 39.0, 56.0, 22.0 ],
					"text" : "generate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 134.0, 39.0, 31.0, 22.0 ],
					"text" : "bind"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 742.0, 145.0, 104.0, 22.0 ],
					"text" : "prepend incoming"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 742.0, 109.0, 45.0, 22.0 ],
					"text" : "zl.rot 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 721.0, 74.0, 92.5, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 501.0, 78.0, 207.0, 74.0 ],
					"text" : "< The KORG NRPN implementation is a little wrong. This little script \"standardizes\" the non-standard messages KORG is sending so that the 'nrpnin' object can parse them."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 401.0, 74.0, 96.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "fixKorgNrpn.js",
						"parameter_enable" : 0
					}
,
					"text" : "js fixKorgNrpn.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 401.0, 181.0, 104.0, 22.0 ],
					"text" : "prepend incoming"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 401.0, 145.0, 68.333333333333371, 22.0 ],
					"text" : "pack 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "int", "int" ],
					"patching_rect" : [ 401.0, 109.0, 93.0, 22.0 ],
					"saved_object_attributes" : 					{
						"hires" : 0
					}
,
					"text" : "nrpnin @hires 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 401.0, 39.0, 195.0, 22.0 ],
					"text" : "midiin \"minilogue xd KBD/KNOB\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 134.0, 202.0, 73.666666666666657, 22.0 ],
					"text" : "unpack 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 134.0, 165.0, 45.0, 22.0 ],
					"text" : "zl.rot 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 134.0, 246.0, 101.0, 22.0 ],
					"saved_object_attributes" : 					{
						"hires" : 0
					}
,
					"text" : "nrpnout @hires 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 276.0, 246.0, 82.0, 22.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 134.0, 308.0, 173.0, 22.0 ],
					"text" : "midiout \"minilogue xd SOUND\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 34.0, 39.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 134.0, 126.0, 182.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "minilogueXD_Tutorial_Part2.js",
						"parameter_enable" : 0
					}
,
					"text" : "js minilogueXD_Tutorial_Part2.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 411.0, 265.0, 907.0, 870.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 661.5, 625.0, 77.0, 20.0 ],
									"text" : "CI2 ASSIGN"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 661.5, 556.0, 77.0, 20.0 ],
									"text" : "CI1 ASSIGN"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 538.5, 453.0, 57.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "GATE TIME", "PORTAMENTO", "V.M DEPTH", "VCO1 PITCH", "VCO1 SHAPE", "VCO2 PITCH", "VCO2 SHAPE", "CROSS MOD", "MULTI SHAPE", "VCO1 LEVEL", "VCO2 LEVEL", "MULTI LEVEL", "CUTOFF", "RESONANCE", "A.EG ATTACK", "A.EG DECAY", "A.EG SUSTAIN", "A.EG RELEASE", "EG ATTACK", "EG DECAY", "EG INT", "LFO RATE", "LFO INT", "MOD FX SPEED", "MOD FX DEPTH", "REVERB TIME", "REVERB DEPTH", "DELAY TIME", "DELAY DEPTH" ],
											"parameter_longname" : "MULTI ROUTING[1]",
											"parameter_mmax" : 28,
											"parameter_shortname" : "M ROUTING",
											"parameter_type" : 2
										}

									}
,
									"varname" : "MULTI ROUTING[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 658.0, 731.0, 150.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-232",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 661.5, 485.0, 77.0, 20.0 ],
									"text" : "CI MODE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-229",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 434.0, 255.0, 57.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "ALL", "VCO1+2", "VCO2", "MULTI" ],
											"parameter_longname" : "LFO TARGET OSC",
											"parameter_mmax" : 3,
											"parameter_shortname" : "LT OSC",
											"parameter_type" : 2
										}

									}
,
									"varname" : "LFO TARGET OSC"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-230",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 434.0, 275.0, 56.0, 20.0 ],
									"text" : "LT OSC"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-226",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 154.0, 205.0, 74.0, 20.0 ],
									"text" : "M OCTAVE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 17.0, 45.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "PORTAMENTO",
											"parameter_shortname" : " PORTAMENTO",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "PORTAMENTO"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 589.5, 45.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "AMP EG ATTACK",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "AE ATTACK",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "AMP EG ATTACK"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 661.5, 45.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "AMP EG DECAY",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "AE DECAY",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "AMP EG DECAY"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 733.5, 45.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "AMP EG SUSTAIN",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "AE SUSTAIN",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "AMP EG SUSTAIN"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 805.5, 45.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "AMP EG RELEASE",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "AE RELEASE",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "AMP EG RELEASE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 589.5, 115.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "EG ATTACK",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "E ATTACK",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "EG ATTACK"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 661.5, 115.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "EG DECAY",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "E DECAY",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "EG DECAY"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 733.5, 115.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "EG INT",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "E INT",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "EG INT"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 802.0, 115.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "CUTOFF", "PITCH2", "PITCH" ],
											"parameter_longname" : "EG TARGET",
											"parameter_mmax" : 2,
											"parameter_shortname" : "E TARGET",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "EG TARGET"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 802.0, 135.0, 67.0, 20.0 ],
									"text" : "E TARGET"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 661.5, 185.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "LFO RATE",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "L RATE",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "LFO RATE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 733.5, 185.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "LFO INT",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "L INT",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "LFO INT"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 298.0, 255.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "MOD FX TIME",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "MF TIME",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "MOD FX TIME"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 370.0, 255.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "MOD FX DEPTH",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "MF DEPTH",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "MOD FX DEPTH"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 442.0, 185.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "MULTI LEVEL",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "M LEVEL",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "MULTI LEVEL"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 226.0, 45.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "VCO 1 PITCH",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "V1 PITCH",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "VCO 1 PITCH"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 226.0, 115.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "VCO 2 PITCH",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "V2 PITCH",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "VCO 2 PITCH"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 298.0, 45.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "VCO 1 SHAPE",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "V1 SHAPE",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "VCO 1 SHAPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 298.0, 115.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "VCO 2 SHAPE",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "V2 SHAPE",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "VCO 2 SHAPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 442.0, 45.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "VCO 1 LEVEL",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "V1 LEVEL",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "VCO 1 LEVEL"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 442.0, 115.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "VCO 2 LEVEL",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "V2 LEVEL",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "VCO 2 LEVEL"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 370.0, 115.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "CROSS MOD DEPTH",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "CM DEPTH",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "CROSS MOD DEPTH"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 517.5, 45.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "CUTOFF",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : " CUTOFF",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "CUTOFF"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 517.5, 115.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "RESONANCE",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : " RESONANCE",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "RESONANCE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 154.0, 45.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "16'", "8'", "4'", "2'" ],
											"parameter_longname" : "VCO 1 OCTAVE",
											"parameter_mmax" : 3,
											"parameter_shortname" : "V1 OCTAVE",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "VCO 1 OCTAVE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 154.0, 65.0, 74.0, 20.0 ],
									"text" : "V1 OCTAVE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 154.0, 115.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "16'", "8'", "4'", "2'" ],
											"parameter_longname" : "VCO 2 OCTAVE",
											"parameter_mmax" : 3,
											"parameter_shortname" : "V2 OCTAVE",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "VCO 2 OCTAVE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 154.0, 135.0, 74.0, 20.0 ],
									"text" : "V2 OCTAVE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 82.0, 45.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "SQR", "TRI", "SAW" ],
											"parameter_longname" : "VCO 1 WAVE",
											"parameter_mmax" : 2,
											"parameter_shortname" : "V1 WAVE",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "VCO 1 WAVE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 82.0, 65.0, 61.0, 20.0 ],
									"text" : "V1 WAVE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 82.0, 115.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "SQR", "TRI", "SAW" ],
											"parameter_longname" : "VCO 2 WAVE",
											"parameter_mmax" : 2,
											"parameter_shortname" : "V2 WAVE",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "VCO 2 WAVE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 82.0, 135.0, 61.0, 20.0 ],
									"text" : "V2 WAVE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 82.0, 185.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "NOISE", "VPM", "USER" ],
											"parameter_longname" : "MULTI TYPE",
											"parameter_mmax" : 2,
											"parameter_shortname" : "M TYPE",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "MULTI TYPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 82.0, 205.0, 53.0, 20.0 ],
									"text" : "M TYPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 298.0, 185.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "MULTI SHAPE",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "M SHAPE",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "MULTI SHAPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 802.0, 185.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "CUTOFF", "SHAPE", "PITCH" ],
											"parameter_longname" : "LFO TARGET",
											"parameter_mmax" : 2,
											"parameter_shortname" : "L TARGET",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "LFO TARGET"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 802.0, 205.0, 66.0, 20.0 ],
									"text" : "L TARGET"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 568.5, 185.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "SQR", "TRI", "SAW" ],
											"parameter_longname" : "LFO WAVE",
											"parameter_mmax" : 2,
											"parameter_shortname" : "L WAVE",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "LFO WAVE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 568.5, 205.0, 52.0, 20.0 ],
									"text" : "L WAVE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 618.5, 185.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "1-SHOT", "NORMAL", "BPM" ],
											"parameter_longname" : "LFO MODE",
											"parameter_mmax" : 2,
											"parameter_shortname" : "L MODE",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "LFO MODE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 618.5, 205.0, 54.0, 20.0 ],
									"text" : "L MODE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 17.0, 115.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "VOICE MODE DEPTH",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "VM DEPTH",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "VOICE MODE DEPTH"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 358.5, 45.0, 15.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "OFF", "ON" ],
											"parameter_longname" : "SYNC",
											"parameter_mmax" : 1,
											"parameter_shortname" : " SYNC",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "SYNC"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 358.5, 65.0, 45.0, 20.0 ],
									"text" : " SYNC"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 398.5, 45.0, 15.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "OFF", "ON" ],
											"parameter_longname" : "RING",
											"parameter_mmax" : 1,
											"parameter_shortname" : " RING",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "RING"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 398.5, 65.0, 42.0, 20.0 ],
									"text" : " RING"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-94",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 547.5, 185.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "0%", "50%", "100%" ],
											"parameter_longname" : "CUTOFF KEYTRACK",
											"parameter_mmax" : 2,
											"parameter_shortname" : "C KEYTRACK",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "CUTOFF KEYTRACK"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 547.5, 205.0, 57.0, 20.0 ],
									"text" : "KEYTRK"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-98",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 488.5, 185.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "0%", "50%", "100%" ],
											"parameter_longname" : "CUTOFF DRIVE",
											"parameter_mmax" : 2,
											"parameter_shortname" : "C DRIVE",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "CUTOFF DRIVE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-100",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 488.5, 205.0, 45.0, 20.0 ],
									"text" : "DRIVE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-102",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 154.0, 255.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "CHORUS", "ENSEMBLE", "PHASER", "FLANGER", "USER" ],
											"parameter_longname" : "MOD FX TYPE",
											"parameter_mmax" : 4,
											"parameter_shortname" : "MF TYPE",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "MOD FX TYPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 154.0, 275.0, 60.0, 20.0 ],
									"text" : "MF TYPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-106",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 154.0, 325.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "STEREO", "MONO", "PING PONG", "HIPASS", "TAPE", "ONE TAP", "STEREO BPM", "MONO BPM", "PING BPM", "HIPASS BPM", "TAPE BPM", "DOUBLING", "USER1", "USER2", "USER3", "USER4", "USER5", "USER6", "USER7", "USER8" ],
											"parameter_longname" : "DELAY SUB TYPE",
											"parameter_mmax" : 19,
											"parameter_shortname" : "DS TYPE",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "DELAY SUB TYPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-108",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 154.0, 345.0, 60.0, 20.0 ],
									"text" : "DS TYPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 154.0, 395.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "HALL", "SMOOTH", "ARENA", "PLATE", "ROOM", "EARLY REF", "SPACE", "RISER", "SUBMARINE", "HORROR", "USER1", "USER2", "USER3", "USER4", "USER5", "USER6", "USER7", "USER8" ],
											"parameter_longname" : "REVERB SUB TYPE",
											"parameter_mmax" : 17,
											"parameter_shortname" : "RS TYPE",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "REVERB SUB TYPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 154.0, 415.0, 60.0, 20.0 ],
									"text" : "RS TYPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 82.0, 255.0, 15.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "OFF", "ON" ],
											"parameter_longname" : "MOD FX ON-OFF",
											"parameter_mmax" : 1,
											"parameter_shortname" : "MF ON-OFF",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "MOD FX ON-OFF"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-116",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 82.0, 275.0, 75.0, 20.0 ],
									"text" : "MF ON-OFF"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-118",
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 82.0, 325.0, 15.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "OFF", "ON" ],
											"parameter_longname" : "DELAY ON-OFF",
											"parameter_mmax" : 1,
											"parameter_shortname" : "D ON-OFF",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "DELAY ON-OFF"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-120",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 82.0, 345.0, 66.0, 20.0 ],
									"text" : "D ON-OFF"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-122",
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 82.0, 395.0, 15.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "OFF", "ON" ],
											"parameter_longname" : "REVERB ON-OFF",
											"parameter_mmax" : 1,
											"parameter_shortname" : "R ON-OFF",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "REVERB ON-OFF"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 82.0, 415.0, 66.0, 20.0 ],
									"text" : "R ON-OFF"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-126",
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 226.0, 255.0, 15.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_longname" : "MOD FX SUB TYPE",
											"parameter_mmax" : 1,
											"parameter_shortname" : "MFS TYPE",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "MOD FX SUB TYPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-128",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 226.0, 275.0, 68.0, 20.0 ],
									"text" : "MFS TYPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-130",
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 226.0, 185.0, 15.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "off", "on" ],
											"parameter_longname" : "MULTI SUB TYPE SELECT",
											"parameter_mmax" : 1,
											"parameter_shortname" : "MST SELECT",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "MULTI SUB TYPE SELECT"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-132",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 226.0, 205.0, 84.0, 20.0 ],
									"text" : "MST SELECT"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-134",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 370.0, 185.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "MULTI SHIFT SHAPE",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "MS SHAPE",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "MULTI SHIFT SHAPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-136",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 298.0, 325.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "DELAY TIME",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "D TIME",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "DELAY TIME"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-138",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 370.0, 325.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "DELAY DEPTH",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "D DEPTH",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "DELAY DEPTH"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-140",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 226.0, 325.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "DELAY DRY WET",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "DD WET",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "DELAY DRY WET"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 298.0, 395.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "REVERB TIME",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "R TIME",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "REVERB TIME"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-144",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 370.0, 395.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "REVERB DEPTH",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "R DEPTH",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "REVERB DEPTH"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-146",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 226.0, 395.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "REVERB DRY WET",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "RD WET",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "REVERB DRY WET"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-148",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 13.5, 185.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "ARP LATCH", "ARP", "CHORD", "UNISON", "POLY" ],
											"parameter_longname" : "VOICE MODE TYPE",
											"parameter_mmax" : 4,
											"parameter_shortname" : "VM TYPE",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "VOICE MODE TYPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-150",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.5, 205.0, 61.0, 20.0 ],
									"text" : "VM TYPE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-152",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 805.5, 465.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "BEND RANGE (+)",
											"parameter_mmax" : 12.0,
											"parameter_shortname" : "BR (+)",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "BEND RANGE (+)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-154",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 877.5, 465.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "BEND RANGE (-)",
											"parameter_mmax" : 12.0,
											"parameter_shortname" : "BR (-)",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "BEND RANGE (-)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-156",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 805.5, 535.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "JOYSTICK ASSIGN (+)",
											"parameter_mmax" : 28.0,
											"parameter_shortname" : "JA (+)",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "JOYSTICK ASSIGN (+)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-158",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 884.5, 529.0, 27.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "JOYSTICK RANGE (+)",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_shortname" : "JR (+)",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"triangle" : 1,
									"varname" : "JOYSTICK RANGE (+)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-160",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 805.5, 605.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "JOYSTICK ASSIGN (-)",
											"parameter_mmax" : 28.0,
											"parameter_shortname" : "JA (-)",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "JOYSTICK ASSIGN (-)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-162",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 884.5, 599.0, 27.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "JOYSTICK RANGE (-)",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_shortname" : "JR (-)",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"triangle" : 1,
									"varname" : "JOYSTICK RANGE (-)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-164",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 661.5, 465.0, 77.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "Modulation", "CV/Gate(+)", "CV/Gate(-)" ],
											"parameter_longname" : "CV IN MODE",
											"parameter_mmax" : 2,
											"parameter_shortname" : "CI MODE",
											"parameter_type" : 2
										}

									}
,
									"varname" : "CV IN MODE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-166",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 661.5, 535.0, 57.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "GATE TIME", "PORTAMENTO", "V.M DEPTH", "VCO1 PITCH", "VCO1 SHAPE", "VCO2 PITCH", "VCO2 SHAPE", "CROSS MOD", "MULTI SHAPE", "VCO1 LEVEL", "VCO2 LEVEL", "MULTI LEVEL", "CUTOFF", "RESONANCE", "A.EG ATTACK", "A.EG DECAY", "A.EG SUSTAIN", "A.EG RELEASE", "EG ATTACK", "EG DECAY", "EG INT", "LFO RATE", "LFO INT", "MOD FX SPEED", "MOD FX DEPTH", "REVERB TIME", "REVERB DEPTH", "DELAY TIME", "DELAY DEPTH" ],
											"parameter_longname" : "CV IN 1 ASSIGN",
											"parameter_mmax" : 28,
											"parameter_shortname" : "CI1 ASSIGN",
											"parameter_type" : 2
										}

									}
,
									"varname" : "CV IN 1 ASSIGN"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-168",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 733.5, 529.0, 27.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "CV IN 1 RANGE",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_shortname" : "CI1 RANGE",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"triangle" : 1,
									"varname" : "CV IN 1 RANGE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-170",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 661.5, 605.0, 57.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "GATE TIME", "PORTAMENTO", "V.M DEPTH", "VCO1 PITCH", "VCO1 SHAPE", "VCO2 PITCH", "VCO2 SHAPE", "CROSS MOD", "MULTI SHAPE", "VCO1 LEVEL", "VCO2 LEVEL", "MULTI LEVEL", "CUTOFF", "RESONANCE", "A.EG ATTACK", "A.EG DECAY", "A.EG SUSTAIN", "A.EG RELEASE", "EG ATTACK", "EG DECAY", "EG INT", "LFO RATE", "LFO INT", "MOD FX SPEED", "MOD FX DEPTH", "REVERB TIME", "REVERB DEPTH", "DELAY TIME", "DELAY DEPTH" ],
											"parameter_longname" : "CV IN 2 ASSIGN",
											"parameter_mmax" : 28,
											"parameter_shortname" : "CI2 ASSIGN",
											"parameter_type" : 2
										}

									}
,
									"varname" : "CV IN 2 ASSIGN"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-172",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 733.5, 599.0, 27.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "CV IN 2 RANGE",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_shortname" : "CI2 RANGE",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"triangle" : 1,
									"varname" : "CV IN 2 RANGE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-174",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 10.0, 570.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "Equal Temp", "Pure Major", "Pure Minor", "Pythagorean", "Werckmeister", "Kirnburger", "Slendro", "Pelog", "Ionian", "Dorian", "Aeolian", "Major Penta", "Minor Penta", "Reverse", "AFX001", "AFX002", "AFX003", "AFX004", "AFX005", "AFX006", "DC001", "DC002", "DC003", "USER SCALE 1", "USER SCALE 2", "USER SCALE 3", "USER SCALE 4", "USER SCALE 5", "USER SCALE 6", "USER OCTAVE 1", "USER OCTAVE 2", "USER OCTAVE 3", "USER OCTAVE 4", "USER OCTAVE 5", "USER OCTAVE 6" ],
											"parameter_longname" : "MICRO TUNING",
											"parameter_mmax" : 34,
											"parameter_shortname" : "M TUNING",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "MICRO TUNING"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-176",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 590.0, 68.0, 20.0 ],
									"text" : "M TUNING"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-178",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 226.0, 710.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "SCALE KEY",
											"parameter_mmax" : 24.0,
											"parameter_shortname" : "S KEY",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "SCALE KEY"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-180",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 298.0, 710.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "PROGRAM TUNING",
											"parameter_mmax" : 100.0,
											"parameter_shortname" : "P TUNING",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "PROGRAM TUNING"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-182",
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 442.0, 325.0, 15.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "0", "1" ],
											"parameter_longname" : "LFO KEY SYNC",
											"parameter_mmax" : 1,
											"parameter_shortname" : "LK SYNC",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "LFO KEY SYNC"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-184",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 442.0, 345.0, 60.0, 20.0 ],
									"text" : "LK SYNC"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-186",
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 442.0, 395.0, 15.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "0", "1" ],
											"parameter_longname" : "LFO VOICE SYNC",
											"parameter_mmax" : 1,
											"parameter_shortname" : "LV SYNC",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "LFO VOICE SYNC"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-188",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 442.0, 415.0, 59.0, 20.0 ],
									"text" : "LV SYNC"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-192",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 442.0, 570.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "EG VELOCITY",
											"parameter_shortname" : "E VELOCITY",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "EG VELOCITY"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-194",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 514.0, 570.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "AMP VELOCITY",
											"parameter_shortname" : "A VELOCITY",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"varname" : "AMP VELOCITY"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-196",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 154.0, 185.0, 48.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "16'", "8'", "4'", "2'" ],
											"parameter_longname" : "MULTI OCTAVE",
											"parameter_mmax" : 3,
											"parameter_shortname" : "M OCTAVE",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "MULTI OCTAVE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-198",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 514.0, 500.0, 57.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "Pre-VCF", "Post-VCF" ],
											"parameter_longname" : "MULTI ROUTING",
											"parameter_mmax" : 1,
											"parameter_shortname" : "M ROUTING",
											"parameter_type" : 2
										}

									}
,
									"varname" : "MULTI ROUTING"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-200",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 514.0, 520.0, 77.0, 20.0 ],
									"text" : "M ROUTING"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-202",
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 877.5, 45.0, 15.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "0", "1" ],
											"parameter_longname" : "EG LEGATO",
											"parameter_mmax" : 1,
											"parameter_shortname" : "E LEGATO",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "EG LEGATO"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-204",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 877.5, 65.0, 67.0, 20.0 ],
									"text" : "E LEGATO"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-206",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 13.5, 255.0, 57.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "Auto", "On" ],
											"parameter_longname" : "PORTAMENTO MODE",
											"parameter_mmax" : 1,
											"parameter_shortname" : "P Mode",
											"parameter_type" : 2
										}

									}
,
									"varname" : "PORTAMENTO MODE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-208",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.5, 275.0, 56.0, 20.0 ],
									"text" : "P MODE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-210",
									"maxclass" : "live.toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 13.5, 325.0, 15.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "0", "1" ],
											"parameter_longname" : "PORTAMENTO BPM SYNC",
											"parameter_mmax" : 1,
											"parameter_shortname" : "PB SYNC",
											"parameter_type" : 2,
											"parameter_unitstyle" : 9
										}

									}
,
									"varname" : "PORTAMENTO BPM SYNC"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-212",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.5, 345.0, 61.0, 20.0 ],
									"text" : "PB SYNC"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-214",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 370.0, 634.0, 27.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "VPM PARAM 1 (Feedback)",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_shortname" : "VP1 (Feedback)",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"triangle" : 1,
									"varname" : "VPM PARAM 1 (Feedback)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-216",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 442.0, 634.0, 27.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "VPM PARAM 2 (Noise Depth)",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_shortname" : "VP2( Depth)",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"triangle" : 1,
									"varname" : "VPM PARAM 2 (Noise Depth)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-218",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 514.0, 634.0, 27.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "VPM PARAM 3 (Shape Mod Int)",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_shortname" : "VP3(M Int)",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"triangle" : 1,
									"varname" : "VPM PARAM 3 (Shape Mod Int)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-220",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 370.0, 704.0, 27.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "VPM PARAM 4 (Mod Attack)",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_shortname" : "VP4( Attack)",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"triangle" : 1,
									"varname" : "VPM PARAM 4 (Mod Attack)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-222",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 442.0, 704.0, 27.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "VPM PARAM 5 (Mod Decay)",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_shortname" : "VP5( Decay)",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"triangle" : 1,
									"varname" : "VPM PARAM 5 (Mod Decay)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-224",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 514.0, 704.0, 27.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "VPM PARAM 6 (Mod Key Track)",
											"parameter_mmax" : 100.0,
											"parameter_mmin" : -100.0,
											"parameter_shortname" : "VP6(K Track)",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"triangle" : 1,
									"varname" : "VPM PARAM 6 (Mod Key Track)"
								}

							}
 ],
						"lines" : [  ],
						"boxgroups" : [ 							{
								"boxes" : [ "obj-96", "obj-94", "obj-48", "obj-98", "obj-46", "obj-100" ]
							}
, 							{
								"boxes" : [ "obj-74", "obj-72", "obj-20", "obj-16", "obj-18", "obj-24", "obj-6", "obj-8", "obj-10", "obj-14", "obj-22", "obj-80", "obj-82", "obj-4", "obj-12", "obj-76", "obj-78", "obj-204", "obj-202" ]
							}
, 							{
								"boxes" : [ "obj-2", "obj-84", "obj-148", "obj-150", "obj-208", "obj-206", "obj-212", "obj-210" ]
							}
, 							{
								"boxes" : [ "obj-28", "obj-26", "obj-136", "obj-138", "obj-128", "obj-140", "obj-142", "obj-144", "obj-146", "obj-126", "obj-104", "obj-108", "obj-102", "obj-106", "obj-110", "obj-112", "obj-116", "obj-120", "obj-124", "obj-114", "obj-118", "obj-122" ]
							}
, 							{
								"boxes" : [ "obj-30", "obj-70", "obj-38", "obj-42", "obj-44", "obj-34", "obj-56", "obj-54", "obj-32", "obj-36", "obj-40", "obj-52", "obj-60", "obj-64", "obj-88", "obj-92", "obj-62", "obj-66", "obj-68", "obj-50", "obj-58", "obj-86", "obj-90", "obj-134", "obj-132", "obj-130", "obj-196", "obj-226" ]
							}
, 							{
								"boxes" : [ "obj-152", "obj-156", "obj-154", "obj-158", "obj-160", "obj-162" ]
							}
, 							{
								"boxes" : [ "obj-188", "obj-184", "obj-182", "obj-186", "obj-230", "obj-229" ]
							}
, 							{
								"boxes" : [ "obj-172", "obj-168", "obj-164", "obj-166", "obj-170", "obj-232" ]
							}
 ]
					}
,
					"patching_rect" : [ 276.0, 39.0, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p View"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 2 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 2 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 410.5, 66.0, 730.5, 66.0 ],
					"order" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"order" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-15", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"midpoints" : [ 751.5, 227.0, 360.0, 227.0, 360.0, 119.0, 306.5, 119.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"source" : [ "obj-20", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 410.5, 219.0, 374.0, 219.0, 374.0, 106.0, 143.5, 106.0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-21::obj-10" : [ "AMP EG RELEASE", "AE RELEASE", 0 ],
			"obj-21::obj-102" : [ "MOD FX TYPE", "MF TYPE", 0 ],
			"obj-21::obj-106" : [ "DELAY SUB TYPE", "DS TYPE", 0 ],
			"obj-21::obj-110" : [ "REVERB SUB TYPE", "RS TYPE", 0 ],
			"obj-21::obj-114" : [ "MOD FX ON-OFF", "MF ON-OFF", 0 ],
			"obj-21::obj-118" : [ "DELAY ON-OFF", "D ON-OFF", 0 ],
			"obj-21::obj-12" : [ "EG ATTACK", "E ATTACK", 0 ],
			"obj-21::obj-122" : [ "REVERB ON-OFF", "R ON-OFF", 0 ],
			"obj-21::obj-126" : [ "MOD FX SUB TYPE", "MFS TYPE", 0 ],
			"obj-21::obj-130" : [ "MULTI SUB TYPE SELECT", "MST SELECT", 0 ],
			"obj-21::obj-134" : [ "MULTI SHIFT SHAPE", "MS SHAPE", 0 ],
			"obj-21::obj-136" : [ "DELAY TIME", "D TIME", 0 ],
			"obj-21::obj-138" : [ "DELAY DEPTH", "D DEPTH", 0 ],
			"obj-21::obj-14" : [ "EG DECAY", "E DECAY", 0 ],
			"obj-21::obj-140" : [ "DELAY DRY WET", "DD WET", 0 ],
			"obj-21::obj-142" : [ "REVERB TIME", "R TIME", 0 ],
			"obj-21::obj-144" : [ "REVERB DEPTH", "R DEPTH", 0 ],
			"obj-21::obj-146" : [ "REVERB DRY WET", "RD WET", 0 ],
			"obj-21::obj-148" : [ "VOICE MODE TYPE", "VM TYPE", 0 ],
			"obj-21::obj-152" : [ "BEND RANGE (+)", "BR (+)", 0 ],
			"obj-21::obj-154" : [ "BEND RANGE (-)", "BR (-)", 0 ],
			"obj-21::obj-156" : [ "JOYSTICK ASSIGN (+)", "JA (+)", 0 ],
			"obj-21::obj-158" : [ "JOYSTICK RANGE (+)", "JR (+)", 0 ],
			"obj-21::obj-16" : [ "EG INT", "E INT", 0 ],
			"obj-21::obj-160" : [ "JOYSTICK ASSIGN (-)", "JA (-)", 0 ],
			"obj-21::obj-162" : [ "JOYSTICK RANGE (-)", "JR (-)", 0 ],
			"obj-21::obj-164" : [ "CV IN MODE", "CI MODE", 0 ],
			"obj-21::obj-166" : [ "CV IN 1 ASSIGN", "CI1 ASSIGN", 0 ],
			"obj-21::obj-168" : [ "CV IN 1 RANGE", "CI1 RANGE", 0 ],
			"obj-21::obj-170" : [ "CV IN 2 ASSIGN", "CI2 ASSIGN", 0 ],
			"obj-21::obj-172" : [ "CV IN 2 RANGE", "CI2 RANGE", 0 ],
			"obj-21::obj-174" : [ "MICRO TUNING", "M TUNING", 0 ],
			"obj-21::obj-178" : [ "SCALE KEY", "S KEY", 0 ],
			"obj-21::obj-18" : [ "EG TARGET", "E TARGET", 0 ],
			"obj-21::obj-180" : [ "PROGRAM TUNING", "P TUNING", 0 ],
			"obj-21::obj-182" : [ "LFO KEY SYNC", "LK SYNC", 0 ],
			"obj-21::obj-186" : [ "LFO VOICE SYNC", "LV SYNC", 0 ],
			"obj-21::obj-192" : [ "EG VELOCITY", "E VELOCITY", 0 ],
			"obj-21::obj-194" : [ "AMP VELOCITY", "A VELOCITY", 0 ],
			"obj-21::obj-196" : [ "MULTI OCTAVE", "M OCTAVE", 0 ],
			"obj-21::obj-198" : [ "MULTI ROUTING", "M ROUTING", 0 ],
			"obj-21::obj-2" : [ "PORTAMENTO", " PORTAMENTO", 0 ],
			"obj-21::obj-202" : [ "EG LEGATO", "E LEGATO", 0 ],
			"obj-21::obj-206" : [ "PORTAMENTO MODE", "P Mode", 0 ],
			"obj-21::obj-210" : [ "PORTAMENTO BPM SYNC", "PB SYNC", 0 ],
			"obj-21::obj-214" : [ "VPM PARAM 1 (Feedback)", "VP1 (Feedback)", 0 ],
			"obj-21::obj-216" : [ "VPM PARAM 2 (Noise Depth)", "VP2( Depth)", 0 ],
			"obj-21::obj-218" : [ "VPM PARAM 3 (Shape Mod Int)", "VP3(M Int)", 0 ],
			"obj-21::obj-22" : [ "LFO RATE", "L RATE", 0 ],
			"obj-21::obj-220" : [ "VPM PARAM 4 (Mod Attack)", "VP4( Attack)", 0 ],
			"obj-21::obj-222" : [ "VPM PARAM 5 (Mod Decay)", "VP5( Decay)", 0 ],
			"obj-21::obj-224" : [ "VPM PARAM 6 (Mod Key Track)", "VP6(K Track)", 0 ],
			"obj-21::obj-229" : [ "LFO TARGET OSC", "LT OSC", 0 ],
			"obj-21::obj-24" : [ "LFO INT", "L INT", 0 ],
			"obj-21::obj-26" : [ "MOD FX TIME", "MF TIME", 0 ],
			"obj-21::obj-28" : [ "MOD FX DEPTH", "MF DEPTH", 0 ],
			"obj-21::obj-30" : [ "MULTI LEVEL", "M LEVEL", 0 ],
			"obj-21::obj-32" : [ "VCO 1 PITCH", "V1 PITCH", 0 ],
			"obj-21::obj-34" : [ "VCO 2 PITCH", "V2 PITCH", 0 ],
			"obj-21::obj-36" : [ "VCO 1 SHAPE", "V1 SHAPE", 0 ],
			"obj-21::obj-38" : [ "VCO 2 SHAPE", "V2 SHAPE", 0 ],
			"obj-21::obj-4" : [ "AMP EG ATTACK", "AE ATTACK", 0 ],
			"obj-21::obj-40" : [ "VCO 1 LEVEL", "V1 LEVEL", 0 ],
			"obj-21::obj-42" : [ "VCO 2 LEVEL", "V2 LEVEL", 0 ],
			"obj-21::obj-44" : [ "CROSS MOD DEPTH", "CM DEPTH", 0 ],
			"obj-21::obj-46" : [ "CUTOFF", " CUTOFF", 0 ],
			"obj-21::obj-48" : [ "RESONANCE", " RESONANCE", 0 ],
			"obj-21::obj-5" : [ "MULTI ROUTING[1]", "M ROUTING", 0 ],
			"obj-21::obj-50" : [ "VCO 1 OCTAVE", "V1 OCTAVE", 0 ],
			"obj-21::obj-54" : [ "VCO 2 OCTAVE", "V2 OCTAVE", 0 ],
			"obj-21::obj-58" : [ "VCO 1 WAVE", "V1 WAVE", 0 ],
			"obj-21::obj-6" : [ "AMP EG DECAY", "AE DECAY", 0 ],
			"obj-21::obj-62" : [ "VCO 2 WAVE", "V2 WAVE", 0 ],
			"obj-21::obj-66" : [ "MULTI TYPE", "M TYPE", 0 ],
			"obj-21::obj-70" : [ "MULTI SHAPE", "M SHAPE", 0 ],
			"obj-21::obj-72" : [ "LFO TARGET", "L TARGET", 0 ],
			"obj-21::obj-76" : [ "LFO WAVE", "L WAVE", 0 ],
			"obj-21::obj-8" : [ "AMP EG SUSTAIN", "AE SUSTAIN", 0 ],
			"obj-21::obj-80" : [ "LFO MODE", "L MODE", 0 ],
			"obj-21::obj-84" : [ "VOICE MODE DEPTH", "VM DEPTH", 0 ],
			"obj-21::obj-86" : [ "SYNC", " SYNC", 0 ],
			"obj-21::obj-90" : [ "RING", " RING", 0 ],
			"obj-21::obj-94" : [ "CUTOFF KEYTRACK", "C KEYTRACK", 0 ],
			"obj-21::obj-98" : [ "CUTOFF DRIVE", "C DRIVE", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "minilogueXD_Tutorial_Part2.js",
				"bootpath" : "~/Documents/Cycling74/minilogueTutorial/2_minilogueXD_Tutorial_Part2",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "fixKorgNrpn.js",
				"bootpath" : "~/Documents/Cycling74/minilogueTutorial/2_minilogueXD_Tutorial_Part2",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
