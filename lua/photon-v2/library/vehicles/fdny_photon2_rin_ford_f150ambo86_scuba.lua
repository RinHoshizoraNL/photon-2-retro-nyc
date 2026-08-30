if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1986 Ford F150 FDNY Scuba Team"
VEHICLE.Vehicle		= "86f150_ambu_sgm"
VEHICLE.Category 	= "Photon 2 NYC: FDNY"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Scuba Team",
				SubMaterials = {
					{ Id = 22, Material = "rin/fdny/f150ambo86/scuba_86" },
				},
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
		Category = "Lightbar",
		Options = {
            {
				Option = "Federal Signal Twinsonic",
				Components = {
					{
                        Component = "fedsig_twinsonic",
                        Position = Vector( 0, 0, 86 ),
                        Angles = Angle( 0, 0, -1 ),
                        Scale = 0.95,
					},
				}
			},
        }
	},
	{
		Category = "Hood Lights",
		Options = {
            {
				Option = "Grille Lights",
				Components = {
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( -41.8, 47, 58 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						Phase = 180,
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( 41.8, 47, 58 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
                },
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -41.8, 47, 55 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 41.8, 47, 55 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
				},
			},
		}
	},
	{
		Category = "Spotlights",
		Options = {
            {
				Option = "Federal Signal Twinsonic",
				Components = {
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( -50, -17.5, 100 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( -42, -17.5, 100 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( -34, -17.5, 100 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
				},
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -50, -17.5, 98 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -42, -17.5, 98 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -34, -17.5, 98 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -42, -17.5, 98),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.5, 5.8, 0.2),
						SubMaterials = {
							[0] = "rin/fdny/props/red",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( -42, -17.5, 82.8),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.5, 0.5, 10),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( -42, -19, 88),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 2, 1, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( -42, -19, 70),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 2, 1, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
				},
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
						Position = Vector( 0, 96, 45 ),
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
		Category = "Front Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -40, -19.7, 115.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.2,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 40, -19.7, 115.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
                }
			},
		}
	},
	{
		Category = "Left Flasher",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -58, -120, 115.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
				},
			},
		}
	},
	{
		Category = "Right Flasher",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 58, -120, 115.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
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
						Position = Vector( -43, -216.2, 115.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 43, -216.2, 115.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -43, -216.2, 68 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						Phase = 90,
						States = { "~A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 43, -216.2, 68 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						States = { "~A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
                }
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
							[1] = "rin/fdny/props/plates/plate_fdny",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 102.7, 22.7 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_fdny",
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
						Position = Vector( 0, -7, 107 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/fdny/props/red",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 0, -7, 102.8),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 8.3, 15, 0.2),
						SubMaterials = {
							[0] = "rin/fdny/props/red",
						},
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( -21.6, -8, 100.3),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1.5, 0.6, 9),
						SubMaterials = {
							[0] = "rin/fdny/props/red",
						},
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( 21.6, -8, 100.3),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1.5, 0.6, 9),
						SubMaterials = {
							[0] = "rin/fdny/props/red",
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
						Position = Vector( 22.5, 105, 33),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 3),
						SubMaterials = {
							[0] = "sentry/86f150_ambu/wheel",
						},
					},
					{
						Model = "models/sprops/geometry/hdisc_12.mdl",
						Position = Vector( 22.5, 106.5, 42.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.25, 0.8, 0.6),
						SubMaterials = {
							[0] = "sentry/86f150_ambu/wheel",
						},
					},
					{
						Model = "models/sprops/geometry/qdisc_12.mdl",
						Position = Vector( 22.5, 105, 22.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1, 0.8, 0.99),
						SubMaterials = {
							[0] = "sentry/86f150_ambu/wheel",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -22.5, 105, 33),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 3),
						SubMaterials = {
							[0] = "sentry/86f150_ambu/wheel",
						},
					},
					{
						Model = "models/sprops/geometry/hdisc_12.mdl",
						Position = Vector( -22.5, 106.5, 42.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.25, 0.8, 0.6),
						SubMaterials = {
							[0] = "sentry/86f150_ambu/wheel",
						},
					},
					{
						Model = "models/sprops/geometry/qdisc_12.mdl",
						Position = Vector( -22.5, 105, 22.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1, 0.8, 0.99),
						SubMaterials = {
							[0] = "sentry/86f150_ambu/wheel",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 106.5, 43),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.65, 0.65, 14.5),
						SubMaterials = {
							[0] = "sentry/86f150_ambu/wheel",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 105.5, 29),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 1, 1, 14.5),
						SubMaterials = {
							[0] = "sentry/86f150_ambu/wheel",
						},
					},
				}
			}
		}
	},
}
