if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1989 Chevrolet Caprice NYC EMS"
VEHICLE.Vehicle		= "caprice_civ_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYC EMS"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

local WHEEL_X		= -1

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "EMS 1989",
				SubMaterials = {
					{ Id = 7, Material = "rin/ems/caprice89/ems_89" },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Code3 XL",
				Components = {
					{
                        Component = "code3_xl",
                        Position = Vector( 0, -2, 61.3 ),
                        Angles = Angle( 0, 0, -0.7 ),
                        Scale = 0.89,
					},
				}
			},
        }
	},
	{
		Category = "Dash light",
		Options = {
            {
				Option = "None",
			},
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
				Option = "Federal Signal PA4000",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 100, 30 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "fs_pa4000",
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
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
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
							[0] = "rrin/nypd/props/pa300/pa300",
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
						Model = "models/anemolis/props/antennas/anemolis_antenna11.mdl",
						Position = Vector( 0, -90, 43.3 ),
						Angles = Angle( 0, 180, -6 ),
						Scale = 1,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -113, 28.8 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 119.45, 15 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
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
}
