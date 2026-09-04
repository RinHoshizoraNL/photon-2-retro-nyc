if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1995 Ford F800 FDNY Engine"
VEHICLE.Vehicle		= "f800-firetruck-1995"
VEHICLE.Category 	= "Photon 2 NYC: FDNY"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
    [0] = "sentry/shared/env_cubemap_model",
	[5] = "sentry/shared/glass",
}

VEHICLE.BodyGroups = {
	["wheels"] = 1,
	["bench"] = 0,
	["beacons"] = 1,
	["lightbar"] = 1,
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "FDNY",
				SubMaterials = {
					{ Id = 15, Material = "rin/fdny/f800/engine" },
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
                        Component = "photon_fedsig_aerodynic_fdny",
                        Position = Vector( 0, 36, 99.5 ),
                        Angles = Angle( 0, 180, 0 ),
                        Scale = 0.83,
					},
				}
			},
        }
	},
	{
		Category = "Traffic Advisor",
		Options = {
			{
				Option = "Whelen 500",
				Components = {
					{
						Component = "photon_whe_500_nypd",
						Position = Vector( 0, -163, 63.5 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
					},
				}
			}
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
						Position = Vector( -13, 129.2, 58 ),
						Angles = Angle( 0, 1.5, 4.5 ),
						Scale = 1,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 13, 129.2, 58 ),
						Angles = Angle( 0, -1.5, 4.5 ),
						Scale = 1,
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
				Option = "Federal Signal EQ2B",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 120, 49 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "fedsig_eq2b",
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
}
