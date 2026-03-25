if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1983 Dodge Diplomat NYC Traffic"
VEHICLE.Vehicle		= "dippy_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Traffic"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Siren = { "sp_mk7" }

VEHICLE.Equipment = {
    {
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 23, Material = "rin/traffic/diplomat83/traffic_83" },
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
                        Position = Vector( 0, -26, 62.1 ),
                        Angles = Angle( 0, 180, 0 ),
                        Scale = 0.9,
					},
				}
			},
        }
	},
	{
		Category = "Additional Brake Lights",
		Options = {
            {
				Option = "Additional Brake Lights",
				Components = {
					{
						Component = "photon_par46_brake_nypd",
						Position = Vector( -22, -75, 41 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.7,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_par46_brake_nypd",
						Position = Vector( 22, -75, 41 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.7,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                },
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -22, -75, 38 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 22, -75, 38  ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
			},
			{
				Option = "None",
			},
		}
	},
	{
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				BodyGroups = {
					{ BodyGroup = "doorpanels", Value = 1 },
				},
				Props = {
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( -31, 105, 15 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -125.5, 26.7 ),
						Angles = Angle( -16, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/traffic/props/plates/plate_traffic",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -31, 105.7, 15 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/traffic/props/plates/plate_traffic",
						},
					},
				}
			}
		}
	},
}
