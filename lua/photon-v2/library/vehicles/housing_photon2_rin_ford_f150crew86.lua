if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1994 Ford F150 Housing Police ESU"
VEHICLE.Vehicle		= "86f150_crew_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Housing Police"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Housing Police Rescue",
				SubMaterials = {
					{ Id = 22, Material = "rin/housing/f150crew86/housing_94" },
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
		Category = "Front Lightbar",
		Options = {
            {
				Option = "Federal Signal Vision",
				Components = {
					{
						Component = "photon_fedsig_vision_nypd",
						Position = Vector( 0, 0, 83.3 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.15,
						BodyGroups = {
							["rear_ta"] = 1,
							["straps"] = 1,
						},
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
						Position = Vector( -43.6, -95, 104 ),
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
						Position = Vector( 43.6, -95, 104 ),
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
						Position = Vector( -35.5, -163.2, 100 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						States = { "~A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -35.5, -163.2, 78 ),
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
						Position = Vector( 35.5, -163.2, 100 ),
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
						Position = Vector( 35.5, -163.2, 78 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
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
		Category = "Rear Lightbar",
		Options = {
			{
				Option = "Code3 XL Mini",--SHOULD BE A MINI JETSTREAM BUT SORRY DON'T HAVE ONE :(
				Components = {
					{
						Component = "code3_xl_mini",
						Position = Vector( 0, -152, 115.25 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.85,
					},
				}
			}
		}
	},
	{
		Category = "Traffic Advisor",
		Options = {
			{
				Option = "Traffic Advisor",
				Components = {
					{
						Component = "photon_whe_500_nypd",
						Position = Vector( 0, -160.5, 115.25 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.85,
					},
				}
			}
		}
	},
	{
		Category = "Front Spotlights",
		Options = {
			{
				Option = "Front Spotlights",
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -5, -22, 115 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 5, -22, 115 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -15, -22, 115 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 15, -22, 115 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
				},
				Components = {
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( -5, -22, 117 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( 5, -22, 117 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( -15, -22, 117 ),
						Angles = Angle( 0, 10, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( 15, -22, 117 ),
						Angles = Angle( 0, -10, 0 ),
						Scale = 1,
					},
				}
			}
		}
	},
	{
		Category = "Rear Spotlights",
		Options = {
			{
				Option = "Rear Spotlights",
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -34, -160, 113 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 34, -160, 113 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
				},
				Components = {
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( -34, -160, 115 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( 34, -160, 115 ),
						Angles = Angle( 0, 180, 0 ),
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
		Category = "Pushbar",
		Options = {
			{
				Option = "Pushbar",
				Props = {
					{
						Model = "models/supermighty/props/nypd_esu_bumper.mdl",
						Position = Vector( 0.3, 108, 25 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.7, 0.82, 0.75 ),
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 112, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector( 1, 3.3, 2 ),
					},
				}
			}
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
						Position = Vector( -39, -162.9, 27 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/housing/props/plates/plate_patrol91",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 20.3, 115, 48.2 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/housing/props/plates/plate_patrol91",
						},
					},
				}
			}
		}
	},
}
