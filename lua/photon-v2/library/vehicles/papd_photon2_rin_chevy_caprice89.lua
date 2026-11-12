if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1989 Chevrolet Caprice PAPD"
VEHICLE.Vehicle		= "caprice_civ_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Port Authority"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

local WHEEL_X		= -1

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol 1989",
				SubMaterials = {
					{ Id = 7, Material = "rin/papd/caprice89/patrol_89" },
					{ Id = 14, Material = "rin/papd/props/blue" },
				},
			},
		}
	},
	{
		Category = "Dummy Lightbar",
		Options = {
			{
				Option = "Federal Signal Streethawk",
				Props = {
					{
						Model = "models/sentry/props/streethawk_speaker.mdl",
						Position = Vector( 0, 0-2, 61.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.07,
						SubMaterials = {
							[2] = "rin/papd/props/streethawk/streethawk",
						},
					},
				}
			}
		}
	},
	{
		Category = "Highriser",
		Options = {
			{
				Option = "None",
			},
			{
				Option = "Highriser",
				Props = {
					{
						Model = "models/tdmcars/emergency/equipment/mcdermott_riser.mdl",
						Position = Vector( 0, -25, 63.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.95,
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -24, -15.6, 59.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 24, -15.6, 59.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -24, -34.4, 59.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 24, -34.4, 59.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 3, 3, 1.5 ),
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( 2.5, -19, 69 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 8.2, 0.2, 0.44 ),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/cuboids/height06/size_1/cube_6x6x6.mdl",
						Position = Vector( -2.5, -31, 69 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 8.2, 0.2, 0.44 ),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -8, -20.2, 70 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 8, -29.7, 70 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
				},
				Components = {
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( 21.4, -20.2, 68.8 ),
						Angles = Angle( 90, 0, 0 ),
						Scale = 1,
						States = { "~R", "~R" }
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( -21.4, -29.7, 68.8 ),
						Angles = Angle( -90, 0, 0 ),
						Scale = 1,
						Phase = 180,
						States = { "~R", "~R" }
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( 20, -20.2, 64.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = 180,
						States = { "~R", "~R" }
					},
					{
						Component = "photon_mars_flasher_nypd",
						Position = Vector( -20, -29.7, 64.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						States = { "~R", "~R" }
					},
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( -8, -20.2, 72 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( 8, -29.7, 72 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
				}
			}
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Federal Signal PA300",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 100, 30 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "pa300_1",
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
		Category = "Spotlight",
		Options = {
			{
				Option = "Spotlight",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -37, 31.5, 47 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
				}
			},
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
							[0] = "rin/nypd/props/pa300/pa300",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
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
							[1] = "rin/papd/props/plates/plate_port_a",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 119.45, 15 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/papd/props/plates/plate_port_a",
						},
					},
				}
			}
		}
	},
	{
		Category = "Pushbar",
		Options = {
			{
				Option = "Pushbar",
				Props = {
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 14, 123, 23),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.8, 0.7, 2),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 14, 123, 15.2),
						Angles = Angle( 180, 270, 0 ),
						Scale = Vector( 0.8, 0.7, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( 14, 124.2, 29.7),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.8, 0.7, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 14, 115, 23.6),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 5, 0.7, 0.1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 14, 118, 12.8),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 2, 0.7, 0.1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 14, 125.5, 24.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 4.4, 0.6, 0.1),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 123.2, 20),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.5, 0.5, 8.7),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 123.8, 26),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.5, 0.5, 8.7),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -14, 123, 23),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.8, 0.7, 2),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -14, 123, 15.2),
						Angles = Angle( 180, 270, 0 ),
						Scale = Vector( 0.8, 0.7, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( -14, 124.2, 29.7),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.8, 0.7, 1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -14, 115, 23.6),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 5, 0.7, 0.1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -14, 118, 12.8),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 2, 0.7, 0.1),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -14, 125.5, 24.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 4.4, 0.6, 0.1),
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
				}
			}
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
