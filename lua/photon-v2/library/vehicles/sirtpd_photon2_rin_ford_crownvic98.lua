if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1998 Ford Crown Victoria Staten Island Rapid Transit Police"
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
					{ Id = 3, Material = "rin/nyc_other/crownvic98/sirt" }
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
				Option = "Federal Signal Vision",
				Components = {
					{
						Component = "photon_fedsig_vision_nypd",
						Position = Vector( 0, -14, 65.6 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						BodyGroups = {
							["rear_ta"] = 1,
							["straps"] = 1,
						},
					},
					{
						Component = "photon_whe_500_nypd",
						Position = Vector( 0, -26.2, 69.4 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.85,
					},
				}
			}
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
					{ BodyGroup = "rearfascia", Value = 0 },
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
						Model = "models/gandhi/props/vision.mdl",
						Position = Vector( 0, 4.1, 25 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 0.8,
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
						Model = "models/schmal/antenna_pod_navigator.mdl",
						Position = Vector( 0, -45, 67.6 ),
						Angles = Angle( -3.5, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/schmal/chevcap13_bumper.mdl",
						Position = Vector( 0, 122, 19.8),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 0.8),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_1",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 49.2, -9.8, 0 ),
						Angles = Angle( 0, 12, -90 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_1",
						},
						FollowBone = "trunk"
					},
				}
			}
		}
	},
}