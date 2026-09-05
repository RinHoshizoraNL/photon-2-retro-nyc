if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1995 Ford Crown Victoria PAPD Slicktop"
VEHICLE.Vehicle		= "96cvpi_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Port Authority"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
    	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol 1996",
				SubMaterials = {
					{ Id = 6, Material = "rin/papd/crownvic96/slick_96" }
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
						Component = "photon_standard_cvpi96_nypd",
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
						Position = Vector( 0, 33, 47.4 ),
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
						Position = Vector( 0, 31, 49),
						Angles = Angle( 1, 0, 86 ),
						Scale = Vector( 0.3, 0.5, 0.5),
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
		Category = "Front Visor",
		Options = {
			{
				Option = "Federal Signal GH1",
				Components = {
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( -2, 15, 63.9 ),
						Angles = Angle( 0, 90, 180 ),
						Scale = 0.7,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( 2, 15, 63.9 ),
						Angles = Angle( 0, 90, 180 ),
						Scale = 0.7,
						Phase = 180,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
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
						Position = Vector( -9, 110, 29.6 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.8,
						Phase = 90,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( 9, 110, 29.6 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
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
						Position = Vector( -22.4, -74.5, 47.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( 22.4, -74.5, 47.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						Phase = 180,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( -17.15, -74.5, 47.5 ),
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
						Position = Vector( 17.15, -74.5, 47.5 ),
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
			}
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
						Position = Vector( -36, 28, 50 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
				}
			},
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "pillars", Value = 0 },
					{ BodyGroup = "hubcaps_fl", Value = 0 },
					{ BodyGroup = "hubcaps_fr", Value = 1 },
					{ BodyGroup = "hubcaps_rl", Value = 1 },
					{ BodyGroup = "hubcaps_rr", Value = 1 },
					{ BodyGroup = "trim_body", Value = 0 },
					{ BodyGroup = "trim_fdoor", Value = 1 },
					{ BodyGroup = "trim_rdoor", Value = 1 },
				},
				Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 59.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, 0),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 1.5, 0),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/photon_ex/controllers/fedsig_scsb.mdl",
						Position = Vector( 0, 5.6, 25 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 9, 25.7 ),
						Angles = Angle( 200, 270, 0 ),
						Scale = 0.32,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/rob/oldpolicepack/motorola.mdl",
						Position = Vector( 0, 21, 31.2 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/nypd/props/mdt/mdt",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 0, -100, 46.8 ),
						Angles = Angle( 0, 0, 6 ),
						Scale = 1
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 122, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -125.4, 31.8 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 0.95,
						SubMaterials = {
							[1] = "rin/papd/props/plates/plate_port_a",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 122.7, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/papd/props/plates/plate_port_a",
						},
					},
				}
			}
		}
	},
}
