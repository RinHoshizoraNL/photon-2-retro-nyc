if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1982 Ford Econoline Volunteer Heart Ambulance"
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
					{ Id = 18, Material = "rin/ems/econoline82/volunteer_heart" },
					{ Id = 15, Material = "rin/nypd/props/white" },
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
                        Component = "photon_fedsig_aerodynic_transit",
                        Position = Vector( 0, 60, 98 ),
                        Angles = Angle( 0, 180, 2 ),
                        Scale = 1.1,
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
						States = { "~B" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_3",
						},
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
						States = { "~B" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_3",
						},
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
						States = { "~B" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_3",
						},
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
						States = { "~B" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_3",
						},
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
						States = { "~B" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_3",
						},
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -42.5, -152.5, 86 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						Phase = 90,
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
						Position = Vector( 42.5, -152.5, 86 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						States = { "~B" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_3",
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
		Category = "Spotlights",
		Options = {
			{
				Option = "Spotlights",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -44, 93.5, 75 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 44, 93.5, 75 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						},
						Inputs = {
							-- Clear the default illumination mode
							["Emergency.SceneForward"] = { ["ON"] = {} },
						}
					}
				}
				
			},
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
		Category = "Antenna",
		Options = {
			{
				Option = "Antenna",
				Props = {
					{
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( -45, 110, 61 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
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
