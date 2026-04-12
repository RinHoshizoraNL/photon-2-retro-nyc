if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1983 GMC Vandura PA"
VEHICLE.Vehicle		= "vandura1983"
VEHICLE.Category 	= "Photon 2 NYC: Port Authority"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
    [3] = "sentry/shared/env_cubemap_model",
	[9] = "sentry/dippy/white_squares",
	[12] = "sentry/shared/glass",
	[13] = "sentry/dippy/amber_squares",
	[15] = "sentry/dippy/red_squares",
}

VEHICLE.Equipment = {
    {
		Category = "Livery",
		Options = {
			{
				Option = "Port Authority",
				SubMaterials = {
					{ Id = 11, Material = "rin/papd/vandura83/port" },
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
                        Position = Vector( 0, 34, 102.3 ),
                        Angles = Angle( 0, 180, 2.5 ),
                        Scale = 0.93,
					},
				}
			},
        }
	},
	{
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				Props = {
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 2.5, 63.5, 77.6 ),
						Angles = Angle( 245, 270, 0 ),
						Scale = 0.32,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -119.1, 35.2 ),
						Angles = Angle( -8, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/papd/props/plates/plate_port_a",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 102.4, 36.3 ),
						Angles = Angle( 4, 90, 0 ),
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
