if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1994 Ford F150 Ambulance NYC EMS"
VEHICLE.Vehicle		= "86f150_ambu_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYC EMS"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Ambulance 1994",
				SubMaterials = {
					{ Id = 22, Material = "rin/ems/f150ambo86/ems_94" },
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
					{ BodyGroup = "fbumper", Value = 1 },
					{ BodyGroup = "ftrim", Value = 1 },
					{ BodyGroup = "doortrim", Value = 0 },
				},
			}
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
						Position = Vector( 0, 96, 45 ),
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
		Category = "Front Flashers",
		Options = {
            {
				Option = "Whelen 900",
				Components = {
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( -45, -19.7, 117 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.2,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 0, -19.7, 117 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.2,
						Phase = 90,
						States = { "SW" },
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 45, -19.7, 117 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.2,
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
						Position = Vector( -58, -34, 117 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( -58, -202, 117 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
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
						Phase = 90,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 58, -202, 117 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
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
						Position = Vector( -45, -216.2, 117 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 45, -216.2, 117 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( -30, -216.2, 117 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						States = { "A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Component = "anemolis_whelen_900_halogen",
						Position = Vector( 30, -216.2, 117 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						States = { "A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
                }
			},
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
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 102.7, 22.7 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/ems/props/plates/plate_ems",
						},
					},
				}
			}
		}
	},
	{
		Category = "Aircon",
		Options = {
			{
				Option = "Aircon",
				Props = {
					{
						Model = "models/w4nou/aeration_vsav.mdl",
						Position = Vector( 0, -7, 104 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 0, -7, 99.8),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 8.3, 15, 0.2),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( -21.6, -8, 97.3),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1.5, 0.6, 9),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/triangles/right/size_0/rtri_3x3.mdl",
						Position = Vector( 21.6, -8, 97.3),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1.5, 0.6, 9),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
				}
			}
		}
	},
	{
		Category = "Pushbar",
		Options = {
			{
				Option = "Pushbar",
				Props = {
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( 18.5, 110, 33),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 3),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/geometry/hdisc_12.mdl",
						Position = Vector( 18.5, 111.5, 42.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.25, 0.8, 0.6),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/geometry/qdisc_12.mdl",
						Position = Vector( 18.5, 110, 22.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1, 0.8, 0.99),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 18.5, 101.5, 19.7),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.1, 0.8, 4),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( 18.5, 106, 33.9),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.1, 0.8, 4),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -18.5, 110, 33),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 3),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/geometry/hdisc_12.mdl",
						Position = Vector( -18.5, 111.5, 42.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.25, 0.8, 0.6),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/geometry/qdisc_12.mdl",
						Position = Vector( -18.5, 110, 22.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1, 0.8, 0.99),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -18.5, 101.5, 19.7),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.1, 0.8, 4),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/rectangles/size_1/rect_3x3x3.mdl",
						Position = Vector( -18.5, 106, 33.9),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 0.1, 0.8, 4),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 111.5, 43),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.65, 0.65, 12),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 110.5, 29),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 1, 1, 12),
						SubMaterials = {
							[0] = "rin/nypd/props/white",
						},
					},
				}
			}
		}
	},
}
