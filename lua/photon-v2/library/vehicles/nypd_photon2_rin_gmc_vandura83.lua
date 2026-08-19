if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1983 GMC Vandura NYPD"
VEHICLE.Vehicle		= "vandura1983"
VEHICLE.Category 	= "Photon 2 NYC: NYPD"
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
				Option = "Patrol 83",
				SubMaterials = {
					{ Id = 11, Material = "rin/nypd/vandura83/patrol_83" },
				},
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 0 },
					{ BodyGroup = "badges", Value = 0 },
				},
				Components = {
					{
                        Component = "fedsig_aerodynicny",
                        Position = Vector( 0, 27, 102.5 ),
                        Angles = Angle( 0, 180, 0 ),
                        Scale = 1.02,
					},
					{
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
			},
			{
				Option = "Truck Enforcement 95",
				SubMaterials = {
					{ Id = 11, Material = "rin/nypd/vandura83/truck_95" },
				},
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 0 },
					{ BodyGroup = "badges", Value = 0 },
				},
				Components = {
					{
						Component = "photon_fedsig_vision_nypd",
						Position = Vector( 0, 35, 101.7 ),
						Angles = Angle( 0, 180, 2 ),
						Scale = 1.1,
						BodyGroups = {
							["rear_ta"] = 1,
							["straps"] = 1,
						},
					},
					{
						Component = "photon_whe_500_nypd",
						Position = Vector( 0, -105, 103 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.9,
					},
					{
						Component = "code3_xl_mini",
						Position = Vector( 0, -94, 103.9 ),
						Angles = Angle( 0, 0, 2 ),
						Scale = 0.85,
					},
					{
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 95, 50 ),
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
				},
				Props = {
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( -19, -105, 101 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 19, -105, 101 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, 5, 103.3 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( 0, -15, 102 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
				},
			},
			{
				Option = "Recruitment Unit 83",
				SubMaterials = {
					{ Id = 11, Material = "rin/nypd/vandura83/recruitment_83" },
				},
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 1 },
					{ BodyGroup = "badges", Value = 1 },
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
							[1] = "rin/nypd/props/plates/plate_patrol95",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 102.4, 36.3 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol95",
						},
					},
				}
			}
		}
	},
}
