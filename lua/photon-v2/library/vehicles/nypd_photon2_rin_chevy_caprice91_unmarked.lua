if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1991 Chevrolet Caprice NYPD Unmarked"
VEHICLE.Vehicle		= "91caprice_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYPD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Paint",
		Options = {
            {
				Option = "Light Camel Metallic",
				Properties = {
					Skin = 0,
					Color = Color(91,79,65)
				}
			},
			{
				Option = "Light Sapphire Blue Metallic",
				Properties = {
					Skin = 0,
					Color = Color(98,130,148)
				},
				SubMaterials = {
					{ Id = 16, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 24, Material = "rin/lrpd2/caprice95/dash_blue" }
				},
			},
			{
				Option = "Medium Garnet Red Metallic",
				Properties = {
					Skin = 0,
					Color = Color(88,14,19)
				}
			},
			{
				Option = "Flame Red Metallic",
				Properties = {
					Skin = 0,
					Color = Color(100,0,0)
				}
			},
			{
				Option = "Dark Maple Metallic",
				Properties = {
					Skin = 0,
					Color = Color(66,9,5)
				}
			},
			{
				Option = "Gunmetal Metallic",
				Properties = {
					Skin = 0,
					Color = Color(41,41,41)
				}
			},
			{
				Option = "Bright Silver Metallic",
				Properties = {
					Skin = 0,
					Color = Color(169,174,175)
				},
				SubMaterials = {
					{ Id = 16, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 24, Material = "rin/lrpd2/caprice95/dash_blue" }
				},
			},
			{
				Option = "White",
				Properties = {
					Skin = 0,
					Color = Color(255,255,255)
				},
				SubMaterials = {
					{ Id = 16, Material = "rin/lrpd2/caprice95/seats_blue" },
					{ Id = 24, Material = "rin/lrpd2/caprice95/dash_blue" }
				},
			},
			{
				Option = "Black",
				Properties = {
					Skin = 0,
					Color = Color(0,0,0)
				}
			},
		}
	},
	{
		Category = "Lighting",
		Options = {
			{
				Option = "Default",
				Components = {
					{
						Component = "photon_standard_chevcap91_nypd",
					}
				}
			}
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
						Position = Vector( 0, 36, 39.3 ),
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
						Position = Vector( 0, 34.2, 41.2),
						Angles = Angle( 0, 0, 85.5 ),
						Scale = Vector( 0.3, 0.5, 0.5),
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
		Category = "Grille Lights",
		Options = {
            {
				Option = "Federal Signal GH1",
				Components = {
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( -9, 104, 20.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( 9, 104, 20.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Phase = 180,
					},
                }
			},
			{
				Option = "None",
			},
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Federal Signal Smart Siren",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 104, 24 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "fedsig_smartsiren",
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
						Model = "models/supermighty/photon/dashcam.mdl",
						Position = Vector( 7.5, 15, 51),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/photon_ex/controllers/fedsig_scsb.mdl",
						Position = Vector( 0.2, 28, 35.7 ),
						Angles = Angle( 90, 270, 0 ),
						Scale = 1.2,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 26.5, 24 ),
						Angles = Angle( 270, 270, 0 ),
						Scale = 0.32,
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
							[1] = "rin/nypd/props/plates/plate_civ_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 114.7, 12 ),
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
}
