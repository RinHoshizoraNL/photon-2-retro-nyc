if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1987 Mack CF Pumper FDNY"
VEHICLE.Vehicle		= "mackcf_sgm"
VEHICLE.Category 	= "Photon 2 NYC: FDNY"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Engine 9",
				SubMaterials = {
					{ Id = 3, Material = "rin/fdny/cf_pumper/engine_9" },
					{ Id = 2, Material = "rin/fdny/cf_pumper/red" },
				},
				Components = {
					{
						Component = "fedsig_twinsonic",
						Position = Vector( 0, 111, 106.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					}
				}
			},
			{
				Option = "Engine 45",
				SubMaterials = {
					{ Id = 3, Material = "rin/fdny/cf_pumper/engine_45" },
					{ Id = 2, Material = "rin/fdny/cf_pumper/yellow" },
				},
				Components = {
					{
						Component = "photon_fedsig_aerodynic_transit",
						Position = Vector( 0, 114, 105 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					}
				}
			},
		}
	},
	{
		Category = "Beacons",
		Options = {
			{
				Option = "Beacons",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( -39.5, -178, 104.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = .9,
						BodyGroups = {
							["trim"] = 1,
						},
					},
					{
						Component = "patlite_hkf",
						Position = Vector( 39.5, -178, 104.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = .9,
						BodyGroups = {
							["trim"] = 1,
						},
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
						Position = Vector( 0, 104, 24 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Siren = "fedsig_q2b",
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
}
