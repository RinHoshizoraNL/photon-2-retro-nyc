if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1989 GMC Suburban NYPD"
VEHICLE.Vehicle		= "tal89suburbangmc"
VEHICLE.Category 	= "Photon 2 NYC: NYPD"
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
				Option = "k9 Unit 1986",
				SubMaterials = {
					{ Id = 1, Material = "rin/nypd/suburban89/k9_89" },
					{ Id = 0, Material = "rin/nypd/suburban89/k9_89" },
					{ Id = 28, Material = "rin/nypd/suburban89/wheel_white" },
				},
				BodyGroups = {
					{ BodyGroup = "bumpers", Value = 0 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "wheels", Value = 0 },
					{ BodyGroup = "brushguard", Value = 0 },
				},
				Components = {
					{
                        Component = "fedsig_aerodynicny",
                        Position = Vector( -1.6, 17, 87.6 ),
                        Angles = Angle( 0, 180, 1.5 ),
                        Scale = 1.06,
					},
				}
			},
			{
				Option = "k9 Unit 1995",
				SubMaterials = {
					{ Id = 1, Material = "rin/nypd/suburban89/k9_95" },
					{ Id = 0, Material = "rin/nypd/suburban89/k9_95" },
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
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( -1.5, 20, 18),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1.1, 1, 1),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -1.7, -124.2, 29.4 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol95",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -1.4, 123.9, 30 ),
						Angles = Angle( 12, 90, 0 ),
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
