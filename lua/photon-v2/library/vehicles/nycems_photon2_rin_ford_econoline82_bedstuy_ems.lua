if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1982 Ford Econoline Bed-Stuy Ambulance"
VEHICLE.Vehicle		= "82econoline_ambu_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYC EMS (Private)"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Bomb Squad",
				SubMaterials = {
					{ Id = 18, Material = "rin/ems/econoline82/bed_stuy" },
					{ Id = 15, Material = "sentry/dippy/black" },
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
				Option = "Federal Signal Twinsonic",
				Components = {
					{
                        Component = "fedsig_twinsonic",
                        Position = Vector( 0, 60, 100.5 ),
                        Angles = Angle( 0, 0, -1.5 ),
                        Scale = 1,
						States = { [1] = "B",
						           [2] = "B",
								   [3] = "R",
								   [4] = "R",
								   [5] = "B",
								   [6] = "R",
								   [7] = "B",
								   [8] = "R",
					    },
						SubMaterials = {
							[7] = "sentry/props/c3xl/glass_outer",
							[13] = "rin/ems/props/twinsonic/redblue",
						},
					},
				}
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
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( -17, 148.3, 44 ),
						Angles = Angle( 0, 2, -4.5 ),
						Scale = 1,
						Phase = 90,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 17, 148.3, 44 ),
						Angles = Angle( 0, -2, -4.5 ),
						Scale = 1,
						Phase = 90,
					},
                }
			},
		}
	},
	{
		Category = "Front Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( -44, 43.8, 109 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 44, 43.8, 109 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
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
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( -58, 30, 113.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						Phase = 90,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( -58, -139, 113.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( -58, -20, 113.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( -58, -90, 113.5 ),
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
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 58, 30, 113.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						Phase = 90,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 58, -139, 113.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 58, -20, 113.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 58, -90, 113.5 ),
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
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( -42.5, -152.5, 112.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						Phase = 90,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( -42.5, -152.5, 66 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						States = { "A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 42.5, -152.5, 112.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						Phase = 90,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 42.5, -152.5, 66 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						States = { "A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
				},
				Props = {
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 0, -152.5, 112.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( -21, -152.5, 112.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 21, -152.5, 112.5 ),
						Angles = Angle( 0, 180, 0 ),
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
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -41.5, -152, 30 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 148.9, 25.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
				}
			}
		}
	},
}
