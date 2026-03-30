if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1995 Ford Crown Victoria NYC Taxi"
VEHICLE.Vehicle		= "96cvpi_sgm"
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
					{ Id = 6, Material = "rin/taxi/crownvic96/taxi_96" }
				},
			},
		}
	},
	{
		Category = "Taxi Sign",
		Options = {
			{
				Option = "Taxi Sign With Advert",
				Props = {
					{
						Model = "models/sentry/props/taxiadsign.mdl",
						Position = Vector( 0, -22, 68.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.9,
						SubMaterials = {
							[0] = "rin/taxi/props/signs/sign_01",
						},
					},
				}
			},
			{
				Option = "Taxi Sign",
				Props = {
					{
						Model = "models/sentry/props/taxisign.mdl",
						Position = Vector( 0, -19, 68 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
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
				BodyGroups = {
					{ BodyGroup = "pillars", Value = 0 },
					{ BodyGroup = "hubcaps_fl", Value = 1 },
					{ BodyGroup = "hubcaps_fr", Value = 0 },
					{ BodyGroup = "hubcaps_rl", Value = 0 },
					{ BodyGroup = "hubcaps_rr", Value = 0 },
				},
				Props = {
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, 0),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 122, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -125.4, 31.8 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 0.95,
						SubMaterials = {
							[1] = "rin/taxi/props/plates/plate_taxi",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 122.7, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/taxi/props/plates/plate_taxi",
						},
					},
				}
			}
		}
	},
	{
		Category = "Front Bumper Guard",
		Options = {
			{
				Option = "None",
			},
			{
				Option = "Front Bumper Guard",
				Props = {
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 11, 124, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.5, 0.3, 3),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 11, 124.5, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.4, 0.3, 2.9),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -11, 124, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.5, 0.3, 3),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -11, 124.5, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.4, 0.3, 2.9),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 11, 118, 14.5),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 11, 118, 27.3),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -11, 118, 14.5),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -11, 118, 27.3),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 124, 24),
						Angles = Angle( 90, 0, 0 ),
						Scale = Vector( 0.5, 0.5, 7),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 124, 28),
						Angles = Angle( 90, 0, 0 ),
						Scale = Vector( 0.5, 0.5, 7),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
				}
			}
		}
	},
	{
		Category = "Rear Bumper Guard",
		Options = {
			{
				Option = "None",
			},
			{
				Option = "Rear Bumper Guard",
				Props = {
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 16, -135, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.5, 0.3, 2.5),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 16, -135.5, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.4, 0.3, 2.4),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -16, -135, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.5, 0.3, 2.5),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -16, -135.5, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.4, 0.3, 2.4),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 16, -129, 15.3),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 16, -129, 24.5),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -16, -129, 15.3),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -16, -129, 24.5),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, -135, 20),
						Angles = Angle( 90, 0, 0 ),
						Scale = Vector( 0.5, 0.5, 9.7),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, -135, 28),
						Angles = Angle( 90, 0, 0 ),
						Scale = Vector( 0.5, 0.5, 9.7),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
				}
			}
		}
	},
}
