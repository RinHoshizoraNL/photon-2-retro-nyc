if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1983 Dodge Diplomat NYC Taxi"
VEHICLE.Vehicle		= "dippy_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYC Taxi"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
    {
		Category = "Wheels",
		Options = {
			{
				Option = "Black",
				SubMaterials = {
					{ Id = 23, Material = "rin/taxi/diplomat83/taxi_83" },
					{ Id = 12, Material = "rin/nypd/diplomat83/dash_blue" },
					{ Id = 13, Material = "rin/nypd/diplomat83/seats_blue" },
				},
			},
			{
				Option = "Yellow",
				SubMaterials = {
					{ Id = 23, Material = "rin/taxi/diplomat83/taxi_83" },
					{ Id = 12, Material = "rin/nypd/diplomat83/dash_blue" },
					{ Id = 13, Material = "rin/nypd/diplomat83/seats_blue" },
					{ Id = 21, Material = "rin/taxi/props/yellow" },
				},
			},
		}
	},
	{
		Category = "Taxi Sign",
		Options = {
			{
				Option = "No Advert",
				Props = {
					{
						Model = "models/sentry/props/taxisign.mdl",
						Position = Vector( 0, -22, 61.9 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
				}
			},
			{
				Option = "Advert 1",
				Props = {
					{
						Model = "models/sentry/props/taxiadsign.mdl",
						Position = Vector( 0, -33, 63.4 ),
						Angles = Angle( 0.7, 270, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[0] = "rin/taxi/props/signs/sign_01",
						},
					},
				}
			},
			{
				Option = "Advert 2",
				Props = {
					{
						Model = "models/sentry/props/taxiadsign.mdl",
						Position = Vector( 0, -33, 63.4 ),
						Angles = Angle( 0.7, 270, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[0] = "rin/taxi/props/signs/sign_02",
						},
					},
				}
			},
			{
				Option = "Advert 3",
				Props = {
					{
						Model = "models/sentry/props/taxiadsign.mdl",
						Position = Vector( 0, -33, 63.4 ),
						Angles = Angle( 0.7, 270, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[0] = "rin/taxi/props/signs/sign_03",
						},
					},
				}
			},
			{
				Option = "Advert 4",
				Props = {
					{
						Model = "models/sentry/props/taxiadsign.mdl",
						Position = Vector( 0, -33, 63.4 ),
						Angles = Angle( 0.7, 270, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[0] = "rin/taxi/props/signs/sign_04",
						},
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
							[1] = "rin/taxi/props/plates/plate_taxi",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -31, 105.7, 15 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/taxi/props/plates/plate_taxi",
						},
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, -8, -5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
}
