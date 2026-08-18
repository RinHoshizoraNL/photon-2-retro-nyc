if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1992 Ford Econoline NYPD"
VEHICLE.Vehicle		= "econoline_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYPD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Patrol 92",
				SubMaterials = {
					{ Id = 21, Material = "rin/nypd/econoline92/patrol_92" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol95",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 107.8, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol95",
						},
					},
				},
				Components = {
					{
                        Component = "fedsig_jetstream",
                        Position = Vector( 0, 10, 88.4 ),
                        Angles = Angle( 0, 180, 1 ),
                        Scale = 1.15,
					},
				}
			},
			{
				Option = "Patrol 94",
				SubMaterials = {
					{ Id = 21, Material = "rin/nypd/econoline92/patrol_94" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol95",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 107.8, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol95",
						},
					},
				},
				Components = {
					{
                        Component = "fedsig_jetstream",
                        Position = Vector( 0, 10, 88.4 ),
                        Angles = Angle( 0, 180, 1 ),
                        Scale = 1.15,
					},
				}
			},
			{
				Option = "Patrol 96",
				SubMaterials = {
					{ Id = 21, Material = "rin/nypd/econoline92/patrol_96" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol96",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 107.8, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol96",
						},
					},
				},
			},
			{
				Option = "Crime Stoppers 92",
				SubMaterials = {
					{ Id = 21, Material = "rin/nypd/econoline92/crime_92" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol95",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 107.8, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol95",
						},
					},
				},
				Components = {
					{
                        Component = "fedsig_jetstream",
                        Position = Vector( 0, 10, 88.4 ),
                        Angles = Angle( 0, 180, 1 ),
                        Scale = 1.15,
					},
				}
			},
			{
				Option = "Crime Stoppers 96",
				SubMaterials = {
					{ Id = 21, Material = "rin/nypd/econoline92/crime_96" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol96",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 107.8, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol96",
						},
					},
				},
			},
			{
				Option = "Recruitment 96",
				SubMaterials = {
					{ Id = 21, Material = "rin/nypd/econoline92/recruitment_96" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol96",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 107.8, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_patrol96",
						},
					},
				},
			},
		}
	},
	{
		Category = "Grille",
		Options = {
            {
				Option = "Federal Signal GH1",
				Components = {
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( -9.5, 100, 38.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.8,
						Phase = 180,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( 9.5, 100, 38.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.8,
					},
                }
			},
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
						Position = Vector( 0, 90, 35 ),
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
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				BodyGroups = {
					{ BodyGroup = "partition", Value = 1 },
				},
                Props = {
					{
						Model = "models/supermighty/photon/sidestep.mdl",
						Position = Vector( 0, 75, -11 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector(1.75, 0.92, 1),
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 107, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
				}
			}
		}
	},
}