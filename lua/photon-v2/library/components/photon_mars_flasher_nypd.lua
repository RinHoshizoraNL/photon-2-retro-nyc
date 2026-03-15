if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Rin Hoshizora"

COMPONENT.Credits = {
	Code = "Schmal",
	Model = "Khuutznetsov",
}

COMPONENT.Phase = nil

COMPONENT.Title = [[Mars Flasher NYPD]]
COMPONENT.Category = "Interior"
COMPONENT.Model = "models/sentry/props/skybolt_flasher.mdl"

COMPONENT.Preview = {
	Position = Vector(),
	Angles = Angle( 0, 180, 0 ),
	Zoom = 2
}

COMPONENT.SubMaterials = {
	[0] = "rin/nypd/props/white",
}

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/bulb_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/bulb_detail.png").MaterialName,
			Width = 5,
			Height = 5,
			Scale = 2,
			IntensityGainFactor = 8,
			IntensityLossFactor = 4,
			DeactivationState = "~OFF",
			States = halogenStates
		}
	}
}

COMPONENT.States = {
	[1] = "R"
}

COMPONENT.Elements = {
	[1] = { "Light", Vector( 0, 2.5, 9.5 ), Angle( 0, 0, 0 ) },
	[2] = { "Light", Vector( 0, -2.5, 9.5 ), Angle( 0, 180, 0 ) }
}

COMPONENT.ElementStates = {}

COMPONENT.StateMap = "[1] 1"

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	["Light"] = {
		Off = "~OFF",
		Frames = {
			[1] = "1 2",
			[2] = "1 2",
		},
		Sequences = {
			["ON"] = {

			},
			["OFF"] = { 0 },
			["HALOGEN"] = sequence():Flash(0, 1, 1):Stretch(4),
		}
	},
}

COMPONENT.InputPriorities = {
	["Virtual.Siren"] = 200
}

COMPONENT.VirtualOutputs = {
	-- Virtual channel name
	["Virtual.Siren"] = {
		{
			Mode = "T1",
			Conditions = {
				["Emergency.Siren"] = { "T1" },
				["Emergency.Warning"] = { "MODE1", "MODE2", "MODE3" }
			}
		}
		-- Mode
		-- ["T1"] = { -- T1 is active when...
		-- 	{ -- (Condition #1)
		-- 		-- Siren mode is set to T1...
		-- 		["Emergency.Siren"] = { "T1" },
		-- 		-- AND Warning mode is MODE1, MODE2 or MODE3
		-- 	}
		-- }
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			Light = "HALOGEN"
		},
		["MODE2"] = {
			Light = "HALOGEN"
		},
		["MODE3"] = {
			Light = "HALOGEN"
		}
	},
	["Emergency.Marker"] = {
		["ON"] = {
			Light = "ON"
		}
	}
	-- ["Virtual.Siren"] = {
	-- 	["T1"] = {
	-- 		Light = "ON"
	-- 	}
	-- }
}