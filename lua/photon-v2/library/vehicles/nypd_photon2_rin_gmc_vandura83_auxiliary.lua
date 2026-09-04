if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1983 GMC Vandura NYPD Auxiliary"
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
				Option = "Auxiliary 83",
				SubMaterials = {
					{ Id = 11, Material = "rin/nypd/vandura83/aux_83" },
				},
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 1 },
					{ BodyGroup = "badges", Value = 1 },
					{ BodyGroup = "grille", Value = 1 },
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
		}
	},
	{
		Category = "Grille Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -21, 100.5, 53 ),
						Angles = Angle( 0, 3, -4.5 ),
						Scale = 1,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 21, 100.5, 53 ),
						Angles = Angle( 0, -3, -4.5 ),
						Scale = 1,
						Phase = 90,
					},
                }
			},
			{
				Option = "None",
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
							[1] = "rin/nypd/props/plates/plate_aux95",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 102.4, 36.3 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_aux95",
						},
					},
				}
			}
		}
	},
}
