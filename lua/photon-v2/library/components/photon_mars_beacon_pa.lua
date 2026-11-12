if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "DatedGore"

COMPONENT.Credits = {
	Model = "SGM",
	Code = "DatedGore"
}

COMPONENT.Category = "Lightbar"
COMPONENT.PrintName = [[Mars Skybolt Beacon NY&NJ PA]]

COMPONENT.Model = "models/sentry/props/skybolt_single.mdl"

COMPONENT.SubMaterials = {
	[2] = "schmal/photon/fedsig_visionslr/lens_pod_4",
}

local blue = { r = 0, g = 255, b = 255 }
local red = { r = 255, g = 64, b = 0 }
local amber = { r = 255, g = 100, b = 0 }

COMPONENT.ElementStates = {
	["Mesh"] = {
		["OFF"] = { Intensity = 0, IntensityTransitions = true },
		["~SW"] = { Inherit = "SW", IntensityTransitions = true },
		["~R"] = { 
			Intensity = 1,
			IntensityTransitions = true,
			BloomColor = PhotonColor( 255, 0, 0 ):Blend( red ):GetBlendColor(),
			DrawColor = PhotonColor( 255, 225, 100 ):Blend( red ):GetBlendColor(),
		},
		["~B"] = { 
			Intensity = 1,
			IntensityTransitions = true,
			BloomColor = PhotonColor( 0, 150, 255 ):Blend( blue ):GetBlendColor(),
			DrawColor = PhotonColor( 205, 255, 255 ):Blend( blue ):GetBlendColor(),
		},
		["~A"] = {
			Intensity = 1,
			IntensityTransitions = true, 
			BloomColor = PhotonColor( 255, 100, 0 ):Blend( amber ):GetBlendColor(),
			DrawColor = PhotonColor( 255, 200, 0 ):Blend( amber ):GetBlendColor(),
		},
	}
}

COMPONENT.Templates = {
	["Bone"] = {
		Rotator = {}
	},
	["2D"] = {
		Rotator_Main = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/anemolis_circular_src.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/anemolis_circular_src.png").MaterialName,
			Width = 7.4,
			Height = 7.5,
			Ratio = 1,
			Scale = 1.4,
			ForwardVisibilityOffset = -.3,
			ForwardBloomOffset = .3,
			IntensityGainFactor = 4,
			IntensityLossFactor = 4,
			DeactivationState = "~OFF",
			-- LightMatrix = { Vector(s, 0, 0), Vector(-s, 0, 0),  },
			-- LightMatrixScaleMultiplier = 0.6
			States = {
				["~A"] = {
					Color = PhotonColor( 255, 48, 48 )
				},
			}
		}
	},
}

COMPONENT.StateMap = "[ROT] 1 [A] 2 3 4 5"

local fov = 180

COMPONENT.Elements = {
	[1] = { "Rotator", BoneId = 1, Axis = "z", Speed = 120, AngleOutputMap = { { 0, "~A" }, { 45, "OFF" }, { 135, "A" }, { 225, "OFF" }, { 315, "A" } } },
	[2] = { "Rotator_Main", Vector(0, 0, 3.15), Angle(-90, -90, 0), BoneParent = 1, },
	[3] = { "Rotator_Main", Vector(0, 0, -3.15), Angle(90, 90, 0), BoneParent = 1, },
	[4] = { "Rotator_Main", Vector(0, 3.15, 0), Angle(0, 0, -90), BoneParent = 1, },
	[5] = { "Rotator_Main", Vector(0, -3.15, 0), Angle(180, 0, -90), BoneParent = 1, },

}

local BoneLightMirror = {
	Light = 1,
	Peak = 112.65,
	FOV = 90
}

COMPONENT.ElementGroups = {
	-- Center
	["RC"] = { 1,2,3,4,5},
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Rotators = {
		Frames = {
			[1] = "RC"
		},
		Sequences = {
			ON = { 1 }
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE3"] = {
			Rotators = "ON",
		}
	},
}