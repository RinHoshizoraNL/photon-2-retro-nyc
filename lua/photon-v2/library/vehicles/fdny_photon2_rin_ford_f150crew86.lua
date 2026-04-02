if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1986 Ford F150 FDNY Crew Truck"
VEHICLE.Vehicle		= "86f150_crew_sgm"
VEHICLE.Category 	= "Photon 2 NYC: FDNY"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Fleet Service Mechanic",
				SubMaterials = {
					{ Id = 22, Material = "rin/fdny/f150crew86/fleet_86" },
				},
			},
			{
				Option = "Hazmat Operations",
				SubMaterials = {
					{ Id = 22, Material = "rin/fdny/f150crew86/hazmat_86" },
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
		Category = "Front Lightbar",
		Options = {
            {
				Option = "Federal Signal Aerodynic",
				Components = {
					{
                        Component = "fedsig_aerodynicny",
                        Position = Vector( 0, 0, 83.75 ),
                        Angles = Angle( 0, 180, 1 ),
                        Scale = 1.1,
					},
				}
			},
        }
	},
	{
		Category = "Rear Lightbar",
		Options = {
            {
				Option = "Federal Signal Aerodynic",
				Components = {
					{
                        Component = "fedsig_aerodynicny",
                        Position = Vector( 0, -155, 115.25 ),
                        Angles = Angle( 0, 0, 0 ),
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
				Option = "Federal Signal PA300",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 96, 45 ),
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
						Position = Vector( -39, -162.9, 27 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_red",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 102.7, 22.7 ),
						Angles = Angle( 4, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_red",
						},
					},
				}
			}
		}
	},
	{
		Category = "Q Siren",
		Options = {
			{
				Option = "Q Siren",
				Props = {
					{
						Model = "models/sentry/props/q2b.mdl",
						Position = Vector( 33, -24, 119.85 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
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
						Position = Vector( 22.5, 105, 33),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 3),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/hdisc_12.mdl",
						Position = Vector( 22.5, 106.5, 42.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.25, 0.8, 0.6),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qdisc_12.mdl",
						Position = Vector( 22.5, 105, 22.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1, 0.8, 0.99),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qhex_12.mdl",
						Position = Vector( -22.5, 105, 33),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 1, 0.8, 3),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/hdisc_12.mdl",
						Position = Vector( -22.5, 106.5, 42.5),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.25, 0.8, 0.6),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/geometry/qdisc_12.mdl",
						Position = Vector( -22.5, 105, 22.5),
						Angles = Angle( 90, 90, 0 ),
						Scale = Vector( 1, 0.8, 0.99),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 106.5, 43),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 0.65, 0.65, 14.5),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sprops/cylinders/size_2/cylinder_3x3.mdl",
						Position = Vector( 0, 105.5, 29),
						Angles = Angle( 0, 90, 90 ),
						Scale = Vector( 1, 1, 14.5),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
				}
			}
		}
	},
}
