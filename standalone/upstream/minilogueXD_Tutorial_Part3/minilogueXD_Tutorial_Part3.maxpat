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
		"rect" : [ 111.0, 104.0, 1041.0, 457.0 ],
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
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 832.0, 515.0, 640.0, 480.0 ],
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
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 132.0, 217.0, 150.0, 20.0 ],
									"text" : "loadsyx [fname]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 97.0, 212.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 97.0, 176.0, 97.0, 22.0 ],
									"text" : "prepend loadsyx"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 97.0, 138.0, 93.0, 22.0 ],
									"text" : "opendialog Midi"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 97.0, 97.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 97.0, 48.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 271.5, 136.0, 59.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p loadsyx"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 144.0, 515.0, 640.0, 480.0 ],
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
									"id" : "obj-8",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 235.0, 63.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 235.0, 15.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 273.0, 272.0, 150.0, 20.0 ],
									"text" : "savesyx [fname]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 235.0, 267.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 258.0, 181.0, 86.0, 22.0 ],
									"text" : "prepend name"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 258.0, 148.5, 55.0, 22.0 ],
									"text" : "strippath"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 124.0, 52.0, 97.0, 35.0 ],
									"text" : "loadmess name Untitled.syx"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "bang" ],
									"patching_rect" : [ 235.0, 112.5, 91.0, 22.0 ],
									"text" : "savedialog Midi"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 235.0, 229.5, 99.0, 22.0 ],
									"text" : "prepend savesyx"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"midpoints" : [ 267.5, 211.0, 386.0, 211.0, 386.0, 101.0, 244.5, 101.0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 0,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"order" : 1,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"midpoints" : [ 133.5, 100.5, 244.5, 100.5 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 205.0, 136.0, 62.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p savesyx"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-33",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 74.0, 202.5, 83.0, 47.0 ],
					"text" : "test request/sysex format"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 57.666666666666629, 94.0, 87.0, 20.0 ],
					"text" : "recompile/bind"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-28",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 25.0, 92.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 134.0, 43.0, 64.0, 22.0 ],
					"text" : "sel 0 1 2 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 134.0, 12.0, 49.0, 22.0 ],
					"text" : "r #0ops"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.0, 215.0, 45.0, 22.0 ],
					"text" : "testreq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
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
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 12,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 249.0, 202.0, 134.5, 22.0 ],
									"text" : "funnel 12 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 249.0, 241.0, 39.0, 22.0 ],
									"text" : "$2 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 249.0, 274.0, 67.0, 22.0 ],
									"text" : "unpack 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 249.0, 135.0, 63.0, 22.0 ],
									"text" : "prepend 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 12,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 249.0, 169.0, 134.5, 22.0 ],
									"text" : "spray 12"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 249.0, 100.0, 40.0, 22.0 ],
									"text" : "atoi"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 158.0, 101.0, 22.0 ],
									"saved_object_attributes" : 									{
										"hires" : 0
									}
,
									"text" : "nrpnout @hires 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-35",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 249.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-36",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 364.413025000000005, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 11 ],
									"source" : [ "obj-24", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 10 ],
									"source" : [ "obj-24", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 9 ],
									"source" : [ "obj-24", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 8 ],
									"source" : [ "obj-24", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 7 ],
									"source" : [ "obj-24", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 6 ],
									"source" : [ "obj-24", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 5 ],
									"source" : [ "obj-24", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 4 ],
									"source" : [ "obj-24", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 3 ],
									"source" : [ "obj-24", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 2 ],
									"source" : [ "obj-24", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 1 ],
									"source" : [ "obj-24", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 2 ],
									"source" : [ "obj-28", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 292.0, 74.0, 101.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p testPatchName"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 292.0, 44.0, 69.0, 22.0 ],
					"text" : "\"f00bAr 21\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 167.0, 136.0, 35.0, 22.0 ],
					"text" : "push"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 823.0, 78.0, 79.0, 22.0 ],
					"text" : "prepend recv"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 823.0, 39.0, 193.0, 22.0 ],
					"text" : "sysexin \"minilogue xd KBD/KNOB\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 134.0, 136.0, 29.5, 22.0 ],
					"text" : "req"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.0, 136.0, 31.0, 22.0 ],
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
					"patching_rect" : [ 720.0, 149.0, 104.0, 22.0 ],
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
					"patching_rect" : [ 720.0, 113.0, 45.0, 22.0 ],
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
					"patching_rect" : [ 699.0, 78.0, 92.5, 22.0 ],
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
					"patching_rect" : [ 134.0, 344.0, 73.666666666666657, 22.0 ],
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
					"patching_rect" : [ 134.0, 307.0, 45.0, 22.0 ],
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
					"patching_rect" : [ 134.0, 381.0, 101.0, 22.0 ],
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
					"patching_rect" : [ 260.0, 381.0, 82.0, 22.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 134.0, 418.0, 173.0, 22.0 ],
					"text" : "midiout \"minilogue xd SOUND\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 134.0, 268.0, 313.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "minilogueXD_Tutorial_Part3.js",
						"parameter_enable" : 0
					}
,
					"text" : "js minilogueXD_Tutorial_Part3.js"
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
						"rect" : [ 114.0, 652.0, 1185.0, 477.0 ],
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1155.0, 214.0, 92.0, 22.0 ],
									"text" : "send #0ops"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 1155.0, 177.5, 51.0, 22.0 ],
									"text" : "funnel 4"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.831372549019608, 0.827450980392157, 0.827450980392157, 1.0 ],
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-57",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"outputmode" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1053.0, 148.0, 100.0, 20.0 ],
									"text" : "Restore .syx File",
									"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.831372549019608, 0.827450980392157, 0.827450980392157, 1.0 ],
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-55",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"outputmode" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1053.0, 123.0, 100.0, 20.0 ],
									"text" : "Save .syx File",
									"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.831372549019608, 0.827450980392157, 0.827450980392157, 1.0 ],
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-53",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"outputmode" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1053.0, 83.0, 100.0, 20.0 ],
									"text" : "Transmit Edit Buffer",
									"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.831372549019608, 0.827450980392157, 0.827450980392157, 1.0 ],
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-51",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"outputmode" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1053.0, 58.0, 100.0, 20.0 ],
									"text" : "Request Edit Buffer",
									"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 168.0, 400.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "PROGRAM LEVEL",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -18.0,
											"parameter_shortname" : "PRG LVL",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "PROGRAM LEVEL"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-43",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 692.0, 416.0, 63.0, 30.0 ],
									"text" : "JOYSTICK ASSIGN (-)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-35",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 692.0, 347.0, 63.0, 30.0 ],
									"text" : "JOYSTICK ASSIGN (+)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana Bold",
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1019.0, 177.5, 112.0, 21.0 ],
									"text" : "program name:"
								}

							}
, 							{
								"box" : 								{
									"autoscroll" : 0,
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"clickmode" : 1,
									"fontface" : 1,
									"fontname" : "Lato Bold",
									"fontsize" : 14.0,
									"id" : "obj-11",
									"keymode" : 1,
									"lines" : 1,
									"maxclass" : "textedit",
									"nosymquotes" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "int", "", "" ],
									"outputmode" : 1,
									"parameter_enable" : 0,
									"patching_rect" : [ 1019.0, 200.5, 134.0, 24.5 ],
									"rounded" : 2.0,
									"text" : "Init Program",
									"textcolor" : [ 0.129, 0.129, 0.129, 1.0 ],
									"textjustification" : 2,
									"varname" : "PROGRAM NAME LABEL"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana Bold",
									"id" : "obj-47",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1057.0, 9.0, 96.0, 36.0 ],
									"text" : "korg\nminilogue xd"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 16.0, 376.0, 129.0, 18.0 ],
									"text" : "Poly",
									"varname" : "VOICE MODE DEPTH LABEL"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana Bold",
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 237.0, 103.0, 21.0 ],
									"text" : "tuning & level"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana Bold",
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 16.0, 237.0, 98.0, 21.0 ],
									"text" : "porta & voice"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana Bold",
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1007.0, 237.0, 89.0, 21.0 ],
									"text" : "vpm control"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana Bold",
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 948.5, 9.0, 61.0, 21.0 ],
									"text" : "lfo xtd"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana Bold",
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 693.0, 237.0, 116.0, 21.0 ],
									"text" : "external control"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana Bold",
									"id" : "obj-17",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 313.5, 237.0, 61.0, 21.0 ],
									"text" : "effects"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana Bold",
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 577.5, 9.0, 61.0, 21.0 ],
									"text" : "eg & lfo"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana Bold",
									"id" : "obj-13",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 444.5, 9.0, 41.0, 21.0 ],
									"text" : "filter"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Verdana Bold",
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 9.0, 78.0, 21.0 ],
									"text" : "oscillators"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-1",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 249.0, 394.0, 57.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "Program Transpose",
											"parameter_mmax" : 12.0,
											"parameter_mmin" : -12.0,
											"parameter_shortname" : "TRANSPOSE",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"triangle" : 1,
									"varname" : "Program Transpose"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-9",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 835.5, 416.0, 63.0, 30.0 ],
									"text" : "CV IN 2 ASSIGN"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-7",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 835.5, 347.0, 63.0, 30.0 ],
									"text" : "CV IN 1 ASSIGN"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-232",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 835.5, 276.0, 66.0, 18.0 ],
									"text" : "CI MODE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-229",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 950.5, 32.0, 57.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-230",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 950.5, 48.0, 52.0, 30.0 ],
									"text" : "LFO TGT OSC"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-226",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 87.0, 188.0, 64.0, 30.0 ],
									"text" : "MULTI OCTAVE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-2",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 16.0, 260.0, 68.125, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-4",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 577.5, 32.0, 52.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-6",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 649.5, 32.0, 52.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-8",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 721.5, 32.0, 52.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-10",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 790.0, 32.0, 52.5, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-12",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 577.5, 102.0, 52.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-14",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 649.5, 102.0, 52.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-16",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 721.5, 102.0, 52.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-18",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 790.0, 102.0, 56.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-20",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 790.0, 118.0, 35.0, 18.0 ],
									"text" : "E TGT"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-22",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 649.5, 172.0, 52.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "LFO RATE",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "LFO RATE",
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
									"fontname" : "Lato",
									"id" : "obj-24",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 721.5, 172.0, 52.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "LFO INT",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "LFO INT",
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
									"fontname" : "Lato",
									"id" : "obj-26",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 559.0, 260.0, 48.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "MOD FX TIME",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "MOD TIME",
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
									"fontname" : "Lato",
									"id" : "obj-28",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 625.0, 260.0, 51.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "MOD FX DEPTH",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "MOD DPTH",
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
									"fontname" : "Lato",
									"id" : "obj-30",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 374.0, 172.0, 41.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-32",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 173.0, 32.0, 41.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-34",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 173.0, 102.0, 41.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-36",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 236.0, 32.0, 50.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-38",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 236.0, 102.0, 50.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-40",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 374.0, 32.0, 41.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-42",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 374.0, 102.0, 41.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-44",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 302.0, 102.0, 50.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "CROSS MOD DEPTH",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "XM DEPTH",
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
									"fontname" : "Lato",
									"id" : "obj-46",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 482.0, 32.0, 41.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-48",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 472.0, 102.0, 60.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-50",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 87.0, 32.0, 48.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-52",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 87.0, 48.0, 62.0, 18.0 ],
									"text" : "V1 OCTAVE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-54",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 87.0, 102.0, 48.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-56",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 87.0, 118.0, 62.0, 18.0 ],
									"text" : "V2 OCTAVE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-58",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 15.0, 32.0, 48.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-60",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 48.0, 52.0, 18.0 ],
									"text" : "V1 WAVE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-62",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 15.0, 102.0, 48.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-64",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 118.0, 52.0, 18.0 ],
									"text" : "V2 WAVE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-66",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 15.0, 159.0, 48.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-68",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 174.0, 59.0, 17.0 ],
									"text" : "MULTI TYPE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-70",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 236.0, 172.0, 50.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-72",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 790.0, 172.0, 56.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-74",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 790.0, 188.0, 48.0, 18.0 ],
									"text" : "LFO TGT"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-76",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 577.5, 159.0, 60.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-78",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 577.5, 174.0, 53.0, 17.0 ],
									"text" : "LFO WAVE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-80",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 577.5, 190.5, 61.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-82",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 577.5, 205.5, 55.0, 17.0 ],
									"text" : "LFO MODE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-84",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 16.0, 324.0, 64.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "VOICE MODE DEPTH",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "VMODE DPTH",
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
									"patching_rect" : [ 296.5, 32.0, 15.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-88",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 284.5, 48.0, 37.0, 18.0 ],
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
									"patching_rect" : [ 336.5, 32.0, 15.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-92",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 326.0, 48.0, 35.0, 18.0 ],
									"text" : " RING"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-94",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 503.5, 172.0, 48.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-96",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 503.5, 188.0, 46.0, 18.0 ],
									"text" : "KEYTRK"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-98",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 444.5, 172.0, 48.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-100",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 444.5, 188.0, 38.0, 18.0 ],
									"text" : "DRIVE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-102",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 390.0, 260.0, 78.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-104",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 390.0, 276.0, 60.0, 18.0 ],
									"text" : "MOD TYPE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-106",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 390.0, 330.0, 78.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-108",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 390.0, 346.0, 53.0, 18.0 ],
									"text" : "DEL TYPE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-110",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 390.0, 400.0, 78.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-112",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 390.0, 416.0, 53.0, 18.0 ],
									"text" : "REV TYPE"
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
									"patching_rect" : [ 343.5, 260.0, 15.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-116",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 314.5, 276.0, 75.0, 18.0 ],
									"text" : "MOD ON-OFF"
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
									"patching_rect" : [ 343.5, 330.0, 15.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-120",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 316.5, 346.0, 68.0, 18.0 ],
									"text" : "DEL ON-OFF"
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
									"patching_rect" : [ 343.5, 400.0, 15.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-124",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 316.5, 416.0, 68.0, 18.0 ],
									"text" : "REV ON-OFF"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-126",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 471.0, 260.0, 83.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "STEREO", "LIGHT", "DEEP", "TRIPHASE", "HARMONIC", "MONO", "FEEDBACK", "VIBRATO" ],
											"parameter_invisible" : 1,
											"parameter_longname" : "MOD FX SUB TYPE",
											"parameter_mmax" : 7,
											"parameter_shortname" : "MF STYPE",
											"parameter_type" : 2
										}

									}
,
									"varname" : "MOD FX SUB TYPE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-128",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 471.0, 276.0, 76.0, 30.0 ],
									"text" : "MOD \nSUBTYPE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-130",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 15.0, 190.5, 57.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "HIGH", "LOW", "PEAK", "DECIM" ],
											"parameter_invisible" : 1,
											"parameter_longname" : "MULTI SUB TYPE SELECT",
											"parameter_mmax" : 3,
											"parameter_shortname" : "MULTI STYPE",
											"parameter_type" : 2
										}

									}
,
									"varname" : "MULTI SUB TYPE SELECT"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 9.0,
									"id" : "obj-132",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 205.5, 47.0, 17.0 ],
									"text" : "SUBTYPE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-134",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 302.0, 172.0, 50.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "MULTI SHIFT SHAPE",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "M S-SHAPE",
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
									"fontname" : "Lato",
									"id" : "obj-136",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 561.0, 330.0, 44.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "DELAY TIME",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "DEL TIME",
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
									"fontname" : "Lato",
									"id" : "obj-138",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 625.0, 330.0, 51.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "DELAY DEPTH",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "DEL DPTH",
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
									"fontname" : "Lato",
									"id" : "obj-140",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 488.5, 330.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "DELAY DRY WET",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "DEL WET",
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
									"fontname" : "Lato",
									"id" : "obj-142",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 561.0, 400.0, 44.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "REVERB TIME",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "REV TIME",
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
									"fontname" : "Lato",
									"id" : "obj-144",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 625.0, 400.0, 51.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "REVERB DEPTH",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "REV DPTH",
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
									"fontname" : "Lato",
									"id" : "obj-146",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 488.5, 400.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "REVERB DRY WET",
											"parameter_mmax" : 1023.0,
											"parameter_shortname" : "REV WET",
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
									"fontname" : "Lato",
									"id" : "obj-148",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 17.875, 400.0, 66.25, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-150",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.875, 415.5, 89.0, 30.0 ],
									"text" : "VOICE \nMODE TYPE"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-152",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 692.0, 260.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "BEND RANGE (+)",
											"parameter_mmax" : 12.0,
											"parameter_shortname" : "BEND (+)",
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
									"fontname" : "Lato",
									"id" : "obj-154",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 764.0, 260.0, 41.0, 48.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "BEND RANGE (-)",
											"parameter_mmax" : 12.0,
											"parameter_shortname" : "BEND (-)",
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
									"fontname" : "Lato",
									"id" : "obj-156",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 692.0, 330.0, 90.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "GATE TIME", "PORTAMENTO", "V.M DEPTH", "VCO1 PITCH", "VCO1 SHAPE", "VCO2 PITCH", "VCO2 SHAPE", "CROSS MOD", "MULTI SHAPE", "VCO1 LEVEL", "VCO2 LEVEL", "MULTI LEVEL", "CUTOFF", "RESONANCE", "A.EG ATTACK", "A.EG DECAY", "A.EG SUSTAIN", "A.EG RELEASE", "EG ATTACK", "EG DECAY", "EG INT", "LFO RATE", "LFO INT", "MOD FX SPEED", "MOD FX DEPTH", "REVERB TIME", "REVERB DEPTH", "DELAY TIME", "DELAY DEPTH" ],
											"parameter_longname" : "JOYSTICK ASSIGN (+)",
											"parameter_mmax" : 28,
											"parameter_shortname" : "JA (+)",
											"parameter_type" : 2
										}

									}
,
									"varname" : "JOYSTICK ASSIGN (+)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-158",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 794.0, 324.0, 27.0, 54.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-160",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 692.0, 400.0, 90.0, 15.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_enum" : [ "GATE TIME", "PORTAMENTO", "V.M DEPTH", "VCO1 PITCH", "VCO1 SHAPE", "VCO2 PITCH", "VCO2 SHAPE", "CROSS MOD", "MULTI SHAPE", "VCO1 LEVEL", "VCO2 LEVEL", "MULTI LEVEL", "CUTOFF", "RESONANCE", "A.EG ATTACK", "A.EG DECAY", "A.EG SUSTAIN", "A.EG RELEASE", "EG ATTACK", "EG DECAY", "EG INT", "LFO RATE", "LFO INT", "MOD FX SPEED", "MOD FX DEPTH", "REVERB TIME", "REVERB DEPTH", "DELAY TIME", "DELAY DEPTH" ],
											"parameter_longname" : "JOYSTICK ASSIGN (-)",
											"parameter_mmax" : 28,
											"parameter_shortname" : "JA (-)",
											"parameter_type" : 2
										}

									}
,
									"varname" : "JOYSTICK ASSIGN (-)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-162",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 794.0, 394.0, 27.0, 54.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-164",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 835.5, 260.0, 90.0, 15.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-166",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 835.5, 330.0, 90.0, 15.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-168",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 931.5, 324.0, 54.0, 54.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-170",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 835.5, 400.0, 90.0, 15.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-172",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 931.5, 394.0, 54.0, 54.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-174",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 168.0, 260.0, 87.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-176",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 168.0, 276.0, 82.0, 18.0 ],
									"text" : "MICRO TUNING"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-178",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 249.0, 260.0, 57.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "SCALE KEY",
											"parameter_mmax" : 12.0,
											"parameter_mmin" : -12.0,
											"parameter_shortname" : "SCL KEY",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"triangle" : 1,
									"varname" : "SCALE KEY"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-180",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 249.0, 324.0, 57.0, 54.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "PROGRAM TUNING",
											"parameter_mmax" : 50.0,
											"parameter_mmin" : -50.0,
											"parameter_shortname" : "PRG TUNE",
											"parameter_type" : 0,
											"parameter_unitstyle" : 0
										}

									}
,
									"triangle" : 1,
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
									"patching_rect" : [ 971.0, 102.0, 15.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-184",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 954.0, 118.0, 51.0, 30.0 ],
									"text" : "LFO KEY SYNC",
									"textjustification" : 1
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
									"patching_rect" : [ 971.0, 172.0, 15.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-188",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 954.5, 188.0, 49.0, 30.0 ],
									"text" : "LFO VEL SYNC",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-192",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 865.5, 102.0, 52.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-194",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 865.5, 32.0, 52.0, 48.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-196",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 87.0, 172.0, 48.0, 15.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-198",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 173.0, 172.0, 57.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-200",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 173.0, 188.0, 55.0, 30.0 ],
									"text" : "MULTI ROUTE"
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
									"patching_rect" : [ 884.0, 172.0, 15.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-204",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 859.0, 188.0, 62.0, 18.0 ],
									"text" : "EG LEGATO"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-206",
									"maxclass" : "live.menu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 91.5, 260.0, 57.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-208",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 91.5, 276.0, 39.0, 18.0 ],
									"text" : "MODE"
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
									"patching_rect" : [ 108.0, 330.0, 15.0, 15.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 10.0,
									"id" : "obj-212",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 84.0, 346.0, 61.0, 18.0 ],
									"text" : "BPM SYNC",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"id" : "obj-214",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1007.0, 260.0, 73.0, 54.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-216",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1082.0, 260.0, 73.0, 54.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-218",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1007.0, 330.0, 73.0, 54.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-220",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1082.0, 330.0, 73.0, 54.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-222",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1007.0, 394.0, 73.0, 54.0 ],
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
									"fontname" : "Lato",
									"id" : "obj-224",
									"maxclass" : "live.dial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "float" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1082.0, 394.0, 73.0, 54.0 ],
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
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-29",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 28.0, 421.0, 197.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-31",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 441.0, 28.0, 123.0, 197.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-33",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 573.0, 28.0, 364.0, 197.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-37",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 313.5, 255.5, 367.5, 197.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-41",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 686.5, 255.5, 310.5, 197.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-39",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1003.0, 255.5, 160.0, 197.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-91",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 165.0, 256.0, 143.0, 197.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-93",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 256.0, 146.0, 196.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-99",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 947.0, 28.0, 66.0, 197.0 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"hidden" : 1,
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 1 ],
									"hidden" : 1,
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 2 ],
									"hidden" : 1,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 3 ],
									"hidden" : 1,
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"hidden" : 1,
									"source" : [ "obj-59", 0 ]
								}

							}
 ],
						"boxgroups" : [ 							{
								"boxes" : [ "obj-96", "obj-94", "obj-48", "obj-98", "obj-46", "obj-100", "obj-31", "obj-13" ]
							}
, 							{
								"boxes" : [ "obj-28", "obj-26", "obj-136", "obj-138", "obj-128", "obj-140", "obj-142", "obj-144", "obj-146", "obj-126", "obj-104", "obj-108", "obj-102", "obj-106", "obj-110", "obj-112", "obj-116", "obj-120", "obj-124", "obj-114", "obj-118", "obj-122", "obj-37", "obj-17" ]
							}
, 							{
								"boxes" : [ "obj-188", "obj-184", "obj-182", "obj-186", "obj-230", "obj-229", "obj-99", "obj-21" ]
							}
, 							{
								"boxes" : [ "obj-74", "obj-72", "obj-20", "obj-16", "obj-18", "obj-24", "obj-6", "obj-8", "obj-10", "obj-14", "obj-22", "obj-80", "obj-82", "obj-4", "obj-12", "obj-76", "obj-78", "obj-204", "obj-202", "obj-194", "obj-192", "obj-33", "obj-15" ]
							}
, 							{
								"boxes" : [ "obj-30", "obj-70", "obj-38", "obj-42", "obj-44", "obj-34", "obj-56", "obj-54", "obj-32", "obj-36", "obj-40", "obj-52", "obj-60", "obj-64", "obj-88", "obj-92", "obj-62", "obj-66", "obj-68", "obj-50", "obj-58", "obj-86", "obj-90", "obj-134", "obj-132", "obj-130", "obj-196", "obj-226", "obj-198", "obj-200", "obj-29", "obj-5" ]
							}
, 							{
								"boxes" : [ "obj-218", "obj-224", "obj-222", "obj-216", "obj-220", "obj-214", "obj-39", "obj-23" ]
							}
, 							{
								"boxes" : [ "obj-47", "obj-11", "obj-3" ]
							}
, 							{
								"boxes" : [ "obj-41", "obj-152", "obj-156", "obj-154", "obj-158", "obj-160", "obj-162", "obj-172", "obj-168", "obj-164", "obj-166", "obj-170", "obj-232", "obj-7", "obj-9", "obj-19", "obj-35", "obj-43" ]
							}
, 							{
								"boxes" : [ "obj-176", "obj-174", "obj-178", "obj-180", "obj-1", "obj-91", "obj-27", "obj-49" ]
							}
, 							{
								"boxes" : [ "obj-2", "obj-84", "obj-148", "obj-150", "obj-208", "obj-206", "obj-212", "obj-210", "obj-93", "obj-25", "obj-45" ]
							}
 ]
					}
,
					"patching_rect" : [ 916.0, 418.0, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p View",
					"varname" : "View"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.5, 136.0, 50.0, 22.0 ],
					"text" : "compile"
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
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 437.5, 414.5, 143.5, 414.5 ],
					"source" : [ "obj-1", 2 ]
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
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 410.5, 66.0, 708.5, 66.0 ],
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
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"source" : [ "obj-14", 0 ]
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
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-16", 0 ]
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
					"midpoints" : [ 729.5, 256.0, 290.5, 256.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"source" : [ "obj-2", 0 ]
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
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-23", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-23", 3 ]
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
					"midpoints" : [ 410.5, 248.0, 143.5, 248.0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"order" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"order" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"midpoints" : [ 832.5, 264.0, 437.5, 264.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-37", 0 ]
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
					"midpoints" : [ 269.5, 409.0, 143.5, 409.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"hidden" : 1,
					"source" : [ "obj-7", 0 ]
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
			"obj-21::obj-1" : [ "Program Transpose", "TRANSPOSE", 0 ],
			"obj-21::obj-10" : [ "AMP EG RELEASE", "AE RELEASE", 0 ],
			"obj-21::obj-102" : [ "MOD FX TYPE", "MF TYPE", 0 ],
			"obj-21::obj-106" : [ "DELAY SUB TYPE", "DS TYPE", 0 ],
			"obj-21::obj-110" : [ "REVERB SUB TYPE", "RS TYPE", 0 ],
			"obj-21::obj-114" : [ "MOD FX ON-OFF", "MF ON-OFF", 0 ],
			"obj-21::obj-118" : [ "DELAY ON-OFF", "D ON-OFF", 0 ],
			"obj-21::obj-12" : [ "EG ATTACK", "E ATTACK", 0 ],
			"obj-21::obj-122" : [ "REVERB ON-OFF", "R ON-OFF", 0 ],
			"obj-21::obj-126" : [ "MOD FX SUB TYPE", "MF STYPE", 0 ],
			"obj-21::obj-130" : [ "MULTI SUB TYPE SELECT", "MULTI STYPE", 0 ],
			"obj-21::obj-134" : [ "MULTI SHIFT SHAPE", "M S-SHAPE", 0 ],
			"obj-21::obj-136" : [ "DELAY TIME", "DEL TIME", 0 ],
			"obj-21::obj-138" : [ "DELAY DEPTH", "DEL DPTH", 0 ],
			"obj-21::obj-14" : [ "EG DECAY", "E DECAY", 0 ],
			"obj-21::obj-140" : [ "DELAY DRY WET", "DEL WET", 0 ],
			"obj-21::obj-142" : [ "REVERB TIME", "REV TIME", 0 ],
			"obj-21::obj-144" : [ "REVERB DEPTH", "REV DPTH", 0 ],
			"obj-21::obj-146" : [ "REVERB DRY WET", "REV WET", 0 ],
			"obj-21::obj-148" : [ "VOICE MODE TYPE", "VM TYPE", 0 ],
			"obj-21::obj-152" : [ "BEND RANGE (+)", "BEND (+)", 0 ],
			"obj-21::obj-154" : [ "BEND RANGE (-)", "BEND (-)", 0 ],
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
			"obj-21::obj-178" : [ "SCALE KEY", "SCL KEY", 0 ],
			"obj-21::obj-18" : [ "EG TARGET", "E TARGET", 0 ],
			"obj-21::obj-180" : [ "PROGRAM TUNING", "PRG TUNE", 0 ],
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
			"obj-21::obj-22" : [ "LFO RATE", "LFO RATE", 0 ],
			"obj-21::obj-220" : [ "VPM PARAM 4 (Mod Attack)", "VP4( Attack)", 0 ],
			"obj-21::obj-222" : [ "VPM PARAM 5 (Mod Decay)", "VP5( Decay)", 0 ],
			"obj-21::obj-224" : [ "VPM PARAM 6 (Mod Key Track)", "VP6(K Track)", 0 ],
			"obj-21::obj-229" : [ "LFO TARGET OSC", "LT OSC", 0 ],
			"obj-21::obj-24" : [ "LFO INT", "LFO INT", 0 ],
			"obj-21::obj-26" : [ "MOD FX TIME", "MOD TIME", 0 ],
			"obj-21::obj-28" : [ "MOD FX DEPTH", "MOD DPTH", 0 ],
			"obj-21::obj-30" : [ "MULTI LEVEL", "M LEVEL", 0 ],
			"obj-21::obj-32" : [ "VCO 1 PITCH", "V1 PITCH", 0 ],
			"obj-21::obj-34" : [ "VCO 2 PITCH", "V2 PITCH", 0 ],
			"obj-21::obj-36" : [ "VCO 1 SHAPE", "V1 SHAPE", 0 ],
			"obj-21::obj-38" : [ "VCO 2 SHAPE", "V2 SHAPE", 0 ],
			"obj-21::obj-4" : [ "AMP EG ATTACK", "AE ATTACK", 0 ],
			"obj-21::obj-40" : [ "VCO 1 LEVEL", "V1 LEVEL", 0 ],
			"obj-21::obj-42" : [ "VCO 2 LEVEL", "V2 LEVEL", 0 ],
			"obj-21::obj-44" : [ "CROSS MOD DEPTH", "XM DEPTH", 0 ],
			"obj-21::obj-46" : [ "CUTOFF", " CUTOFF", 0 ],
			"obj-21::obj-48" : [ "RESONANCE", " RESONANCE", 0 ],
			"obj-21::obj-49" : [ "PROGRAM LEVEL", "PRG LVL", 0 ],
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
			"obj-21::obj-84" : [ "VOICE MODE DEPTH", "VMODE DPTH", 0 ],
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
				"name" : "minilogueXD_Tutorial_Part3.js",
				"bootpath" : "~/Documents/Cycling74/minilogueTutorial/3_minilogueXD_Tutorial_Part3",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "fixKorgNrpn.js",
				"bootpath" : "~/Documents/Cycling74/minilogueTutorial/3_minilogueXD_Tutorial_Part3",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
