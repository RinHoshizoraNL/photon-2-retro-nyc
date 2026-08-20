if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1986 Ford F150 Housing Police"
VEHICLE.Vehicle		= "86f150_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Housing Police"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

local WHEEL_X		= -1

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol",
				SubMaterials = {
					{ Id = 15, Material = "rin/housing/f150/housing_86" },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Federal Signal Twinsonic",
				Components = {
					{
                        Component = "fedsig_twinsonic",
                        Position = Vector( 0, 0, 85.6 ),
                        Angles = Angle( 0, 0, -1 ),
                        Scale = 0.95,
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
						Position = Vector( 0, 90, 30 ),
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
				BodyGroups = {
					{ BodyGroup = "ftrim", Value = 0 },
					{ BodyGroup = "doortrim", Value = 1 },
					{ BodyGroup = "rtrim", Value = 1 },
				},
				Props = {
					{
						Model = "models/gandhi/props/mastercom.mdl",
						Position = Vector( -0.7, 27, 51),
						Angles = Angle( 72, 260, 0 ),
						Scale = 1.17,
						SubMaterials = {
							[0] = "rin/nypd/props/sp_mk7/sp_mark7",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.7, 26.5 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/housing/props/plates/plate_patrol89",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 102.6, 23 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/housing/props/plates/plate_patrol89",
						},
					},
				}
			}
		}
	},
}
