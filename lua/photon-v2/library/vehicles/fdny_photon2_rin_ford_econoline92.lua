if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1992 Ford Econoline FDNY"
VEHICLE.Vehicle		= "econoline_sgm"
VEHICLE.Category 	= "Photon 2 NYC: FDNY"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Technical Services Division",
				SubMaterials = {
					{ Id = 21, Material = "rin/fdny/econoline92/tech_92" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_red",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -25, 106.8, 20 ),
						Angles = Angle( 0, 97, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_red",
						},
					},
				},
			},
			{
				Option = "Hazmat Operations",
				SubMaterials = {
					{ Id = 21, Material = "rin/fdny/econoline92/hazmat_92" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_fdny",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -25, 106.8, 20 ),
						Angles = Angle( 0, 97, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_fdny",
						},
					},
				},
			},
			{
				Option = "Donated Vehicle",
				SubMaterials = {
					{ Id = 21, Material = "rin/fdny/econoline92/donated_92" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_fdny",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -25, 106.8, 20 ),
						Angles = Angle( 0, 97, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_fdny",
						},
					},
				},
			},
			{
				Option = "Support Vehicle",
				SubMaterials = {
					{ Id = 21, Material = "rin/fdny/econoline92/blue_92" },
					{ Id = 17, Material = "sentry/econoline/leather4" },
                },
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_fdny",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -25, 106.8, 20 ),
						Angles = Angle( 0, 97, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/fdny/props/plates/plate_fdny",
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
				Option = "Federal Signal Aerodynic",
				Components = {
					{
                        Component = "photon_fedsig_aerodynic_fdny",
                        Position = Vector( 0, 7, 88.5 ),
                        Angles = Angle( 0, 180, 2 ),
                        Scale = 1.1,
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
						Position = Vector( 0, 90, 30.5 ),
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