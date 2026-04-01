if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1993 Ford Mustang NYPD Highway Patrol"
VEHICLE.Vehicle		= "ford_foxbody_stock_lw"
VEHICLE.Category 	= "Photon 2 NYC: NYPD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.BodyGroups = {
	["Fbumber"] = 0,
	["Rbumber"] = 0,
	["Hood"] = 0,
	["Exhaust"] = 0,
	["Wing"] = 1,
	["Frontwheels"] = 1,
	["Rearwheels"] = 1,
	["Rearwindow"] = 0,
}

VEHICLE.SubMaterials = {
    [5] = "sentry/dippy/black",
	[24] = "sentry/shared/env_cubemap_model",
	[10] = "sentry/shared/glass",
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Highway Patrol 1993",
				SubMaterials = {
					{ Id = 7, Material = "rin/nypd/mustang93/highway_93" },
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -106.1, 34.4 ),
						Angles = Angle( -4, 270, 0 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol95",
						},
					},
				}
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Federal Signal Jetstream",
				Components = {
					{
						Component = "fedsig_jetstream",
						Position = Vector( 0, -15, 64.3 ),
						Angles = Angle( 0, 180, 1 ),
						Scale = 1,
					},
                }
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
						Position = Vector( 7.5, 10, 58.7),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/photon_ex/controllers/fedsig_scsb.mdl",
						Position = Vector( 0.5, 23.5, 41.5 ),
						Angles = Angle( 80, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0.8, 22.5, 24.7 ),
						Angles = Angle( 255, 270, 0 ),
						Scale = 0.33,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
}
