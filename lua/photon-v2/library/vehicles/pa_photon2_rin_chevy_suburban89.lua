if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1989 Chevrolet Suburban PA Bridge & Tunnel"
VEHICLE.Vehicle		= "tal89suburban"
VEHICLE.Category 	= "Photon 2 NYC: Port Authority"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
    [2] = "sentry/dippy/black",
	[4] = "sentry/shared/env_cubemap_model",
	[11] = "sentry/shared/glass",
}

VEHICLE.BodyGroups = {
	["rear end"] = 1,
	["air deflector"] = 0,
	["lightbar"] = 0,
	["bumpers"] = 0,
	["grille"] = 2,
	["roofrack"] = 0,
	["brushguard"] = 0,
	["steps"] = 0,
	["mirrors"] = 0,
	["visor"] = 0,
	["tow hooks"] = 0,
	["antennas"] = 0,
	["third row seat"] = 0,
	["bugshield"] = 0,
	["bumper valance"] = 1,
	["hitch"] = 0,
	["snorkel"] = 0,
	["mudflaps"] = 1,
	["fenders"] = 0,
	["wheels"] = 2,
}

VEHICLE.Equipment = {
    {
		Category = "Livery",
		Options = {
			{
				Option = "Bridge & Tunnel Agent",
				SubMaterials = {
					{ Id = 1, Material = "rin/papd/suburban89/bridge" },
					{ Id = 0, Material = "rin/papd/suburban89/bridge" },
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
                        Component = "photon_fedsig_aerodynic_ny_traffic",
                        Position = Vector( -1.5, 17, 87 ),
                        Angles = Angle( 0, 180, 2 ),
                        Scale = 1,
					},
				}
			},
        }
	},
	{
		Category = "Highriser",
		Options = {
			{
				Option = "Highriser",
				Props = {
					{
						Model = "models/tdmcars/emergency/equipment/mcdermott_riser.mdl",
						Position = Vector( -1.7, -82, 91 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -27.1, -72.2, 87 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 23.7, -72.2, 87 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -27.1, -91.8, 87 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 23.7, -91.8, 87 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 0.5, -75.8, 96.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 8.7, 0.2, 0.48 ),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -4, -88, 96.7 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 8.7, 0.2, 0.48 ),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
				},
				Components = {
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( 21.1, -77.2, 96.8),
						Angles = Angle( 90, 0, 0 ),
						Scale = 1,
						States = { "~A", "~A" },
						SubMaterials = {
							[2] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( -24.5, -86.9, 96.8 ),
						Angles = Angle( -90, 0, 0 ),
						Scale = 1,
						Phase = 180,
						States = { "~A", "~A" },
						SubMaterials = {
							[2] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( 13.3, -77.2, 92.4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = 180,
						States = { "~A", "~A" },
						SubMaterials = {
							[2] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( -16.7, -86.9, 92.4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						States = { "~A", "~A" },
						SubMaterials = {
							[2] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Component = "photon_whe_500_nypd",
						Position = Vector( -1.7, -92, 94 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.97,
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
