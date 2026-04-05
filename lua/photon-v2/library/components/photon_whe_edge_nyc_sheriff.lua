if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "SGM",
	Code = "Schmal"
}

COMPONENT.Title = [[Whelen Edge NYC Sheriff]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/sentry/props/whelenedge.mdl"

COMPONENT.Preview = {
	Position = Vector( 0, 0, -2.5 ),
	Angles = Angle( 0, 0, 0 ),
	Zoom = 0.8
}

COMPONENT.SubMaterials = {
	[2] = "rin/ny_sheriff/props/edge/edge",
}

local red = { r = 255, g = 0, b = 0 }
local blue = { r = 0, g = 0, b = 255 }
local amber = { r = 255, g = 0, b = 0 }

local bScale = 0.66

-- these colors will probably be migrated into the default light states as strobe/halogen variations

local strobeStates = {
	["R"] = {
		Blend = PhotonColor( 255, 0, 0 ),
		SourceFillColor = PhotonColor( 255, 0, 128 ):Negative(true):Blend( red ):GetBlendColor(),
		GlowColor = PhotonColor( 255, 64, 128 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
		SubtractiveMid = PhotonColor( 0, 0, 255 ):Negative(true):Blend(red):Scale(0.6):GetBlendColor(),
		SourceDetailColor = PhotonColor( 255,255,96 ):Blend(red):GetBlendColor(), 
		InnerGlowColor = PhotonColor(255, 64, 64):Blend(red):Scale( 0.6 ):GetBlendColor(),
		ShapeGlowColor = PhotonColor(255, 25, 25):Blend(red):GetBlendColor()
	},
	["B"] = {
		Blend = PhotonColor( 0, 0, 255 ),
		-- inverted
		SourceFillColor = PhotonColor(255,0,255):Negative(true):Blend( blue ):GetBlendColor(),
		-- inverted
		GlowColor = PhotonColor(48, 0, 255):Negative(true):Blend(blue):Scale(0.6):GetBlendColor(), --*
		-- inverted
		SubtractiveMid = PhotonColor( 0, 0, 255 ):Negative(true):Blend(blue):Scale(0.6):GetBlendColor(), --*
		InnerGlowColor = PhotonColor(0, 64, 255):Blend(blue):Scale( bScale ):GetBlendColor(),--*
		SourceDetailColor = PhotonColor(128,255,255):Blend(blue):GetBlendColor(), --*
		ShapeGlowColor = PhotonColor(0, 0, 255):Blend(blue):GetBlendColor(), --*
	},
}

local halogenStates = {
	["A"] = {
		SourceDetailColor = PhotonColor(255,255,128):Blend(amber):GetBlendColor(), 
		SourceFillColor = PhotonColor(200,64,0):Blend(amber):GetBlendColor(),
		GlowColor = PhotonColor( 255, 100, 0 ):Blend(amber):GetBlendColor(), --*
		InnerGlowColor = PhotonColor( 255, 128, 0 ):Blend(amber):GetBlendColor(),
		ShapeGlowColor = PhotonColor( 255, 128, 0 ):Blend(amber):GetBlendColor(),
	},
}

COMPONENT.Templates = {
	["2D"] = {
		["Strobe"] = {
			Width = 7,
			Height = 7,
			Scale = 1.5,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_strobe_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_strobe_shape.png").MaterialName,
			States = strobeStates,
		},
		["Halogen"] = {
			Width = 5.9,
			Height = 6,
			Scale = 1.1,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_halogen_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_halogen_shape.png").MaterialName,
			IntensityGainFactor = 8,
			IntensityLossFactor = 4,
			DeactivationState = "~OFF",
			States = halogenStates
		},
		["Corner"] = {
			Width = 9,
			Height = 8.5,
			Scale = 1.5,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_corner_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_corner_shape.png").MaterialName,
			States = strobeStates,
		},
		["Alley"] = {
			Width = 4.7,
			Height = 4.7,
			Scale = 1.1,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/edge_alley_detail.png").MaterialName,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/edge_alley_shape.png").MaterialName,
			IntensityGainFactor = 8,
			IntensityLossFactor = 8,
			DeactivationState = "~OFF",
			States = halogenStates
		},
	},
	["Projected"] = {
		["Illum"] = {
			HorizontalFOV = 60,
			VerticalFOV = 60,
			NearZ = 200,
			FarZ = 800,
			Brightness = 0.6,
			DeactivationState = "~OFF",
		}
	}
}

COMPONENT.States = {
	[1] = "R",
	[2] = "A",
	[3] = "SW",
	[4] = "~A"
}

COMPONENT.StateMap = "[1] 3 4 5 9 2 6 10 11 12 [~SW] 7 8 15 16 17 [2] 13 14 [3] 1 2"

COMPONENT.Elements = {
	[1] = { "Strobe", Vector( -5.5, -9.5, 4.7 ), Angle( 0, 90, 0 ) },
	[2] = { "Strobe", Vector( -5.5, 9.5, 4.7 ), Angle( 0, 90, 0 ) },

	[3] = { "Halogen", Vector( -5.5, -16.66, 4.8 ), Angle( 0, 90, 0 ) },
	[4] = { "Halogen", Vector( -5.5, 16.66, 4.8 ), Angle( 0, 90, 0 ) },

	[5] = { "Corner", Vector( -4, -25, 4.8 ), Angle( 0, 90 + 17, 0 ) },
	[6] = { "Corner", Vector( -4, 25, 4.8 ), Angle( 0, 90 - 17, 180 ) },

	[7] = { "Alley", Vector( 0, -29.58, 4.76 ), Angle( 0, 180, 0 ) },
	[8] = { "Alley", Vector( 0, 29.58, 4.76 ), Angle( 0, 0, 0 ) },

	[9] = { "Corner", Vector( 4, -25, 4.8 ), Angle( 0, 90 - 17 + 180, 0 ) },
	[10] = { "Corner", Vector( 4, 25, 4.8 ), Angle( 0, 90 + 17 + 180, 180 ) },

	[11] = { "Halogen", Vector( 5.5, -16.66, 4.8 ), Angle( 0, -90, 0 ) },
	[12] = { "Halogen", Vector( 5.5, 16.66, 4.8 ), Angle( 0, -90, 0 ) },

	[13] = { "Strobe", Vector( 5.5, -9.5, 4.7 ), Angle( 0, -90, 0 ) },
	[14] = { "Strobe", Vector( 5.5, 9.5, 4.7 ), Angle( 0, -90, 0 ) },

	[15] = { "Illum", Vector( 0, -30, 4.76 ), Angle( 0, 180, 0 ) },
	[16] = { "Illum", Vector( 0, 30, 4.76 ), Angle( 0, 0, 0 ) },

	[17] = { "Illum", Vector( -7, 0, 4.7 ), Angle( 0, 90, 0 ), HorizontalFOV = 90 },
}

COMPONENT.Segments = {
	All = {
		Frames = {
			[1] = "1 2 3 4 5 6 7 8 9 10 11 12 13 14"
		},
		Sequences = {
			["ALL"] = { 1 }
		}
	},
	["Cut"] = {
		Off = "PASS",
		Frames = {
			[1] = "[OFF] 1 2 5 6 [~OFF] 3 4 7 8 15 16 17",
			[2] = "[OFF] 13 14 9 10 [~OFF] 11 12"
		},
		Sequences = {
			["FRONT"] = { 1 },
			["REAR"] = { 2 }
		}
	},
	["Corner"] = {
		Frames = {
			[1] = "5 9",
			[2] = "6 10",
			[3] = "5 6 9 10",
		},
		Sequences = {
			["FLASH"] = sequence():Add( 0, 0, 1, 0, 1, 0, 1, 0, 0, 2, 0, 2, 0, 2 ):SetTiming( 1/31 ),
			["FLASH2"] = { 3,0,3,0,0,0,0 },
		}
	},
	["Inboard"] = {
		Frames = {
			[1] = "1 13",
			[2] = "2 14",
			[3] = "1 2 13 14",
		},
		Sequences = {
			["FLASH"] = sequence():Add( 1, 0, 1, 0, 1, 0, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 0 ):SetTiming( 1/30 ),
			["FLASH2"] = { 0,0,0,0,3,0,3 },
		}
	},
	["Takedown"] = {
		Off = "~OFF",
		Frames = {
			[1] = "3",
			[2] = "4",
			[3] = "3 4 17"
		},
		Sequences = {
			["ILLUM"] = { 3 },
			["ALT"] = sequence():Alternate( 1, 2, 8 ),
			["FLASH"] = sequence():Add( 1, 0, 1, 0, 2, 0, 2, 0 ):SetTiming( 1/12 )
		}
	},
	["Alley"] = {
		Off = "~OFF",
		Frames = {
			[1] = "7",
			[2] = "8",
		},
		Sequences = {
			["ALT"] = sequence():Alternate( 1, 2, 5 ),
		}
	},
	["AlleyLeft"] = {
		Frames = {
			[1] = "7 15",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
	["AlleyRight"] = {
		Frames = {
			[1] = "8 16",
		},
		Sequences = {
			["ON"] = { 1 },
		}
	},
	["Rear"] = {
		Off = "~OFF",
		Frames = {
			[1] = "11",
			[2] = "12",
		},
		Sequences = {
			["FLASH"] = sequence():Add( 1, 0, 1, 0, 2, 0, 2, 0 ):SetTiming( 1/12 )
		}
	
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			["Rear"] = "FLASH",
			["Takedown"] = "FLASH",
		},
		["MODE2"] = {
			["Corner"] = "FLASH",
			["Rear"] = "FLASH",
			["Takedown"] = "FLASH",
		},
		["MODE3"] = {
			["Corner"] = "FLASH2",
			["Inboard"] = "FLASH2",
			["Takedown"] = "FLASH",
			["Rear"] = "FLASH",
			["Alley"] = "ALT",
		}
	},
	["Emergency.SceneLeft"] = {
		["ON"] = {
			["AlleyLeft"] = "ON",
		}
	},
	["Emergency.SceneRight"] = {
		["ON"] = {
			["AlleyRight"] = "ON",
		}
	},
	["Emergency.Cut"] = {
		["FRONT"] = {
			["Cut"] = "FRONT",
		},
		["REAR"] = {
			["Cut"] = "REAR",
		}
	}
}