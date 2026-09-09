if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1992 Ford Econoline NYC DHS Police"
VEHICLE.Vehicle		= "econoline_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Other"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "DHS Police",
				SubMaterials = {
					{ Id = 21, Material = "rin/nyc_other/econoline92/dhs" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                },
				Components = {
					{
                        Component = "fedsig_aerodynicny",
                        Position = Vector( 0, 10, 89.5 ),
                        Angles = Angle( 0, 180, 1.5 ),
                        Scale = 1.02,
					},
				}
			},
		}
	},
	{
		Category = "Rear Lightbar",
		Options = {
			{
				Option = "Code3 XL Mini",--SHOULD BE A MINI JETSTREAM BUT SORRY DON'T HAVE ONE :(
				Components = {
					{
						Component = "code3_xl_mini",
						Position = Vector( 0, -130, 88.7 ),
						Angles = Angle( 0, 0, 5.5 ),
						Scale = 0.85,
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
						Position = Vector( 0, 90, 35 ),
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
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				BodyGroups = {
					{ BodyGroup = "partition", Value = 1 },
				},
                Props = {
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( -25, 106, 20 ),
						Angles = Angle( 0, 97, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -25, 106.8, 20 ),
						Angles = Angle( 0, 97, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_2",
						},
					},
				}
			}
		}
	},
}