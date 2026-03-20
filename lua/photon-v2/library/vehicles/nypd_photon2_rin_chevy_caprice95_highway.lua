if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1995 Chevrolet Caprice NYPD Highway Patrol"
VEHICLE.Vehicle		= "95caprice_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYPD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Highway Patrol 1995 A",
				SubMaterials = {
					{ Id = 22, Material = "rin/nypd/caprice95/highway_95a" },
					{ Id = 20, Material = "rin/nypd/caprice95/seats_blue" },
					{ Id = 21, Material = "rin/nypd/caprice95/dash_blue" }
				},
			},
			{
				Option = "Highway Patrol 1995 B",
				SubMaterials = {
					{ Id = 22, Material = "rin/nypd/caprice95/highway_95b" },
					{ Id = 20, Material = "rin/nypd/caprice95/seats_blue" },
					{ Id = 21, Material = "rin/nypd/caprice95/dash_blue" }
				},
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
		Category = "Lightbar",
		Options = {
			{
				Option = "Federal Signal Vision",
				Components = {
					{
						Component = "photon_fedsig_vision_nypd",
						Position = Vector( 0, -13, 58.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.07,
						BodyGroups = {
							["rear_ta"] = 1,
							["straps"] = 1,
						},
					},
				}
			}
		}
	},
	{
		Category = "Highriser",
		Options = {
			{
				Option = "Highriser",
				Props = {
					{
						Model = "models/tdmcars/emergency/equipment/mcdermott_riser.mdl",
						Position = Vector( 0, -38, 61.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.95,
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -24, -47.3, 57.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 24, -47.3, 57.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -24, -28.6, 57.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 24, -28.6, 57.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -2.5, -44, 67 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 8.2, 0.2, 0.44 ),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 2.5, -32, 67 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 8.2, 0.2, 0.44 ),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -8, -33, 68 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 8, -43, 68 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
				},
				Components = {
					{
						Component = "photon_whe_500_nypd",
						Position = Vector( 0, -48, 64.3 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.92,
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( 21.4, -33, 66.9 ),
						Angles = Angle( 90, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( -21.4, -43, 66.9 ),
						Angles = Angle( -90, 0, 0 ),
						Scale = 1,
						Phase = 180,
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( 20, -33, 62.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = 180,
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( -20, -43, 62.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( -8, -33, 70 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( 8, -43, 70 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
				}
			}
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
						Model = "models/gandhi/props/vision.mdl",
						Position = Vector( 0, 8.7, 21 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 0.8,
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
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( 0, -100, 41.2 ),
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
						Color = Color(1, 123, 208),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.2, 25.2 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol95",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 114.7, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol95",
						},
					},
				}
			}
		}
	},
}
