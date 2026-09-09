if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1994 Ford F150 Ambulance NYC EMS"
VEHICLE.Vehicle		= "86f150_ambu_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYC EMS"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Ambulance 1994",
				SubMaterials = {
					{ Id = 22, Material = "rin/ems/f150ambo86/ems_94" },
					{ Id = 27, Material = "rin/nypd/props/white" },
				},
			},
		}
	},
	{
		Category = "Dash light",
		Options = {
            {
				Option = "None",
			},
			{
				Option = "Beacon",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( 0, 35, 62.9 ),
						Angles = Angle( -5, 270, -2 ),
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
						Position = Vector( 0, 33.5, 65.7),
						Angles = Angle( 2, 0, 84.5 ),
						Scale = Vector( 0.3, 0.35, 0.5),
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
		Category = "Trim Delete",
		Options = {
			{
				Option = "Trim Delete",
				BodyGroups = {
					{ BodyGroup = "fbumper", Value = 1 },
					{ BodyGroup = "ftrim", Value = 1 },
					{ BodyGroup = "doortrim", Value = 0 },
				},
			}
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Federal Signal PA4000",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 96, 45 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "fs_pa4000",
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
		Category = "Lightbar",
		Options = {
            {
				Option = "Whelen Advantedge",
				Components = {
					{
						Component = "photon_whe_advantedge_transit",
						Position = Vector( 0, 0, 85 ),
						Angles = Angle( -1, -90, 0 ),
						Scale = 1.05,
						BodyGroups = { 
							["feet"] = 0,
							["straps"] = 1,
							["speaker"] = 1,
							["rear_lights"] = 2
						},
						Bones = {
							["foot_dr"] =	{ Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["foot_pas"] =	{ Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["strap_dr"] =	{ Vector( 0, -0.1, -0.1 ), Angle( 0, 0, 9 ), 1 },
							["strap_pas"] =	{ Vector( 0, 0.1, -0.1 ), Angle( 0, 0, -9 ), 1 },

							["500_rear_dr"] =	{ Vector( 0, -2.95, 0 ), Angle( 0, 0, 0 ), 1 },
							["500_rear_pas"] =	{ Vector( 0, 2.95, 0 ), Angle( 0, 0, 0 ), 1 },
						},
						SubMaterials = {
							[2] = "sentry/shared/glass",
						},
					}
                }
			}
		}
	},
	{
		Category = "Grille Flashers",
		Options = {
            {
				Option = "Federal Signal GH1",
				Components = {
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( -22.5, 101.4, 49 ),
						Angles = Angle( 2, 91, 180 ),
						Scale = 0.9,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( 22.5, 101.4, 49 ),
						Angles = Angle( 2, 89, 180 ),
						Scale = 0.9,
					},
                }
			},
		}
	},
	{
		Category = "Front Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -45, -19.7, 117 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.2,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 0, -19.7, 117 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.2,
						Phase = 90,
						States = { "SW" },
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 45, -19.7, 117 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.2,
					},
                }
			},
		}
	},
	{
		Category = "Left Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -58, -34, 117 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -58, -202, 117 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( -58, -61, 117 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( -58, -175, 117 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
				},
			},
		}
	},
	{
		Category = "Right Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 58, -34, 117 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 58, -202, 117 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 58, -61, 117 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 58, -175, 117 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
				},
			},
		}
	},
	{
		Category = "Rear Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -45, -216.2, 117 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 45, -216.2, 117 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 0, -216.2, 117 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						States = { "~A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
                },
				Props = {
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( -22.5, -216.2, 117 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 22.5, -216.2, 117 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
				},
			},
		}
	},
	{
		Category = "License Plates",
		Options = {
			{
				Option = "License Plates",
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -41, -215.7, 30 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 102.7, 22.7 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
				}
			}
		}
	},
	{
		Category = "Aircon",
		Options = {
			{
				Option = "Aircon",
				Props = {
					{
						Model = "models/w4nou/aeration_vsav.mdl",
						Position = Vector( 0, -7, 104 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 0, -7, 99.8),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 8.3, 15, 0.2),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( -21.6, -8, 97.3),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1.5, 0.6, 9),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( 21.6, -8, 97.3),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1.5, 0.6, 9),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
				}
			}
		}
	},
	{
		Category = "Pushbar",
		Options = {
			{
				Option = "Pushbar",
				Props = {
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 17.5, 108, 37.1),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 4.5),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/geometry/hdisc_12.mdl",
						Position = Vector( 17.5, 109.5, 50.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.25, 0.8, 0.6),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/geometry/qdisc_12.mdl",
						Position = Vector( 17.5, 108, 22.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1, 0.8, 0.99),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 17.5, 99.5, 19.7),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.1, 0.8, 4),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 17.5, 104, 33.9),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.1, 0.8, 4),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 19.5, 109.5, 50.5),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.45, 0.45, 4),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 19.5, 108.5, 33),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.45, 0.45, 4),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/misc/fittings/bend_short_90_3.mdl",
						Position = Vector( 26.5, 109.5, 50.15),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.45, 0.45, 0.45),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 26.85, 109, 41.8),
						Angles = Angle( 0, 0, -4 ),
						Scale = Vector( 0.45, 0.45, 5),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/misc/fittings/bend_short_90_3.mdl",
						Position = Vector( 26.5, 108.5, 33.33),
						Angles = Angle( 0, 0, 180 ),
						Scale = Vector( 0.45, 0.45, 0.45),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 109.5, 50.5),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.65, 0.65, 12),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 108.5, 33),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 1, 1, 12),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -17.5, 108, 37.1),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 4.5),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/geometry/hdisc_12.mdl",
						Position = Vector( -17.5, 109.5, 50.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.25, 0.8, 0.6),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/geometry/qdisc_12.mdl",
						Position = Vector( -17.5, 108, 22.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1, 0.8, 0.99),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -17.5, 99.5, 19.7),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.1, 0.8, 4),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -17.5, 104, 33.9),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.1, 0.8, 4),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( -19.5, 109.5, 50.5),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.45, 0.45, 4),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( -19.5, 108.5, 33),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.45, 0.45, 4),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/misc/fittings/bend_short_90_3.mdl",
						Position = Vector( -26.5, 109.5, 50.15),
						Angles = Angle( 0, 180, 0 ),
						Scale = Vector( 0.45, 0.45, 0.45),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( -26.85, 109, 41.8),
						Angles = Angle( 0, 0, -4 ),
						Scale = Vector( 0.45, 0.45, 5),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/misc/fittings/bend_short_90_3.mdl",
						Position = Vector( -26.5, 108.5, 33.33),
						Angles = Angle( 0, 180, 180 ),
						Scale = Vector( 0.45, 0.45, 0.45),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
				}
			},
			{
				Option = "None",
			},
		}
	},
}
