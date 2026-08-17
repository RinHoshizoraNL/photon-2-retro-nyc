if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1989 Chevrolet Caprice NYPD Unmarked"
VEHICLE.Vehicle		= "caprice_civ_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYPD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

local WHEEL_X		= -1

VEHICLE.Equipment = {
	{
		Category = "Paint",
		Options = {
			{
				Option = "Light Blue Metallic",
				SubMaterials = {
					{ Id = 7, Material = "sentry/shared/skin0" },
				},
				Properties = {
					Skin = 0,
					Color = Color(64,101,134)
				}
			},
			{
				Option = "Dark Blue Metallic",
				SubMaterials = {
					{ Id = 7, Material = "sentry/shared/skin0" },
				},
				Properties = {
					Skin = 0,
					Color = Color(7,24,50)
				}
			},
			{
				Option = "Medium Gray Metallic",
				SubMaterials = {
					{ Id = 7, Material = "sentry/shared/skin0" },
				},
				Properties = {
					Skin = 0,
					Color = Color(70,70,70)
				}
			},
			{
				Option = "Maroon",
				SubMaterials = {
					{ Id = 7, Material = "sentry/shared/skin0" },
				},
				Properties = {
					Skin = 0,
					Color = Color(53,0,3)
				}
			},
			{
				Option = "Copper Beige",
				SubMaterials = {
					{ Id = 7, Material = "sentry/shared/skin0" },
				},
				Properties = {
					Skin = 0,
					Color = Color(193,184,159)
				}
			},
			{
				Option = "Black",
				SubMaterials = {
					{ Id = 7, Material = "sentry/shared/skin0" },
				},
				Properties = {
					Skin = 0,
					Color = Color(0,0,0)
				}
			},
			{
				Option = "White",
				SubMaterials = {
					{ Id = 7, Material = "sentry/shared/skin0" },
				},
				Properties = {
					Skin = 0,
					Color = Color(255,255,255)
				}
			},
		}
	},
	{
		Category = "Dash light",
		Options = {
            {
				Option = "Beacon",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( 0, 34, 44.9 ),
						Angles = Angle( -4.5, 270, 0 ),
						Scale = .75,
						BodyGroups = {
							["trim"] = 0,
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/sprops/misc/tubes_thin/size_2/t_h_tube_24x12.mdl",
						Position = Vector( 0, 32.8, 47.2),
						Angles = Angle( 0, 0, 85.5 ),
						Scale = Vector( 0.3, 0.35, 0.5),
						SubMaterials = {
							[0] = "sentry/shared/black"
						},
					    RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Scientific Prototypes Mark-VII",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 100, 30 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "sp_mk7",
						Templates = {
							["Sound"] = { 
								Tone = {
									DSP = 0,
									Pitch = 100
								}
							}
						},
						Inputs = { 
							["Emergency.SirenParkKill"] = { ["PARK"] = {} }
						}
					},
				}
			}
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				Props = {
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 34, 27.3 ),
						Angles = Angle( 270, 270, 0 ),
						Scale = 0.32,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/mastercom.mdl",
						Position = Vector( 0, 31, 28),
						Angles = Angle( 90, 270, 0 ),
						Scale = 1.17,
						SubMaterials = {
							[0] = "rin/nypd/props/sp_mk7/sp_mark7",
						},
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
							[1] = "rin/nypd/props/plates/plate_civ_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 119.45, 15 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_2",
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
			{
				Option = "Steelies",
				Bones = {
					{ Bone = "fl_wheel", Scale = 1, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "fr_wheel", Scale = 1, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "bl_wheel", Scale = 1, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
					{ Bone = "br_wheel", Scale = 1, Position = Vector(0, 0, 0), Angles = Angle(0, 0, 0) },
				}
			}
		}
	}
}
