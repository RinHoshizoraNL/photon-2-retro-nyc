if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1983 Dodge Diplomat NYC Transit Police"
VEHICLE.Vehicle		= "dippy_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Transit Police"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Siren = { "sp_mk7" }

VEHICLE.Equipment = {
    {
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 23, Material = "rin/transit/diplomat83/transit_83" },
					{ Id = 12, Material = "rin/nypd/diplomat83/dash_blue" },
					{ Id = 13, Material = "rin/nypd/diplomat83/seats_blue" },
					{ Id = 21, Material = "rin/nypd/props/white" },
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
				Option = "Scientific Prototypes Mark-VII",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, -27, 67.5 ),
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
							[0] = "rin/nypd/props/sp_mk7/sp_mark7",
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
							[1] = "rin/transit/props/plates/plate_transit",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -31, 105.7, 15 ),
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
		Category = "Front Bumper Guard",
		Options = {
			{
				Option = "Front Bumper Guard",
				Props = {
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 15, 105.5, 21),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 2),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 15, 105.5, 13.2),
						Angles = Angle( 180, 270, 0 ),
						Scale = Vector( 1, 0.8, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 15, 108.7, 21),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.35, 0.1, 1.7),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 15, 107.25, 13.5),
						Angles = Angle( 0, 0, -30 ),
						Scale = Vector( 0.35, 0.1, 1),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -15, 105.5, 21),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 2),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -15, 105.5, 13.2),
						Angles = Angle( 180, 270, 0 ),
						Scale = Vector( 1, 0.8, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -15, 108.7, 21),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.35, 0.1, 1.7),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -15, 107.25, 13.5),
						Angles = Angle( 0, 0, -30 ),
						Scale = Vector( 0.35, 0.1, 1),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
				}
			},
			{
				Option = "None",
			},
		}
	},
}
