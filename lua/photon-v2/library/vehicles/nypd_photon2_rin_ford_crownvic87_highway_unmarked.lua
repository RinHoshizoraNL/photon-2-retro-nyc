if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1987 Ford Crown Victoria NYPD Highway Patrol Unmarked"
VEHICLE.Vehicle		= "87ltd_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYPD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
    {
		Category = "Paint",
		Options = {
            {
				Option = "Black",
				Properties = {
					Skin = 0,
					Color = Color(0, 0, 0)
				},
				SubMaterials = {
					{ Id = 2, Material = "rin/lrpd2/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/lrpd2/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/lrpd2/crownvic87/dash_blue" },
				},
			},
			{
				Option = "Oxford White",
				Properties = {
					Skin = 0,
					Color = Color(255, 255, 255)
				},
				SubMaterials = {
					{ Id = 2, Material = "rin/lrpd2/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/lrpd2/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/lrpd2/crownvic87/dash_blue" },
				},
			},
			{
				Option = "Sand Beige",
				Properties = {
					Skin = 0,
					Color = Color(187, 175, 142)
				}
			},
			{
				Option = "Medium Sand Beige",
				Properties = {
					Skin = 0,
					Color = Color(90, 69, 48)
				}
			},
			{
				Option = "Midnight Canyon Red Metallic",
				Properties = {
					Skin = 0,
					Color = Color(80, 15, 12)
				}
			},
			{
				Option = "Deep Shadow Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(0, 13, 54)
				}
			},
			{
				Option = "Medium Shadow Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(29, 54, 82)
				}
			},
			{
				Option = "Spinnaker Blue",
				Properties = {
					Skin = 0,
					Color = Color(81, 115, 135)
				},
				SubMaterials = {
					{ Id = 2, Material = "rin/lrpd2/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/lrpd2/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/lrpd2/crownvic87/dash_blue" },
				},
			},
			{
				Option = "Dark Grey Metallic",
				Properties = {
					Skin = 0,
					Color = Color(72, 72, 72)
				}
			},
			{
				Option = "Silver Metallic",
				Properties = {
					Skin = 0,
					Color = Color(182, 182, 182)
				},
				SubMaterials = {
					{ Id = 2, Material = "rin/lrpd2/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/lrpd2/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/lrpd2/crownvic87/dash_blue" },
				},
			},
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
						Position = Vector( 0, 28, 41.5 ),
						Angles = Angle( -4, 270, 0 ),
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
						Position = Vector( 0, 26, 43.5),
						Angles = Angle( 0, 0, 86 ),
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
		Category = "Grille Lights",
		Options = {
            {
				Option = "Grille Lights",
				Components = {
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( -7, 102, 25 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.7,
						Phase = 180,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( 7, 102, 22 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.7,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                },
			},
			{
				Option = "None",
			},
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
						Position = Vector( -38, 25, 42 ),
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
		Category = "Siren",
		Options = {
			{
				Option = "Scientific Prototypes Mark-VII",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 100, 30 ),
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
		Category = "Additional Brake Lights",
		Options = {
            {
				Option = "Additional Brake Lights",
				Components = {
					{
						Component = "photon_par46_brake_nypd",
						Position = Vector( -25, -70, 42 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.7,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_par46_brake_nypd",
						Position = Vector( 25, -70, 42 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.7,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                },
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -25, -70, 38.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 25, -70, 38.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Props = {
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, -5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/mastercom.mdl",
						Position = Vector( 0, 23, 32.5),
						Angles = Angle( 90, 270, 0 ),
						Scale = 1.15,
						SubMaterials = {
							[0] = "rin/nypd/props/sp_mk7/sp_mark7",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( -34, 111.2, 16.8 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123, 30 ),
						Angles = Angle( -16, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -34, 112, 16.8 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_2",
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
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 13.5, 116, 22.5),
						Angles = Angle( 7, 0, 0 ),
						Scale = Vector( 0.65, 0.2, 3.6),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 13.5, 110, 21.8),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.05, 2),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 12.5, 110, 12),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.05, 2),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/misc/tubes/size_1/h_tube_12x6.mdl",
						Position = Vector( 13.5, 117.5, 22.5),
						Angles = Angle( 7, 0, 270 ),
						Scale = Vector( 0.3, 3.5, 0.4),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -13.5, 116, 22.5),
						Angles = Angle( -7, 0, 0 ),
						Scale = Vector( 0.65, 0.2, 3.6),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -13.5, 110, 21.8),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.05, 2),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -12.5, 110, 12),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.05, 2),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/misc/tubes/size_1/h_tube_12x6.mdl",
						Position = Vector( -13.5, 117.5, 22.5),
						Angles = Angle( -7, 0, 270 ),
						Scale = Vector( 0.3, 3.5, 0.4),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
				}
			},
		}
	},
}
