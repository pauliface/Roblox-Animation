--!strict

local CurveAnimations = {}

--[[
	Vector3_Vector3_Bounce
	Creates a Vector3Curve that animates a part's position in a vertical
	bounce: starting at the part's current Y, rising to Y + height, then
	returning to the starting Y over numSecs (half up, half down).
	X and Z are held constant at the part's current position.

	Parameters:
	  part    -- the BasePart whose position is used for the keyframe values
	  height  -- how many studs above the part's starting Y the peak reaches
	  numSecs -- total duration of one bounce cycle in seconds

	Returns: Vector3Curve (not yet parented)
]]
function CurveAnimations.Vector3_Vector3_Bounce(part: BasePart, height: number, numSecs: number): Vector3Curve
	local startY = part.Position.Y
	local peakY  = startY + height
	local halfT  = numSecs / 2
	local fullT  = numSecs

	local curve = Instance.new("Vector3Curve")

	curve:X():InsertKey(FloatCurveKey.new(0, part.Position.X, Enum.KeyInterpolationMode.Constant))
	curve:Z():InsertKey(FloatCurveKey.new(0, part.Position.Z, Enum.KeyInterpolationMode.Constant))

	curve:Y():InsertKey(FloatCurveKey.new(0,     startY, Enum.KeyInterpolationMode.Cubic))
	curve:Y():InsertKey(FloatCurveKey.new(halfT, peakY,  Enum.KeyInterpolationMode.Cubic))
	curve:Y():InsertKey(FloatCurveKey.new(fullT, startY, Enum.KeyInterpolationMode.Cubic))

	return curve
end

--[[
	Vector3_ValueCurve_Bounce
	Creates a ValueCurve that animates a part's position in a vertical
	bounce: starting at the part's current position, rising by height studs,
	then returning over numSecs (half up, half down).
	Each key stores the full Vector3 position (X, Y, Z).

	Parameters:
	  part    -- the BasePart whose position is used for the keyframe values
	  height  -- how many studs above the part's starting Y the peak reaches
	  numSecs -- total duration of one bounce cycle in seconds

	Returns: ValueCurve (not yet parented)
]]
function CurveAnimations.Vector3_ValueCurve_Bounce(part: BasePart, height: number, numSecs: number): ValueCurve
	local x      = part.Position.X
	local z      = part.Position.Z
	local startY = part.Position.Y
	local peakY  = startY + height
	local halfT  = numSecs / 2
	local fullT  = numSecs

	local curve = Instance.new("ValueCurve")
	curve:SetKeys({
		ValueCurveKey.new(0,     Vector3.new(x, startY, z), Enum.KeyInterpolationMode.Cubic),
		ValueCurveKey.new(halfT, Vector3.new(x, peakY,  z), Enum.KeyInterpolationMode.Cubic),
		ValueCurveKey.new(fullT, Vector3.new(x, startY, z), Enum.KeyInterpolationMode.Cubic),
	})

	return curve
end

--[[
	Vector3_CompositeValueCurve_Bounce
	Creates a CompositeValueCurve (CurveType=Vector3) that animates a part's
	position in a vertical bounce: starting at the part's current position,
	rising by height studs, then returning over numSecs (half up, half down).
	Component curves: X and Z are constant; Y carries the bounce keyframes.

	Parameters:
	  part    -- the BasePart whose position is used for the keyframe values
	  height  -- how many studs above the part's starting Y the peak reaches
	  numSecs -- total duration of one bounce cycle in seconds

	Returns: CompositeValueCurve (not yet parented)
]]
function CurveAnimations.Vector3_CompositeValueCurve_Bounce(part: BasePart, height: number, numSecs: number): Instance
	local x      = part.Position.X
	local z      = part.Position.Z
	local startY = part.Position.Y
	local peakY  = startY + height
	local halfT  = numSecs / 2
	local fullT  = numSecs

	local curve = Instance.new("CompositeValueCurve")
	curve.CurveType = Enum.CompositeValueCurveType.Vector3

	local curves = curve:GetComponentCurves()
	local xCurve, yCurve, zCurve = curves[1], curves[2], curves[3]

	xCurve:InsertKey(FloatCurveKey.new(0,     x,      Enum.KeyInterpolationMode.Constant))
	zCurve:InsertKey(FloatCurveKey.new(0,     z,      Enum.KeyInterpolationMode.Constant))

	yCurve:InsertKey(FloatCurveKey.new(0,     startY, Enum.KeyInterpolationMode.Cubic))
	yCurve:InsertKey(FloatCurveKey.new(halfT, peakY,  Enum.KeyInterpolationMode.Cubic))
	yCurve:InsertKey(FloatCurveKey.new(fullT, startY, Enum.KeyInterpolationMode.Cubic))

	return curve
end

return CurveAnimations
