if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1996 Ford Crown Victoria NYC EMS"
VEHICLE.Vehicle		= "96cvpi_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYC EMS"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
    	{
		Category = "Livery",
		Options = {
			{
				Option = "EMS 1995",
				SubMaterials = {
					{ Id = 6, Material = "rin/ems/crownvic96/ems_95" }
				},
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
						Component = "photon_standard_sgmcvpi96",
					}
				}
			}
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
						Position = Vector( 0, 107, 29.3 ),
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
				BodyGroups = {
					{ BodyGroup = "pillars", Value = 0 },
					{ BodyGroup = "hubcaps_fl", Value = 0 },
					{ BodyGroup = "hubcaps_fr", Value = 1 },
					{ BodyGroup = "hubcaps_rl", Value = 1 },
					{ BodyGroup = "hubcaps_rr", Value = 1 },
				},
				Props = {
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 1.5, 0),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/vision.mdl",
						Position = Vector( 0, 5.6, 25 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/gandhi/props/radio.mdl",
						Position = Vector( 0, 9, 25.7 ),
						Angles = Angle( 200, 270, 0 ),
						Scale = 0.32,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/rob/oldpolicepack/motorola.mdl",
						Position = Vector( 0, 21, 31.2 ),
						Angles = Angle( 20, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/nypd/props/mdt/mdt",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 122, 19 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
				}
			}
		}
	},
}
