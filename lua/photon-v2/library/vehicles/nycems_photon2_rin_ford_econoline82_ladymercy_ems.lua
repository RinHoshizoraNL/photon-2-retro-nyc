if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1982 Ford Econoline Lady Of Mercy Ambulance"
VEHICLE.Vehicle		= "82econoline_ambu_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYC EMS (Private)"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Ambulance",
				SubMaterials = {
					{ Id = 18, Material = "rin/ems/econoline82/lady_mercy" },
					{ Id = 15, Material = "rin/nypd/props/white" },
					{ Id = 3, Material = "rin/nypd/econoline82/cube_int_dark" },
					{ Id = 6, Material = "rin/nypd/econoline82/plastic_dark" },
					{ Id = 7, Material = "rin/nypd/econoline82/seat_dark" },
					{ Id = 8, Material = "rin/nypd/econoline82/seat2_dark" },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Code3 XL",
				Components = {
					{
                        Component = "code3_xl",
                        Position = Vector( 0, 60, 98 ),
                        Angles = Angle( 0, 0, -1 ),
                        Scale = 1.03,
					},
				}
			},
        }
	},
	{
		Category = "Grille Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -17, 148.3, 44 ),
						Angles = Angle( 0, 2, -4.5 ),
						Scale = 1,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 17, 148.3, 44 ),
						Angles = Angle( 0, -2, -4.5 ),
						Scale = 1,
						Phase = 90,
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
						Position = Vector( -44, 43.8, 113.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 44, 43.8, 113.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
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
						Position = Vector( -58, 30, 113.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -58, -139, 113.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						Phase = 90,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( -58, 10, 113.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( -58, -112, 113.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
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
						Position = Vector( 58, 30, 113.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 58, -139, 113.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 58, 10, 113.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 58, -112, 113.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
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
						Position = Vector( -42.5, -152.5, 112.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -42.5, -152.5, 90 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						Phase = 90,
						States = { "~A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 42.5, -152.5, 112.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 42.5, -152.5, 90 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						States = { "~A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
				},
			},
		}
	},
	{
		Category = "Rear Work Lights",
		Options = {
			{
				Option = "Rear Work Lights",
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -14, -151.5, 111 ),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 14, -151.5, 111 ),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
				},
				Components = {
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( -14, -153.5, 111 ),
						Angles = Angle( 0, 180, -75 ),
						Scale = 1,
					},
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( 14, -153.5, 111 ),
						Angles = Angle( 0, 180, -75 ),
						Scale = 1,
					},
				}
			}
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Scientific Prototypes Mark-VII",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 140, 50 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "sp_mk7",
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
		Category = "Side Steps",
		Options = {
			{
				Option = "Side Steps",
				Props = {
					{
						Model = "models/supermighty/photon/sidestep.mdl",
						Position = Vector( 0, 106, -7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector(0.72, 1, 1),
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
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -41.5, -152, 30 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 148.9, 25.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
				}
			}
		}
	},
}
