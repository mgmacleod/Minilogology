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
		"rect" : [ 59.0, 107.0, 741.0, 480.0 ],
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
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-261",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 424.974977786102272, 201.0, 34.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 29.0, 60.0, 36.0, 17.0 ],
					"text" : "WAVE"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 12.0,
					"id" : "obj-233",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1229.949557428095432, 255.700049035762788, 128.0, 20.0 ],
					"text" : "VCO 2 MODULATION"
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
					"id" : "obj-232",
					"inactivetextoffcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"inactivetextoncolor" : [ 0.196078431372549, 0.196078431372549, 0.196078431372549, 0.0 ],
					"maxclass" : "live.tab",
					"num_lines_patching" : 4,
					"num_lines_presentation" : 4,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 733.416575729591386, 202.799803999999995, 29.5, 51.600158999999991 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 74.0, 11.0, 43.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "High", "Mid-Hi", "Mid-Lo", "Low" ],
							"parameter_longname" : "VCO 2 Octave",
							"parameter_mmax" : 3,
							"parameter_shortname" : "Octave",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"spacing_y" : 4.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textoncolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 0.0 ],
					"varname" : "vco2_octave"
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
					"id" : "obj-231",
					"inactivetextoffcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"inactivetextoncolor" : [ 0.196078431372549, 0.196078431372549, 0.196078431372549, 0.0 ],
					"maxclass" : "live.tab",
					"num_lines_patching" : 4,
					"num_lines_presentation" : 4,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 80.749988286102251, 203.400000035762787, 29.5, 51.600158999999991 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 18.0, 11.0, 43.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "High", "Mid-Hi", "Mid-Lo", "Low" ],
							"parameter_longname" : "VCO 1 Octave",
							"parameter_mmax" : 3,
							"parameter_shortname" : "Octave",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"spacing_y" : 4.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"textoncolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 0.0 ],
					"varname" : "vco1_octave"
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
					"id" : "obj-230",
					"maxclass" : "live.tab",
					"num_lines_patching" : 3,
					"num_lines_presentation" : 3,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1001.400071367889268, 202.799803999999995, 50.5, 53.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.5, 74.500014999999962, 30.0, 43.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "Saw", "Tri", "Sqr" ],
							"parameter_initial" : [ 2.0 ],
							"parameter_longname" : "VCO 2 Wave",
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
					"varname" : "vco2_wave"
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
					"id" : "obj-2",
					"maxclass" : "live.tab",
					"num_lines_patching" : 3,
					"num_lines_presentation" : 3,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 361.74998828610228, 201.0, 50.5, 53.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 18.0, 30.0, 43.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "Saw", "Tri", "Sqr" ],
							"parameter_initial" : [ 2.0 ],
							"parameter_longname" : "VCO 1 Wave",
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
					"varname" : "vco1_wave"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.333333333333333, 0.333333333333333, 0.333333333333333, 0.0 ],
					"activebgoncolor" : [ 0.72156862745098, 0.149019607843137, 0.149019607843137, 1.0 ],
					"focusbordercolor" : [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 0.0 ],
					"id" : "obj-125",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 762.40001228610231, 659.033147351114394, 31.66666716337204, 30.333333790302277 ],
					"presentation" : 1,
					"presentation_rect" : [ 148.0, 138.0, 20.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "Off", "On" ],
							"parameter_longname" : "Ring",
							"parameter_mmax" : 1,
							"parameter_shortname" : "Ring",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"varname" : "ring"
				}

			}
, 			{
				"box" : 				{
					"activebgcolor" : [ 0.333333333333333, 0.333333333333333, 0.333333333333333, 0.0 ],
					"activebgoncolor" : [ 0.72156862745098, 0.149019607843137, 0.149019607843137, 1.0 ],
					"focusbordercolor" : [ 0.117647058823529, 0.117647058823529, 0.117647058823529, 0.0 ],
					"id" : "obj-124",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 611.74998828610228, 659.033147351114394, 31.66666716337204, 30.333333790302277 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.0, 138.0, 20.0, 20.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "Off", "On" ],
							"parameter_longname" : "Sync",
							"parameter_mmax" : 1,
							"parameter_shortname" : "Sync",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"varname" : "sync"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-353",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 220.699950999999999, 27.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 60.0, 27.0, 17.0 ],
					"text" : "OCT"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-337",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 781.200074119209148, 100.0, 63.0, 20.0 ],
					"text" : "r dump49"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-338",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 138.749988286102251, 100.0, 63.0, 20.0 ],
					"text" : "r dump48"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-342",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 816.90001228610231, 589.899937307228129, 63.0, 20.0 ],
					"text" : "r dump81"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-343",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 663.549914286102194, 589.899937307228129, 63.0, 20.0 ],
					"text" : "r dump80"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-327",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1052.500107367889314, 100.0, 63.0, 20.0 ],
					"text" : "r dump51"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-328",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 416.349811286102181, 100.0, 63.0, 20.0 ],
					"text" : "r dump50"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-334",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1377.774569428095447, 100.0, 63.0, 20.0 ],
					"text" : "r dump42"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-335",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1308.274538428095411, 100.0, 63.0, 20.0 ],
					"text" : "r dump41"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-303",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1239.274569428095447, 100.0, 63.0, 20.0 ],
					"text" : "r dump37"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-304",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 611.549976286102265, 134.899901999999997, 63.0, 20.0 ],
					"text" : "r dump36"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-305",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1172.274569428095447, 100.0, 63.0, 20.0 ],
					"text" : "r dump35"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"color" : [ 0.572549, 0.27451, 0.027451, 1.0 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-311",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 542.24998828610228, 134.899901999999997, 63.0, 20.0 ],
					"text" : "r dump34"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-254",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 850.550172119209037, 169.899901999999997, 29.5, 22.0 ],
					"text" : "3",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-255",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 805.700074119209148, 169.899901999999997, 29.5, 22.0 ],
					"text" : "2",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-256",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 764.950074119209148, 169.899901999999997, 29.5, 22.0 ],
					"text" : "1",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-257",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 723.950074119209148, 169.899901999999997, 29.5, 22.0 ],
					"text" : "0",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-258",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 723.950074119209148, 134.899901999999997, 182.5, 20.0 ],
					"text" : "sel 127 84 42 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-259",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 790.41669531401817, 308.99993900000004, 37.0, 20.0 ],
					"text" : "int 84"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-260",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 733.416575729591386, 308.99993900000004, 42.0, 20.0 ],
					"text" : "int 127"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-262",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 723.950074119209148, 100.0, 45.0, 20.0 ],
					"text" : "ctlin 49"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-263",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 904.416934482871625, 308.99993900000004, 31.0, 20.0 ],
					"text" : "int 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-264",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 847.416814898444954, 308.99993900000004, 37.0, 20.0 ],
					"text" : "int 42"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-265",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 745.816646480911231, 346.100098000000003, 52.0, 20.0 ],
					"text" : "ctlout 49"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-266",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 733.416575729591386, 272.400061035762747, 247.000478337707023, 20.0 ],
					"text" : "sel 0 1 2 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-253",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 207.35008628610214, 168.400000035762787, 29.5, 22.0 ],
					"text" : "3",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-251",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 162.499988286102251, 168.400000035762787, 29.5, 22.0 ],
					"text" : "2",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-246",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 121.749988286102251, 168.400000035762787, 29.5, 22.0 ],
					"text" : "1",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-245",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 80.749988286102251, 168.400000035762787, 29.5, 22.0 ],
					"text" : "0",
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-243",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 80.749988286102251, 131.0, 187.800130666666519, 20.0 ],
					"text" : "sel 127 84 42 0",
					"textcolor" : [ 0.0, 0.0, 0.0, 0.749019607843137 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-216",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 131.950020952768881, 313.399939035762827, 35.0, 20.0 ],
					"text" : "int 84"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-226",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 80.749988286102251, 313.399939035762827, 40.0, 20.0 ],
					"text" : "int 127"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-213",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 80.749988286102251, 100.0, 45.0, 20.0 ],
					"text" : "ctlin 48"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-221",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 234.35008628610214, 313.399939035762827, 29.5, 20.0 ],
					"text" : "int 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-222",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 185.749988286102251, 313.399939035762827, 35.0, 20.0 ],
					"text" : "int 42"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-223",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 137.249988286102251, 356.400000035762787, 52.0, 20.0 ],
					"text" : "ctlout 48"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-224",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "bang", "bang", "bang", "bang", "" ],
					"patching_rect" : [ 80.749988286102251, 272.400061035762747, 223.800130666666519, 20.0 ],
					"text" : "sel 0 1 2 3"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-217",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 762.40001228610231, 622.899937307228129, 80.0, 20.0 ],
					"text" : "scale 0 127 0 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-218",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 762.40001228610231, 589.899937307228129, 46.0, 20.0 ],
					"text" : "ctlin 81"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-214",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 611.74998828610228, 622.899937307228129, 80.0, 20.0 ],
					"text" : "scale 0 127 0 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-215",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 611.74998828610228, 589.899937307228129, 45.0, 20.0 ],
					"text" : "ctlin 80"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1001.400071367889268, 167.900000035762787, 73.0, 20.0 ],
					"text" : "scale 0 2 2 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1001.400071367889268, 134.899901999999997, 81.0, 20.0 ],
					"text" : "scale 0 127 0 2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 1001.400071367889268, 100.0, 46.0, 20.0 ],
					"text" : "ctlin 51"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 1350.774569428095447, 134.899901999999997, 47.0, 20.0 ],
					"text" : "ctlin 42"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 1298.774569428095447, 134.899901999999997, 47.0, 20.0 ],
					"text" : "ctlin 41"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 1244.774569428095447, 134.899901999999997, 47.0, 20.0 ],
					"text" : "ctlin 37"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 1188.274569428095447, 134.899901999999997, 47.0, 20.0 ],
					"text" : "ctlin 35"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 361.083321599567398, 167.900000035762787, 72.0, 20.0 ],
					"text" : "scale 0 2 2 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 361.74998828610228, 133.0, 80.0, 20.0 ],
					"text" : "scale 0 127 0 2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 361.74998828610228, 100.0, 45.0, 20.0 ],
					"text" : "ctlin 50"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 607.74998828610228, 167.900000035762787, 45.0, 20.0 ],
					"text" : "ctlin 36"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 551.24998828610228, 167.900000035762787, 45.0, 20.0 ],
					"text" : "ctlin 34"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-51",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 607.74998828610228, 203.400000035762787, 40.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 125.0, 18.0, 34.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "VCO 1 Shape",
							"parameter_shortname" : "SHAPE",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "vco1_shape"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-50",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1188.274569428095447, 170.399901999999997, 27.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.0, 71.0, 27.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 64.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "VCO 2 Pitch",
							"parameter_shortname" : "PITCH",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "vco2_pitch"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-25",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 551.24998828610228, 203.400000035762787, 41.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.0, 18.0, 27.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 64.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "VCO 1 Pitch",
							"parameter_shortname" : "PITCH",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "vco1_pitch"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 762.40001228610231, 705.799952500678955, 92.0, 20.0 ],
					"text" : "scale 0 1 0 127"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 762.40001228610231, 737.799952500678955, 52.0, 20.0 ],
					"text" : "ctlout 81"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-111",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 800.775217508526339, 665.699814246265532, 31.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 120.0, 31.0, 17.0 ],
					"text" : "RING"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 611.74998828610228, 705.799952500678955, 92.0, 20.0 ],
					"text" : "scale 0 1 0 127"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 611.74998828610228, 737.799952500678955, 52.0, 20.0 ],
					"text" : "ctlout 80"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-106",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 653.450000286102295, 665.699814246265532, 34.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 112.0, 120.0, 34.0, 17.0 ],
					"text" : "SYNC"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1089.150132367889228, 308.99993900000004, 33.0, 20.0 ],
					"text" : "int 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1048.550096367889182, 308.99993900000004, 38.0, 20.0 ],
					"text" : "int 66"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1001.400071367889268, 308.99993900000004, 43.0, 20.0 ],
					"text" : "int 127"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 1001.400071367889268, 346.100098000000003, 53.0, 20.0 ],
					"text" : "ctlout 51"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "bang", "" ],
					"patching_rect" : [ 1001.400071367889268, 272.400061035762747, 150.625091500000053, 20.0 ],
					"text" : "sel 0 1 2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 1350.774569428095447, 220.699950999999999, 52.0, 20.0 ],
					"text" : "ctlout 42"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-28",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1350.774569428095447, 170.399901999999997, 27.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 122.0, 41.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 64.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Pitch EG Int",
							"parameter_shortname" : "PITCH EG",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "pitch_eg_int"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 1298.774569428095447, 220.699950999999999, 52.0, 20.0 ],
					"text" : "ctlout 41"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-26",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1298.774569428095447, 170.399901999999997, 27.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 122.0, 53.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Cross Mod Depth",
							"parameter_shortname" : "CROSS MOD",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "cross_mod_depth"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 1244.774569428095447, 220.699950999999999, 52.0, 20.0 ],
					"text" : "ctlout 37"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.815686274509804, 0.0, 0.0, 1.0 ],
					"activeneedlecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"focusbordercolor" : [ 0.627450980392157, 0.627450980392157, 0.627450980392157, 0.0 ],
					"id" : "obj-56",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"panelcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1244.774569428095447, 170.399901999999997, 27.0, 39.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 125.0, 71.0, 34.0, 39.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "VCO 2 Shape",
							"parameter_shortname" : "SHAPE",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"shownumber" : 0,
					"textcolor" : [ 0.125490196078431, 0.137254901960784, 0.152941176470588, 1.0 ],
					"varname" : "vco2_shape"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 1188.274569428095447, 220.699950999999999, 52.0, 20.0 ],
					"text" : "ctlout 35"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 607.74998828610228, 255.700049035762788, 52.0, 20.0 ],
					"text" : "ctlout 36"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 809.466567365474702, 228.400110262260569, 45.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 69.0, 55.0, 51.0, 20.0 ],
					"text" : "VCO 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 198.549988715255665, 228.400110262260569, 45.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 0.0, 46.0, 20.0 ],
					"text" : "VCO 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 551.24998828610228, 255.700049035762788, 52.0, 20.0 ],
					"text" : "ctlout 34"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 456.049974286102156, 308.99993900000004, 32.0, 20.0 ],
					"text" : "int 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 408.899981286102275, 308.99993900000004, 37.0, 20.0 ],
					"text" : "int 66"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 361.74998828610228, 308.99993900000004, 42.0, 20.0 ],
					"text" : "int 127"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 361.74998828610228, 346.100098000000003, 52.0, 20.0 ],
					"text" : "ctlout 50"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.749019607843137 ],
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "bang", "" ],
					"patching_rect" : [ 361.74998828610228, 272.400061035762747, 160.449978999999928, 20.0 ],
					"text" : "sel 0 1 2"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
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
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-243", 0 ],
					"source" : [ "obj-213", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"source" : [ "obj-214", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-214", 0 ],
					"source" : [ "obj-215", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 0 ],
					"source" : [ "obj-216", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"source" : [ "obj-217", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-217", 0 ],
					"source" : [ "obj-218", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-22", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-22", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 0 ],
					"source" : [ "obj-221", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 0 ],
					"source" : [ "obj-222", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 0 ],
					"source" : [ "obj-224", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-221", 0 ],
					"source" : [ "obj-224", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-222", 0 ],
					"source" : [ "obj-224", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-226", 0 ],
					"source" : [ "obj-224", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-223", 0 ],
					"source" : [ "obj-226", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-230", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-224", 0 ],
					"source" : [ "obj-231", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-266", 0 ],
					"source" : [ "obj-232", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-245", 0 ],
					"source" : [ "obj-243", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-246", 0 ],
					"source" : [ "obj-243", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-251", 0 ],
					"source" : [ "obj-243", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-253", 0 ],
					"source" : [ "obj-243", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"source" : [ "obj-245", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"source" : [ "obj-246", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"source" : [ "obj-251", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"source" : [ "obj-253", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-232", 0 ],
					"source" : [ "obj-254", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-232", 0 ],
					"source" : [ "obj-255", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-232", 0 ],
					"source" : [ "obj-256", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-232", 0 ],
					"source" : [ "obj-257", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-254", 0 ],
					"source" : [ "obj-258", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-255", 0 ],
					"source" : [ "obj-258", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-256", 0 ],
					"source" : [ "obj-258", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-257", 0 ],
					"source" : [ "obj-258", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 0 ],
					"source" : [ "obj-259", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 0 ],
					"source" : [ "obj-260", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-258", 0 ],
					"source" : [ "obj-262", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 0 ],
					"source" : [ "obj-263", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-265", 0 ],
					"source" : [ "obj-264", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-259", 0 ],
					"source" : [ "obj-266", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-260", 0 ],
					"source" : [ "obj-266", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-263", 0 ],
					"source" : [ "obj-266", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-264", 0 ],
					"source" : [ "obj-266", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-303", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-304", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-305", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-311", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-327", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-328", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-334", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-335", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-258", 0 ],
					"source" : [ "obj-337", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-243", 0 ],
					"source" : [ "obj-338", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-217", 0 ],
					"source" : [ "obj-342", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-214", 0 ],
					"source" : [ "obj-343", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-230", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-87", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-87", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-124" : [ "Sync", "Sync", 0 ],
			"obj-125" : [ "Ring", "Ring", 0 ],
			"obj-2" : [ "VCO 1 Wave", "Wave", 0 ],
			"obj-230" : [ "VCO 2 Wave", "Wave", 0 ],
			"obj-231" : [ "VCO 1 Octave", "Octave", 0 ],
			"obj-232" : [ "VCO 2 Octave", "Octave", 0 ],
			"obj-25" : [ "VCO 1 Pitch", "PITCH", 0 ],
			"obj-26" : [ "Cross Mod Depth", "CROSS MOD", 0 ],
			"obj-28" : [ "Pitch EG Int", "PITCH EG", 0 ],
			"obj-50" : [ "VCO 2 Pitch", "PITCH", 0 ],
			"obj-51" : [ "VCO 1 Shape", "SHAPE", 0 ],
			"obj-56" : [ "VCO 2 Shape", "SHAPE", 0 ],
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
