if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1996 Chevrolet Caprice FDNY"
VEHICLE.Vehicle		= "95caprice_sgm"
VEHICLE.Category 	= "Photon 2 NYC: FDNY"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Fire 1995",
				SubMaterials = {
					{ Id = 22, Material = "rin/fdny/caprice95/fire_96" },
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
				Option = "Code3 MX7000",
				Components = {
					{
						Component = "photon_c3_mx7000_nycems",
						Position = Vector( 0, -15, 59.6 ),
						Angles = Angle( 0, 180, 1.5 ),
						Scale = 1.08,
					},
                }
			},
		}
	},
	{
		Category = "Grille Lights",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( -9, 108.3, 24 ),
						Angles = Angle( 0, 6, -2 ),
						Scale = 0.7,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 9, 108.3, 24 ),
						Angles = Angle( 0, -6, -2 ),
						Scale = 0.7,
						Phase = 90,
					},
                }
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
				Option = "Federal Signal PA300",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 104, 24 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "pa300_1",
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
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				BodyGroups = {
					{ BodyGroup = "trim", Value = 0 },
				},
				Props = {
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 4.5, -4),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/mastercom.mdl",
						Position = Vector( 0, 4, 20.5),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[0] = "rin/nypd/props/pa300/pa300",
						},
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
						Model = "models/schmal/antenna_absc.mdl",
						Position = Vector( 36, -105, 38.2 ),
						Angles = Angle( 4, 0, 6 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_absc.mdl",
						Position = Vector( -36, -105, 38.2 ),
						Angles = Angle( -4, 0, 6 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antennas/antenna_2.mdl",
						Position = Vector( 0, -115, 39.7 ),
						Angles = Angle( 0, 0, 6 ),
						Scale = 1
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 114, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.2, 25.2 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_fdny",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 114.7, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_fdny",
						},
					},
				}
			}
		}
	},
	{
		Category = "Bumper Guard Front",
		Options = {
			{
				Option = "Bumper Guard Front",
				Props = {
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 15, 112, 21),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 2),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 15, 112, 13.2),
						Angles = Angle( 180, 270, 0 ),
						Scale = Vector( 1, 0.8, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 15, 115.2, 21),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.35, 0.1, 1.7),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 15, 113.75, 13.5),
						Angles = Angle( 0, 0, -30 ),
						Scale = Vector( 0.35, 0.1, 1),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -15, 112, 21),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 2),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -15, 112, 13.2),
						Angles = Angle( 180, 270, 0 ),
						Scale = Vector( 1, 0.8, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -15, 115.2, 21),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.35, 0.1, 1.7),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -15, 113.75, 13.5),
						Angles = Angle( 0, 0, -30 ),
						Scale = Vector( 0.35, 0.1, 1),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
				}
			}
		}
	},
}
