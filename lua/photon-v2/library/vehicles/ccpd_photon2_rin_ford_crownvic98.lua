if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1998 Ford Crown Victoria Co-op City Police (Bronx)"
VEHICLE.Vehicle		= "cvpi_hd_98_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Other"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 3, Material = "rin/nyc_other/crownvic98/ccpd" }
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
						Component = "photon_standard_cvpi98_nypd",
					}
				}
			}
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Federal Signal Vista",
				Components = {
					{
						Component = "photon_fedsig_vista_ccpd",
						Position = Vector( 0, -19, 71.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.98,
						BodyGroups = {
							["middle_part"] = 2,
						},
						SubMaterials = {
							[7] = "sentry/shared/glass",
						},
					},
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -0.05, -10.5, 74.55 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector( 1, 0.51, 0.45 ),
						SubMaterials = {
							[1] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -0.05, -27.5, 74.55 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.51, 0.45 ),
						SubMaterials = {
							[1] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 10.5, -11.7, 74.55 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector( 1, 0.51, 0.45 ),
						SubMaterials = {
							[1] = "schmal/photon/fedsig_visionslr/lens_pod_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -10.5, -11.7, 74.55 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector( 1, 0.51, 0.45 ),
						SubMaterials = {
							[1] = "schmal/photon/fedsig_visionslr/lens_pod_3",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 10.5, -26, 74.55 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.51, 0.45 ),
						SubMaterials = {
							[1] = "schmal/photon/fedsig_visionslr/lens_pod_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -10.5, -26, 74.55 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.51, 0.45 ),
						SubMaterials = {
							[1] = "schmal/photon/fedsig_visionslr/lens_pod_3",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 21, -14, 74.55 ),
						Angles = Angle( 0, 65, 0 ),
						Scale = Vector( 1, 0.51, 0.45 ),
						SubMaterials = {
							[1] = "schmal/photon/fedsig_visionslr/lens_pod_3",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -21, -14, 74.55 ),
						Angles = Angle( 0, 115, 0 ),
						Scale = Vector( 1, 0.51, 0.45 ),
						SubMaterials = {
							[1] = "schmal/photon/fedsig_visionslr/lens_pod_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 21, -24, 74.55 ),
						Angles = Angle( 0, -65, 0 ),
						Scale = Vector( 1, 0.51, 0.45 ),
						SubMaterials = {
							[1] = "schmal/photon/fedsig_visionslr/lens_pod_3",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -21, -24, 74.55 ),
						Angles = Angle( 0, -115, 0 ),
						Scale = Vector( 1, 0.51, 0.45 ),
						SubMaterials = {
							[1] = "schmal/photon/fedsig_visionslr/lens_pod_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 9.35, -11.2, 70.1 ),
						Angles = Angle( 0, 83, 0 ),
						Scale = Vector( 1, 0.34, 0.22 ),
						SubMaterials = {
							[1] = "schmal/photon/fedsig_visionslr/lens_pod_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -9.35, -11.2, 70.1 ),
						Angles = Angle( 0, 97, 0 ),
						Scale = Vector( 1, 0.34, 0.22 ),
						SubMaterials = {
							[1] = "schmal/photon/fedsig_visionslr/lens_pod_3",
						},
					},
				}
			}
		}
	},
	{
		Category = "Rear Deck Lights",
		Options = {
            {
				Option = "Rear Deck Lights",
				Components = {
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( -12, -77, 49 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.7,
						Phase = 180,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE2"] = {},
							}
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( 12, -77, 49 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.7,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE2"] = {},
							}
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                },
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -12, -77, 46 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 12, -77, 46  ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},
		}
	},
	{
		Category = "Spotlight",
		Options = {
			{
				Option = "Pillar Spotlight",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -35.06, 26.46, 49.282 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
                },
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
						Position = Vector( 0, 107, 29.3 ),
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
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 1 },
				},
			}
		}
	},
    {
		Category = "Rain Guards",
		Options = {
			{
				Option = "None",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 0 },
				},
			},
			{
				Option = "Rain Guards",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 1 },
				},
			},
		}
	},
	{
		Category = "Model Year",
		Options = {
			{
				Option = "1998",
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 0 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 1 },
					{ BodyGroup = "bumperr_chrome", Value = 1 },
					{ BodyGroup = "4bulb_tails", Value = 1 },
				},
			},
			{
				Option = "1999",
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 0 },
					{ BodyGroup = "grille", Value = 3 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
					{ BodyGroup = "4bulb_tails", Value = 1 },
				},
			},
			{
				Option = "2001",
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 0 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "reartrim", Value = 0 },
					{ BodyGroup = "handles", Value = 1 },
					{ BodyGroup = "trunkmodel", Value = 0 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
					{ BodyGroup = "4bulb_tails", Value = 1 },
				},
			},
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "rearfascia", Value = 1 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "door_l_notch", Value = 1 },
					{ BodyGroup = "door_r_notch", Value = 1 },
					{ BodyGroup = "pillars", Value = 1 },
				},
				Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 13.8, 58.55),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/photon_ex/controllers/fedsig_scsb.mdl",
						Position = Vector( 0, 4.1, 25 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 7.5, 25.7 ),
						Angles = Angle( 200, 270, 0 ),
						Scale = 0.32,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/rob/oldpolicepack/motorola.mdl",
						Position = Vector( 0, 20, 31.2 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/nypd/props/mdt/mdt",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/nyc_other/props/plates/plate_ccpd",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 49.2, -9.8, 0 ),
						Angles = Angle( 0, 12, -90 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nyc_other/props/plates/plate_ccpd",
						},
						FollowBone = "trunk"
					},
				}
			}
		}
	},
}