--Galacta, made by shackluster
loadstring(game:HttpGet("https://raw.githubusercontent.com/CenteredSniper/Kenzen/master/newnetlessreanimate.lua",true))()
if game.Players.LocalPlayer.Character:FindFirstChild("shield") then
local function align(hat,cframe,part1,part0)
local handle = hat.Handle
if handle:FindFirstChild("AccessoryWeld") then
local acc = handle.AccessoryWeld
if part1 then acc.Part1 = part1 end
if part0 then acc.Part0 = part0 end
acc.C0 = cframe
end
end
align(game.Players.LocalPlayer.Character["shield"],CFrame.new(0.5,0.5,-0.6) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)),game.Players.LocalPlayer.Character["Left Arm"])
end
wait(0.2)
Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character.HumanoidRootPart
Torso = Character.Torso
Head = Character.Head
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart.RootJoint
Neck = Torso.Neck
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound", Torso)
sick.SoundId = "rbxassetid://152000442"
sick.Looped = true
sick.Pitch = 1
sick.Volume = 1
sick:Play()
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
Animation_Speed = 3
Humanoid.HipHeight = 1
Frame_Speed = 0.016666666666666666
local Speed = 75
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Weapon = IT("Model")
Weapon.Name = "Adds"
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local UNANCHOR = true
local FORCEWINGS = false
local GYRO, FLIGHTFORCE
local INTRO = false
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"
script:WaitForChild("ArtificialHB")
frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)
function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end
function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end
function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end
function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end
function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id=" .. MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id=" .. TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end
function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m00 < m11 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 1.0E-4 then
		if 1 - cosTheta > 1.0E-4 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	elseif 1 + cosTheta > 1.0E-4 then
		local theta = ACOS(-cosTheta)
		local invSinTheta = 1 / SIN(theta)
		startInterp = SIN((t - 1) * theta) * invSinTheta
		finishInterp = SIN(t * theta) * invSinTheta
	else
		startInterp = t - 1
		finishInterp = t
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function Clerp(a, b, t)
	local qa = {
		QuaternionFromCFrame(a)
	}
	local qb = {
		QuaternionFromCFrame(b)
	}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end
function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end
function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end
local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id=" .. ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat
				wait(1)
			until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end
function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end
function WACKYEFFECT(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material or "Neon"
	local COLOR = Table.Color or C3(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = VT(SIZE.X, SIZE.X, SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0, 0, 0))
		end
		if MSH ~= nil then
			local MOVESPEED
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude / TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME + 1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH / TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0, 0, -MSH.Scale.X / 8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				SOUND.Stopped:Connect(function()
					EFFECT:remove()
				end)
			end
		elseif PLAYSSOUND == false then
			EFFECT:remove()
		else
			repeat
				Swait()
			until SOUND.Playing == false
			EFFECT:remove()
		end
	end))
end
function MakeForm(PART, TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh", PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh", PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Pine" then
		CreateMesh("SpecialMesh", PART, "FileMesh", "1033714", "", PART.Size, VT(0, 0, 0))
	end
end
Debris = game:GetService("Debris")
function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos, EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end
function turnto(position)
	RootPart.CFrame = CFrame.new(RootPart.CFrame.p, VT(position.X, RootPart.Position.Y, position.Z)) * CFrame.new(0, 0, 0)
end
function Lightning(Table)
	local Color = Table.Color or C3(1, 1, 1)
	local StartPos = Table.Start or Torso.Position
	local EndPos = Table.End or Mouse.Hit.p
	local SegmentLength = Table.SegmentL or 2
	local Thickness = Table.Thickness or 0.1
	local Dissapear = Table.DoesFade or false
	local Parent = Table.Ignore or Character
	local MaxDist = Table.MaxDist or 400
	local Branches = Table.Branches or false
	local HIT, HITPOS = CastProperRay(StartPos, EndPos, MaxDist, Parent)
	local DISTANCE = math.ceil((StartPos - HITPOS).Magnitude / SegmentLength)
	local LIGHTNINGMODEL = IT("Model", Effects)
	LIGHTNINGMODEL.Name = "Lightning"
	local LastBolt
	for E = 1, DISTANCE do
		local ExtraSize = (DISTANCE - E) / 15
		local PART = CreatePart(3, LIGHTNINGMODEL, "Neon", 0, 0, BRICKC("Pearl"), "LightningPart" .. E, VT(Thickness + ExtraSize, SegmentLength, Thickness + ExtraSize))
		PART.Color = Color
		MakeForm(PART, "Cyl")
		if LastBolt == nil then
			PART.CFrame = CF(StartPos, HITPOS) * ANGLES(RAD(90), RAD(0), RAD(0)) * CF(0, -PART.Size.Y / 2, 0)
		else
			PART.CFrame = CF(LastBolt.CFrame * CF(0, -LastBolt.Size.Y / 2, 0).p, CF(HITPOS) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))) * CF(0, 0, SegmentLength / 3 + (DISTANCE - E)).p) * ANGLES(RAD(90), RAD(0), RAD(0)) * CF(0, -PART.Size.Y / 2, 0)
		end
		LastBolt = PART
		if Branches == true then
			local CHOICE = MRANDOM(1, 7 + (DISTANCE - E) * 2)
			if CHOICE == 1 then
				local LASTBRANCH
				for i = 1, MRANDOM(2, 5) do
					local ExtraSize2 = (DISTANCE - E) / 25 / i
					local PART = CreatePart(3, LIGHTNINGMODEL, "Neon", 0, 0, BRICKC("Pearl"), "Branch" .. E .. "-" .. i, VT(Thickness + ExtraSize2, SegmentLength, Thickness + ExtraSize2))
					PART.Color = Color
					MakeForm(PART, "Cyl")
					if LASTBRANCH == nil then
						PART.CFrame = CF(LastBolt.CFrame * CF(0, -LastBolt.Size.Y / 2, 0).p, LastBolt.CFrame * CF(0, -LastBolt.Size.Y / 2, 0) * ANGLES(RAD(0), RAD(0), RAD(MRANDOM(0, 360))) * CF(0, Thickness * 7, 0) * CF(0, 0, -1).p) * ANGLES(RAD(90), RAD(0), RAD(0)) * CF(0, -PART.Size.Y / 2, 0)
					else
						PART.CFrame = CF(LASTBRANCH.CFrame * CF(0, -LASTBRANCH.Size.Y / 2, 0).p, LASTBRANCH.CFrame * CF(0, -LASTBRANCH.Size.Y / 2, 0) * ANGLES(RAD(0), RAD(0), RAD(MRANDOM(0, 360))) * CF(0, Thickness * 3, 0) * CF(0, 0, -1).p) * ANGLES(RAD(90), RAD(0), RAD(0)) * CF(0, -PART.Size.Y / 2, 0)
					end
					LASTBRANCH = PART
				end
			end
		end
	end
	if Dissapear == true then
		coroutine.resume(coroutine.create(function()
			for i = 1, 30 do
				Swait()
				for _, c in pairs(LIGHTNINGMODEL:GetChildren()) do
					if c.ClassName == "Part" then
						c.Transparency = i / 30
					end
				end
			end
			LIGHTNINGMODEL:remove()
		end))
	elseif Dissapear == false then
		Debris:AddItem(LIGHTNINGMODEL, 0.1)
	end
	return {
		End = LastBolt.CFrame * CF(0, 0, -LastBolt.Size.Z / 2).p,
		LastBolt = LastBolt,
		Model = LIGHTNINGMODEL
	}
end
local Particle = IT("ParticleEmitter", nil)
Particle.Enabled = false
Particle.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.7, 0),
	NumberSequenceKeypoint.new(1, 1)
})
Particle.LightEmission = 0.5
Particle.Rate = 500
Particle.Rotation = NumberRange.new(-180, 180)
Particle.RotSpeed = NumberRange.new(-180, 180)
Particle.Texture = "http://www.roblox.com/asset/?id=51349099"
Particle.Color = ColorSequence.new(C3(1, 1, 1))
function ParticleEmitter(Table)
	local PRTCL = Particle:Clone()
	local Speed = Table.Speed or 5
	local Drag = Table.Drag or 0
	local Size1 = Table.Size1 or 1
	local Size2 = Table.Size2 or 5
	local Lifetime1 = Table.Lifetime1 or 1
	local Lifetime2 = Table.Lifetime2 or 1.5
	local Parent = Table.Parent or Torso
	local Emit = Table.Emit or 100
	local Offset = Table.Offset or 360
	local Enabled = Table.Enabled or false
	PRTCL.Parent = Parent
	PRTCL.Size = NumberSequence.new(Size1, Size2)
	PRTCL.Lifetime = NumberRange.new(Lifetime1, Lifetime2)
	PRTCL.Speed = NumberRange.new(Speed)
	PRTCL.VelocitySpread = Offset
	PRTCL.Drag = Drag
	if Enabled == false then
		PRTCL:Emit(Emit)
		Debris:AddItem(PRTCL, Lifetime2)
	else
		PRTCL.Enabled = true
	end
	return PRTCL
end
local RWING = CreatePart(3, Weapon, "Neon", 0, 1, "Pearl", "Right Wing", VT(2, 3, 2) * 1.5, false)
RWING.Color = C3(0.807843137254902, 0.6392156862745098, 0.8549019607843137)
local RWELD = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, RWING, CF(1, 2, 0.5), CF(-1.5, 0, 0))
local LWING = CreatePart(3, Weapon, "Neon", 0, 1, "Pearl", "Left Wing", VT(2, 3, 2) * 1.5, false)
LWING.Color = C3(0.807843137254902, 0.6392156862745098, 0.8549019607843137)
local LWELD = CreateWeldOrSnapOrMotor("Weld", Torso, Torso, LWING, CF(-1, 2, 0.5), CF(1.6, 0, 0))
CreateMesh("SpecialMesh", RWING, "FileMesh", "90615661", "", VT(1.5, 1.5, 1.5) * 0.8, VT(0, 0, 0))
CreateMesh("SpecialMesh", LWING, "FileMesh", "90615581", "", VT(1.5, 1.5, 1.5) * 0.8, VT(0, 0, 0))
local Mask = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Pearl", "Mask", VT(1, 1, 1), false)
CreateMesh("SpecialMesh", Mask, "FileMesh", "395088733", "", VT(0.5, 0.5, 1), VT(0, 0, 0))
CreateWeldOrSnapOrMotor("Weld", Head, Head, Mask, CF(0, 0, -0.5), CF(0, 0, 0))
local Mask2 = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "New Yeller", "Mask", VT(1.3, 0.1, 1.3), false)
MakeForm(Mask, "Cyl")
CreateWeldOrSnapOrMotor("Weld", Head, Head, Mask, CF(0, 0.2, 0), CF(0, 0, 0))
local Black = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Pearl", "Mask", VT(0.2, 0.7, 0.3), false)
Black.Color = C3(0, 0, 0)
MakeForm(Black, "Ball")
CreateWeldOrSnapOrMotor("Weld", Head, Head, Black, CF(0, 0.05, -0.6), CF(0, 0, 0))
local Black2 = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Pearl", "Mask", VT(1, 0.2, 0.3), false)
Black.Color = C3(0, 0, 0)
MakeForm(Black, "Ball")
CreateWeldOrSnapOrMotor("Weld", Head, Head, Black, CF(0, 0.1, -0.6), CF(0, 0, 0))
local Eye = CreatePart(3, Weapon, "Neon", 0, 0, "Magenta", "Mask", VT(0.1, 0.1, 0.1), false)
MakeForm(Eye, "Ball")
CreateWeldOrSnapOrMotor("Weld", Head, Head, Eye, CF(0.22, 0.1, -0.7), CF(0, 0, 0))
local Eye2 = CreatePart(3, Weapon, "Neon", 0, 0, "Magenta", "Mask", VT(0.1, 0.1, 0.1), false)
MakeForm(Eye, "Ball")
CreateWeldOrSnapOrMotor("Weld", Head, Head, Eye, CF(-0.22, 0.1, -0.7), CF(0, 0, 0))
local Horns = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "New Yeller", "Horns", VT(1, 1, 1), false)
CreateWeldOrSnapOrMotor("Weld", Head, Head, Horns, CF(0, 0.6, 0.1), CF(0, 0, 0))
local MSH = CreateMesh("SpecialMesh", Horns, "FileMesh", "704130637", "", VT(0.17, 0.17, 0.17), VT(0, 0, 0))
MSH.VertexColor = VT(1, 1, 0.5)
local MaskPart = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Pearl", "Mask", VT(0.4, 0.4, 0.4), false)
MakeForm(MaskPart, "Ball")
CreateWeldOrSnapOrMotor("Weld", Head, Head, MaskPart, CF(-0.35, 0.35, -0.5), CF(0, 0, 0))
local MaskPart = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Pearl", "Mask", VT(0.4, 0.4, 0.4), false)
MakeForm(MaskPart, "Ball")
CreateWeldOrSnapOrMotor("Weld", Head, Head, MaskPart, CF(0.35, 0.35, -0.5), CF(0, 0, 0))
local Handle = CreatePart(3, Weapon, "Glass", 0, 0, "New Yeller", "Handle", VT(0.2, 1, 0.2), false)
MakeForm(Handle, "Cyl")
local Grasp = CreateWeldOrSnapOrMotor("Weld", RightArm, RightArm, Handle, CF(0, -1, 0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Bop = CreatePart(3, Weapon, "Glass", 0, 0, "New Yeller", "Bop", VT(0.5, 0.5, 0.5), false)
MakeForm(Bop, "Ball")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Bop, CF(0, 0.7, 0), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Glass", 0, 0, "Black", "Shield", VT(0.5, 0.2, 0.5), false)
MakeForm(Part, "Pine")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part2 = CreatePart(3, Weapon, "Glass", 0, 0, "Dark blue", "Shield", VT(0.6, 0.3, 0.6), false)
MakeForm(Part, "Pine")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.7, 0) * ANGLES(RAD(180), RAD(0), RAD(0)), CF(0, 0, 0))
local Blade = CreatePart(3, Weapon, "Glass", 0, 0, "Magenta", "Blade", VT(0.3, 5, 0.3), false)
MakeForm(Blade, "Pine")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Blade, CF(0, -2.5, 0) * ANGLES(RAD(180), RAD(0), RAD(0)), CF(0, 0, 0))
local Shield = CreatePart(3, Weapon, "Glass", 0, 0, "New Yeller", "Shield", VT(1.05, 0.1, 1.05), false)
CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, Shield, CF(0, -0.3, 0), CF(0, 0, 0))
local ShieldBase = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Pearl", "Shield", VT(2, 2, 1), false)
CreateMesh("SpecialMesh", ShieldBase, "FileMesh", "395088733", "", VT(1, 1, 1), VT(0, 0, 0))
CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, ShieldBase, CF(-0.5, -0.3, 0) * ANGLES(RAD(0), RAD(90), RAD(0)), CF(0, 0, 0))
local Shield2 = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Pearl", "Shield", VT(0, 0, 0), false)
CreateMesh("SpecialMesh", Shield, "FileMesh", "395088733", "", VT(0.95, 0.95, 1), VT(0, 0, 0))
CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, Shield, CF(-0.4, -0.3, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)), CF(0, 0, 0))
local Shield3 = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Magenta", "Shield", VT(0, 0, 0), false)
CreateMesh("SpecialMesh", Shield, "FileMesh", "395088733", "", VT(0.95, 0.95, 1), VT(0, 0, 0))
CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, Shield, CF(-0.515, -0.3, 0) * ANGLES(RAD(0), RAD(90), RAD(0)), CF(0, 0, 0))
local Shield4 = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Pearl", "Shield", VT(0, 0, 0), false)
CreateMesh("SpecialMesh", Shield, "FileMesh", "395088733", "", VT(0.7, 0.7, 1), VT(0, 0, 0))
CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, Shield, CF(-0.6, -0.3, 0) * ANGLES(RAD(0), RAD(90), RAD(0)), CF(0, 0, 0))
local Shield5 = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Magenta", "Shield", VT(0, 0, 0), false)
CreateMesh("SpecialMesh", Shield, "FileMesh", "395088733", "", VT(0.5, 0.5, 1), VT(0, 0, 0))
CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, Shield, CF(-0.65, -0.3, 0) * ANGLES(RAD(0), RAD(90), RAD(0)), CF(0, 0, 0))
local Shield6 = CreatePart(3, Weapon, "Glass", 0, 0, "New Yeller", "Shield", VT(0.8, 2, 0.2), false)
MakeForm(Shield, "Ball")
CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, Shield, CF(-0.65, -0.3, 0), CF(0, 0, 0))
local Shield7 = CreatePart(3, Weapon, "Glass", 0, 0, "New Yeller", "Shield", VT(0.8, 0.2, 2), false)
MakeForm(Shield, "Ball")
CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, Shield, CF(-0.65, -0.3, 0), CF(0, 0, 0))
local Shield8 = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Magenta", "Shield", VT(0.8, 2, 0.3), false)
MakeForm(Shield, "Ball")
CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, Shield, CF(-0.6, -0.3, 0), CF(0, 0, 0))
local Shield9 = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Magenta", "Shield", VT(0.8, 0.3, 2), false)
MakeForm(Shield, "Ball")
CreateWeldOrSnapOrMotor("Weld", LeftArm, LeftArm, Shield, CF(-0.6, -0.3, 0), CF(0, 0, 0))
local SKILLTEXTCOLOR = BRICKC("Magenta").Color
local SKILLFONT = "SciFi"
local SKILLTEXTSIZE = 12
Humanoid.DisplayDistanceType = "None"
local naeeym2 = IT("BillboardGui", Character)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5, 35, 2, 15)
naeeym2.StudsOffset = Vector3.new(0, 1.3, 0)
naeeym2.MaxDistance = 75
naeeym2.Adornee = Character.Head
naeeym2.Name = "Name"
naeeym2.PlayerToHideFrom = Player
local tecks2 = IT("TextLabel", naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = Player.Name
tecks2.Font = "SciFi"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = C3(1, 1, 1)
tecks2.TextStrokeColor3 = SKILLTEXTCOLOR
tecks2.Size = UDim2.new(1, 0, 0.5, 0)
tecks2.Parent = naeeym2
for _, c in pairs(Weapon:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end
Horns.Transparency = 1
Blade.Transparency = 1
Handle.Transparency = 1
Bop.Transparency = 1
Shield.Transparency = 1
Shield2.Transparency = 1
Shield3.Transparency = 1
Shield4.Transparency = 1
Shield5.Transparency = 1
Shield6.Transparency = 1
Shield7.Transparency = 1
Shield8.Transparency = 1
Shield9.Transparency = 1
ShieldBase.Transparency = 1
Mask.Transparency = 1
Mask2.Transparency = 1
MaskPart.Transparency = 1
Black.Transparency = 1
Black2.Transparency = 1
Eye.Transparency = 1
Eye2.Transparency = 1
Part.Transparency = 1
Part2.Transparency = 1
Weapon.Parent = Character
Humanoid.Died:connect(function()
	ATTACK = true
end)
local SKILL1FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.365, 0, 0.9, 0), UD2(0.26, 0, 0.07, 0), C3(0, 0, 0), C3(0, 0, 0), "Frame")
local SKILL1TEXT = CreateLabel(SKILL1FRAME, "[ Z - B - C - V - G - X - Q ]", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.5, "Text")
function ApplyDamage(Humanoid, Damage, TorsoPart)
	local defence = Instance.new("BoolValue", Humanoid.Parent)
	defence.Name = "HitBy" .. Player.Name
	game:GetService("Debris"):AddItem(defence, 0.001)
	Damage = Damage * DAMAGEMULTIPLIER
	if Humanoid.Health ~= 0 then
		local CritChance = MRANDOM(1, 100)
		if Damage > Humanoid.Health then
			Damage = math.ceil(Humanoid.Health)
			if Damage == 0 then
				Damage = 0.1
			end
		end
		Humanoid.Health = Humanoid.Health - Damage
	end
end
wait(0.2)
if game.Players.LocalPlayer.Character:FindFirstChild("MeshPartAccessory") then
local function align(hat,cframe,part1,part0)
local handle = hat.Handle
if handle:FindFirstChild("AccessoryWeld") then
local acc = handle.AccessoryWeld
if part1 then acc.Part1 = part1 end
if part0 then acc.Part0 = part0 end
acc.C0 = cframe
end
end
align(game.Players.LocalPlayer.Character["MeshPartAccessory"],CFrame.new(2.5,1.5,0) * CFrame.Angles(math.rad(90),math.rad(45),math.rad(-90)),game:GetService("Workspace").ExProReanimate.Adds.Handle)
end
function ApplyAoE(POSITION, RANGE, MINDMG, MAXDMG, FLING, FRAME)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character and CHILD:FindFirstChild(Player.Name .. "Frames") == nil then
			do
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					do
						local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
						if TORSO and RANGE >= (TORSO.Position - POSITION).Magnitude and HUM.Health > 0 then
							do
								local FRAMES = IT("Folder", CHILD)
								FRAMES.Name = Player.Name .. "Frames"
								local DMG = 0
								if MINDMG > 1 then
									DMG = MRANDOM(MINDMG, MAXDMG)
								else
									DMG = MINDMG
								end
								ApplyDamage(HUM, DMG, TORSO)
								CreateSound(12222242, TORSO, 5, 1, false)
								coroutine.resume(coroutine.create(function()
									for _, c in pairs(CHILD:GetDescendants()) do
										if c:IsA("BasePart") then
											local bv = Instance.new("BodyVelocity")
											bv.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
											if POSITION.Y < TORSO.Position.Y then
												bv.velocity = CF(POSITION, TORSO.Position + VT(0, TORSO.Position.Y - POSITION.Y, 0)).lookVector * FLING
											else
												bv.velocity = CF(POSITION, TORSO.Position + VT(0, 5, 0)).lookVector * FLING
											end
											bv.Parent = c
											c.Reflectance = c.Transparency
											c.Transparency = 1
											Debris:AddItem(bv, 0.05)
										end
									end
									if 0 < HUM.Health then
										if FRAME > 0 then
											for i = 1, FRAME do
												for _, c in pairs(CHILD:GetDescendants()) do
													if c:IsA("BasePart") then
														c.Transparency = c.Reflectance
														c.Reflectance = 0
													end
												end
												wait()
												for _, c in pairs(CHILD:GetDescendants()) do
													if c:IsA("BasePart") then
														c.Reflectance = c.Transparency
														c.Transparency = 1
													end
												end
												wait()
											end
										else
											coroutine.resume(coroutine.create(function()
												HUM.CameraOffset = VT(MRANDOM(-35, 35) / 65, MRANDOM(-35, 35) / 65, MRANDOM(-35, 35) / 65)
											end))
											TORSO.CFrame = TORSO.CFrame * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
										end
										for _, c in pairs(CHILD:GetDescendants()) do
											if c:IsA("BasePart") then
												c.Transparency = c.Reflectance
												c.Reflectance = 0
											end
										end
									else
										for _, c in pairs(CHILD:GetDescendants()) do
											if c:IsA("BasePart") then
												c.Transparency = c.Reflectance
												c.Reflectance = 0
											end
										end
									end
									coroutine.resume(coroutine.create(function()
										HUM.CameraOffset = VT(0, 0, 0)
									end))
									FRAMES:remove()
								end))
							end
						end
					end
				end
			end
		end
	end
end
function X()
	ATTACK = true
	Rooted = true
	local TOAIM = Mouse.Hit.p
	turnto(Mouse.Hit.p)
	local DONE = false
	Humanoid.HipHeight = 5
	for i = 0, 0.2, 0.1 / Animation_Speed do
		Swait()
		Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 3 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(180)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-35), RAD(12)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(35), RAD(-12)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	for i = 0, 1.3, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0 - 0.5 * COS(SINE), 0) * ANGLES(RAD(0), RAD(0), RAD(230)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(35), RAD(0), RAD(-50)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(75), RAD(35), RAD(-35)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.2) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	CreateSound(1537955136, Blade, 5, 1, false)
	local SLICE = CreatePart(3, Effects, "Neon", 0, 0, "Magenta", "Slash", VT(0, 16, 0))
	MakeForm(SLICE, "Ball")
	CreateSound(342793847, SLICE, 5, 3, false)
	SLICE.CFrame = CF(RootPart.CFrame * CF(0, 0, 4).p, TOAIM) * ANGLES(RAD(0), RAD(0), RAD(-45))
	ParticleEmitter({
		Speed = 2,
		Drag = 3,
		Size1 = 0.2,
		Size2 = 1,
		Lifetime1 = 1,
		Lifetime2 = 3,
		Parent = SLICE,
		Emit = 15,
		Offset = 360,
		Enabled = false
	})
	coroutine.resume(coroutine.create(function()
		Swait(35)
		SLICE.Transparency = 0
		for i = 1, 45 do
			Swait()
			SLICE.Size = SLICE.Size + VT(1 + i / 45, 0, 0) / 5
		end
		wait(0.3)
		local BEAM = CreatePart(3, Effects, "Neon", 0, 0, "Magenta", "SlashBeam", VT(0, 0, 0))
		MakeForm(BEAM, "Cyl")
		BEAM.Color = SLICE.Color
		local AIMHIT, AIMPOS = CastProperRay(SLICE.Position, TOAIM, 750, Character)
		local DISTANCE = (SLICE.Position - AIMPOS).Magnitude
		BEAM.CFrame = CF(SLICE.Position, AIMPOS) * CF(0, 0, -(DISTANCE / 2) - 7.5) * ANGLES(RAD(90), RAD(0), RAD(0))
		BEAM.Size = VT(0, DISTANCE + 15, 0)
		BEAM.Mesh.Scale = VT(1.8, 1, 1.8)
		local BOP = CreatePart(3, Effects, "Neon", 0, 0, "Magenta", "Bop", VT(0, 0, 0))
		MakeForm(BOP, "Ball")
		BOP.Color = SLICE.Color
		BOP.CFrame = BEAM.CFrame * CF(0, -BEAM.Size.Y / 2, 0)
		wait(0.1)
		local SIZE = SLICE.Size.X
		local SOUND = CreateSound(415700134, SLICE, 10, 1, false)
		local PRT = ParticleEmitter({
			Speed = 0,
			Drag = 0,
			Size1 = 0.3,
			Size2 = 0.7,
			Lifetime1 = 1,
			Lifetime2 = 1.5,
			Parent = BEAM,
			Emit = 100,
			Offset = 360,
			Enabled = true
		})
		PRT.ZOffset = 12
		for i = 1, 25 do
			Swait()
			for i = 1, math.ceil(BEAM.Size.Y / 5) do
				ApplyAoE(BEAM.CFrame * CF(0, BEAM.Size.Y / 2 - i * 5, 0).p, BEAM.Size.X / 1.5, 1, 1, 5, 0)
			end
			BEAM.Size = BEAM.Size + VT(SIZE / 25, 0, SIZE / 25) / 1.8
			BOP.Size = BOP.Size + VT(SIZE / 25, SIZE / 25, SIZE / 25)
			Humanoid.CameraOffset = VT(MRANDOM(-35, 35) / 65, MRANDOM(-35, 35) / 65, MRANDOM(-35, 35) / 65)
		end
		repeat
			Swait()
			BOP.CFrame = BEAM.CFrame * CF(0, -BEAM.Size.Y / 2, 0)
			SOUND.Parent = SLICE
			for i = 1, math.ceil(BEAM.Size.Y / 5) do
				ApplyAoE(BEAM.CFrame * CF(0, BEAM.Size.Y / 2 - i * 5, 0).p, BEAM.Size.X, 1, 1, 5, 0)
			end
			Humanoid.CameraOffset = VT(MRANDOM(-35, 35) / 65, MRANDOM(-35, 35) / 65, MRANDOM(-35, 35) / 65)
		until SOUND.Playing == false
		BOP:remove()
		BEAM:remove()
		DONE = true
		Humanoid.CameraOffset = VT(0, 0, 0)
		for i = 1, 45 do
			Swait()
			SLICE.Size = SLICE.Size - VT(1 + i / 45, 0, 0) / 5
		end
		SLICE:remove()
	end))
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(40), RAD(0), RAD(0)), 3 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(130)), 3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(35), RAD(0), RAD(0)), 3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-5), RAD(-75), RAD(45)) * RIGHTSHOULDERC0, 3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.2) * ANGLES(RAD(0), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 3 / Animation_Speed)
	end
	FORCEWINGS = true
	for i = 1, 200 do
		Swait()
		Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 3 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(180 + i)) * ANGLES(RAD(15), RAD(0), RAD(0)) * CF(i, -i, i * 5), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-35), RAD(12)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(35), RAD(-12)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	repeat
		wait()
	until DONE == true
	RootJoint.C0 = CF(0, 300, 0)
	Humanoid.HipHeight = 1
	for i = 1, 50 do
		Swait()
		Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(40), RAD(0), RAD(0)), 3 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0), 0.25 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-35), RAD(32)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(35), RAD(-32)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
	FORCEWINGS = false
end
function Intro()
	ATTACK = true
	Rooted = true
	for i = 0, 0.2, 0.1 / Animation_Speed do
		Swait()
		LWELD.C0 = Clerp(LWELD.C0, CF(-1, 1.7, 0.85) * ANGLES(RAD(0), RAD(-15), RAD(0)), 0.75 / Animation_Speed)
		RWELD.C0 = Clerp(RWELD.C0, CF(1, 1.7, 0.85) * ANGLES(RAD(0), RAD(15), RAD(0)), 0.75 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(50)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(35), RAD(0), RAD(-50)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(75), RAD(35), RAD(-35)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.2) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	for i = 0, 3, 0.1 / Animation_Speed do
		Swait()
		LWELD.C0 = Clerp(LWELD.C0, CF(-1, 1.7, 0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RWELD.C0 = Clerp(RWELD.C0, CF(1, 1.7, 0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 - 0.5 * COS(SINE), 0, 0) * ANGLES(RAD(0), RAD(0), RAD(50)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(35), RAD(0), RAD(-50)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(75), RAD(35), RAD(-35)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.2) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	CreateSound(1537955136, Blade, 5, 1, false)
	RWING.Transparency = 0
	LWING.Transparency = 0
	for i = 1, 15 do
		Swait()
		LWELD.C0 = Clerp(LWELD.C0, CF(-1, 1.7, 0.55) * ANGLES(RAD(0), RAD(15), RAD(0)), 0.75 / Animation_Speed)
		RWELD.C0 = Clerp(RWELD.C0, CF(1, 1.7, 0.55) * ANGLES(RAD(0), RAD(-15), RAD(0)), 0.75 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-50 - i / 15 * 360)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(35), RAD(0), RAD(50)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-5), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.2) * ANGLES(RAD(90), RAD(0), RAD(-50)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	for i = 1, 15 do
		Swait()
		LWELD.C0 = Clerp(LWELD.C0, CF(-1, 1.7, 0.55) * ANGLES(RAD(0), RAD(15), RAD(0)), 0.75 / Animation_Speed)
		RWELD.C0 = Clerp(RWELD.C0, CF(1, 1.7, 0.55) * ANGLES(RAD(0), RAD(-15), RAD(0)), 0.75 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-50)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(35), RAD(0), RAD(50)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-5), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.2) * ANGLES(RAD(90), RAD(0), RAD(-50)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		LWELD.C0 = Clerp(LWELD.C0, CF(-1, 1.5, 0.85) * ANGLES(RAD(-25), RAD(65), RAD(0)), 0.75 / Animation_Speed)
		RWELD.C0 = Clerp(RWELD.C0, CF(1, 1.5, 0.85) * ANGLES(RAD(-25), RAD(-65), RAD(0)), 0.75 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-35), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(160), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.2) * ANGLES(RAD(0), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
		Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(80), RAD(0), RAD(0)), 0.75 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end
function Z()
	ATTACK = true
	Rooted = true
	CreateSound(1537955136, Torso, 5, 1, false)
	for i = 1, 15 do
		Swait()
		RootPart.CFrame = RootPart.CFrame * CF(0, 0, 0.5)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + i / 15 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(75)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(15 - 5 * COS(SINE / 12)), RAD(-35), RAD(35 - 3 * COS(SINE / 12))) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-35), RAD(-12 + 3 * COS(SINE / 12))) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	for i = 0, 0.3, 0.1 / Animation_Speed do
		Swait()
		RootPart.CFrame = RootPart.CFrame * CF(0, 0, 0.015)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(75)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(15 - 5 * COS(SINE / 12)), RAD(-35), RAD(35 - 3 * COS(SINE / 12))) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-35), RAD(-12 + 3 * COS(SINE / 12))) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	FORCEWINGS = true
	for i = 1, 10 do
		for i = 0, 0.02, 0.1 / Animation_Speed do
			Swait()
			Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(90), RAD(0), RAD(0)), 2 / Animation_Speed)
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(85)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-85)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(85)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-25), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 2 / Animation_Speed)
		end
		do
			local RANDOM = MRANDOM(-7, 7) / 5
			local RANDOM2 = MRANDOM(-7, 7) / 5
			for i = 0, 0.01, 0.1 / Animation_Speed do
				Swait()
				RootPart.CFrame = RootPart.CFrame * CF(0, 0, -0.2)
				Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(90), RAD(0), RAD(0)), 3 / Animation_Speed)
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 3 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 3 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.75, 0.5 + RANDOM, 0 + RANDOM2) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 3 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-25), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 3 / Animation_Speed)
			end
			local WAVES = {}
			coroutine.resume(coroutine.create(function()
				repeat
					Swait()
					for E = 1, #WAVES do
						if WAVES[E] ~= nil then
							ApplyAoE(WAVES[E].Position, 3, 25, 35, 35, 3)
							if WAVES[E].Transparency > 0.99 then
								WAVES[E]:remove()
								table.remove(WAVES, E)
							else
								WAVES[E].CFrame = WAVES[E].CFrame * CF(0, 1.2, 0)
								WAVES[E].Transparency = WAVES[E].Transparency + 0.03
							end
						end
					end
				until #WAVES == 0
			end))
			local Wave = CreatePart(3, Effects, "Glass", 0, 0.25, "New Yeller", "Wave", VT(1, 3, 1))
			MakeForm(Wave, "Pine")
			Wave.CFrame = Blade.CFrame
			table.insert(WAVES, Wave)
			CreateSound(1537955679, Wave, 7, 1, true)
		end
	end
	ATTACK = false
	Rooted = false
	FORCEWINGS = false
end
function B()
	ATTACK = true
	Rooted = false
	FORCEWINGS = true
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(170), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0 - 0.5 * COS(SINE), 0) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.3) * ANGLES(RAD(140), RAD(0), RAD(-42)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, -0.3) * ANGLES(RAD(140), RAD(0), RAD(42)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	CreateSound(1537955679, Blade, 7, 0.7, false)
	Rooted = true
	for i = 0, 0.4, 0.1 / Animation_Speed do
		Swait()
		Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(115), RAD(-35), RAD(0)), 0.75 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(35), RAD(0), RAD(-42)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, -0.5) * ANGLES(RAD(35), RAD(0), RAD(42)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	coroutine.resume(coroutine.create(function()
		local FRAME = RootPart.CFrame * CF(0, -5, -0.5)
		for i = 1, 125 do
			Swait()
			FRAME = FRAME * CF(0, 0, -1)
			ApplyAoE(FRAME.p, 5, 45, 55, 35, 15)
			WACKYEFFECT({
				Time = 25,
				EffectType = "Sphere",
				Size = VT(1, 18, 1),
				Size2 = VT(1, 0, 1),
				Transparency = 0,
				Transparency2 = 1,
				CFrame = FRAME,
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 0,
				RotationZ = 0,
				Material = "Neon",
				Color = RWING.Color,
				SoundID = nil,
				SoundPitch = nil,
				SoundVolume = nil
			})
		end
	end))
	for i = 0, 0.2, 0.1 / Animation_Speed do
		Swait()
		Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(115), RAD(-35), RAD(0)), 0.75 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(35), RAD(0), RAD(-42)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, -0.5) * ANGLES(RAD(35), RAD(0), RAD(42)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	FORCEWINGS = false
	ATTACK = false
	Rooted = false
end
function C()
	FORCEWINGS = true
	ATTACK = true
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-35), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(160), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.2) * ANGLES(RAD(0), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
		Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(80), RAD(0), RAD(0)), 0.75 / Animation_Speed)
	end
	Rooted = true
	local Orb = CreatePart(3, Effects, "Neon", 0, 0, "Pearl", "Orb", VT(0, 0, 0))
	MakeForm(Orb, "Ball")
	Orb.CFrame = Blade.CFrame * CF(0, 2.25, 0)
	for i = 1, 35 do
		Swait()
		Orb.CFrame = Blade.CFrame * CF(0, 2.25, 0)
		Orb.Size = Orb.Size + VT(0.05, 0.05, 0.05)
	end
	local MAIN = CreatePart(3, Effects, "Neon", 0, 0, "Pearl", "Beam", VT(0, 0, 0))
	MakeForm(MAIN, "Cyl")
	for i = 1, 200 do
		Swait()
		local AIMHIT, AIMPOS = CastProperRay(Orb.Position, Mouse.Hit.p, 750, Character)
		local DISTANCE = (Orb.Position - AIMPOS).Magnitude
		MAIN.CFrame = CF(Orb.Position, AIMPOS) * CF(0, 0, -DISTANCE / 2) * ANGLES(RAD(90), RAD(0), RAD(0))
		MAIN.Size = VT(0.7, DISTANCE, 0.7)
		ApplyAoE(AIMPOS, 3, 35, 65, 35, 20)
	end
	MAIN:remove()
	ATTACK = false
	Rooted = false
	FORCEWINGS = false
	for i = 1, 35 do
		Swait()
		Orb.Size = Orb.Size - VT(0.05, 0.05, 0.05)
	end
	Orb:remove()
end
function V()
	FORCEWINGS = true
	ATTACK = true
	Rooted = true
	local AREAS = {}
	for i = 1, 15 do
		local AREA = CF(RootPart.Position) * ANGLES(RAD(0), RAD(MRANDOM(0, 360)), RAD(0)) * CF(0, 0, MRANDOM(6, 35)).p
		local HITFLOOR, HITPOS = CastProperRay(AREA + VT(0, 35, 0), AREA - VT(0, 35, 0), 65, Character)
		if HITFLOOR then
			table.insert(AREAS, HITPOS)
		end
	end
	for E = 1, 35 do
		Swait()
		for i = 1, #AREAS do
			WACKYEFFECT({
				Time = 5,
				EffectType = "Wave",
				Size = VT(5, 1, 5),
				Size2 = VT(5, 1, 5),
				Transparency = 0.5,
				Transparency2 = 1,
				CFrame = CF(AREAS[i]) * ANGLES(RAD(0), RAD(E), RAD(0)),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 0,
				RotationZ = 0,
				Material = "Neon",
				Color = RWING.Color,
				SoundID = nil,
				SoundPitch = nil,
				SoundVolume = nil
			})
		end
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0 - 0.5 * COS(SINE), 0) * ANGLES(RAD(0), RAD(0), RAD(-50)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(35), RAD(0), RAD(50)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-5), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.2) * ANGLES(RAD(90), RAD(0), RAD(-50)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	for E = 1, 12 do
		Swait()
		for i = 1, #AREAS do
			WACKYEFFECT({
				Time = 5,
				EffectType = "Wave",
				Size = VT(5, 1, 5),
				Size2 = VT(5, 1, 5),
				Transparency = 0.5,
				Transparency2 = 1,
				CFrame = CF(AREAS[i]) * ANGLES(RAD(0), RAD(E + 35), RAD(0)),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 0,
				RotationZ = 0,
				Material = "Neon",
				Color = RWING.Color,
				SoundID = nil,
				SoundPitch = nil,
				SoundVolume = nil
			})
		end
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-35), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(160), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.2) * ANGLES(RAD(0), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
		Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(80), RAD(0), RAD(0)), 0.75 / Animation_Speed)
	end
	for i = 1, #AREAS do
		ApplyAoE(AREAS[i], 15, 45, 55, 35, 20)
		Lightning({
			Color = BRICKC("New Yeller").Color,
			Start = AREAS[i],
			End = AREAS[i] + VT(0, 100, 0),
			SegmentL = 2,
			Thickness = 0.2,
			DoesFade = true,
			Ignore = workspace,
			MaxDist = 30,
			Branches = false
		})
		Lightning({
			Color = RWING.Color,
			Start = AREAS[i],
			End = AREAS[i] + VT(0, 100, 0),
			SegmentL = 2,
			Thickness = 0.3,
			DoesFade = true,
			Ignore = workspace,
			MaxDist = 35,
			Branches = false
		})
		WACKYEFFECT({
			Time = 15,
			EffectType = "Wave",
			Size = VT(10, 0, 10),
			Size2 = VT(9, 5, 9),
			Transparency = 0,
			Transparency2 = 1,
			CFrame = CF(AREAS[i]),
			MoveToPos = nil,
			RotationX = 0,
			RotationY = 5,
			RotationZ = 0,
			Material = "Neon",
			Color = RWING.Color,
			SoundID = 1537955136,
			SoundPitch = MRANDOM(6, 8) / 10,
			SoundVolume = 2
		})
	end
	for i = 0, 0.5, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-35), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(160), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.2) * ANGLES(RAD(0), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
		Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(80), RAD(0), RAD(0)), 0.75 / Animation_Speed)
	end
	FORCEWINGS = false
	ATTACK = false
	Rooted = false
end
function G()
	ATTACK = true
	Rooted = true
	FORCEWINGS = true
	CreateSound(1537955136, Torso, 5, 1, false)
	for i = 1, 15 do
		Swait()
		RootPart.CFrame = RootPart.CFrame * CF(0, 0, 0.8)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + i / 15 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(75)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(15 - 5 * COS(SINE / 12)), RAD(-35), RAD(35 - 3 * COS(SINE / 12))) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-35), RAD(-12 + 3 * COS(SINE / 12))) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	for i = 0, 0.3, 0.1 / Animation_Speed do
		Swait()
		RootPart.CFrame = RootPart.CFrame * CF(0, 0, 0.015)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(75)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(15 - 5 * COS(SINE / 12)), RAD(-35), RAD(35 - 3 * COS(SINE / 12))) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-35), RAD(-12 + 3 * COS(SINE / 12))) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(170), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0 - 0.5 * COS(SINE), 0) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.3) * ANGLES(RAD(140), RAD(0), RAD(-42)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, -0.3) * ANGLES(RAD(140), RAD(0), RAD(42)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	CreateSound(1537955679, Blade, 7, 0.7, false)
	for i = 0, 0.4, 0.1 / Animation_Speed do
		Swait()
		Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(115), RAD(-35), RAD(0)), 0.75 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(35), RAD(0), RAD(-42)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, -0.5) * ANGLES(RAD(35), RAD(0), RAD(42)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	local TORNADOBASE = CreatePart(3, Effects, "Neon", 0, 0, "Magenta", "Tornado", VT(5, 22.5, 5))
	MakeForm(TORNADOBASE, "Ball")
	TORNADOBASE.Mesh.Scale = VT(1, 8, 1)
	local SWIRL = CreatePart(3, Effects, "Neon", 0, 0, "New Yeller", "Tornado", VT(0, 0, 0))
	CreateMesh("SpecialMesh", SWIRL, "FileMesh", "1051557", "", VT(6, 135, 6), VT(0, 0, 0))
	local SWIRL2 = CreatePart(3, Effects, "Neon", 0, 0, "New Yeller", "Tornado", VT(0, 0, 0))
	CreateMesh("SpecialMesh", SWIRL2, "FileMesh", "1051557", "", VT(6, 135, 6), VT(0, 0, 0))
	CreateSound(415700134, TORNADOBASE, 3, 0.5, true)
	coroutine.resume(coroutine.create(function()
		local FRAME = RootPart.CFrame * CF(0, -5, -0.5)
		for E = 1, 185 do
			Swait()
			FRAME = FRAME * CF(0, 0, -0.8)
			TORNADOBASE.CFrame = FRAME * CF(0, TORNADOBASE.Size.Y / 2, 0)
			SWIRL.CFrame = TORNADOBASE.CFrame * ANGLES(RAD(0), RAD(E * 5), RAD(0))
			SWIRL2.CFrame = TORNADOBASE.CFrame * ANGLES(RAD(0), RAD(-E * 15), RAD(0))
			for i = 1, math.ceil(TORNADOBASE.Size.Y / 6) do
				ApplyAoE(TORNADOBASE.CFrame * CF(0, TORNADOBASE.Size.Y / 2, 0) * CF(0, -i * 6, 0).p, 8, 2, 3, -35, 0)
			end
			WACKYEFFECT({
				Time = 5,
				EffectType = "Wave",
				Size = VT(10, 8, 10),
				Size2 = VT(0, 0, 0),
				Transparency = 0,
				Transparency2 = 1,
				CFrame = CF(FRAME.p) * ANGLES(RAD(0), RAD(E * 5), RAD(0)),
				MoveToPos = nil,
				RotationX = 0,
				RotationY = 5,
				RotationZ = 0,
				Material = "Neon",
				Color = TORNADOBASE.Color,
				SoundID = nil,
				SoundPitch = MRANDOM(6, 8) / 10,
				SoundVolume = 2
			})
		end
		for i = 1, 15 do
			Swait()
			TORNADOBASE.Transparency = i / 15
			SWIRL.Transparency = i / 15
			SWIRL2.Transparency = i / 15
			SWIRL.CFrame = SWIRL.CFrame * ANGLES(RAD(0), RAD(i * 5), RAD(0))
			SWIRL2.CFrame = SWIRL2.CFrame * ANGLES(RAD(0), RAD(-i * 15), RAD(0))
		end
		TORNADOBASE:remove()
		SWIRL:remove()
		SWIRL2:remove()
	end))
	for i = 0, 0.2, 0.1 / Animation_Speed do
		Swait()
		Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(115), RAD(-35), RAD(0)), 0.75 / Animation_Speed)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.25, 0.5, -0.5) * ANGLES(RAD(35), RAD(0), RAD(-42)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, -0.5) * ANGLES(RAD(35), RAD(0), RAD(42)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
	end
	FORCEWINGS = false
	ATTACK = false
	Rooted = false
end
function MouseDown(Mouse)
	if ATTACK == false then
	end
end
function MouseUp(Mouse)
	HOLD = false
end
function KeyDown(Key)
	KEYHOLD = true
	if VALUE1 == false then
		if Key == "z" and ATTACK == false then
			Z()
		end
		if Key == "b" and ATTACK == false then
			B()
		end
		if Key == "c" and ATTACK == false then
			C()
		end
		if Key == "v" and ATTACK == false then
			V()
		end
		if Key == "g" and ATTACK == false then
			G()
		end
		if Key == "x" and ATTACK == false then
			X()
		end
		if Key == "q" and ATTACK == false then
			VALUE1 = true
			GYRO = IT("BodyGyro", RootPart)
			GYRO.D = 75
			GYRO.P = 40000
			GYRO.MaxTorque = VT(40000, 40000, 40000)
			GYRO.cframe = CF(RootPart.Position, RootPart.CFrame * CF(0, 0, -1).p)
			FLIGHTFORCE = Instance.new("BodyPosition", RootPart)
			FLIGHTFORCE.D = 215
			FLIGHTFORCE.P = 20000
			FLIGHTFORCE.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			FLIGHTFORCE.position = RootPart.Position + VT(0, 1, 0)
		end
	elseif VALUE1 == true then
		if Key == "q" and ATTACK == false then
			VALUE1 = false
		end
		if Key == "w" and ATTACK == false then
			CreateSound(1537955679, RWING, 7, 1.2, false)
			CreateSound(1537955679, LWING, 7, 1.2, false)
			repeat
				VALUE2 = true
				Swait()
				FLIGHTFORCE.Position = RootPart.CFrame * CF(0, 0, -5).p
			until KEYHOLD == false
			VALUE2 = false
		end
	end
end
function KeyUp(Key)
	KEYHOLD = false
end
Mouse.Button1Down:connect(function(NEWKEY)
	MouseDown(NEWKEY)
end)
Mouse.Button1Up:connect(function(NEWKEY)
	MouseUp(NEWKEY)
end)
Mouse.KeyDown:connect(function(NEWKEY)
	KeyDown(NEWKEY)
end)
Mouse.KeyUp:connect(function(NEWKEY)
	KeyUp(NEWKEY)
end)
function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end
Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and Disable_Jump == true then
		Humanoid.Jump = false
	end
end)
while true do
	Swait()
	script.Parent = WEAPONGUI
	ANIMATE.Parent = nil
	for _, v in next, Humanoid:GetPlayingAnimationTracks() do
		v:Stop()
	end
	SINE = SINE + CHANGE * 2
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	if VALUE1 == false then
		if GYRO ~= nil then
			GYRO:remove()
		end
		if FLIGHTFORCE ~= nil then
			FLIGHTFORCE:remove()
		end
		if ATTACK == false then
			Grasp.C1 = Clerp(Grasp.C1, CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.75 / Animation_Speed)
			if TORSOVELOCITY < 1 then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-35)), 0.75 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(35)), 0.75 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(5 - 5 * COS(SINE / 12)), RAD(-35), RAD(12 - 3 * COS(SINE / 12))) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-35), RAD(-12 + 3 * COS(SINE / 12))) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
			elseif TORSOVELOCITY > 1 then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 - 0.1 * SIN(SINE / 12)) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.75 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.75 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-35), RAD(12)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(25), RAD(-35), RAD(-12)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
			end
		end
	elseif VALUE1 == true then
		if VALUE2 == false and ATTACK == false then
			if GYRO ~= nil then
				GYRO.MaxTorque = VT(0, 40000, 0)
				GYRO.cframe = CF(RootPart.Position, Mouse.Hit.p)
			end
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-35)), 0.75 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(35)), 0.75 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(5 - 5 * COS(SINE / 12)), RAD(-35), RAD(12 - 3 * COS(SINE / 12))) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5 - 0.1 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-35), RAD(-12 + 3 * COS(SINE / 12))) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
		elseif VALUE2 == true and ATTACK == false then
			if GYRO ~= nil then
				GYRO.MaxTorque = VT(40000, 40000, 40000)
				GYRO.cframe = CF(RootPart.Position, Mouse.Hit.p)
			end
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(75), RAD(0), RAD(0)), 0.75 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-40), RAD(0), RAD(0)), 0.75 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-35), RAD(12)) * RIGHTSHOULDERC0, 0.75 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(25), RAD(-35), RAD(-12)) * LEFTSHOULDERC0, 0.75 / Animation_Speed)
		end
	end
	if FORCEWINGS == true or ATTACK == false then
		LWELD.C0 = Clerp(LWELD.C0, CF(-1, 1.5, 0.7 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(12 * COS(SINE / 12)), RAD(45), RAD(0)), 0.75 / Animation_Speed)
		RWELD.C0 = Clerp(RWELD.C0, CF(1, 1.5, 0.7 + 0.2 * COS(SINE / 12)) * ANGLES(RAD(12 * COS(SINE / 12)), RAD(-45), RAD(0)), 0.75 / Animation_Speed)
	end
	RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.7, -0.4) * ANGLES(RAD(-25), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.7, -0.4) * ANGLES(RAD(-15), RAD(-75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	unanchor()
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	sick.SoundId = "rbxassetid://152000442"
	sick.Looped = true
	sick.Pitch = 1
	sick.Volume = 3
	sick.Parent = Torso
	sick:Resume()
	if INTRO == false then
		INTRO = true
		coroutine.resume(coroutine.create(function()
			Intro()
		end))
	end
	for _, c in pairs(Character:GetChildren()) do
		if c.ClassName == "CharacterMesh" or c.Name == "Body Colors" then
			c:remove()
		end
	end
	Humanoid.Name = "Galacta " .. Player.Name
end
