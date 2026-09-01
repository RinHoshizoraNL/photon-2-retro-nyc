if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1995 Ford F700 NYC Traffic"
VEHICLE.Vehicle		= "f700-1995"
VEHICLE.Category 	= "Photon 2 NYC: Traffic"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
    [5] = "sentry/shared/env_cubemap_model",
	[7] = "sentry/dippy/black",
	[11] = "sentry/shared/glass",
	[16] = "rin/nypd/props/white",
}

VEHICLE.Equipment = {
   {
		Category = "Livery",
		Options = {
			{
				Option = "Traffic",
				SubMaterials = {
					{ Id = 10, Material = "rin/traffic/f700/traffic_95" },
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
                        Position = Vector( 0, 35, 99.5 ),
                        Angles = Angle( 0, 180, 0 ),
                        Scale = 0.85,
					},
				}
			},
        }
	},
	{
		Category = "Pushbar",
		Options = {
			{
				Option = "Pushbar",
				Props = {
					{
						Model = "models/supermighty/props/nypd_esu_bumper.mdl",
						Position = Vector( 0.3, 132, 36 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.7, 0.89, 0.75 ),
						Color = Color(47, 34, 17),
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 139, 34 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector( 1, 3.4, 2 ),
					},
				}
			}
		}
	},
	{
		Category = "Plates",
		Options = {
			{
				Option = "Plates",
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -30, -211.35, 52 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/traffic/props/plates/plate_traffic",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 22.5, 138.97, 59.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/traffic/props/plates/plate_traffic",
						},
					},
				}
			}
		}
	},
}
