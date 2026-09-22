if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Photon"
COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.WorkshopRequirements = {
	[2821476376] = "Code 3 MX7000 Model"
}

COMPONENT.Title = [[Code 3 MX7000 NYC EMS]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/lilranbay/props/sgm_mx7k_nycems.mdl"

COMPONENT.Preview = {
	Position = Vector( 0, 0, -4 ),
	Angles = Angle( 0, -90, 0 ),
	Zoom = 0.7
}

COMPONENT.SubMaterials = {
	[2] = "rin/ems/props/mx7k/mx7000_glass_colored",
	[3] = "rin/ems/props/mx7k/mx7000_glass_outer",
	[4] = "rin/ems/props/mx7k/mx7k",
	[5] = "rin/ems/props/mx7k/glass_mx7000"
}

local blue = { r = 0, g = 255, b = 255 }
local red = { r = 255, g = 64, b = 0 }
local amber = { r = 255, g = 100, b = 0 }

local softWhite = { r = 255, g = 225, b = 225 }
local blue = { r = 0, g = 255, b = 255 }
local red = { r = 255, g = 64, b = 0 }
local amber = { r = 255, g = 100, b = 0 }

local swScale = 1
local bScale = 0.88
local rScale = 0.88
local aScale = 0.88

COMPONENT.ElementStates = {
	["Mesh"] = {
		["~SW"] = { Inherit = "SW", IntensityTransitions = true },
		["~R"] = {
			Intensity = 1,
			IntensityTransitions = true,
			BloomColor = PhotonColor( 255, 0, 0 ):Blend( red ):GetBlendColor(),
			DrawColor = PhotonColor( 255, 225, 145 ):Blend( red ):GetBlendColor(),
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
	},
	["2D"] = {
		["~SW"] = {
			Intensity = 1,
			IntensityTransitions = true,
			Blend = Color( 255, 200, 200 ),
			SourceDetailColor = PhotonColor(255,255,255):Blend(softWhite):GetBlendColor(), 
			SubtractiveMid = PhotonColor( 0, 0, 255 ):Negative(true):Blend(softWhite):GetBlendColor(),
			SourceFillColor = PhotonColor( 255, 255, 255 ):Negative(false):Blend(softWhite):GetBlendColor(),
			GlowColor = PhotonColor(255*swScale, 255*swScale, 200*swScale):Negative(true):Blend(softWhite):GetBlendColor(),
			InnerGlowColor = PhotonColor(255*swScale, 175*swScale, 150*swScale):Blend(softWhite):GetBlendColor(),
			ShapeGlowColor = PhotonColor(255, 255, 255):Blend(softWhite):GetBlendColor(),
		},
		["~R"] = {
			Intensity = 1,
			IntensityTransitions = true,
			Blend = PhotonColor( 255, 0, 0 ),
			SourceFillColor = PhotonColor( 255, 0, 0 ):Negative(true):Blend( red ):GetBlendColor(),
			GlowColor = PhotonColor( 255, 30, 0 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
			SubtractiveMid = PhotonColor( 255, 0, 0 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
			SourceDetailColor = PhotonColor( 255,250,190 ):Blend(red):GetBlendColor(), 
			InnerGlowColor = PhotonColor(255, 30, 0):Blend(red):Scale( rScale ):GetBlendColor(),
			ShapeGlowColor = PhotonColor(255, 30, 0):Blend(red):GetBlendColor()
		},
		["~B"] = {
			Intensity = 1,
			IntensityTransitions = true,
			Blend = PhotonColor( 0, 0, 255 ),
			-- inverted
			SourceFillColor = PhotonColor(0,0,255):Negative(true):Blend( blue ):GetBlendColor(),
			GlowColor = PhotonColor(0, 135, 255):Negative(true):Blend(blue):Scale(0.6):GetBlendColor(), 
			SubtractiveMid = PhotonColor( 0, 0, 255 ):Negative(true):Blend(blue):Scale(0.6):GetBlendColor(), 
			SourceDetailColor = PhotonColor(190,250,255):Blend(blue):GetBlendColor(), 
			InnerGlowColor = PhotonColor(0, 180, 255):Blend(blue):Scale( bScale ):GetBlendColor(),
			ShapeGlowColor = PhotonColor(0, 100, 255):Blend(blue):GetBlendColor(), 
		},
		["~A"] = {
			Intensity = 1,
			IntensityTransitions = true,
			Blend = PhotonColor( 255, 160, 0 ),
			SourceFillColor = PhotonColor( 255, 160, 0 ):Negative(true):Blend( amber ):GetBlendColor(),
			GlowColor = PhotonColor( 200, 110, 0 ):Negative(true):Blend(amber):Scale(0.6):GetBlendColor(),
			SubtractiveMid = PhotonColor( 255, 150, 0 ):Negative(true):Blend(amber):Scale(0.6):GetBlendColor(),
			SourceDetailColor = PhotonColor( 130,255,230):Blend(amber):GetBlendColor(), 
			InnerGlowColor = PhotonColor(200, 110, 0):Blend(amber):Scale( aScale ):GetBlendColor(),
			ShapeGlowColor = PhotonColor(255, 110, 0):Blend(amber):GetBlendColor()
		}
	}
}

local rot_igf = 7
local rot_ilf = 3

COMPONENT.Templates = {
	["Bone"] = {
		Rotator = {}
	},
	["Mesh"] = {
		Mesh = {
			Model = "models/lilranbay/props/sgm_mx7k_nycems_emis.mdl",
			Scale = 1.001,
			IntensityGainFactor = rot_igf,
			IntensityLossFactor = rot_ilf,
			DeactivationState = "~OFF"
		},
		Reflector = {
			Model = "models/lilranbay/props/sgm_mx7k_nycems_emis.mdl",
			Scale = 1.001,
			DeactivationState = "OFF"
		}
	},
	["2D"] = {
		RotatorLight = {
			Width = 0,
			Height = 0,
			Scale = 0.85,
			IntensityGainFactor = rot_igf,
			IntensityLossFactor = rot_ilf,
			DeactivationState = "~OFF"
		}
	},
	["Projected"] = {
		Projected = {
			-- FOV = 120,
			HorizontalFOV = 45,
			VerticalFOV = 45,
			NearZ = 200,
			FarZ = 800,
			Brightness = 0.25,
			DeactivationState = "~OFF",
			-- TODO:
			-- This is required to prevent the lights from starting ON then fading off..?
			Intensity = 0,
			States = {
				["~R"] = {
					Color = PhotonColor( 255, 48, 48 )
				},
				["~B"] = {
					Color = PhotonColor( 255, 48, 48 )
				},
				["~SW"] = {
					Color = PhotonColor( 255, 225, 200)
				},
				ProxyC = {
					Proxy = { Type = "FROM_LIGHT", Key = 1, Value = "AngleOutput" }
				},
				ProxyDR = {
					Proxy = { Type = "FROM_LIGHT", Key = 2, Value = "AngleOutput" }
				},
				ProxyPAS = {
					Proxy = { Type = "FROM_LIGHT", Key = 3, Value = "AngleOutput" }
				}
			}
		},
		ForwardIllumination = {
			HorizontalFOV = 90,
			VerticalFOV = 60,
			NearZ = 10,
			FarZ = 800,
			Brightness = 2,
			DeactivationState = "~OFF",
			-- TODO:
			-- This is required to prevent the lights from starting ON then fading off..?
			Intensity = 0,
			States = {
				["~SW"] = {
					Inherit = "SW",
					IntensityTransitions = true,
					Intensity = 1

				}
			}
		}
	}
}

COMPONENT.States = {
	[1] = "~R",	-- Center
	[2] = "~R",	-- Driver Outer
	[3] = "~R",	-- Passenger Outer

	[4] = "~SW",
	[5] = "~A"
}

COMPONENT.StateMap = "[ROT] 1 2 3 [1] 4 31 37 23 24 29 30 [2] 5 32 38 25 27 [3] 6 33 39 26 28 [4] 7 8 9 10 11 12 13 14 34 35 36 [5] 15 16 17 18 19 20 21 22"

local fov = 180

COMPONENT.Elements = {
	[1] = { "Rotator", BoneId = 1, Axis = "z", Speed = 1100 }, -- CENTER -- 1
	[2] = { "Rotator", BoneId = 2, Axis = "z", Speed = 620 }, -- DR OUTER -- 3
	[3] = { "Rotator", BoneId = 3, Axis = "z", Speed = 610 }, -- PAS OUTER -- 5

	[4] = { "Mesh", Vector( 0.3, 0, 0.1 ), Angle( 0, 90, 90 ), "photon/generic/rc", BoneParent = 1, DrawMaterial = "photon/common/glow_gradient_a" }, -- 6
	[5] = { "Mesh", Vector( 0.3, 0, 0.1 ), Angle( 0, 90, 90 ), "photon/generic/r1l", BoneParent = 2, DrawMaterial = "photon/common/glow_gradient_a" }, -- 7
	[6] = { "Mesh", Vector( 0.3, 0, 0.1 ), Angle( 0, 90, 90 ), "photon/generic/r1r", BoneParent = 3, DrawMaterial = "photon/common/glow_gradient_a" }, -- 8

	[7] = { "Mesh", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/h1", DrawMaterial = "photon/common/glow_gradient_a" }, -- 11
	[8] = { "Mesh", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/h2", DrawMaterial = "photon/common/glow_gradient_a" }, --
	
	[9] = { "Mesh", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/h3", DrawMaterial = "photon/common/glow_gradient_a" }, -- 13
	[10] = { "Mesh", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "photon/generic/h4", DrawMaterial = "photon/common/glow_gradient_a" }, -- 
	
	[11] = { "Mesh", Vector( 0.1, 0, 0 ), Angle( 0, 0, 0 ), "photon/generic/h5", DrawMaterial = "photon/common/glow_gradient_a" }, -- 15
	[12] = { "Mesh", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "photon/generic/h6", DrawMaterial = "photon/common/glow_gradient_a" }, -- 16
	
	[13] = { "Mesh", Vector( .10, 0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/h7", DrawMaterial = "photon/common/glow_gradient_a" }, -- 17
	[14] = { "Mesh", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "photon/generic/h8", DrawMaterial = "photon/common/glow_gradient_a" }, -- 18
	
	[15] = { "Mesh", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/l7", DrawMaterial = "photon/lights/halogen_diffuse" }, -- 25
	[16] = { "Mesh", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/l8", DrawMaterial = "photon/lights/halogen_diffuse" }, -- 26
	
	[17] = { "Mesh", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/l9", DrawMaterial = "photon/lights/halogen_diffuse" }, -- 27
	[18] = { "Mesh", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/l10", DrawMaterial = "photon/lights/halogen_diffuse" }, -- 28
	
	[19] = { "Mesh", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/l11", DrawMaterial = "photon/lights/halogen_diffuse" }, -- 29
	[20] = { "Mesh", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/l12", DrawMaterial = "photon/lights/halogen_diffuse" }, -- 30
	
	[21] = { "Mesh", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/l13", DrawMaterial = "photon/lights/halogen_diffuse" }, -- 31
	[22] = { "Mesh", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/l14", DrawMaterial = "photon/lights/halogen_diffuse" }, -- 32
	
	-- dr = odd, pas = even
	-- center front
	[23] = { "Reflector", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/m1", DrawMaterial = "photon/common/glow_gradient_a", Proxies = { R = { 1, "Value" } }, Mirror2 = { 75, fov } }, -- 33
	[24] = { "Reflector", Vector( 0, -0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/m2", DrawMaterial = "photon/common/glow_gradient_a", Proxies = { R = { 1, "Value" } }, Mirror2 = { 325, fov } }, -- 34
	-- outer front
	[25] = { "Reflector", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "photon/generic/m3", DrawMaterial = "photon/common/glow_gradient_a", Proxies = { R = { 2, "Value" } }, Mirror2 = { 325, fov } }, -- 39
	[26] = { "Reflector", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "photon/generic/m4", DrawMaterial = "photon/common/glow_gradient_a", Proxies = { R = { 3, "Value" } }, Mirror2 = { 75, fov } }, -- 40
	-- outer rear
	[27] = { "Reflector", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "photon/generic/m5", DrawMaterial = "photon/common/glow_gradient_a", Proxies = { R = { 2, "Value" } }, Mirror2 = { 295, fov } }, -- 41
	[28] = { "Reflector", Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "photon/generic/m6", DrawMaterial = "photon/common/glow_gradient_a", Proxies = { R = { 3, "Value" } }, Mirror2 = { 105, fov } }, -- 42
	-- center rear
	[29] = { "Reflector", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/m7", DrawMaterial = "photon/common/glow_gradient_a", Proxies = { R = { 1, "Value" } }, Mirror2 = { 105, fov } }, -- 47
	[30] = { "Reflector", Vector( 0, 0.1, 0 ), Angle( 0, 0, 0 ), "photon/generic/m8", DrawMaterial = "photon/common/glow_gradient_a", Proxies = { R = { 1, "Value" } }, Mirror2 = { 295, fov } }, -- 48

	-- Center
	[31] = { "Projected", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 1 }, -- 49
	-- Dr Outer
	[32] = { "Projected", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 2 }, -- 50
	-- Pas Outer
	[33] = { "Projected", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 3 }, -- 53

	-- Illumination Center
	[34] = { "ForwardIllumination", Vector( 0, -60, 10 ), Angle( 10, 180, 0 ) }, -- 54
	-- Left Alley
	[35] = { "ForwardIllumination", Vector( 0, 0, 0 ), Angle( 10, 90, 0 ) }, -- 55
	-- Right Alley
	[36] = { "ForwardIllumination", Vector( 0, 0, 0 ), Angle( 10, -90, 0 ) }, -- 56

	[37] = { "RotatorLight", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 1 }, -- 57
	[38] = { "RotatorLight", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 2 }, -- 60
	[39] = { "RotatorLight", Vector( 0, 0, 0 ), Angle( 90, 0, 0 ), BoneParent = 3 } -- 61
}

COMPONENT.ElementGroups = {
	-- Center
	["RC"] = { 1, 4, 31, 37, 23, 24, 29, 30 },
	---- Driver Outer
	["RD"] = { 2, 5, 32, 38, 25, 27 },
	---- Passenger Outer
	["RP"] = { 3, 6, 33, 39, 26, 28 },
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	Rotators = {
		Frames = {
			[1] = "RC RD RP"
		},
		Sequences = {
			ON = { 1 }
		}
	},
	Takedown = {
		Off = "~OFF",
		Frames = {
			[1] = "7 8 34"
		},
		Sequences = { 
			ON = { 1 } 
		}
	},
	LeftAlley = {
		Off = "~OFF",
		Frames = { 
			[1] = "10 12 14 35" 
		},
		Sequences = {
			ON = { 1 } 
		}
	},
	RightAlley = {
		Off = "~OFF",
		Frames = { 
			[1] = "9 11 13 36"
		},
		Sequences = { 
			ON = { 1 }
		}
	},
	ArrowStik = {
		Off = "~OFF",
		Frames = {
			[1] = "15 17 19 21 22 20 18 16",
			[2] = "15",
			[3] = "16",
			[4] = "15 16 17 18",
			-- RIGHT
			[5] = "15",
			[6] = "15 17",
			[7] = "15 17 19",
			[8] = "15 17 19 21",
			[9] = "15 17 19 21 22",
			[10] = "15 17 19 21 22 20",
			[11] = "15 17 19 21 22 20 18",
			[12] = "15 17 19 21 22 20 18 16",
			-- LEFT
			[13] = "16",
			[14] = "16 18",
			[15] = "16 18 20",
			[16] = "16 18 20 22",
			[17] = "16 18 20 22 21",
			[18] = "16 18 20 22 21 19",
			[19] = "16 18 20 22 21 19 17",
			[20] = "16 18 20 22 21 19 17 15",
			-- CEN/OUT
			[21] = "21 22",
			[22] = "19 21 22 20",
			[23] = "17 19 21 22 20 18",
			[24] = "15 17 19 21 22 20 18 16",
		},
		Sequences = {
			FLASH = sequence():Alternate( 1, 0, 6 ),
			WARN = sequence():Alternate( 2, 3, 7 ),
			MARKER = { 4 },
			LEFT = sequence():Sequential( 13, 20 ):Stretch( 6 ):Hold( 12 ):Add( 0 ):Hold( 6 ),
			RIGHT = sequence():Sequential( 5, 12 ):Stretch( 6 ):Hold( 12 ):Add( 0 ):Hold( 6 ),
			CENOUT = sequence():Sequential( 21, 24 ):Stretch( 8 ):Hold( 12 ):Add( 0 ):Hold( 6 )
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			Rotators = "ON",
			ArrowStik = "WARN"
		},
		["MODE2"] = {
			Rotators = "ON",
			ArrowStik = "WARN"
		},
		["MODE3"] = {
			Rotators = "ON",
			ArrowStik = "WARN"
		}
	},
	["Emergency.SceneForward"] = {
		["ON"] = {
			Takedown = "ON"
		},
		["FLOOD"] = {
			Takedown = "ON"
		}
	},
	["Emergency.SceneLeft"] = {
		["ON"] = {
			RightAlley = "ON",
		}
	},
	["Emergency.SceneRight"] = {
		["ON"] = {
			LeftAlley = "ON",
		}
	},
	["Emergency.Directional"] = {
		["LEFT"] = {
			ArrowStik = "LEFT"
		},
		["RIGHT"] = {
			ArrowStik = "RIGHT"
		},
		["CENOUT"] = {
			ArrowStik = "CENOUT"
		}
	}
}