if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1995 Chevrolet Caprice PA"
VEHICLE.Vehicle		= "95caprice_sgm"
VEHICLE.Category 	= "Photon 2 NYC: Port Authority"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Port Authority",
				SubMaterials = {
					{ Id = 22, Material = "rin/papd/caprice95/port_95" },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Lightbar",
				Props = {
					{
						Model = "models/sentry/props/skybolt_mount.mdl",
						Position = Vector( 0, -12, 58 ),
						Angles = Angle( 0, 0, -3 ),
						Scale = 1.085
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -20, -12, 63 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 20, -12, 63 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
				},
				Components = {
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( -20, -12, 65 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( 20, -12, 65 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
				}
			}
		}
	},
	{
		Category = "Spotlight",
		Options = {
			{
				Option = "Spotlight",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -37.5, 30, 42 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[5] = "sentry/shared/env_cubemap_model"
						}
					},
				}
			},
		}
	},
	{
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				BodyGroups = {
					{ BodyGroup = "trim", Value = 0 },
				},
				Props = {
					{
						Model = "models/schmal/antennas/antenna_2.mdl",
						Position = Vector( 0, -35, 60 ),
						Angles = Angle( 0, 0, 2 ),
						Scale = 1
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 114, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.2, 25.2 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/papd/props/plates/plate_port_a",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 114.7, 12 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/papd/props/plates/plate_port_a",
						},
					},
				}
			}
		}
	},
}
