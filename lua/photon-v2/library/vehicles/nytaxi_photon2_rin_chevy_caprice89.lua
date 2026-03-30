if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1989 Chevrolet Caprice NYC Taxi"
VEHICLE.Vehicle		= "caprice_civ_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYC Taxi"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

local WHEEL_X		= -1

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Taxi",
				SubMaterials = {
					{ Id = 7, Material = "rin/taxi/caprice89/taxi_89" },
				},
			},
		}
	},
	{
		Category = "Taxi Sign",
		Options = {
			{
				Option = "Taxi Sign",
				Props = {
					{
						Model = "models/sentry/props/taxisign.mdl",
						Position = Vector( 0, -5, 61.2 ),
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
						Model = "models/sentry/props/setina_partition_cvpi.mdl",
						Position = Vector( 0, 9, -2),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 0.97),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_vhf_1.mdl",
						Position = Vector( 39.5, 50, 38 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 0.7 ),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -113, 28.8 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/taxi/props/plates/plate_taxi",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 119.45, 15 ),
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
				Option = "Front Bumper Guard",
				Props = {
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 17, 119, 18.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 2),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -17, 119, 18.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 2),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 17, 122, 18.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.35, 0.1, 1.7),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -17, 122, 18.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.35, 0.1, 1.7),
						SubMaterials = {
							[0] = "sentry/dippy/black",
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
		Category = "Wheels",
		Options = {
			{
				Option = "Steelies",
				Bones = {
					{ Bone = "fl_wheel", Scale = 1, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "fr_wheel", Scale = 1, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "bl_wheel", Scale = 1, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "br_wheel", Scale = 1, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
				}
			},
			{
				Option = "Hub Caps",
				Bones = {
					{ Bone = "fl_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "fr_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "bl_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "br_wheel", Scale = 0, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
				},
				Props = {
					{
						Model = "models/lilranbay/vehicle_wheels/caprice89_hubcaps.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Bones = {
							["bone_wheel_front_left"] = { 
								Position = Vector( WHEEL_X, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_fl" }
							},
							["bone_wheel_front_right"] = { 
								Position = Vector( WHEEL_X, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_fr" }
							},
							["bone_wheel_rear_left"] = { 
								Position = Vector( WHEEL_X, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_rl" }
							},
							["bone_wheel_rear_right"] = { 
								Position = Vector( WHEEL_X, 0, 0 ),
								Angles = Angle( 0, 0, 0 ),
								Scale = 1,
								Follow = { Attachment = "wheel_rr" }
							}
						}
					}
				}
			},
		}
	}
}
