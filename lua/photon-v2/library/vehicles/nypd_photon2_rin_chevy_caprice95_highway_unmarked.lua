if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1995 Chevrolet Caprice NYPD Highway Patrol Unmarked"
VEHICLE.Vehicle		= "95caprice_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYPD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Paint",
		Options = {
            {
				Option = "Adriatic Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(0,29,56)
				}
			},
			{
				Option = "Light Adriatic Metallic",
				Properties = {
					Skin = 0,
					Color = Color(115,139,150)
				},
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 21, Material = "rin/lrpd2/caprice95/dash_blue" }
				},
			},
			{
				Option = "Michigan Blue",
				Properties = {
					Skin = 2,
					Color = Color(8,40,53)
				},
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 21, Material = "rin/lrpd2/caprice95/dash_blue" }
				},
			},
			{
				Option = "Medium Garnet Red Metallic",
				Properties = {
					Skin = 0,
					Color = Color(88,14,19)
				}
			},
			{
				Option = "Dark Cherry Metallic",
				Properties = {
					Skin = 0,
					Color = Color(41,4,9)
				}
			},
			{
				Option = "Purple Pearl",
				Properties = {
					Skin = 0,
					Color = Color(45,34,42)
				}
			},
			{
				Option = "Dark Green Gray Metallic",
				Properties = {
					Skin = 0,
					Color = Color(20,42,45)
				}
			},
			{
				Option = "Light Driftwood Metallic",
				Properties = {
					Skin = 0,
					Color = Color(161,153,131)
				}
			},
			{
				Option = "Medium Marblehead Metallic",
				Properties = {
					Skin = 0,
					Color = Color(135,140,140)
				},
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 21, Material = "rin/lrpd2/caprice95/dash_blue" }
				},
			},
			{
				Option = "Light Gray Metallic",
				Properties = {
					Skin = 0,
					Color = Color(72,72,72)
				}
			},
			{
				Option = "Ultra Silver Metallic",
				Properties = {
					Skin = 0,
					Color = Color(145,145,145)
				}
			},
			{
				Option = "Bright White",
				Properties = {
					Skin = 0,
					Color = Color(255,255,255)
				},
				SubMaterials = {
					{ Id = 20, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 21, Material = "rin/lrpd2/caprice95/dash_blue" }
				},
			},
			{
				Option = "Black",
				Properties = {
					Skin = 0,
					Color = Color(0,0,0)
				}
			},
		}
	},
	{
		Category = "Lighting",
		Options = {
			{
				Option = "Default",
				Components = {
					{
						Component = "photon_standard_chevcap91_nypd",
					}
				}
			}
		}
	},
	{
		Category = "Dash light",
		Options = {
            {
				Option = "Beacon",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( 0, 36, 38.5 ),
						Angles = Angle( 8, 270, 0 ),
						Scale = .75,
						BodyGroups = {
							["trim"] = 0,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/sprops/misc/tubes_thin/size_2/t_h_tube_24x12.mdl",
						Position = Vector( 0, 34.5, 40),
						Angles = Angle( 0, 0, 98 ),
						Scale = Vector( 0.3, 0.5, 0.5),
						SubMaterials = {
							[0] = "sentry/shared/black"
						},
					    RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
		}
	},
	{
		Category = "Grille Lights",
		Options = {
            {
				Option = "Federal Signal GH1",
				Components = {
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( -9, 104, 20.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( 9, 104, 20.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Phase = 180,
					},
                }
			},
			{
				Option = "None",
			},
		}
	},
	{
		Category = "Spotlight",
		Options = {
			{
				Option = "Spotlight",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -37.5, 30, 42 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
				}
				
			},
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Federal Signal Smart Siren",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 104, 24 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "fedsig_smartsiren",
						Templates = {
							["Sound"] = { 
								Tone = {
									DSP = 0,
									Pitch = 100
								}
							}
						},
						Inputs = { 
							["Emergency.SirenParkKill"] = { ["PARK"] = {} }
						}
					},
				}
			}
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "Steelies",
				Bones = {
					{ Bone = "fl_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "fr_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "bl_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "br_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
				},
				Props = {
					{
						Model = "models/rin/95caprice/steelie/rin_steelies.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Bones = {
							["wheel_fl"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_fl" }
							},
							["wheel_fr"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_fr" }
							},
							["wheel_rl"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_rl" }
							},
							["wheel_rr"] = { 
								Position = Vector( -2.7, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_rr" }
							},
						},
					}	
				},
			},
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 51),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 4.5, -4),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/rob/oldpolicepack/motorola.mdl",
						Position = Vector( 0, 24, 27.5 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/nypd/props/mdt/mdt",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/photon_ex/controllers/fedsig_scsb.mdl",
						Position = Vector( 0, 8.7, 21 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 12, 21.8 ),
						Angles = Angle( 200, 270, 0 ),
						Scale = 0.32,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, -5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, -102, 41.2 ),
						Angles = Angle( 0, 0, 7 ),
						Scale = Vector( 1, 1, 0.7 ),
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 114, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 112.2, 15.1),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 1.15, 1.2),
						Color = Color(0, 0, 0),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.2, 25.2 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 114.7, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_2",
						},
					},
				}
			}
		}
	},
}
