if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1985 Chevrolet Stepvan Housing Police"
VEHICLE.Vehicle		= "perryn_chevrolet_stepvan"
VEHICLE.Category 	= "Photon 2 NYC: Housing Police"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
    [0] = "sentry/shared/env_cubemap_model",
	[1] = "sentry/dippy/black",
	[4] = "sentry/dippy/black",
	[11] = "sentry/shared/glass",
	[16] = "sentry/shared/env_cubemap_model",
	[20] = "sentry/dippy/black",
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Communications",
				SubMaterials = {
					{ Id = 28, Material = "rin/housing/stepvan/communications" },
					{ Id = 30, Material = "sentry/dippy/black" },
				},
			},
		}
	},
	{
		Category = "Lightbars",
		Options = {
            {
				Option = "Federal Signal Aerotwin",
				Components = {
					{
                        Component = "fedsig_aerodynicny",
                        Position = Vector( 0, 55, 108.7 ),
                        Angles = Angle( 0, 180, 1 ),
                        Scale = 0.95,
					},
					{
                        Component = "fedsig_aerodynicny",
                        Position = Vector( 0, -122, 112.4 ),
                        Angles = Angle( 0, 180, 1 ),
                        Scale = 0.95,
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
						Position = Vector( 0, 95, 30 ),
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
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -133.5, 24.9 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 0.93,
						SubMaterials = {
							[1] = "rin/housing/props/plates/plate_patrol89",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -0.07, 107.1, 17 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.95,
						SubMaterials = {
							[1] = "rin/housing/props/plates/plate_patrol89",
						},
					},
				}
			}
		}
	},
}
