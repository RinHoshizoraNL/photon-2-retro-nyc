if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1991 Chevrolet Caprice NYC Transit Police"
VEHICLE.Vehicle		= "91caprice_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Transit Police"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 20, Material = "rin/transit/caprice91/transit_91" },
					{ Id = 16, Material = "rin/nypd/caprice95/seats_blue" },
					{ Id = 24, Material = "rin/nypd/caprice95/dash_blue" }
				},
			},
			{
				Option = "Supervisor",
				SubMaterials = {
					{ Id = 20, Material = "rin/transit/caprice91/supervisor_91" },
					{ Id = 16, Material = "rin/nypd/caprice95/seats_blue" },
					{ Id = 24, Material = "rin/nypd/caprice95/dash_blue" }
				},
			},
			{
				Option = "Recruitment Unit",
				SubMaterials = {
					{ Id = 20, Material = "rin/transit/caprice91/recruitment_91" },
					{ Id = 16, Material = "rin/nypd/caprice95/seats_blue" },
					{ Id = 24, Material = "rin/nypd/caprice95/dash_blue" }
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
						Component = "photon_standard_chevcap91_nypd",
					}
				}
			}
		}
	},
	{
		Category = "Grille Lights",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( -9, 108.3, 24 ),
						Angles = Angle( 0, 6, -2 ),
						Scale = 0.7,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 9, 108.3, 24 ),
						Angles = Angle( 0, -6, -2 ),
						Scale = 0.7,
						Phase = 90,
					},
                }
			},
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "SP Mark 7",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 104, 24 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "sp_mk7_digi",
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
						Position = Vector( -37.5, 30, 42 ),
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
					{ BodyGroup = "trim", Value = 0 },
				},
				Props = {
					{
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 51),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/mastercom.mdl",
						Position = Vector( 0.2, 27, 30.2),
						Angles = Angle( 90, 270, 0 ),
						Scale = 1.35,
						SubMaterials = {
							[0] = "rin/nypd/props/sp_mk7/sp_mark7",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 26.5, 24 ),
						Angles = Angle( 270, 270, 0 ),
						Scale = 0.32,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, -5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antennas/antenna_2.mdl",
						Position = Vector( 0, -45, 59.4 ),
						Angles = Angle( 0, 0, 6 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, -100, 41.5 ),
						Angles = Angle( 0, 0, 8 ),
						Scale = 1
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 114, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.2, 25.2 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/transit/props/plates/plate_transit",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 114.7, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/transit/props/plates/plate_transit",
						},
					},
				}
			}
		}
	},
	{
		Category = "Bumper Guard Front",
		Options = {
			{
				Option = "Bumper Guard Front",
				Props = {
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 15, 112, 21),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 2),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 15, 112, 13.2),
						Angles = Angle( 180, 270, 0 ),
						Scale = Vector( 1, 0.8, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 15, 115.2, 21),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.35, 0.1, 1.7),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 15, 113.75, 13.5),
						Angles = Angle( 0, 0, -30 ),
						Scale = Vector( 0.35, 0.1, 1),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -15, 112, 21),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 2),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -15, 112, 13.2),
						Angles = Angle( 180, 270, 0 ),
						Scale = Vector( 1, 0.8, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -15, 115.2, 21),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.35, 0.1, 1.7),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -15, 113.75, 13.5),
						Angles = Angle( 0, 0, -30 ),
						Scale = Vector( 0.35, 0.1, 1),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
				}
			}
		}
	},
	{
		Category = "Bumper Guard Rear",
		Options = {
			{
				Option = "Bumper Guard Rear",
				Props = {
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 13, -131, 20),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector( 1, 0.8, 2),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 13, -131, 12.2),
						Angles = Angle( 180, 90, 0 ),
						Scale = Vector( 1, 0.8, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 13, -134.2, 20),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.35, 0.1, 1.7),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 13, -132.7, 12.4),
						Angles = Angle( 0, 0, 30 ),
						Scale = Vector( 0.35, 0.1, 1),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -13, -131, 20),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector( 1, 0.8, 2),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -13, -131, 12.2),
						Angles = Angle( 180, 90, 0 ),
						Scale = Vector( 1, 0.8, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -13, -134.2, 20),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.35, 0.1, 1.7),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -13, -132.7, 12.4),
						Angles = Angle( 0, 0, 30 ),
						Scale = Vector( 0.35, 0.1, 1),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
				}
			}
		}
	},
}
