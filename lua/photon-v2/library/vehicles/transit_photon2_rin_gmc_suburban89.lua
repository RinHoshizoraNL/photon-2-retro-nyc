if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1989 GMC Suburban NYC Transit Police"
VEHICLE.Vehicle		= "tal89suburbangmc"
VEHICLE.Category 	= "Photon 2 NYC: Transit Police"
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
					{ Id = 1, Material = "rin/transit/suburban89/transit_89" },
					{ Id = 0, Material = "rin/transit/suburban89/transit_89" },
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
				Option = "Federal Signal Aerodynic",
				Components = {
					{
                        Component = "photon_fedsig_aerodynic_transit",
                        Position = Vector( -1.5, 17, 87 ),
                        Angles = Angle( 0, 180, 2 ),
                        Scale = 1,
					},
				}
			},
        }
	},
	{
		Category = "Grille Lights",
		Options = {
            {
				Option = "Grille Lights",
				Components = {
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( -21.6, 125, 47.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.8,
						Phase = 180,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( 18.7, 125, 47.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                },
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -21.6, 125, 45.8 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 18.7, 125, 45.8  ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "SP Mark 7",
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
							[1] = "rin/transit/props/plates/plate_transit",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -1.4, 123.9, 30 ),
						Angles = Angle( 12, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/transit/props/plates/plate_transit",
						},
					},
				}
			}
		}
	},
}
