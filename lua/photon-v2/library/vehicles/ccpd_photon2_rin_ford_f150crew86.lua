if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1986 Ford F150 Co-op City Police ESU (Bronx)"
VEHICLE.Vehicle		= "86f150_crew_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Other"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "ESU",
				SubMaterials = {
					{ Id = 22, Material = "rin/nyc_other/f150crew86/ccpd" },
				},
				Components = {
					{
                        Component = "photon_fedsig_aerodynic_transit",
                        Position = Vector( 0, 3, 83.5 ),
                        Angles = Angle( 0, 180, 2 ),
                        Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
							}
						}
					},
					{
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 96, 45 ),
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
		Category = "Rear Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "fedsig_electraflash",
						Position = Vector( -34, -27, 113.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						States = { "R" },
						SubMaterials = {
							[1] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
							}
						}
					},
					{
						Component = "fedsig_electraflash",
						Position = Vector( 34, -27, 113.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = 180,
						States = { "W" },
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
							}
						}
					},
					{
						Component = "fedsig_electraflash",
						Position = Vector( 34, -157, 113.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						States = { "R" },
						SubMaterials = {
							[1] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
							}
						}
					},
					{
						Component = "fedsig_electraflash",
						Position = Vector( -34, -157, 113.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = 180,
						States = { "W" },
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
							}
						}
					},
				}
			}
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
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
							}
						}
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
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
							}
						}
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
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
							}
						}
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
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
							}
						}
					}
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
						Color = Color(0, 24, 48),
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
		Category = "Props",
		Options = {
			{
				Option = "Props",
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -39, -162.9, 27 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 20.3, 115, 48.2 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_2",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( -43.7, -30, 104 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 43.7, -30, 104 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( -43.7, -153, 104 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 43.7, -153, 104 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
				}
			}
		}
	},
}
