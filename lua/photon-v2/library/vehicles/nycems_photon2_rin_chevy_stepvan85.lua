if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1985 Chevrolet Stepvan NYC EMS"
VEHICLE.Vehicle		= "perryn_chevrolet_stepvan"
VEHICLE.Category 	= "Photon 2 NYC: NYC EMS"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.SubMaterials = {
    [0] = "sentry/shared/env_cubemap_model",
	[1] = "sentry/dippy/black",
	[4] = "sentry/dippy/black",
	[11] = "sentry/shared/glass",
	[16] = "sentry/shared/env_cubemap_model",
	[20] = "sentry/dippy/black",
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Special Operations Division",
				SubMaterials = {
					{ Id = 28, Material = "rin/ems/stepvan/spl_ops" },
				},
				Components = {
					{
                        Component = "code3_xl",
                        Position = Vector( 0, 74, 103 ),
                        Angles = Angle( 0, 0, 0 ),
                        Scale = 1,
					},
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( 15, 105, 25 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_par46_flasher_nypd",
						Position = Vector( -15, 105, 25 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Phase = 180,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( -33.55, 73.1, 100.5 ),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1.5, 0.3, 5.2 ),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( 33.55, 73.1, 100.5 ),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1.5, 0.3, 5.2 ),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -15, 105, 22 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 15, 105, 22 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			},
			{
				Option = "Field Communications",
				SubMaterials = {
					{ Id = 28, Material = "rin/ems/stepvan/communications" },
				},
				Components = {
					{
                        Component = "fedsig_twinsonic",
                        Position = Vector( 0, 47, 110.5 ),
                        Angles = Angle( 0, 0, -1 ),
                        Scale = 1,
					},
				},
				Props = {
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( -0.3, -10, 110 ),
						Angles = Angle( 0, 0, 00 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( -0.3, -80, 111 ),
						Angles = Angle( 0, 0, 00 ),
						Scale = 1,
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( 46, 87, 45 ),
						Angles = Angle( 90, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/schmal/antenna_vhf_2.mdl",
						Position = Vector( 46, 87, 46.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Model = "models/gandhi/props/ts100.mdl",
						Position = Vector( 30, 20, 112.3 ),
						Angles = Angle( 0, 0, -1 ),
						Scale = 1.3,
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/gandhi/props/ts100.mdl",
						Position = Vector( -30, 20, 112.3 ),
						Angles = Angle( 0, 180, 1 ),
						Scale = 1.3,
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
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
						Position = Vector( 0, 95, 30 ),
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
		Category = "Plates",
		Options = {
			{
				Option = "Plates",
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -133.5, 24.9 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 0.93,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -0.07, 107.1, 17 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.95,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
				}
			}
		}
	},
}
