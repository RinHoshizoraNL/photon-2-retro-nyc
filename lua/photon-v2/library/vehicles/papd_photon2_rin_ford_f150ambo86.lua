if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1986 Ford F150 PAPD Ambulance"
VEHICLE.Vehicle		= "86f150_ambu_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Port Authority"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Ambulance",
				SubMaterials = {
					{ Id = 22, Material = "rin/papd/f150ambo86/papd_ambo" },
					{ Id = 27, Material = "rin/papd/props/blue" },
				},
			},
		}
	},
	{
		Category = "Trim Delete",
		Options = {
			{
				Option = "Trim Delete",
				BodyGroups = {
					{ BodyGroup = "fbumper", Value = 0 },
					{ BodyGroup = "ftrim", Value = 1 },
					{ BodyGroup = "doortrim", Value = 0 },
				},
			}
		}
	},
	{
		Category = "Front Lightbar",
		Options = {
            {
				Option = "Code3 XL",
				Components = {
					{
                        Component = "code3_xl",
                        Position = Vector( 0, -12.5, 117 ),
                        Angles = Angle( 0, 0, 0 ),
                        Scale = 1,
						States = { [1] = "R",
						           [2] = "R",
								   [3] = "R",
								   [4] = "R",
								   [5] = "R",
								   [6] = "R",
								   [7] = "R",
								   [8] = "R",
					    },
						SubMaterials = {
							[13] = "schmal/photon/fedsig_visionslr/lens_pod_2",
						},
					},
				},
				Props = {
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( -33.5, -13, 114.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1.5, 0.6, 5),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( 33.5, -13, 114.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1.5, 0.6, 5),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
				}
			},
        }
	},
	{
		Category = "Rear Lightbar",
		Options = {
            {
				Option = "FedSig Twinsonic",
				Components = {
					{
                        Component = "fedsig_twinsonic_no_feet",
                        Position = Vector( 0, -221, 117 ),
                        Angles = Angle( 0, 180, 0 ),
                        Scale = 1,
						States = { [1] = "R",
						           [2] = "R",
								   [3] = "R",
								   [4] = "R",
								   [5] = "R",
								   [6] = "R",
								   [7] = "R",
								   [8] = "R",
					    },
						SubMaterials = {
							[12] = "schmal/photon/fedsig_visionslr/lens_pod_2",
						},
					},
				},
				Props = {
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( -33.5, -218.5, 117.2),
						Angles = Angle( 90, 270, 0 ),
						Scale = Vector( 1.5, 0.6, 5),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( 33.5, -218.5, 117.2),
						Angles = Angle( 90, 270, 0 ),
						Scale = Vector( 1.5, 0.6, 5),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
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
						Position = Vector( -17.5, 103, 44 ),
						Angles = Angle( 0, 1, -4 ),
						Scale = 0.9,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 17.5, 103, 44 ),
						Angles = Angle( 0, -1, -4 ),
						Scale = 0.9,
					},
                },
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
						Position = Vector( -45, -19.7, 115 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 45, -19.7, 115 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
                },
				Props = {
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 0, -19.7, 115 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.2,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
				},
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
						Position = Vector( -58, -34, 117 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( -58, -202, 117 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( -58, -61, 117 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( -58, -175, 117 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
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
						Position = Vector( 58, -34, 117 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 58, -202, 117 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
				},
				Props = {
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 58, -61, 117 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/whelen900.mdl",
						Position = Vector( 58, -175, 117 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
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
						Position = Vector( -42, -216.2, 93 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 42, -216.2, 93 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
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
						Position = Vector( 0, 95, 45 ),
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
		Category = "License Plates",
		Options = {
			{
				Option = "License Plates",
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -41, -215.7, 30 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/papd/props/plates/plate_port_a",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 102.7, 22.7 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/papd/props/plates/plate_port_a",
						},
					},
				}
			}
		}
	},
}
