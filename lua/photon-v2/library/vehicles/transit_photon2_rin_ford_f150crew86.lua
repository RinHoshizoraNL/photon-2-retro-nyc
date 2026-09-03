if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1986 Ford F150 NYC Transit Police ESU"
VEHICLE.Vehicle		= "86f150_crew_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Transit Police"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Transit Police 89",
				SubMaterials = {
					{ Id = 22, Material = "rin/transit/f150crew86/transit_91" },
				},
				Components = {
					{
						Component = "photon_whe_advantedge_transit",
						Position = Vector( 0, 1.6, 84.8 ),
						Angles = Angle( -1.3, -90, 0 ),
						Scale = 1.08,
						BodyGroups = { 
							["feet"] = 0,
							["straps"] = 0,
							["speaker"] = 0,
							["rear_lights"] = 2
						},
						Bones = {
							["foot_dr"] =	{ Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["foot_pas"] =	{ Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["strap_dr"] =	{ Vector( 0, -2.15, -0.1 ), Angle( 0, 0, 9 ), 1 },
							["strap_pas"] =	{ Vector( 0, 2.15+.36, -0.1 ), Angle( 0, 0, -9 ), 1 },

							["500_rear_dr"] =	{ Vector( 0, -2.95, 0 ), Angle( 0, 0, 0 ), 1 },
							["500_rear_pas"] =	{ Vector( 0, 2.95, 0 ), Angle( 0, 0, 0 ), 1 },
						}
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( -17.2, 112.5, 31.9 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( 17.8, 112.5, 31.9 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Phase = 180,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -43.6, -32, 104 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -43.6, -150, 104 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 43.6, -32, 104 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 43.6, -150, 104 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -35.5, -163.2, 95 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -35.5, -163.2, 78 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						Phase = 90,
						States = { "~A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 35.5, -163.2, 95 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 35.5, -163.2, 78 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						States = { "~A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Component = "code3_xl_mini",
						Position = Vector( 0, -152, 115.25 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.85,
					},
                },
				Props = {
					{
						Model = "models/supermighty/props/nypd_esu_bumper.mdl",
						Position = Vector( 0.3, 108, 25 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.7, 0.82, 0.75 ),
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 112, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector( 1, 3.3, 2 ),
					},
					{
						Model = "models/supermighty/photon/sidestep.mdl",
						Position = Vector( 0, 62, -5 ),
						Angles = Angle( 1, 90, 0 ),
						Scale = Vector(0.95, 0.92, 1),
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 20.3, 115, 48.2 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/transit/props/plates/plate_transit",
						},
					},
				}
			},
			{
				Option = "Transit Police 88",
				SubMaterials = {
					{ Id = 22, Material = "rin/transit/f150crew86/transit_88" },
				},
				Components = {
					{
                        Component = "photon_fedsig_aerodynic_transit",
                        Position = Vector( 0, 3, 83.5 ),
                        Angles = Angle( 0, 180, 2 ),
                        Scale = 1,
					},
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( -15, 105.5, 31),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( 15, 105.5, 31),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.8,
						Phase = 180,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( -24, 106, 42),
						Angles = Angle( 270, 0, 0 ),
						Scale = 0.8,
						Phase = 150,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( 24, 106, 42),
						Angles = Angle( 90, 0, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( -34, -160, 114.5),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( 34, -160, 114.5),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.8,
						Phase = 180,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 102.7, 22.7 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/transit/props/plates/plate_transit",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 22.5, 105, 33),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 3),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/hdisc_12.mdl",
						Position = Vector( 22.5, 106.5, 42.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.25, 0.8, 0.6),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qdisc_12.mdl",
						Position = Vector( 22.5, 105, 22.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1, 0.8, 0.99),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -22.5, 105, 33),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 3),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/hdisc_12.mdl",
						Position = Vector( -22.5, 106.5, 42.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.25, 0.8, 0.6),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qdisc_12.mdl",
						Position = Vector( -22.5, 105, 22.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1, 0.8, 0.99),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 106.5, 43),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.65, 0.65, 14.5),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 105.5, 29),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 1, 1, 14.5),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -15, 105.5, 29.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 15, 105.5, 29.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -22.5, 106, 42 ),
						Angles = Angle( 270, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 22.5, 106, 42 ),
						Angles = Angle( 90, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -34, -160, 113 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 34, -160, 113 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
		}
	},
	{
		Category = "Trim Delete",
		Options = {
			{
				Option = "Trim Delete",
				BodyGroups = {
					{ BodyGroup = "fbumper", Value = 1 },
					{ BodyGroup = "ftrim", Value = 1 },
					{ BodyGroup = "doortrim", Value = 0 },
				},
			}
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "SP Mark 7",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 96, 45 ),
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
		Category = "Rear Plate",
		Options = {
			{
				Option = "Rear Plate",
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -39, -162.9, 27 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/transit/props/plates/plate_transit",
						},
					},
				}
			}
		}
	},
}
