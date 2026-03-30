if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1991 Chevrolet Caprice NYC Taxi"
VEHICLE.Vehicle		= "91caprice_sgm"
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
					{ Id = 20, Material = "rin/taxi/caprice91/taxi_91" },
					{ Id = 16, Material = "rin/nypd/caprice95/seats_blue" },
					{ Id = 24, Material = "rin/nypd/caprice95/dash_blue" }
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
						Position = Vector( 0, -21, 60.5 ),
						Angles = Angle( -0.5, 90, 0 ),
						Scale = 0.8,
						SubMaterials = {
							[0] = "rin/taxi/props/signs/sign_03",
						},
					},
				}
			},
			{
				Option = "Taxi Sign",
				Props = {
					{
						Model = "models/sentry/props/taxisign.mdl",
						Position = Vector( 0, -20, 60 ),
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
				BodyGroups = {
					{ BodyGroup = "trim", Value = 0 },
				},
				Props = {
					{
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 0, -5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 114, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.2, 25.2 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/taxi/props/plates/plate_taxi",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 114.7, 12 ),
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
						Position = Vector( 13, 116, 19.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.5, 0.4, 3.2),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -13, 116, 19.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.5, 0.4, 3.2),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 23, 113.7, 19.5),
						Angles = Angle( 90, -15, 0 ),
						Scale = Vector( 0.5, 0.5, 7),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( -23, 113.7, 19.5),
						Angles = Angle( 90, 15, 0 ),
						Scale = Vector( 0.5, 0.5, 7),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 23, 113.7, 28.2),
						Angles = Angle( 90, -15, 0 ),
						Scale = Vector( 0.5, 0.5, 7),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( -23, 113.7, 28.2),
						Angles = Angle( 90, 15, 0 ),
						Scale = Vector( 0.5, 0.5, 7),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/misc/fittings/bend_long_90_3.mdl",
						Position = Vector( 34.8, 110.55, 20.6),
						Angles = Angle( 90, -15, 0 ),
						Scale = Vector( 0.5, 0.5, 0.5),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/misc/fittings/bend_long_90_3.mdl",
						Position = Vector( -34.8, 110.55, 20.6),
						Angles = Angle( 180, 15, 0 ),
						Scale = Vector( 0.5, 0.5, 0.5),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/misc/fittings/bend_long_90_3.mdl",
						Position = Vector( 34.8, 110.55, 27.05),
						Angles = Angle( 0, -15, 0 ),
						Scale = Vector( 0.5, 0.5, 0.5),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/misc/fittings/bend_long_90_3.mdl",
						Position = Vector( -34.8, 110.55, 27.05),
						Angles = Angle( 270, 15, 0 ),
						Scale = Vector( 0.5, 0.5, 0.5),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 35.9, 110.25, 23.8),
						Angles = Angle( 0, -15, 0 ),
						Scale = Vector( 0.5, 0.5, 0.95),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( -35.9, 110.25, 23.8),
						Angles = Angle( 0, -15, 0 ),
						Scale = Vector( 0.5, 0.5, 0.95),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 31, 111.6, 23.8),
						Angles = Angle( 0, -15, 0 ),
						Scale = Vector( 0.3, 0.3, 3),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( -31, 111.6, 23.8),
						Angles = Angle( 0, -15, 0 ),
						Scale = Vector( 0.3, 0.3, 3),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 116, 28),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.5, 0.5, 8),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 116, 19.5),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.5, 0.5, 8),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 13, 111, 19.55),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.7, 0.1, 4),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -13, 111, 19.55),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.7, 0.1, 4),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 13, 111, 10),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.7, 0.1, 4),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -13, 111, 10),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.7, 0.1, 4),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 13, 113, 23.5),
						Angles = Angle( 0, 0, 150 ),
						Scale = Vector( 0.7, 0.1, 3),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -13, 113, 23.5),
						Angles = Angle( 0, 0, 150 ),
						Scale = Vector( 0.7, 0.1, 3),
						SubMaterials = {
							[0] = "rin/taxi/props/yellow",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 13, 117, 19.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.4, 0.3, 3.1),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -13, 117, 19.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.4, 0.3, 3.1),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
				}
			}
		}
	},
}
