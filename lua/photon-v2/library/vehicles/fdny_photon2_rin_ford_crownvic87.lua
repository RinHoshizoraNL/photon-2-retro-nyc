if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1987 Ford Crown Victoria FDNY"
VEHICLE.Vehicle		= "87ltd_sgm"
VEHICLE.Category 	= "Photon 2 NYC: FDNY"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
    {
		Category = "Livery",
		Options = {
			{
				Option = "FDNY",
				SubMaterials = {
					{ Id = 2, Material = "rin/nypd/crownvic87/seats_blue" },
					{ Id = 3, Material = "rin/nypd/crownvic87/doors_blue" },
					{ Id = 6, Material = "rin/nypd/crownvic87/dash_blue" },
					{ Id = 7, Material = "rin/fdny/crownvic87/fire_87" },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Federal Signal Aerodynic",
				Components = {
					{
                        Component = "photon_fedsig_aerodynic_fdny",
                        Position = Vector( 0, -14, 59.75 ),
                        Angles = Angle( 0, 180, 0.5 ),
                        Scale = 0.92,
					},
				}
			},
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
		Category = "Additional Brake Lights",
		Options = {
            {
				Option = "Additional Brake Lights",
				Components = {
					{
						Component = "photon_par46_brake_nypd",
						Position = Vector( -25, -70, 42 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.7,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_par46_brake_nypd",
						Position = Vector( 25, -70, 42 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.7,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                },
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -25, -70, 38.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 25, -70, 38.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.7, 0.7, 1.5 ),
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
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
						Model = "models/gandhi/props/mastercom.mdl",
						Position = Vector( 0, 23, 32.5),
						Angles = Angle( 90, 270, 0 ),
						Scale = 1.15,
						SubMaterials = {
							[0] = "rin/nypd/props/pa300/pa300",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( -34, 111.2, 16.8 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123, 30 ),
						Angles = Angle( -16, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_red",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -34, 112, 16.8 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_red",
						},
					},
				}
			}
		}
	},
}
