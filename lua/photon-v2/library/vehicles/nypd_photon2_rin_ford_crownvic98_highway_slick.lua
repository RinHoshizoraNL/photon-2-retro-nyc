if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1998 Ford Crown Victoria NYPD Highway Patrol Slicktop"
VEHICLE.Vehicle		= "cvpi_hd_98_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYPD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Highway Patrol",
				SubMaterials = {
					{ Id = 3, Material = "rin/nypd/crownvic98/highway_98_slick" }
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
		Category = "Dash light",
		Options = {
            {
				Option = "Beacon",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( 0, 29, 47.4 ),
						Angles = Angle( -4, 270, -1 ),
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
						Position = Vector( 0, 27.5, 49.3),
						Angles = Angle( 1, 0, 86 ),
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
		Category = "Visor Light",
		Options = {
            {
				Option = "Visor Light",
				Components = {
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( -2, 13.9, 63 ),
						Angles = Angle( 0, 90, 180 ),
						Scale = 0.7,
						Phase = 180,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( 2, 13.9, 63 ),
						Angles = Angle( 0, 90, 180 ),
						Scale = 0.7,
						SubMaterials = {
							[2] = "sentry/shared/glass"
						},
						States = {
							[1] = "SW",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
			{
				Option = "None",
			},
		}
	},
	{
		Category = "Grille",
		Options = {
            {
				Option = "Federal Signal GH1",
				Components = {
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( -8.5, 108, 26 ),
						Angles = Angle( 0, 95, 0 ),
						Scale = 0.9,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( 8.5, 108, 26 ),
						Angles = Angle( 0, 85, 0 ),
						Scale = 0.9,
						Phase = 180,
					},
                }
			},
		}
	},
	{
		Category = "Rear Deck",
		Options = {
            {
				Option = "Federal Signal GH1",
				Components = {
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( -22, -74.5, 48 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( 22, -74.5, 48 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Phase = 180,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( -16.7, -74.5, 48 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Phase = 180,
						SubMaterials = {
							[2] = "sentry/shared/glass"
						},
						States = {
							[1] = "SW",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( 16.7, -74.5, 48 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[2] = "sentry/shared/glass"
						},
						States = {
							[1] = "SW",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                }
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
		Category = "Spotlight",
		Options = {
			{
				Option = "Spotlight",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -35.06, 26.46, 49.282 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
				},
				BodyGroups = {
					{ BodyGroup = "door_l_notch", Value = 0 },
					{ BodyGroup = "door_r_notch", Value = 1 },
				}
			},
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "Hubcaps",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 0 },
				},
			},
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
					{ BodyGroup = "door_l_notch", Value = 0 },
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
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( 0, -114, 43.8 ),
						Angles = Angle( 0, 0, 5.5 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antennas/antenna_2.mdl",
						Position = Vector( 0, -96, 48.6 ),
						Angles = Angle( 0, 0, 1 ),
						Scale = 1
					},
					{
						Model = "models/gandhi/props/nypd.mdl",
						Position = Vector( 0, 117, 21.1),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Color = Color(255, 255, 255),
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