if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1989 Chevrolet Suburban FDNY Battalion"
VEHICLE.Vehicle		= "tal89suburban"
VEHICLE.Category 	= "Photon 2 NYC: FDNY"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
    [2] = "sentry/dippy/black",
	[4] = "sentry/shared/env_cubemap_model",
	[11] = "sentry/shared/glass",
}

VEHICLE.Equipment = {
    {
		Category = "Livery",
		Options = {
			{
				Option = "Battalion 46",
				SubMaterials = {
					{ Id = 1, Material = "rin/fdny/suburban89/battalion_46" },
					{ Id = 0, Material = "rin/fdny/suburban89/battalion_46" },
				},
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 2 },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Federal Signal Aerodynic",
				Components = {
					{
                        Component = "fedsig_aerodynicny",
                        Position = Vector( -1.5, 17, 87.9 ),
                        Angles = Angle( 0, 180, 2 ),
                        Scale = 1.05,
					},
				}
			},
        }
	},
	{
		Category = "Pushbar Lights",
		Options = {
            {
				Option = "Pushbar Lights",
				Components = {
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( -17, 127, 45.5 ),
						Angles = Angle( 270, 0, 0 ),
						Scale = 0.9,
						Phase = 180,
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( 14.3, 127, 45.5 ),
						Angles = Angle( 90, 0, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
                },
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -14.5, 127, 45.5 ),
						Angles = Angle( 270, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 11.8, 127, 45.5 ),
						Angles = Angle( 90, 0, 0 ),
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
		Category = "Side Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( -44.55, 113, 48 ),
						Angles = Angle( 0, 80, 1.5 ),
						Scale = 0.7,
						Phase = 90,
						States = { "SW" },
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 41.57, 113, 48 ),
						Angles = Angle( 0, -80, 1.5 ),
						Scale = 0.7,
						States = { "SW" },
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
				}
			},
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
						Position = Vector( -1.7, -82, 91 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -27.1, -72.2, 87 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 23.7, -72.2, 87 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -27.1, -91.8, 87 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 23.7, -91.8, 87 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 0.5, -75.8, 96.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 8.7, 0.2, 0.48 ),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -4, -88, 96.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 8.7, 0.2, 0.48 ),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
				},
				Components = {
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( 21.1, -77.2, 96.8),
						Angles = Angle( 90, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( -24.5, -86.9, 96.8 ),
						Angles = Angle( -90, 0, 0 ),
						Scale = 1,
						Phase = 180,
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( 18.3, -77.2, 92.4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = 180,
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( -21.7, -86.9, 92.4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( 3.3, -77.2, 92.4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( -6.7, -86.9, 92.4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = 180,
					},
				}
			}
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
						Position = Vector( -9, 126, 42 ),
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
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				Props = {
					{
						Model = "models/sentry/props/spotlight_left_down.mdl",
						Position = Vector( -1.7, 30, 86 ),
						Angles = Angle( 45, 40, 90 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
					{
						Model = "models/sentry/props/skybolt_flasher.mdl",
						Position = Vector( -37, 73, 52.2 ),
						Angles = Angle( -4, 0, -2 ),
						Scale = 1.5,
						SubMaterials = {
							[2] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sprops/misc/domes/size_1/dome_12x6.mdl",
						Position = Vector( -38, 70.1, 66.6 ),
						Angles = Angle( 0, 0, 88 ),
						Scale = Vector( 0.575, 0.575, 0.5 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model"
						}
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -1.7, -124.2, 29.4 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_red",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -1.4, 123.9, 30 ),
						Angles = Angle( 12, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_red",
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
						Position = Vector( 12.5, 128, 41),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector( 1, 0.8, 3),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -15, 128, 41),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector( 1, 0.8, 3),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/hdisc_12.mdl",
						Position = Vector( 12.5, 126.5, 50.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.25, 0.8, 0.6),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/hdisc_12.mdl",
						Position = Vector( -15, 126.5, 50.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.25, 0.8, 0.6),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qdisc_12.mdl",
						Position = Vector( 12.5, 128.0, 30.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1, 0.8, 0.99),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qdisc_12.mdl",
						Position = Vector( -15, 128.0, 30.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1, 0.8, 0.99),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 12.5, 121, 38.6),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.2, 0.8, 4),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -15, 121, 38.6),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.2, 0.8, 4),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 12.5, 120, 27.9),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.2, 0.8, 4),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -15, 120, 27.9),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.2, 0.8, 4),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( -1.4, 126.5, 51),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.65, 0.65, 9),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( -1.4, 127.5, 38),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.9, 0.9, 9),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
				}
			}
		}
	},
}
