if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1989 GMC Suburban NYC School Safety"
VEHICLE.Vehicle		= "tal89suburbangmc"
VEHICLE.Category 	= "Photon 2 NYC: Other"
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
				Option = "School Safety",
				SubMaterials = {
					{ Id = 1, Material = "rin/nyc_other/suburban89/school_safety" },
					{ Id = 0, Material = "rin/nyc_other/suburban89/school_safety" },
				},
				BodyGroups = {
					{ BodyGroup = "bumpers", Value = 0 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "mirrors", Value = 1 },
					{ BodyGroup = "wheels", Value = 2 },
					{ BodyGroup = "brushguard", Value = 3 },
				},
				Components = {
					{
                        Component = "fedsig_jetstream",
                        Position = Vector( -1.6, 22, 86.5 ),
                        Angles = Angle( 0, 180, 1.5 ),
                        Scale = 1.1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
							}
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
				Option = "Federal Signal PA300",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 110, 42 ),
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -1.7, -124.2, 29.4 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -1.4, 123.9, 30 ),
						Angles = Angle( 12, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_2",
						},
					},
					{
						Model = "models/sentry/props/jetsonic.mdl",
						Position = Vector( -1.6, 22, 86.5 ),
                        Angles = Angle( 0, 180, 1.5 ),
                        Scale = 1.1,
						SubMaterials = {
							[1] = "photon/common/blank",
							[2] = "photon/common/blank",
							[3] = "photon/common/blank",
							[4] = "photon/common/blank",
						},
					},
				}
			}
		}
	},
}
