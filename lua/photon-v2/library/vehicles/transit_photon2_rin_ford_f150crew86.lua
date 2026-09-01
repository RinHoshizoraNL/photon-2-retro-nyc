if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1986 Ford F150 NYC Transit Police ESU"
VEHICLE.Vehicle		= "86f150_crew_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Transit Police"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Transit Police 91",
				SubMaterials = {
					{ Id = 22, Material = "rin/transit/f150crew86/transit_91" },
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
		Category = "Lightbar",
		Options = {
            {
				Option = "Whelen Advantedge",
				Components = {
					{
						Component = "photon_whe_advantedge_transit",
						Position = Vector( 0, 1.6, 84.8 ),
						Angles = Angle( -1.3, -90, 0 ),
						Scale = 1.08,
						BodyGroups = { 
							["feet"] = 0,
							["straps"] = 0,
							["speaker"] = 0,
							["rear_lights"] = 2
						},
						Bones = {
							["foot_dr"] =	{ Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["foot_pas"] =	{ Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), 1 },
							["strap_dr"] =	{ Vector( 0, -2.15, -0.1 ), Angle( 0, 0, 9 ), 1 },
							["strap_pas"] =	{ Vector( 0, 2.15+.36, -0.1 ), Angle( 0, 0, -9 ), 1 },

							["500_rear_dr"] =	{ Vector( 0, -2.95, 0 ), Angle( 0, 0, 0 ), 1 },
							["500_rear_pas"] =	{ Vector( 0, 2.95, 0 ), Angle( 0, 0, 0 ), 1 },
						}
					}
                }
			}
		}
	},
	{
		Category = "Pushbar Lights",
		Options = {
            {
				Option = "Federal Signal GH1",
				Components = {
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( -17.2, 112.5, 31.9 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_fedsig_gh1_nypd",
						Position = Vector( 17.8, 112.5, 31.9 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Phase = 180,
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
						Position = Vector( -43.6, -32, 104 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -43.6, -150, 104 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.2,
						Phase = 90,
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
						Position = Vector( 43.6, -32, 104 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 43.6, -150, 104 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.2,
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
						Position = Vector( -35.5, -163.2, 95 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( -35.5, -163.2, 78 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						Phase = 90,
						States = { "~A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 35.5, -163.2, 95 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						Phase = 90,
					},
					{
						Component = "photon_whelen_900_halogen_retronyc",
						Position = Vector( 35.5, -163.2, 78 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.2,
						States = { "~A" },
						SubMaterials = {
							[3] = "schmal/photon/fedsig_visionslr/lens_pod_4",
						},
					},
				},
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
						Position = Vector( 0, -152, 115.25 ),
						Angles = Angle( 0, 0, 0 ),
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
				Option = "SP Mark 7",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/gandhi/props/es100.mdl",
						Position = Vector( 0, 96, 45 ),
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
		Category = "Pushbar",
		Options = {
			{
				Option = "Pushbar",
				Props = {
					{
						Model = "models/supermighty/props/nypd_esu_bumper.mdl",
						Position = Vector( 0.3, 108, 25 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = Vector( 0.7, 0.82, 0.75 ),
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 112, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = Vector( 1, 3.3, 2 ),
					},
					{
						Model = "models/supermighty/photon/sidestep.mdl",
						Position = Vector( 0, 62, -5 ),
						Angles = Angle( 1, 90, 0 ),
						Scale = Vector(0.95, 0.92, 1),
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
							[1] = "rin/transit/props/plates/plate_transit",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 20.3, 115, 48.2 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/transit/props/plates/plate_transit",
						},
					},
				}
			}
		}
	},
}
