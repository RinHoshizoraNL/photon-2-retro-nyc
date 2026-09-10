if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1992 Ford Econoline Bravo EMS"
VEHICLE.Vehicle		= "econoline_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYC EMS (Private)"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Bravo EMS",
				SubMaterials = {
					{ Id = 21, Material = "rin/ems/econoline92/bravo" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -25, 106.8, 20 ),
						Angles = Angle( 0, 97, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
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
                        Position = Vector( 0, 7, 88.9 ),
                        Angles = Angle( 0, 0, -1.5 ),
                        Scale = 1,
					},
					{
						Component = "photon_whe_500_nypd",
						Position = Vector( 0, -136, 89 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 0.85,
					},
				},
				Props = {
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( -20.5, -136, 85.6),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1),
					},
					{
						Model = "models/schmal/antenna_gps.mdl",
						Position = Vector( 20.5, -136, 85.6),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1),
					},
				}
			},
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
						Position = Vector( 0, 90, 30.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "sp_mk7_digi",
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
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				BodyGroups = {
					{ BodyGroup = "partition", Value = 0 },
				},
                Props = {
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( -25, 106, 20 ),
						Angles = Angle( 0, 97, 0 ),
						Scale = 1
					},
				}
			}
		}
	},
}