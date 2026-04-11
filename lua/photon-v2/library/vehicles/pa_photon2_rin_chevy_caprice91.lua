if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1991 Chevrolet Caprice PA"
VEHICLE.Vehicle		= "91caprice_sgm"
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
					{ Id = 20, Material = "rin/papd/caprice92/port_92" },
				},
			},
		}
	},
	{
		Category = "Spotlights",
		Options = {
			{
				Option = "Spotlights",
				Props = {
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( -11, 111, 18 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 1, 1, 1 ),
						SubMaterials = {
							[0] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/schmal/antenna_data.mdl",
						Position = Vector( 11, 111, 18 ),
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
						Position = Vector( -11, 111, 20 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[0] = "sentry/dippy/black",
						},
					},
					{
						Component = "photon_highrise_spotlight_nypd",
						Position = Vector( 11, 111, 20 ),
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
						Position = Vector( 0, -5, 59.7 ),
						Angles = Angle( 0, 0, -4 ),
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
