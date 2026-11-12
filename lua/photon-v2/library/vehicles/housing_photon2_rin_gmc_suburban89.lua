if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1989 GMC Suburban Housing Police"
VEHICLE.Vehicle		= "tal89suburbangmc"
VEHICLE.Category 	= "Photon 2 NYC: Housing Police"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
    [2] = "sentry/dippy/black",
	[4] = "sentry/shared/env_cubemap_model",
	[11] = "sentry/shared/glass",
}

VEHICLE.Equipment = {
    {
		Category = "Livery",
		Options = {
			{
				Option = "Patrol 1989",
				SubMaterials = {
					{ Id = 1, Material = "rin/housing/suburban89/housing_89" },
					{ Id = 0, Material = "rin/housing/suburban89/housing_89" },
				},
				BodyGroups = {
					{ BodyGroup = "bumpers", Value = 0 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "wheels", Value = 2 },
					{ BodyGroup = "brushguard", Value = 0 },
				},
				Components = {
					{
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( -1.5, 115.5, 41 ),
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
				Option = "Patrol 1991",
				SubMaterials = {
					{ Id = 1, Material = "rin/housing/suburban89/housing_91" },
					{ Id = 0, Material = "rin/housing/suburban89/housing_91" },
				},
				BodyGroups = {
					{ BodyGroup = "bumpers", Value = 0 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "mirrors", Value = 1 },
					{ BodyGroup = "wheels", Value = 2 },
					{ BodyGroup = "brushguard", Value = 0 },
				},
				Components = {
					{
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( -1.5, 115.5, 41 ),
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
			},
		}
	},
	{
		Category = "Dummy Lightbar",
		Options = {
			{
				Option = "Federal Signal Streethawk",
				Props = {
					{
						Model = "models/sentry/props/streethawk_speaker.mdl",
						Position = Vector( -1.5, 20, 87.7 ),
						Angles = Angle( 0, 0, -1 ),
						Scale = 1.07,
						SubMaterials = {
							[2] = "rin/housing/props/streethawk/streethawk",
						},
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
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -1.7, -124.2, 29.4 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/housing/props/plates/plate_patrol89",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -1.4, 123.9, 30 ),
						Angles = Angle( 12, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/housing/props/plates/plate_patrol89",
						},
					},
				}
			}
		}
	},
}
