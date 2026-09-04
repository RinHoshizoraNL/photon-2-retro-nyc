if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1985 Chevrolet Stepvan FDNY"
VEHICLE.Vehicle		= "perryn_chevrolet_stepvan"
VEHICLE.Category 	= "Photon 2 NYC: FDNY"
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
				Option = "Special Operations Command",
				SubMaterials = {
					{ Id = 28, Material = "rin/fdny/stepvan/spl_ops" },
				},
			},
		}
	},
	{
		Category = "Lightbars",
		Options = {
            {
				Option = "Federal Signal Aerodynic",
				Components = {
					{
                        Component = "photon_fedsig_aerodynic_fdny",
                        Position = Vector( 0, 55, 108.7 ),
                        Angles = Angle( 0, 180, 1 ),
                        Scale = 0.95,
					},
					{
                        Component = "photon_fedsig_aerodynic_fdny",
                        Position = Vector( 0, -122, 112.4 ),
                        Angles = Angle( 0, 180, 1 ),
                        Scale = 0.95,
					},
				}
			},
        }
	},
	{
		Category = "Front Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -22, 101.9, 41.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.65,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 22, 101.9, 41.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.65,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -45.5, 92, 47.2 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.65,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 45.5, 92, 47.2 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 0.65,
					},
                }
			},
		}
	},
	{
		Category = "Rear Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -35, -133.7, 101 ),
						Angles = Angle( 0, 180, 1.5 ),
						Scale = 1,
						Phase = 90,
						States = { "~A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 35, -133.7, 101 ),
						Angles = Angle( 0, 180, 1.5 ),
						Scale = 1,
						States = { "~A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
				},
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
						Position = Vector( 0, 95, 30 ),
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
						Model = "models/w4nou/aeration_vsav.mdl",
						Position = Vector( 0, 0, 115 ),
						Angles = Angle( 0, 180, 1.2 ),
						Scale = 1.2,
					},
					{
						Model = "models/w4nou/store_vehicule.mdl",
						Position = Vector( 84, -105, 26 ),
						Angles = Angle( 0, 180, 1.2 ),
						Scale = 1,
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -133.5, 24.9 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 0.93,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_fdny",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -0.07, 107.1, 17 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.95,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_fdny",
						},
					},
				}
			}
		}
	},
}
