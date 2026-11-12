if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1989 GMC Suburban PAPD"
VEHICLE.Vehicle		= "tal89suburbangmc"
VEHICLE.Category 	= "Photon 2 NYC: Port Authority"
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
				Option = "k9 Unit 86",
				SubMaterials = {
					{ Id = 1, Material = "rin/papd/suburban89/k9_89" },
					{ Id = 0, Material = "rin/papd/suburban89/k9_89" },
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
                        Component = "photon_fedsig_aerodynic_ny_papd",
                        Position = Vector( -1.5, 17, 87 ),
                        Angles = Angle( 0, 180, 2 ),
                        Scale = 1,
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
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( -1.5, -15, 88),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -1.7, -124.2, 29.4 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/papd/props/plates/plate_port_a",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -1.4, 123.9, 30 ),
						Angles = Angle( 12, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/papd/props/plates/plate_port_a",
						},
					},
				}
			}
		}
	},
}
