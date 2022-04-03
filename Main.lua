if isfolder and not isfolder("PendelumAssets") then
	makefolder("PendelumAssets")
elseif isfolder and isfolder("PendelumAssets") then
	for i,v in pairs(listfiles("PendelumAssets")) do
		delfile(v)
	end
else
	error("No filesystem support")
end
local getsynassetfromurl = loadstring(game:HttpGet("https://raw.githubusercontent.com/CenteredSniper/RePendelum/main/getsynassetfromurl.lua",true))()

local Scripts = {
	--[[
	["NameHere"] = {
		["Link"] = "rawlinkhere",
		["Image"] = getsynassetfromurl("https://cdn.discordapp.com/attachments/308098766987329536/959809672372711484/unknown.png"),
		["HatID"] = "id1,id2,etc.",
		["Remastered"] = false
	},]]
	["SpectrumGlitcher"] = {
		["Link"] = "https://raw.githubusercontent.com/CenteredSniper/RePendelum/main/Untouched/SpectrumGlitcher.lua",
		["Image"] = getsynassetfromurl("https://cdn.discordapp.com/attachments/959886594133868624/959887401621282816/SpectrumGlitcher.png"),
		["HatID"] = "",
		["Remastered"] = false
	},
	["AmythestNinja"] = {
		["Link"] = "https://raw.githubusercontent.com/CenteredSniper/RePendelum/main/Untouched/AmythestNinja.lua",
		["Image"] = getsynassetfromurl("https://cdn.discordapp.com/attachments/308098766987329536/959809672372711484/unknown.png"),
		["HatID"] = "",
		["Remastered"] = false
	},
	["Hacker X"] = {
		["Link"] = "https://raw.githubusercontent.com/CenteredSniper/RePendelum/main/Untouched/Hacker%20X.lua",
		["Image"] = getsynassetfromurl("https://cdn.discordapp.com/attachments/959886594133868624/959896038104236093/HackerX.png"),
		["HatID"] = "",
		["Remastered"] = false
	},
	["Sniper"] = {
		["Link"] = "https://raw.githubusercontent.com/CenteredSniper/RePendelum/main/Untouched/Sniper.lua",
		["Image"] = getsynassetfromurl("https://cdn.discordapp.com/attachments/308098766987329536/959809672372711484/unknown.png"),
		["HatID"] = "5063578607",
		["Remastered"] = false
	},
}

local TweenService = game:GetService("TweenService")
local GUI = game:GetObjects("rbxassetid://9267047305")[1]--script.Parent
local MainFrame = GUI.Frame
local Elements = MainFrame.Elements

local Sine = 0
local Toggle = true
local Selected = ""
local setclipboard = setclipboard or print
local getgenv = getgenv and getgenv() or _G


local function reanimate()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CenteredSniper/Kenzen/master/newnetlessreanimate.lua"))()
	task.wait()
end

MainFrame.Inset.Activated:Connect(function()
	if MainFrame.AbsolutePosition.X < 30 then
		if Toggle then
			game:GetService("TweenService"):Create(MainFrame,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Position = UDim2.new(0,-252,0,MainFrame.AbsolutePosition.Y)}):Play()
			MainFrame.Inset.Text = ">"
		else
			game:GetService("TweenService"):Create(MainFrame,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Position = UDim2.new(0,0,0,MainFrame.AbsolutePosition.Y)}):Play()
			MainFrame.Inset.Text = "<"
		end
		Toggle = not Toggle
	end
end)

Elements.Reanimate.Activated:Connect(reanimate)
Elements.CopyHats.Activated:Connect(function()
	if Selected and Scripts[Selected] then
		setclipboard(tostring(Scripts[Selected]["HatID"]))
	end
end)
--Elements.CopyCredits.Activated:Connect(function()
--	setclipboard[[Original Developer - https://discord.id/?prefill=801256997261017100
--Remake Main Developer - https://discord.id/?prefill=806621844291584001
--Convert Developers - https://discord.id/?prefill=786897804664635400,https://discord.id/?prefill=307781359244541953
--getsynassetfromurl function - https://discord.id/?prefill=649302696473395200]]
--end)

game:GetService("RunService").RenderStepped:Connect(function()
	Sine += 1; Elements.Pendelum.Rotation = math.cos(Sine/30)*30
end)

spawn(function()
	local dragToggle,dragInput,dragStart,startPos
	local dragSpeed = 0
	local function updateInput(input)
		local Delta = input.Position - dragStart -- 
		if startPos.X.Offset + Delta.X < 30 then
			MainFrame.Position = UDim2.new(0, 0, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			MainFrame.Inset.Visible = true
		else
			MainFrame.Position = UDim2.new(0, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			MainFrame.Inset.Visible = false
		end
	end
	MainFrame.Drag.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and game:GetService("UserInputService"):GetFocusedTextBox() == nil then
			dragToggle = true
			dragStart = input.Position
			startPos = MainFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)	
		end
	end)
	MainFrame.Drag.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragToggle then
			updateInput(input)
		end
	end)
end)

for i,v in pairs(Scripts) do
	local NewClone = Elements.Scroll.Example:Clone()
	NewClone.Visible = true
	NewClone.Name = i
	NewClone.Text = i
	NewClone.TextColor3 = v["Remastered"] and Color3.new(0,1,0) or Color3.new(1,0,0)
	NewClone.Activated:Connect(function()
		if Selected == i then
			reanimate()
			loadstring(game:HttpGet(v["Link"]))()
			Selected = ""
			Elements.Preview.Image = ""
		else
			Selected = i
			Elements.Preview.Image = v["Image"]
		end
	end)
	NewClone.Parent = Elements.Scroll
end

task.spawn(function()
	-- Settings Assets
	local SettingsOpen = false
	local Buttons = {
		{"Fling",true,"https://cdn.discordapp.com/attachments/959886594133868624/959997893446598676/fling.png",function(Val)
			getgenv.Fling = Val
		end},
		{"PermaDeath",true,"https://cdn.discordapp.com/attachments/959886594133868624/959997895048847360/permadeath.png",function(Val)
			getgenv.GodMode = Val
		end},
		{"Collisions",true,"https://cdn.discordapp.com/attachments/959886594133868624/959997892867813426/collisions.png",function(Val)
			getgenv.Collisions = Val
		end},
		{"MovementVelocity",false,"https://cdn.discordapp.com/attachments/959886594133868624/959997894562291782/movementvelocity.png",function(Val)
			getgenv.MovementVelocity = Val
		end},
		{"Animate",true,"https://cdn.discordapp.com/attachments/959886594133868624/959997892351901727/animate.png",function(Val)
			getgenv.AutoAnimate = Val
		end},
		{"Claim2",false,"https://cdn.discordapp.com/attachments/959886594133868624/959997892674879518/claim2.png",function(Val)
			getgenv.Claim2 = Val
		end},
		{"Optimizer",false,"https://cdn.discordapp.com/attachments/959886594133868624/959997894818136074/Optimizer.png",function(Val)
			getgenv.Optimizer = Val
		end},
		{"Discord",true,"https://cdn.discordapp.com/attachments/959886594133868624/959997893153001492/discord.png",function()
			setclipboard("https://discord.gg/Pq8PXbjtz8")
			game:GetService("StarterGui"):SetCore("SendNotification", {
				Title = "Copied Discord",
				Text = "Set clipboard as invite link.",
				Duration = 5,
			})
			MainFrame.Settings.Discord.ImageColor3 = Color3.new(1,1,1)
		end},
	}
	
	getgenv.Optimizer = false
	for i,v in pairs(Buttons) do
		MainFrame.Settings[v[1]].Image = getsynassetfromurl(v[3])
		if v[2] then
			MainFrame.Settings[v[1]].ImageColor3 = Color3.new(1,1,1)
		else
			MainFrame.Settings[v[1]].ImageColor3 = Color3.fromRGB(70,70,70)
		end
		MainFrame.Settings[v[1]].Activated:Connect(function()
			v[2] = not v[2]
			if v[2] then
				MainFrame.Settings[v[1]].ImageColor3 = Color3.new(1,1,1)
			else
				MainFrame.Settings[v[1]].ImageColor3 = Color3.fromRGB(70,70,70)
			end
			v[4](v[2])
		end)
	end
	
	Elements.OpenSettings.Activated:Connect(function()
		SettingsOpen = not SettingsOpen
		
		if SettingsOpen then
			for i,v in pairs(Buttons) do
				TweenService:Create(MainFrame.Settings[v[1]],TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out), {Position = UDim2.new(0,MainFrame.Settings[v[1]].Position.X.Offset,0,0)}):Play()
				task.wait(0.05)
			end
		else
			for i,v in pairs(Buttons) do
				TweenService:Create(MainFrame.Settings[v[1]],TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.In), {Position = UDim2.new(0,MainFrame.Settings[v[1]].Position.X.Offset,-1.5,0)}):Play()
				task.wait(0.05)
			end
		end
	end)
end)

task.spawn(function()
	local function randomString()
		local length = math.random(10,20)
		local array = {}
		for i = 1, length do
			array[i] = string.char(math.random(32, 126))
		end
		return table.concat(array)
	end
	
	GUI.Name = randomString()
	if syn then
		syn.protect_gui(GUI)
		GUI.Parent = game:GetService("CoreGui")
	elseif get_hidden_gui or gethui then
		local hiddenUI = get_hidden_gui or gethui
		GUI.Parent = hiddenUI()
	elseif game:GetService("CoreGui"):FindFirstChild('RobloxGui') then
		GUI.Parent = game:GetService("CoreGui").RobloxGui
	else
		GUI.Parent = game:GetService("CoreGui")
	end
end)
