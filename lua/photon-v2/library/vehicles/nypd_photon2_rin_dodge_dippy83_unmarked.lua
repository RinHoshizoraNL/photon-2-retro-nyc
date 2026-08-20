if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1983 Dodge Diplomat NYPD Unmarked"
VEHICLE.Vehicle		= "dippy_sgm"
VEHICLE.Category 	= "Photon 2 NYC: NYPD"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Siren = { "sp_mk7" }

VEHICLE.Equipment = {
    {
		Category = "Paint",
		Options = {
			{
				Option = "Sable Brown",
				Properties = {
					Skin = 0,
					Color = Color(87,48,16)
				},
				SubMaterials = {
					{ Id = 12, Material = "rin/nypd/diplomat83/dash_blue" },
					{ Id = 13, Material = "rin/nypd/diplomat83/seats_blue" },
				},
			},
			{
				Option = "Beige Crystal Coat",
				Properties = {
					Skin = 0,
					Color = Color(255,226,146)
				},
				SubMaterials = {
					{ Id = 12, Material = "rin/nypd/diplomat83/dash_blue" },
					{ Id = 13, Material = "rin/nypd/diplomat83/seats_blue" },
				},
			},
			{
				Option = "Charcoal Gray Metallic",
				Properties = {
					Skin = 0,
					Color = Color(44,49,51)
				},
				SubMaterials = {
					{ Id = 12, Material = "rin/nypd/diplomat83/dash_blue" },
					{ Id = 13, Material = "rin/nypd/diplomat83/seats_blue" },
				},
			},
			{
				Option = "Nightwatch Blue",
				Properties = {
					Skin = 0,
					Color = Color(19,44,82)
				},
				SubMaterials = {
					{ Id = 12, Material = "rin/nypd/diplomat83/dash_blue" },
					{ Id = 13, Material = "rin/nypd/diplomat83/seats_blue" },
				},
			},
			{
				Option = "Glacier Blue Crystal Coat",
				Properties = {
					Skin = 0,
					Color = Color(109,140,155)
				},
				SubMaterials = {
					{ Id = 12, Material = "rin/nypd/diplomat83/dash_blue" },
					{ Id = 13, Material = "rin/nypd/diplomat83/seats_blue" },
				},
			},
			{
				Option = "Crimson Red",
				Properties = {
					Skin = 0,
					Color = Color(97,11,6)
				},
				SubMaterials = {
					{ Id = 12, Material = "rin/nypd/diplomat83/dash_blue" },
					{ Id = 13, Material = "rin/nypd/diplomat83/seats_blue" },
				},
			},
			{
				Option = "Formal Black",
				Properties = {
					Skin = 0,
					Color = Color(0,0,0)
				},
				SubMaterials = {
					{ Id = 12, Material = "rin/nypd/diplomat83/dash_blue" },
					{ Id = 13, Material = "rin/nypd/diplomat83/seats_blue" },
				},
			},
			{
				Option = "Pearl White",
				Properties = {
					Skin = 0,
					Color = Color(255,255,255)
				},
				SubMaterials = {
					{ Id = 12, Material = "rin/nypd/diplomat83/dash_blue" },
					{ Id = 13, Material = "rin/nypd/diplomat83/seats_blue" },
				},
			},
		}
	},
	{
		Category = "Beacon",
		Options = {
            {
				Option = "Left",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( -22, -15, 62.5 ),
						Angles = Angle( -1, 270, 4.5 ),
						Scale = .9,
						BodyGroups = {
							["trim"] = 1,
						},
					},
				},
			},
			{
				Option = "Right",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( 22, -15, 62.5 ),
						Angles = Angle( -1, 270, -4.5 ),
						Scale = .9,
						BodyGroups = {
							["trim"] = 1,
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
						Position = Vector( 0, 95, 24.5 ),
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "doorpanels", Value = 0 },
				},
				Props = {
					{
						Model = "models/gandhi/props/mastercom.mdl",
						Position = Vector( -6, 16, 30),
						Angles = Angle( 90, 262, 0 ),
						Scale = 1.15,
						SubMaterials = {
							[0] = "rin/nypd/props/sp_mk7/sp_mark7",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( -31, 105, 15 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -125.5, 26.7 ),
						Angles = Angle( -16, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_2",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -31, 105.7, 15 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/nypd/props/plates/plate_civ_2",
						},
					},
				}
			}
		}
	},
}
