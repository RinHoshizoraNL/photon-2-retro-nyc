if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1986 Ford F150 FDNY Tactical Support"
VEHICLE.Vehicle		= "86f150_crew_sgm"
VEHICLE.Category 	= "Photon 2 NYC: FDNY"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Body",
		Options = {
			{
				Option = "Tactical Support Unit 2",
				SubMaterials = {
					{ Id = 22, Material = "photon/common/blank" },
					{ Id = 25, Material = "photon/common/blank" },
					{ Id = 26, Material = "photon/common/blank" },
					{ Id = 27, Material = "photon/common/blank" },
				},
				Props = {
					{
						Model = "models/anemolis_vehicles/86f150_mini_pumper/mini_pumper.mdl",
						Position = Vector( 0, 0, -2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
				}
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
}
