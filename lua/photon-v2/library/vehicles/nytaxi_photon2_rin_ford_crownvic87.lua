if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1987 Ford Crown Victoria NYC Taxi"
VEHICLE.Vehicle		= "87ltd_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYC Taxi"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
    {
		Category = "Livery",
		Options = {
			{
				Option = "Taxi",
				SubMaterials = {
					{ Id = 2, Material = "rin/nypd/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/nypd/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/nypd/crownvic87/dash_blue" },
					{ Id = 7, Material = "rin/taxi/crownvic87/taxi_87" },
				},
			},
		}
	},
	{
		Category = "Taxi Sign",
		Options = {
			{
				Option = "Advert 1",
				Props = {
					{
						Model = "models/sentry/props/taxiadsign.mdl",
						Position = Vector( 0, -20, 61.5 ),
						Angles = Angle( -0.5, 90, 0 ),
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
						Position = Vector( 0, -20, 61.5 ),
						Angles = Angle( -0.5, 90, 0 ),
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
						Position = Vector( 0, -20, 61.5 ),
						Angles = Angle( -0.5, 90, 0 ),
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
						Position = Vector( 0, -20, 61.5 ),
						Angles = Angle( -0.5, 90, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[0] = "rin/taxi/props/signs/sign_04",
						},
					},
				}
			},
			{
				Option = "No Advert",
				Props = {
					{
						Model = "models/sentry/props/taxisign.mdl",
						Position = Vector( 0, -20, 60.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
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
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( -34, 111.2, 16.8 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123, 30 ),
						Angles = Angle( -16, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/taxi/props/plates/plate_taxi",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -34, 112, 16.8 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/taxi/props/plates/plate_taxi",
						},
					},
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, -5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
}
