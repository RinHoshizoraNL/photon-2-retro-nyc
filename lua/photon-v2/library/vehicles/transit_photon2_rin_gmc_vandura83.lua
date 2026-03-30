if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1983 GMC Vandura NYC Transit Police"
VEHICLE.Vehicle		= "vandura1983"
VEHICLE.Category 	= "Photon 2 NYC: Transit Police"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
    [3] = "sentry/shared/env_cubemap_model",
	[9] = "sentry/dippy/white_squares",
	[12] = "sentry/shared/glass",
	[13] = "sentry/dippy/amber_squares",
	[15] = "sentry/dippy/red_squares",
}

VEHICLE.Equipment = {
    {
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 11, Material = "rin/transit/vandura83/transit_83" },
				},
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
						Position = Vector( -10, 107.5, 44.85 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( 10, 107.5, 44.85 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Phase = 180,
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
						Position = Vector( 0, 95, 50 ),
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
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				Props = {
					{
						Model = "models/gandhi/props/mastercom.mdl",
						Position = Vector( 2.5, 48.5, 63.5),
						Angles = Angle( 48, 270, 0 ),
						Scale = 1.35,
						SubMaterials = {
							[0] = "rin/nypd/props/sp_mk7/sp_mark7",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 2.5, 63.5, 77.6 ),
						Angles = Angle( 245, 270, 0 ),
						Scale = 0.32,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -119.1, 35.2 ),
						Angles = Angle( -8, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/transit/props/plates/plate_transit",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 102.4, 36.3 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/transit/props/plates/plate_transit",
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
						Position = Vector( 18.5, 106, 45),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 3),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/hdisc_12.mdl",
						Position = Vector( 18.5, 107.5, 54.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.25, 0.8, 0.6),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qdisc_12.mdl",
						Position = Vector( 18.5, 106.0, 34.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1, 0.8, 0.99),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 18.5, 97.5, 32),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.2, 0.8, 4),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 18.5, 102, 43.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.2, 0.8, 4),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -18.5, 106, 45),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 3),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/hdisc_12.mdl",
						Position = Vector( -18.5, 107.5, 54.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.25, 0.8, 0.6),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qdisc_12.mdl",
						Position = Vector( -18.5, 106.0, 34.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1, 0.8, 0.99),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -18.5, 97.5, 32),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.2, 0.8, 4),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -18.5, 102, 43.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.2, 0.8, 4),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 107.5, 53),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.65, 0.65, 12),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 106.7, 44),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.65, 0.65, 12),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
				}
			}
		}
	},
}
