if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1982 Ford Econoline Cabrini Ambulance"
VEHICLE.Vehicle		= "82econoline_ambu_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYC EMS (Private)"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Cabrini",
				SubMaterials = {
					{ Id = 18, Material = "rin/ems/econoline82/cabrini" },
					{ Id = 15, Material = "sentry/shared/env_cubemap_model" },
					{ Id = 3, Material = "rin/nypd/econoline82/cube_int_dark" },
					{ Id = 6, Material = "rin/nypd/econoline82/plastic_dark" },
					{ Id = 7, Material = "rin/nypd/econoline82/seat_dark" },
					{ Id = 8, Material = "rin/nypd/econoline82/seat2_dark" },
				},
			},
		}
	},
	{
		Category = "Lightbar Front",
		Options = {
            {
				Option = "Federal Signal Twinsonic",
				Components = {
					{
                        Component = "fedsig_twinsonic",
                        Position = Vector( 0, 60, 100.5 ),
                        Angles = Angle( 0, 0, -1.5 ),
                        Scale = 1,
						States = { [1] = "~R",
						           [2] = "~R",
								   [3] = "~R",
								   [4] = "~R",
								   [5] = "~R",
								   [6] = "~R",
								   [7] = "~R",
								   [8] = "~R",
					    },
						SubMaterials = {
							[7] = "sentry/props/c3xl/glass_outer",
							[13] = "schmal/photon/fedsig_visionslr/lens_pod_2",
						},
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
						Position = Vector( 0, 140, 50 ),
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
		Category = "Side Steps",
		Options = {
			{
				Option = "Side Steps",
				Props = {
					{
						Model = "models/supermighty/photon/sidestep.mdl",
						Position = Vector( 0, 106, -7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector(0.72, 1, 1),
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
						Position = Vector( -41.5, -152, 30 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 148.9, 25.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
				}
			}
		}
	},
}
