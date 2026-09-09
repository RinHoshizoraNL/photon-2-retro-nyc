if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1998 Ford Crown Victoria NYC Taxi"
VEHICLE.Vehicle		= "cvpi_hd_98_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYC Taxi"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Standard",
				SubMaterials = {
					{ Id = 3, Material = "rin/taxi/crownvic98/taxi_98" }
				},
			},
			{
				Option = "Garden In Transit",
				SubMaterials = {
					{ Id = 3, Material = "rin/taxi/crownvic98/taxi_98_garden" }
				},
			},
			{
				Option = "Yahoo Internet Taxi",
				SubMaterials = {
					{ Id = 3, Material = "rin/taxi/crownvic98/taxi_98_yahoo" }
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
						Position = Vector( 0, -27, 68 ),
						Angles = Angle( -1, 270, 0 ),
						Scale = 0.9,
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
						Position = Vector( 0, -27, 68 ),
						Angles = Angle( -1, 270, 0 ),
						Scale = 0.9,
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
						Position = Vector( 0, -27, 68 ),
						Angles = Angle( -1, 270, 0 ),
						Scale = 0.9,
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
						Position = Vector( 0, -27, 68 ),
						Angles = Angle( -1, 270, 0 ),
						Scale = 0.9,
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
						Position = Vector( 0, -19, 66.5 ),
						Angles = Angle( 1, 90, 0 ),
						Scale = 1
					},
				}
			},
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 1 },
				},
			}
		}
	},
    {
		Category = "Rain Guards",
		Options = {
			{
				Option = "None",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 0 },
				},
			},
			{
				Option = "Rain Guards",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 1 },
				},
			},
		}
	},
	{
		Category = "Model Year",
		Options = {
			{
				Option = "1998",
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 0 },
					{ BodyGroup = "trunkemblem", Value = 0 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 1 },
					{ BodyGroup = "bumperr_chrome", Value = 1 },
					{ BodyGroup = "4bulb_tails", Value = 1 },
				},
			},
			{
				Option = "1999",
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 0 },
					{ BodyGroup = "grille", Value = 3 },
					{ BodyGroup = "reartrim", Value = 1 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
					{ BodyGroup = "4bulb_tails", Value = 1 },
				},
			},
			{
				Option = "2001",
				BodyGroups = {
					{ BodyGroup = "doortrim", Value = 0 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "reartrim", Value = 0 },
					{ BodyGroup = "handles", Value = 1 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
					{ BodyGroup = "4bulb_tails", Value = 1 },
				},
			},
		}
	},
	{
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				BodyGroups = {
					{ BodyGroup = "rearfascia", Value = 1 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "door_l_notch", Value = 1 },
					{ BodyGroup = "door_r_notch", Value = 1 },
					{ BodyGroup = "pillars", Value = 1 },
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_1",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 49.2, -9.8, 0 ),
						Angles = Angle( 0, 12, -90 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_1",
						},
						FollowBone = "trunk"
					},
				}
			}
		}
	},
	{
		Category = "Front Bumper Guard",
		Options = {
			{
				Option = "Front Bumper Guard",
				Props = {
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 11, 120, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.5, 0.3, 3),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 11, 120.5, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.4, 0.3, 2.9),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -11, 120, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.5, 0.3, 3),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -11, 120.5, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.4, 0.3, 2.9),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 11, 114, 14.5),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 11, 114, 24.5),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -11, 114, 14.5),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -11, 114, 24.5),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 120, 24),
						Angles = Angle( 90, 0, 0 ),
						Scale = Vector( 0.5, 0.5, 7),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 120, 28),
						Angles = Angle( 90, 0, 0 ),
						Scale = Vector( 0.5, 0.5, 7),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
				}
			},
			{
				Option = "None",
			},
		}
	},
	{
		Category = "Rear Bumper Guard",
		Options = {
			{
				Option = "Rear Bumper Guard",
				Props = {
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 16, -135, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.5, 0.3, 2.9),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 16, -135.5, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.4, 0.3, 2.8),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -16, -135, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.5, 0.3, 2.9),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -16, -135.5, 22.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.4, 0.3, 2.8),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 16, -129, 14.1),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 16, -129, 25.6),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -16, -129, 14.1),
						Angles = Angle( 0, 0, 90 ),
						Scale = Vector( 0.5, 0.1, 2),
						SubMaterials = {
							[0] = "rin/taxi/props/silver",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -16, -129, 25.6),
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
			},
			{
				Option = "None",
			},
		}
	},
}