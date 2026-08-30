if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1982 Ford Econoline NYPD Bomb Squad"
VEHICLE.Vehicle		= "82econoline_ambu_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYPD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Bomb Squad",
				SubMaterials = {
					{ Id = 18, Material = "rin/nypd/econoline82/bomb_82" },
					{ Id = 15, Material = "rin/nypd/props/blue" },
					{ Id = 3, Material = "rin/nypd/econoline82/cube_int_dark" },
					{ Id = 6, Material = "rin/nypd/econoline82/plastic_dark" },
					{ Id = 7, Material = "rin/nypd/econoline82/seat_dark" },
					{ Id = 8, Material = "rin/nypd/econoline82/seat2_dark" },
				},
			},
		}
	},
	{
		Category = "Lightbar Front",
		Options = {
            {
				Option = "Federal Signal Aerodynic",
				Components = {
					{
                        Component = "fedsig_aerodynicny",
                        Position = Vector( 0, 60, 98.5 ),
                        Angles = Angle( 0, 180, 1.5 ),
                        Scale = 1.1,
					},
				}
			},
        }
	},
	{
		Category = "Lightbar Rear",
		Options = {
            {
				Option = "Federal Signal Aerodynic",
				Components = {
					{
                        Component = "fedsig_aerodynicny",
                        Position = Vector( 0, -160, 110 ),
                        Angles = Angle( 0, 180, 0 ),
                        Scale = 1.1,
					},
				},
				Props = {
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( -29.5, -157.5, 108.5 ),
						Angles = Angle( 90, 270, 0 ),
						Scale = Vector( 1, 0.5, 4.5 ),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( 29.5, -157.5, 108.5 ),
						Angles = Angle( 90, 270, 0 ),
						Scale = Vector( 1, 0.5, 4.5 ),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
				},
			},
        }
	},
	{
		Category = "Grille Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -23, 148.3, 45 ),
						Angles = Angle( 0, 2, -4.5 ),
						Scale = 1.2,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 23, 148.3, 45 ),
						Angles = Angle( 0, -2, -4.5 ),
						Scale = 1.2,
						Phase = 90,
					},
                }
			},
		}
	},
	{
		Category = "Left Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -58, -4, 113.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -58, -112, 113.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( -58, -16, 113.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( -58, -100, 113.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
				},
			},
		}
	},
	{
		Category = "Right Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 58, -4, 113.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 58, -112, 113.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						Phase = 90,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 58, -16, 113.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 58, -100, 113.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
				},
			},
		}
	},
	{
		Category = "Rear Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -42.5, -152.5, 113.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -42.5, -152.5, 70 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						States = { "~A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 42.5, -152.5, 113.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 42.5, -152.5, 70 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						Phase = 90,
						States = { "~A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
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
				Option = "Scientific Prototypes Mark-VII",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 140, 50 ),
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
		Category = "Side Steps",
		Options = {
			{
				Option = "Side Steps",
				Props = {
					{
						Model = "models/supermighty/photon/sidestep.mdl",
						Position = Vector( 0, 106, -7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector(0.72, 1, 1),
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
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -41.5, -152, 30 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol95",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 148.9, 25.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol95",
						},
					},
				}
			}
		}
	},
}
