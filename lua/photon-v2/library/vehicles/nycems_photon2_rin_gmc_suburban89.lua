if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1989 GMC Suburban NYC EMS"
VEHICLE.Vehicle		= "tal89suburbangmc"
VEHICLE.Category 	= "Photon 2 NYC: NYC EMS"
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
				Option = "EMS 1989",
				SubMaterials = {
					{ Id = 1, Material = "rin/ems/suburban89/ems_89" },
					{ Id = 0, Material = "rin/ems/suburban89/ems_89" },
				},
				BodyGroups = {
					{ BodyGroup = "bumpers", Value = 0 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "wheels", Value = 0 },
					{ BodyGroup = "brushguard", Value = 3 },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Code3 XL",
				Components = {
					{
                        Component = "code3_xl",
                        Position = Vector( -1.5, 22, 87.5 ),
                        Angles = Angle( 0, 0, -1 ),
                        Scale = 0.85,
					},
				}
			},
        }
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Federal Signal PA4000",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( -1.5, 115.5, 41 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "fs_pa4000",
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
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -1.7, -124.2, 29.4 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -1.4, 123.9, 30 ),
						Angles = Angle( 12, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
				}
			}
		}
	},
}
