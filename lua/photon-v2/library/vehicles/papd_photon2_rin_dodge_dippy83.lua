if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1983 Dodge Diplomat PAPD"
VEHICLE.Vehicle		= "dippy_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Port Authority"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
    {
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 23, Material = "rin/papd/diplomat83/patrol_83" },
					{ Id = 12, Material = "rin/nypd/diplomat83/dash_blue" },
					{ Id = 13, Material = "rin/nypd/diplomat83/seats_blue" },
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
                        Component = "photon_fedsig_aerodynic_ny_papd",
                        Position = Vector( 0, -26, 62.1 ),
                        Angles = Angle( 0, 180, 0 ),
                        Scale = 0.9,
					},
				}
			},
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
						Position = Vector( 0, 97, 22.5 ),
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
		Category = "Spotlight",
		Options = {
			{
				Option = "Spotlight",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -35.2, 15, 45 ),
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
					{ BodyGroup = "doorpanels", Value = 1 },
				},
				Props = {
					{
						Model = "models/gandhi/props/mastercom.mdl",
						Position = Vector( -6, 16, 30),
						Angles = Angle( 90, 262, 0 ),
						Scale = 1.15,
						SubMaterials = {
							[0] = "rin/nypd/props/pa300/pa300",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, -8, -5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 0, -42, 62.85 ),
						Angles = Angle( 0, 0, 2 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( -15, -45, 62.5 ),
						Angles = Angle( -2, 0, 2 ),
						Scale = 1
					},
					{
						Model = "models/schmal/antenna_lojack.mdl",
						Position = Vector( 15, -45, 62.5 ),
						Angles = Angle( 2, 0, 2 ),
						Scale = 1
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( -31, 105, 15 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -125.5, 26.7 ),
						Angles = Angle( -16, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/papd/props/plates/plate_port_a",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -31, 105.7, 15 ),
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
	{
		Category = "Pushbar",
		Options = {
			{
				Option = "Pushbar",
				Props = {
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 14, 109, 21),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.8, 0.7, 2),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 14, 109, 13.2),
						Angles = Angle( 180, 270, 0 ),
						Scale = Vector( 0.8, 0.7, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( 14, 110.2, 27.7),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.8, 0.7, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 14, 101, 21),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 5, 0.7, 0.1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 14, 101, 10.8),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 5, 0.7, 0.1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 14, 111.5, 22.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 4.4, 0.6, 0.1),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -14, 109, 21),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.8, 0.7, 2),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -14, 109, 13.2),
						Angles = Angle( 180, 270, 0 ),
						Scale = Vector( 0.8, 0.7, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( -14, 110.2, 27.7),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.8, 0.7, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -14, 101, 21),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 5, 0.7, 0.1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -14, 101, 10.8),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 5, 0.7, 0.1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -14, 111.5, 22.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 4.4, 0.6, 0.1),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 108, 12),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.5, 0.5, 8.7),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 110.2, 25),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.5, 0.5, 8.7),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
				}
			}
		}
	},
}
