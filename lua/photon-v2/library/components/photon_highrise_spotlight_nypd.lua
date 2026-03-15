if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Rin Hoshizora"

COMPONENT.Credits = {
	Code = "Schmal",
	Model = "Khuutznetsov",
}

COMPONENT.Phase = nil

COMPONENT.Title = [[Highrise Spotlight NYPD]]
COMPONENT.Category = "Interior"
COMPONENT.Model = "models/sentry/props/spotlight_head.mdl"

COMPONENT.Preview = {
	Position = Vector(),
	Angles = Angle( 0, 180, 0 ),
	Zoom = 2
}

COMPONENT.SubMaterials = {
	[0] = "sentry/shared/env_cubemap_model",
}

COMPONENT.Templates = {
	["2D"] = {
		Light = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/bulb_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/bulb_detail.png").MaterialName,
			Width = 7.2,
			Height = 7.2,
			Scale = 2,
			IntensityGainFactor = 8,
			IntensityLossFactor = 4,
			DeactivationState = "~OFF",
			States = halogenStates
		}
	}
}

COMPONENT.States = {
	[1] = "SW"
}

COMPONENT.Elements = {
	[1] = { "Light", Vector( 0, 2.2, 3.7 ), Angle( 0, 0, 0 ) },
}

COMPONENT.ElementStates = {}

COMPONENT.StateMap = "[1] 1"

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	["Light"] = {
		Off = "~OFF",
		Frames = {
			[1] = "1",
			[2] = "1",
		},
		Sequences = {
			["ON"] = { 1 },
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
	["Emergency.SceneForward"] = {
		["ON"] = {
			Light = "ON",
		},
		["FLOOD"] = {
			Light = "ON",
		},
	},
	-- ["Virtual.Siren"] = {
	-- 	["T1"] = {
	-- 		Light = "ON"
	-- 	}
	-- }
}