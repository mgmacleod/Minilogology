{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 10,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 59.0, 107.0, 962.0, 663.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
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
					"activebgcolor" : [ 0.470588235294118, 0.470588235294118, 0.470588235294118, 0.749019607843137 ],
					"activebgoncolor" : [ 0.72156862745098, 0.149019607843137, 0.149019607843137, 1.0 ],
					"bgcolor" : [ 0.470588235294118, 0.470588235294118, 0.470588235294118, 0.749019607843137 ],
					"bgoncolor" : [ 0.470588235294118, 0.470588235294118, 0.470588235294118, 0.749019607843137 ],
					"focusbordercolor" : [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"id" : "obj-237",
					"maxclass" : "live.tab",
					"num_lines_patching" : 3,
					"num_lines_presentation" : 3,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 423.599917534782435, 404.100010307228104, 50.5, 53.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 5.0, 125.0, 26.0, 43.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "Saw", "Tri", "Sqr" ],
							"parameter_longname" : "LFO Wave",
							"parameter_mmax" : 2,
							"parameter_shortname" : "Wave",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"spacing_y" : 3.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "lfo_wave"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.470588235294118, 0.470588235294118, 0.470588235294118, 0.749019607843137 ],
					"activebgoncolor" : [ 0.72156862745098, 0.149019607843137, 0.149019607843137, 1.0 ],
					"bgcolor" : [ 0.470588235294118, 0.470588235294118, 0.470588235294118, 0.749019607843137 ],
					"bgoncolor" : [ 0.470588235294118, 0.470588235294118, 0.470588235294118, 0.749019607843137 ],
					"focusbordercolor" : [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"id" : "obj-236",
					"maxclass" : "live.tab",
					"num_lines_patching" : 3,
					"num_lines_presentation" : 3,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 233.200000286102295, 404.100010307228104, 50.5, 53.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 37.0, 125.0, 27.0, 43.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "Int", "Rate", "Off" ],
							"parameter_longname" : "LFO EG Mod",
							"parameter_mmax" : 2,
							"parameter_shortname" : "EG Mod",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"spacing_y" : 3.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "lfo_eg_mod"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.470588235294118, 0.470588235294118, 0.470588235294118, 0.749019607843137 ],
					"activebgoncolor" : [ 0.72156862745098, 0.149019607843137, 0.149019607843137, 1.0 ],
					"bgcolor" : [ 0.470588235294118, 0.470588235294118, 0.470588235294118, 0.749019607843137 ],
					"bgoncolor" : [ 0.470588235294118, 0.470588235294118, 0.470588235294118, 0.749019607843137 ],
					"focusbordercolor" : [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 0.0 ],
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"id" : "obj-235",
					"maxclass" : "live.tab",
					"num_lines_patching" : 3,
					"num_lines_presentation" : 3,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 50.0, 404.100010307228104, 50.5, 53.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 186.0, 125.0, 33.0, 43.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "Pitch", "Shape", "Cutoff" ],
							"parameter_longname" : "LFO Target",
							"parameter_mmax" : 2,
							"parameter_shortname" : "Target",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"spacing_y" : 3.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"varname" : "lfo_target"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"id" : "obj-354",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 481.249819534782546, 300.899998307228088, 59.0, 22.0 ],
					"text" : "r dump58",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"id" : "obj-318",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 290.199877286102492, 300.899998307228088, 59.0, 22.0 ],
					"text" : "r dump57",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"id" : "obj-319",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 111.74993900000004, 300.899998307228088, 59.0, 22.0 ],
					"text" : "r dump56",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-446",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 605.59999328610229, 126.87000106096275, 54.0, 20.0 ],
					"text" : "r dump26",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-447",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 548.200000286102295, 126.87000106096275, 54.0, 20.0 ],
					"text" : "r dump24",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-442",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 473.69996928610226, 126.87000106096275, 54.0, 20.0 ],
					"text" : "r dump23",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-443",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 411.799976286102265, 126.87000106096275, 54.0, 20.0 ],
					"text" : "r dump22",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-444",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.200000286102295, 126.87000106096275, 54.0, 20.0 ],
					"text" : "r dump21",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-445",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 289.200000286102295, 126.87000106096275, 54.0, 20.0 ],
					"text" : "r dump20",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-358",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 229.700000286102295, 126.87000106096275, 54.0, 20.0 ],
					"text" : "r dump19",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-357",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 171.950000286102295, 126.87000106096275, 54.0, 20.0 ],
					"text" : "r dump18",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-356",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 112.200000286102295, 126.87000106096275, 54.0, 20.0 ],
					"text" : "r dump17",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-346",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 126.87000106096275, 54.0, 20.0 ],
					"text" : "r dump16",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-197",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 423.599917534782435, 366.899998307228088, 72.0, 20.0 ],
					"text" : "scale 0 2 2 0",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-198",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 423.599917534782435, 333.899998307228088, 80.0, 20.0 ],
					"text" : "scale 0 127 0 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-199",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 423.599917534782435, 300.899998307228088, 45.0, 20.0 ],
					"text" : "ctlin 58",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-194",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 233.200000286102295, 366.899998307228088, 72.0, 20.0 ],
					"text" : "scale 0 2 2 0",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-195",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 233.200000286102295, 333.899998307228088, 80.0, 20.0 ],
					"text" : "scale 0 127 0 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-196",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 233.200000286102295, 300.899998307228088, 45.0, 20.0 ],
					"text" : "ctlin 57",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-152",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 366.899998307228088, 72.0, 20.0 ],
					"text" : "scale 0 2 2 0",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 333.899998307228088, 80.0, 20.0 ],
					"text" : "scale 0 127 0 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-193",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 50.0, 300.899998307228088, 45.0, 20.0 ],
					"text" : "ctlin 56",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 604.700000286102295, 155.0, 45.0, 20.0 ],
					"text" : "ctlin 26",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-151",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 552.700000286102295, 155.0, 45.0, 20.0 ],
					"text" : "ctlin 24",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 458.700000286102295, 155.0, 45.0, 20.0 ],
					"text" : "ctlin 23",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 406.700000286102295, 155.0, 45.0, 20.0 ],
					"text" : "ctlin 22",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 354.700000286102295, 155.0, 45.0, 20.0 ],
					"text" : "ctlin 21",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 302.700000286102295, 155.0, 45.0, 20.0 ],
					"text" : "ctlin 20",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-137",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 229.700000286102295, 155.0, 45.0, 20.0 ],
					"text" : "ctlin 19",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 177.700000286102295, 155.0, 45.0, 20.0 ],
					"text" : "ctlin 18",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 125.700000286102295, 155.0, 45.0, 20.0 ],
					"text" : "ctlin 17",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 73.700000286102295, 155.0, 45.0, 20.0 ],
					"text" : "ctlin 16",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-183",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 481.249819534782546, 416.800013500678915, 34.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 111.0, 36.0, 17.0 ],
					"text" : "WAVE"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-187",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 511.350039534782582, 505.999790307228068, 32.0, 20.0 ],
					"text" : "int 0",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-188",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 470.749819534782546, 505.999790307228068, 37.0, 20.0 ],
					"text" : "int 66",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-189",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 423.599917534782435, 505.999790307228068, 42.0, 20.0 ],
					"text" : "int 127",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 423.599917534782435, 542.100010307228104, 52.0, 20.0 ],
					"text" : "ctlout 58",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-191",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "bang", "" ],
					"patching_rect" : [ 423.599917534782435, 473.799961307228045, 150.62518300000022, 20.0 ],
					"text" : "sel 0 1 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-173",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 290.199877286102492, 416.799896432926289, 45.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 39.0, 111.0, 22.0, 17.0 ],
					"text" : "EG"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 320.950122286102214, 505.999790307228068, 32.0, 20.0 ],
					"text" : "int 0",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 280.350025286102209, 505.999790307228068, 37.0, 20.0 ],
					"text" : "int 66",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-179",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 233.200000286102295, 505.999790307228068, 42.0, 20.0 ],
					"text" : "int 127",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 233.200000286102295, 542.100010307228104, 52.0, 20.0 ],
					"text" : "ctlout 57",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "bang", "" ],
					"patching_rect" : [ 233.200000286102295, 473.799961307228045, 150.749981105327606, 20.0 ],
					"text" : "sel 0 1 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-163",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 104.650007037723526, 416.799896432926289, 44.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 181.0, 111.0, 44.0, 17.0 ],
					"text" : "TARGET"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 137.750121999999919, 505.999790307228068, 32.0, 20.0 ],
					"text" : "int 0",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 97.150023999999917, 505.999790307228068, 37.0, 20.0 ],
					"text" : "int 66",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-169",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 50.0, 505.999790307228068, 42.0, 20.0 ],
					"text" : "int 127",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-170",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 542.100010307228104, 52.0, 20.0 ],
					"text" : "ctlout 56",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-171",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "bang", "" ],
					"patching_rect" : [ 50.0, 473.799961307228045, 150.625182999999879, 20.0 ],
					"text" : "sel 0 1 2",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 604.700000286102295, 247.600010605251327, 52.0, 20.0 ],
					"text" : "ctlout 26",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-67",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 604.700000286102295, 196.700012000000015, 27.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 132.0, 121.0, 27.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "LFO Int",
							"parameter_shortname" : "INT",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "lfo_int"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 552.700000286102295, 247.600010605251327, 52.0, 20.0 ],
					"text" : "ctlout 24",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-69",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 552.700000286102295, 196.700012000000015, 27.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 76.0, 121.0, 27.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "LFO Rate",
							"parameter_shortname" : "RATE",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "lfo_rate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 12.0,
					"id" : "obj-70",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 570.700000286102295, 100.0, 32.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 100.0, 106.0, 32.0, 20.0 ],
					"text" : "LFO"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 458.700000286102295, 247.600010605251327, 52.0, 20.0 ],
					"text" : "ctlout 23",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-46",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 458.700000286102295, 196.700012000000015, 27.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 176.0, 69.0, 53.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "EG Release",
							"parameter_shortname" : "RELEASE",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "eg_release"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 406.700000286102295, 247.600010605251327, 52.0, 20.0 ],
					"text" : "ctlout 22",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-49",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 406.700000286102295, 196.700012000000015, 27.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.0, 69.0, 53.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 64 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "EG Sustain",
							"parameter_shortname" : "SUSTAIN",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "eg_sustain"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 354.700000286102295, 247.600010605251327, 52.0, 20.0 ],
					"text" : "ctlout 21",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-58",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 354.700000286102295, 196.700012000000015, 27.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 63.0, 69.0, 53.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 64 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "EG Decay",
							"parameter_shortname" : "DECAY",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "eg_decay"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 302.700000286102295, 247.600010605251327, 52.0, 20.0 ],
					"text" : "ctlout 20",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-61",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 302.700000286102295, 196.700012000000015, 27.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 69.0, 53.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "EG Attack",
							"parameter_shortname" : "ATTACK",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "eg_attack"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 362.700000286102295, 100.0, 26.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 103.0, 52.0, 26.0, 20.0 ],
					"text" : "EG"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 229.700000286102295, 247.600010605251327, 52.0, 20.0 ],
					"text" : "ctlout 19",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-44",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 229.700000286102295, 196.700012000000015, 27.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 176.0, 21.0, 53.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Amp Release",
							"parameter_shortname" : "RELEASE",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "amp_eg_release"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 177.700000286102295, 247.600010605251327, 52.0, 20.0 ],
					"text" : "ctlout 18",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-37",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 177.700000286102295, 196.700012000000015, 27.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.0, 21.0, 53.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 64 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Amp Sustain",
							"parameter_shortname" : "SUSTAIN",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "amp_eg_sustain"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 125.700000286102295, 247.600010605251327, 52.0, 20.0 ],
					"text" : "ctlout 17",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-39",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 125.700000286102295, 196.700012000000015, 27.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 63.0, 21.0, 53.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 64 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Amp Decay",
							"parameter_shortname" : "DECAY",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "amp_eg_decay"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 73.700000286102295, 247.600010605251327, 52.0, 20.0 ],
					"text" : "ctlout 16",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-41",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 73.700000286102295, 196.700012000000015, 27.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 21.0, 53.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Amp Attack",
							"parameter_shortname" : "ATTACK",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "amp_eg_attack"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.99998828610228, 100.0, 56.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 88.0, 1.0, 56.0, 20.0 ],
					"text" : "AMP EG"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-145", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-235", 0 ],
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-152", 0 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 0 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 0 ],
					"source" : [ "obj-168", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-170", 0 ],
					"source" : [ "obj-169", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"source" : [ "obj-171", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"source" : [ "obj-171", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"source" : [ "obj-181", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"source" : [ "obj-181", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"source" : [ "obj-187", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"source" : [ "obj-188", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"source" : [ "obj-189", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-187", 0 ],
					"source" : [ "obj-191", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-188", 0 ],
					"source" : [ "obj-191", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-189", 0 ],
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"source" : [ "obj-193", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-236", 0 ],
					"source" : [ "obj-194", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-194", 0 ],
					"source" : [ "obj-195", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"source" : [ "obj-196", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-237", 0 ],
					"source" : [ "obj-197", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-197", 0 ],
					"source" : [ "obj-198", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-198", 0 ],
					"source" : [ "obj-199", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"source" : [ "obj-235", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-236", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"source" : [ "obj-237", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-195", 0 ],
					"source" : [ "obj-318", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"source" : [ "obj-319", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-346", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-198", 0 ],
					"source" : [ "obj-354", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-356", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-357", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-358", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-442", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-443", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-444", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-445", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-446", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-447", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-235" : [ "LFO Target", "Target", 0 ],
			"obj-236" : [ "LFO EG Mod", "EG Mod", 0 ],
			"obj-237" : [ "LFO Wave", "Wave", 0 ],
			"obj-37" : [ "Amp Sustain", "SUSTAIN", 0 ],
			"obj-39" : [ "Amp Decay", "DECAY", 0 ],
			"obj-41" : [ "Amp Attack", "ATTACK", 0 ],
			"obj-44" : [ "Amp Release", "RELEASE", 0 ],
			"obj-46" : [ "EG Release", "RELEASE", 0 ],
			"obj-49" : [ "EG Sustain", "SUSTAIN", 0 ],
			"obj-58" : [ "EG Decay", "DECAY", 0 ],
			"obj-61" : [ "EG Attack", "ATTACK", 0 ],
			"obj-67" : [ "LFO Int", "INT", 0 ],
			"obj-69" : [ "LFO Rate", "RATE", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [  ],
		"autosave" : 0,
		"editing_bgcolor" : [ 0.407843137254902, 0.407843137254902, 0.407843137254902, 1.0 ]
	}

}
