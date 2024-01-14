print("Alysse is loaded")

function identifyexecutor()
    return "Alysse"
end

getgenv().hookmetamethod = function(self, method, func)
    local mt = getrawmetatable(self)
    local old = mt[method]
    setreadonly(mt, false)
    mt[method] = func
    setreadonly(mt, true)
    return old
end

getgenv().getscripts = function()
    local scripts = {}
    for i, v in pairs(game:GetDescendants()) do
        if v:IsA("LocalScript") or v:IsA("ModuleScript") then
            table.insert(scripts, v)
        end
    end
    return scripts
end

local rendered = false
getgenv().isrenderobj = function(a, drawing2)
if rendered == true then
return false
end

rendered = true
return true
end

getgenv().setrenderproperty = function(drawing, object, value)
drawing[object] = value
return object
end

getgenv().getrenderproperty = function(drawing, object)
if object == "Visible" then
    return boolean31()
end
return true
end

getgenv().dumpstring = function(p1)
    return "\\" .. p1:gsub(".", function(c)
        return "\\" .. string.byte(c)
    end)
end

getgenv().hookmetamethod = function(self, method, func)
    local mt = getrawmetatable(self)
    local old = mt[method]
    setreadonly(mt, false)
    mt[method] = func
    setreadonly(mt, true)
    return old
end

getgenv().getscripthash = function(script)
return script:GetHash()
end

getgenv().getsenv = function(script_instance)
    for _, v in pairs(getreg()) do
        if type(v) == "function" and getfenv(v).script == script_instance then
            return getfenv(v)
        end
    end
end

getgenv().getloadedmodules = function()
        local t = {}
		for i,v in pairs(getinstances()) do
			if v:IsA('ModuleScript') then
				table.insert(t, v)
			end
		end
	return t
end

getgenv().getrunningscripts = function()
    local scripts = {}
    for _, script in ipairs(game:GetService("Players").LocalPlayer:GetDescendants()) do
        if script:IsA("LocalScript") or script:IsA("ModuleScript") then
            scripts[#scripts + 1] = script
        end
    end
    return scripts
end

function readfile(filename)
    game.StarterGui:SetCore("SendNotification", {
    Title = "Alysse";
    Text = "Unable to read "..filename.." because file system is not implemented";
    Duration = 3;
})
end

function isfile(filename)
    game.StarterGui:SetCore("SendNotification", {
    Title = "Alysse";
    Text = "Unable to identify "..filename.." because file system is not implemented";
    Duration = 3;
})
end

function delfile(filename)
    game.StarterGui:SetCore("SendNotification", {
    Title = "Alysse";
    Text = "Unable to delete file : "..filename.." because file system is not implemented";
    Duration = 3;
})
end

function makefolder(foldername)
    game.StarterGui:SetCore("SendNotification", {
    Title = "Alysse";
    Text = "Unable to make "..foldername.." because file system is not implemented";
    Duration = 3;
})
end

function delfolder(foldername)
    game.StarterGui:SetCore("SendNotification", {
    Title = "Alysse";
    Text = "Unable to delete folder : "..foldername.." because file system is not implemented";
    Duration = 3;
})
end

function appendfile(filename)
    game.StarterGui:SetCore("SendNotification", {
    Title = "Alysse";
    Text = "Unable to append "..filename.." because file system is not implemented";
    Duration = 3;
})
end

function writefile(filename)
    game.StarterGui:SetCore("SendNotification", {
    Title = "Alysse";
    Text = "Unable to write "..filename.." because file system is not implemented";
    Duration = 3;
})
end

function setclipboard(text)
    game.StarterGui:SetCore("SendNotification", {
    Title = "Alysse";
    Text = "Unable to copy "..text.." because clipboard system is not implemented";
    Duration = 3;
})
end

function getclipboard()
    game.StarterGui:SetCore("SendNotification", {
    Title = "Alysse";
    Text = "Unable to get clipboard because clipboard system is not implemented";
    Duration = 3;
})
end

local Alysse = Instance.new("ScreenGui")
local AlysseMain = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local EditorFrm = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local EditorBTN = Instance.new("TextButton")
local ScriptsFRM = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local ScriptsBTN = Instance.new("TextButton")
local ExecutorFrame = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local ExecutorBox = Instance.new("TextBox")
local _2 = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Delete = Instance.new("ImageButton")
local Run = Instance.new("ImageButton")
local Tag = Instance.new("TextLabel")
local _2_2 = Instance.new("ImageButton")
local UICorner_6 = Instance.new("UICorner")
local ScriptTab = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local Fly = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Inf = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Dex = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local ComingSoon = Instance.new("TextLabel")
local _1 = Instance.new("ImageButton")
local UICorner_11 = Instance.new("UICorner")

Alysse.Name = "Alysse"
Alysse.Parent = gethui()
Alysse.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

AlysseMain.Name = "AlysseMain"
AlysseMain.Parent = Alysse
AlysseMain.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
AlysseMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
AlysseMain.BorderSizePixel = 0
AlysseMain.Position = UDim2.new(0.195756361, 0, 0.172839507, 0)
AlysseMain.Size = UDim2.new(0, 544, 0, 341)

UICorner.Parent = AlysseMain

EditorFrm.Name = "EditorFrm"
EditorFrm.Parent = AlysseMain
EditorFrm.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
EditorFrm.BorderColor3 = Color3.fromRGB(0, 0, 0)
EditorFrm.BorderSizePixel = 0
EditorFrm.Position = UDim2.new(0.0226556547, 0, 0.111675002, 0)
EditorFrm.Size = UDim2.new(0, 119, 0, 30)

UICorner_2.Parent = EditorFrm

EditorBTN.Name = "EditorBTN"
EditorBTN.Parent = EditorFrm
EditorBTN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EditorBTN.BackgroundTransparency = 1.000
EditorBTN.BorderColor3 = Color3.fromRGB(0, 0, 0)
EditorBTN.BorderSizePixel = 0
EditorBTN.Position = UDim2.new(0, 0, -1.01725266e-06, 0)
EditorBTN.Size = UDim2.new(0, 119, 0, 30)
EditorBTN.Font = Enum.Font.Cartoon
EditorBTN.Text = "Editor"
EditorBTN.TextColor3 = Color3.fromRGB(255, 255, 255)
EditorBTN.TextSize = 20.000
EditorBTN.MouseButton1Down:connect(function()
	ScriptTab.Visible = false
	ExecutorFrame.Visible = true
end)

ScriptsFRM.Name = "ScriptsFRM"
ScriptsFRM.Parent = AlysseMain
ScriptsFRM.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
ScriptsFRM.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptsFRM.BorderSizePixel = 0
ScriptsFRM.Position = UDim2.new(0.306818187, 0, 0.111675128, 0)
ScriptsFRM.Size = UDim2.new(0, 119, 0, 30)

UICorner_3.Parent = ScriptsFRM

ScriptsBTN.Name = "ScriptsBTN"
ScriptsBTN.Parent = ScriptsFRM
ScriptsBTN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptsBTN.BackgroundTransparency = 1.000
ScriptsBTN.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptsBTN.BorderSizePixel = 0
ScriptsBTN.Size = UDim2.new(0, 119, 0, 30)
ScriptsBTN.Font = Enum.Font.Cartoon
ScriptsBTN.Text = "Scripts"
ScriptsBTN.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptsBTN.TextSize = 20.000
ScriptsBTN.MouseButton1Down:connect(function()
	ScriptTab.Visible = true
	ExecutorFrame.Visible = false
end)

ExecutorFrame.Name = "ExecutorFrame"
ExecutorFrame.Parent = AlysseMain
ExecutorFrame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
ExecutorFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecutorFrame.BorderSizePixel = 0
ExecutorFrame.Position = UDim2.new(0.0113637587, 0, 0.236040577, 0)
ExecutorFrame.Size = UDim2.new(0, 535, 0, 246)

UICorner_4.Parent = ExecutorFrame

ExecutorBox.Name = "ExecutorBox"
ExecutorBox.Parent = ExecutorFrame
ExecutorBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExecutorBox.BackgroundTransparency = 1.000
ExecutorBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExecutorBox.BorderSizePixel = 0
ExecutorBox.Position = UDim2.new(0.0132890074, 0, 0.0317460336, 0)
ExecutorBox.Size = UDim2.new(0, 527, 0, 238)
ExecutorBox.Font = Enum.Font.SourceSans
ExecutorBox.MultiLine = true
ExecutorBox.Text = "print(\"Alysse REVAMPED\")"
ExecutorBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecutorBox.TextSize = 14.000
ExecutorBox.ClearTextOnFocus = false
ExecutorBox.TextWrapped = true
ExecutorBox.TextXAlignment = Enum.TextXAlignment.Left
ExecutorBox.TextYAlignment = Enum.TextYAlignment.Top

_2.Name = "2"
_2.Parent = ExecutorFrame
_2.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
_2.BorderSizePixel = 0
_2.Position = UDim2.new(0.62956816, 0, -0.202898532, 0)
_2.Size = UDim2.new(0, 118, 0, 37)

UICorner_5.Parent = _2

Delete.Name = "Delete"
Delete.Parent = _2
Delete.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Delete.BackgroundTransparency = 1.000
Delete.BorderColor3 = Color3.fromRGB(0, 0, 0)
Delete.BorderSizePixel = 0
Delete.Position = UDim2.new(0.573767722, 0, 0, 0)
Delete.Size = UDim2.new(0, 41, 0, 37)
Delete.Image = "rbxassetid://15734030445"
Delete.ImageColor3 = Color3.fromRGB(0, 0, 0)
Delete.MouseButton1Down:connect(function()
	ExecutorBox.Text = ""
end)

Run.Name = "Run"
Run.Parent = _2
Run.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Run.BackgroundTransparency = 1.000
Run.BorderColor3 = Color3.fromRGB(0, 0, 0)
Run.BorderSizePixel = 0
Run.Position = UDim2.new(0.118667863, 0, 0, 0)
Run.Size = UDim2.new(0, 40, 0, 37)
Run.Image = "rbxassetid://15734240277"
Run.ImageColor3 = Color3.fromRGB(0, 0, 0)
Run.MouseButton1Down:connect(function()
	schedulescript(ExecutorBox.Text)
end)

Tag.Name = "Tag"
Tag.Parent = AlysseMain
Tag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tag.BackgroundTransparency = 1.000
Tag.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tag.BorderSizePixel = 0
Tag.Position = UDim2.new(0.0227272734, 0, 0.017766498, 0)
Tag.Size = UDim2.new(0, 182, 0, 26)
Tag.Font = Enum.Font.SourceSansBold
Tag.Text = "Alysse REVAMPED"
Tag.TextColor3 = Color3.fromRGB(255, 255, 255)
Tag.TextSize = 30.000

_2_2.Name = "2"
_2_2.Parent = AlysseMain
_2_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_2_2.BackgroundTransparency = 1.000
_2_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
_2_2.BorderSizePixel = 0
_2_2.Position = UDim2.new(0.913865507, 0, 0.0177665111, 0)
_2_2.Size = UDim2.new(0, 34, 0, 31)
_2_2.Image = "rbxassetid://15421111228"
_2_2.MouseButton1Down:connect(function()
	AlysseMain.Visible = false
	_1.Visible = true
end)

UICorner_6.Parent = _2_2

ScriptTab.Name = "ScriptTab"
ScriptTab.Parent = AlysseMain
ScriptTab.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
ScriptTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptTab.BorderSizePixel = 0
ScriptTab.Position = UDim2.new(0.0113637587, 0, 0.236040577, 0)
ScriptTab.Size = UDim2.new(0, 535, 0, 246)
ScriptTab.Visible = false

UICorner_7.Parent = ScriptTab

Fly.Name = "Fly"
Fly.Parent = ScriptTab
Fly.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Fly.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.0261682235, 0, 0.0365853645, 0)
Fly.Size = UDim2.new(0, 146, 0, 43)
Fly.Font = Enum.Font.SourceSans
Fly.Text = "Infinite Yield"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextSize = 25.000
Fly.MouseButton1Down:connect(function()
	local raw = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"
local source = game:HttpGet(raw)

loadstring(source)()
end)

UICorner_8.Parent = Fly

Inf.Name = "Inf"
Inf.Parent = ScriptTab
Inf.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Inf.BorderColor3 = Color3.fromRGB(0, 0, 0)
Inf.BorderSizePixel = 0
Inf.Position = UDim2.new(0.0261682235, 0, 0.243902445, 0)
Inf.Size = UDim2.new(0, 146, 0, 43)
Inf.Font = Enum.Font.SourceSans
Inf.Text = "UNC Checker"
Inf.TextColor3 = Color3.fromRGB(255, 255, 255)
Inf.TextSize = 20.000
Inf.TextWrapped = true
Inf.MouseButton1Down:connect(function()
local unc = "https://raw.githubusercontent.com/NathTheDev/AlysseAndroid/main/AlysseUI.lua"
local raw = game:HttpGet(unc)

loadstring(raw)()
end)

UICorner_9.Parent = Inf

Dex.Name = "Dex"
Dex.Parent = ScriptTab
Dex.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Dex.BorderColor3 = Color3.fromRGB(0, 0, 0)
Dex.BorderSizePixel = 0
Dex.Position = UDim2.new(0.0261682235, 0, 0.455284566, 0)
Dex.Size = UDim2.new(0, 146, 0, 43)
Dex.Font = Enum.Font.SourceSans
Dex.Text = "All Tycoons V3"
Dex.TextColor3 = Color3.fromRGB(255, 255, 255)
Dex.TextSize = 20.000
Dex.TextWrapped = true
Dex.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/XaZ6Ly0f"))()
end)

UICorner_10.Parent = Dex

ComingSoon.Name = "ComingSoon"
ComingSoon.Parent = ScriptTab
ComingSoon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ComingSoon.BackgroundTransparency = 1.000
ComingSoon.BorderColor3 = Color3.fromRGB(0, 0, 0)
ComingSoon.BorderSizePixel = 0
ComingSoon.Position = UDim2.new(0.351401865, 0, 0.203252032, 0)
ComingSoon.Size = UDim2.new(0, 323, 0, 146)
ComingSoon.Font = Enum.Font.SourceSansBold
ComingSoon.Text = "More Coming Soon!"
ComingSoon.TextColor3 = Color3.fromRGB(255, 255, 255)
ComingSoon.TextScaled = true
ComingSoon.TextSize = 14.000
ComingSoon.TextWrapped = true

_1.Name = "1"
_1.Parent = Alysse
_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
_1.BorderSizePixel = 0
_1.Position = UDim2.new(0.444900751, 0, 0.01728395, 0)
_1.Size = UDim2.new(0, 48, 0, 47)
_1.Visible = false
_1.Image = "rbxassetid://14334029762"
_1.MouseButton1Down:connect(function()
	AlysseMain.Visible = true
	_1.Visible = false
end)

UICorner_11.Parent = _1

local function ECSEFHB_fake_script()
	local script = Instance.new('LocalScript', Alysse)

	frame = script.Parent.AlysseMain
	frame.Draggable = true
	frame.Selectable = true
	frame.Active = true
end
coroutine.wrap(ECSEFHB_fake_script)()

--[[ Init Script
local DrawingLib = {}

local Camera = game:GetService("Workspace"):FindFirstChild("Camera")
local RunService = game:GetService("RunService")
local CoreGui = (RunService:IsStudio() and game:GetService("Players")["LocalPlayer"]:WaitForChild("PlayerGui") or game:GetService("CoreGui"))

local BaseDrawingProperties = setmetatable({
	Visible = false,
	Color = Color3.new(),
	Transparency = 0,
	Remove = function()
	end
}, {
	__add = function(tbl1, tbl2)
		local new = {}
		for i, v in next, tbl1 do
			new[i] = v
		end
		for i, v in next, tbl2 do
			new[i] = v
		end
		return new
	end
})

local DrawingUI = nil;

DrawingLib.new = function(Type)
	if DrawingUI == nil then
		DrawingUI = Instance.new("ScreenGui");
		DrawingUI.Parent = CoreGui;
		DrawingUI.Name = "DrawingLib"
		DrawingUI.DisplayOrder = 1999999999
		DrawingUI.IgnoreGuiInset = true
	end

	if (Type == "Line") then
		local LineProperties = ({
			To = Vector2.new(),
			From = Vector2.new(),
			Thickness = 1,
		} + BaseDrawingProperties)

		local LineFrame = Instance.new("Frame");
		LineFrame.AnchorPoint = Vector2.new(0.5, 0.5);
		LineFrame.BorderSizePixel = 0

		LineFrame.BackgroundColor3 = LineProperties.Color
		LineFrame.Visible = LineProperties.Visible
		LineFrame.BackgroundTransparency = LineProperties.Transparency


		LineFrame.Parent = DrawingUI

		return setmetatable({}, {
					__newindex = (function(self, Property, Value)
				if (Property == "To") then
					local To = Value
					local Direction = (To - LineProperties.From);
					local Center = (To + LineProperties.From) / 2
					local Distance = Direction.Magnitude
					local Theta = math.atan2(Direction.Y, Direction.X);

					LineFrame.Position = UDim2.fromOffset(Center.X, Center.Y);
					LineFrame.Rotation = math.deg(Theta);
					LineFrame.Size = UDim2.fromOffset(Distance, LineProperties.Thickness);

					LineProperties.To = To
				end
				if (Property == "From") then
					local From = Value
					local Direction = (LineProperties.To - From);
					local Center = (LineProperties.To + From) / 2
					local Distance = Direction.Magnitude
					local Theta = math.atan2(Direction.Y, Direction.X);

					LineFrame.Position = UDim2.fromOffset(Center.X, Center.Y);
					LineFrame.Rotation = math.deg(Theta);
					LineFrame.Size = UDim2.fromOffset(Distance, LineProperties.Thickness);


					LineProperties.From = From
				end
				if (Property == "Visible") then
					LineFrame.Visible = Value
					LineProperties.Visible = Value
				end
				if (Property == "Thickness") then
					Value = Value < 1 and 1 or Value

					local Direction = (LineProperties.To - LineProperties.From);
					local Distance = Direction.Magnitude

					LineFrame.Size = UDim2.fromOffset(Distance, Value);

					LineProperties.Thickness = Value
				end
				if (Property == "Transparency") then
					LineFrame.BackgroundTransparency = 1 - Value
					LineProperties.Transparency = Value
				end
				if (Property == "Color") then
					LineFrame.BackgroundColor3 = Value
					LineProperties.Color = Value 
				end
				if (Property == "ZIndex") then
					LineFrame.ZIndex = Value
				end
			end),
			__index = (function(self, Property)
				if (string.lower(tostring(Property)) == "remove") then
					return (function()
						LineFrame:Destroy();
					end)
				end
                if Property == "Destroy" then
                 return (function()
						LineFrame:Destroy();
					end)
                end
				return LineProperties[Property]
			end)
		})
	end

	if (Type == "Circle") then
		local CircleProperties = ({
			Radius = 150,
			Filled = false,
			Position = Vector2.new()
		} + BaseDrawingProperties)

		local CircleFrame = Instance.new("Frame");

		CircleFrame.AnchorPoint = Vector2.new(0.5, 0.5);
		CircleFrame.BorderSizePixel = 0

		CircleFrame.BackgroundColor3 = CircleProperties.Color
		CircleFrame.Visible = CircleProperties.Visible
		CircleFrame.BackgroundTransparency = CircleProperties.Transparency

		local Corner = Instance.new("UICorner", CircleFrame);
		Corner.CornerRadius = UDim.new(1, 0);
		CircleFrame.Size = UDim2.new(0, CircleProperties.Radius, 0, CircleProperties.Radius);

		CircleFrame.Parent = DrawingUI

		local Stroke = Instance.new("UIStroke", CircleFrame)
		Stroke.Thickness = 2
		Stroke.Enabled = false

		return setmetatable({}, {
			__newindex = (function(self, Property, Value)
				if (Property == "Radius") then
					CircleFrame.Size = UDim2.new(0, Value, 0, Value);
					CircleProperties.Radius = Value
				end
				if (Property == "Position") then
					CircleFrame.Position = UDim2.new(0, Value.X, 0, Value.Y + 36);
					CircleProperties.Position = Value
				end
				if (Property == "Filled") then
					CircleFrame.BackgroundTransparency = Value == true and 0 or 1
					Stroke.Enabled = not Value
					CircleProperties.Filled = Value
				end
				if (Property == "Color") then
					CircleFrame.BackgroundColor3 = Value
					Stroke.Color = Value
					CircleProperties.Color = Value
				end
				if (Property == "Visible") then
					CircleFrame.Visible = Value
					CircleProperties.Visible = Value
				end
				if (Property == "ZIndex") then
					CircleFrame.ZIndex = Value
				end
			end),
			__index = (function(self, Property)
				if (string.lower(tostring(Property)) == "remove") then
					return (function()
						CircleFrame:Destroy();
					end)
				end
                if Property ==  "Destroy" then
                return (function()
						CircleFrame:Destroy();
					end)
                end
				return CircleProperties[Property]
			end)
		})
	end

	if (Type == "Text") then
		local TextProperties = ({
			Text = "",
			Size = 0,
			Center = false,
			Outline = false,
			OutlineColor = Color3.new(),
			Position = Vector2.new(),
		} + BaseDrawingProperties)

		local TextLabel = Instance.new("TextLabel");

		TextLabel.AnchorPoint = Vector2.new(0.5, 0.5);
		TextLabel.BorderSizePixel = 0
		TextLabel.Size = UDim2.new(0, 200, 0, 50);
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.TextSize = 14

		TextLabel.TextColor3 = TextProperties.Color
		TextLabel.Visible = TextProperties.Visible
		TextLabel.BackgroundTransparency = 1
		TextLabel.TextTransparency = 1 - TextProperties.Transparency
		
		local Stroke = Instance.new("UIStroke", TextLabel)
		Stroke.Thickness = 0.5
		Stroke.Enabled = false
		Stroke.Color = Color3.fromRGB(0, 0, 0)

		TextLabel.Parent = DrawingUI

		return setmetatable({}, {
			__newindex = (function(self, Property, Value)
				if (Property == "Text") then
					TextLabel.Text = Value
					TextProperties.Text = Value
				end
				if (Property == "Position") then
					TextLabel.Position = UDim2.new(0, Value.X, 0, Value.Y + 36);
					TextProperties.Position = Value
				end
				if (Property == "Size") then
					TextLabel.TextSize = Value
					TextProperties.Size = Value
				end
				if (Property == "Color") then
					TextLabel.TextColor3 = Value
					TextProperties.Color = Value
					Stroke.Color = Value
				end
				if (Property == "Transparency") then
					TextLabel.TextTransparency = 1 - Value
					TextProperties.Transparency = Value
				end
				if (Property == "Visible") then
					TextLabel.Visible = Value
					TextProperties.Visible = Value
				end
				if (Property == "Outline") then
					Stroke.Enabled = Value
				end
				if (Property == "Center") then
					TextLabel.Position = Value == true and UDim2.new(0, Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2, 0)
					TextProperties.Center = Value
				end
				if (Property == "ZIndex") then
					TextLabel.ZIndex = Value
				end
			end),
			__index = (function(self, Property)
				if (string.lower(tostring(Property)) == "remove") then
					return (function()
						TextLabel:Destroy();
					end)
				end
                 if Property == "Destroy" then
                return (function()
						TextLabel:Destroy();
					end)
                end
				return TextProperties[Property]
			end)
		})
	end

	if (Type == "Square") then
		local SquareProperties = ({
			Thickness = 1,
			Size = Vector2.new(),
			Position = Vector2.new(),
			Filled = false,
		} + BaseDrawingProperties);
		local SquareFrame = Instance.new("Frame");

		--SquareFrame.AnchorPoint = Vector2.new(0.5, 0.5);
		SquareFrame.BorderSizePixel = 0

		SquareFrame.Visible = false
		SquareFrame.Parent = DrawingUI

		local Stroke = Instance.new("UIStroke", SquareFrame)
		Stroke.Thickness = 2
		Stroke.Enabled = false
		Stroke.LineJoinMode = Enum.LineJoinMode.Miter

		return setmetatable({}, {
			__newindex = (function(self, Property, Value)
				if (Property == "Position") then
					SquareFrame.Position = UDim2.new(0, Value.X, 0, Value.Y)
					SquareProperties.Position = Value
				end
				if (Property == "Size") then
					SquareFrame.Size = UDim2.new(0, Value.X, 0, Value.Y);
					SquareProperties.Size = Value
				end
				if (Property == "Color") then
					SquareFrame.BackgroundColor3 = Value
					Stroke.Color = Value
					SquareProperties.Color = Value
				end
				if (Property == "Transparency") then
					SquareFrame.BackgroundTransparency = Value
					SquareProperties.Transparency = Value
				end
				if (Property == "Visible") then
					SquareFrame.Visible = Value
					SquareProperties.Visible = Value
				end
				if (Property == "Filled") then -- requires beta
					SquareFrame.BackgroundTransparency = (Value == true and 0 or 1)
					Stroke.Enabled = not Value
					SquareProperties.Filled = Value
				end
			end),
			__index = (function(self, Property)
				if (string.lower(tostring(Property)) == "remove") then
					return (function()
						SquareFrame:Destroy();
					end)
				end
               if Property == "Destroy" then				
				return (function()
						SquareFrame:Destroy();
					end)
				end
				return SquareProperties[Property]
			end)
		})
	end


	if (Type == "Quad") then -- idk if this will work lmao
		local QuadProperties = ({
			Thickness = 1,
			PointA = Vector2.new();
			PointB = Vector2.new();
			PointC = Vector2.new();
			PointD = Vector2.new();
			Filled = false;
		}  + BaseDrawingProperties);

		local PointA = DrawingLib.new("Line")
		local PointB = DrawingLib.new("Line")
		local PointC = DrawingLib.new("Line")
		local PointD = DrawingLib.new("Line")

		return setmetatable({}, {
			__newindex = (function(self, Property, Value)
				if Property == "Thickness" then
					PointA.Thickness = Value
					PointB.Thickness = Value
					PointC.Thickness = Value
					PointD.Thickness = Value
				end
				if Property == "PointA" then
					PointA.From = Value
					PointB.To = Value
				end
				if Property == "PointB" then
					PointB.From = Value
					PointC.To = Value
				end
				if Property == "PointC" then
					PointC.From = Value
					PointD.To = Value
				end
				if Property == "PointD" then
					PointD.From = Value
					PointA.To = Value
				end
				if Property == "Filled" then
					-- i'll do this later
				end
				if (Property == "ZIndex") then
					PointA.ZIndex = Value
					PointB.ZIndex = Value
					PointC.ZIndex = Value
					PointD.ZIndex = Value
				end
			end),
			__index = (function(self, Property)
				if (string.lower(tostring(Property)) == "remove") then
					return (function()
						PointA:Remove();
						PointB:Remove();
						PointC:Remove();
						PointD:Remove();
					end)
				end
                if Property ==  "Destroy" then
                       return (function()
						PointA:Remove();
						PointB:Remove();
						PointC:Remove();
						PointD:Remove();
					end)
                end
				return QuadProperties[Property]
			end)
		});
	end

if (Type == "Image") then
		local ImageProperties = ({
			Data = "rbxassetid://848623155", -- roblox assets only rn
			Size = Vector2.new(),
			Position = Vector2.new(),
			Rounding = 0,
		});

		local ImageLabel = Instance.new("ImageLabel");

		ImageLabel.BorderSizePixel = 0
		ImageLabel.ScaleType = Enum.ScaleType.Stretch
		ImageLabel.Transparency = 1

		ImageLabel.Visible = false
		ImageLabel.Parent = DrawingUI

		return setmetatable({}, {
			__newindex = (function(self, Property, Value)
				if (Property == "Size") then
					ImageLabel.Size = UDim2.new(0, Value.X, 0, Value.Y);
					ImageProperties.Text = Value
				end
				if (Property == "Position") then
					ImageLabel.Position = UDim2.new(0, Value.X, 0, Value.Y);
					ImageProperties.Position = Value
				end
				if (Property == "Size") then
					ImageLabel.Size = UDim2.new(0, Value.X, 0, Value.Y);
					ImageProperties.Size = Value
				end
				if (Property == "Transparency") then
					ImageLabel.ImageTransparency = 1 - Value
					ImageProperties.Transparency = Value
				end
				if (Property == "Visible") then
					ImageLabel.Visible = Value
					ImageProperties.Visible = Value
				end
				if (Property == "Color") then
					ImageLabel.ImageColor3 = Value
					ImageProperties.Color = Value
				end
				if (Property == "Data") then
					ImageLabel.Image = Value
					ImageProperties.Data = Value
				end
				if (Property == "ZIndex") then
					ImageLabel.ZIndex = Value
				end
			end),
			__index = (function(self, Property)
				if (string.lower(tostring(Property)) == "remove") then
					return (function()
						ImageLabel:Destroy();
					end)
				end
                if Property ==  "Destroy" then
                return (function()
						ImageLabel:Destroy();
					end)
                end
				return ImageProperties[Property]
			end)
		})
	end

	if (Type == "Triangle") then  -- idk if this will work lmao
		local TriangleProperties = ({
			Thickness = 1,
			PointA = Vector2.new();
			PointB = Vector2.new();
			PointC = Vector2.new();
			Filled = false;
		}  + BaseDrawingProperties);

		local PointA = DrawingLib.new("Line")
		local PointB = DrawingLib.new("Line")
		local PointC = DrawingLib.new("Line")

		return setmetatable({}, {
			__newindex = (function(self, Property, Value)
				if Property == "Thickness" then
					PointA.Thickness = Value
					PointB.Thickness = Value
					PointC.Thickness = Value
				end
				if Property == "PointA" then
					PointA.From = Value
					PointB.To = Value
					TriangleProperties.PointA = Value
				end
				if Property == "PointB" then
					PointB.From = Value
					PointC.To = Value
					TriangleProperties.PointB = Value
				end
				if Property == "PointC" then
					PointC.From = Value
					PointA.To = Value
					TriangleProperties.PointC = Value
				end
				if Property == "Filled" then
					-- i'll do this later
				end
				if (Property == "ZIndex") then
					PointA.ZIndex = Value
					PointB.ZIndex = Value
					PointC.ZIndex = Value
				end
			end),
			__index = (function(self, Property)
				if (string.lower(tostring(Property)) == "remove") then
					return (function()
						PointA:Remove();
						PointB:Remove();
						PointC:Remove();
					end)
				end
                if Property ==  "Destroy" then
                return (function()
						PointA:Remove();
						PointB:Remove();
						PointC:Remove();
					end)
                end
				return TriangleProperties[Property]
			end)
		});
	end
end


DrawingLib.clear = function() 
	DrawingUI:ClearAllChildren();
end

if RunService:IsStudio() then
	return DrawingLib
else
	if getgenv then
		getgenv()["Drawing"] = DrawingLib
		getgenv()["clear_drawing_lib"] = DrawingLib.clear
		Drawing = drawing
	else
		Drawing = DrawingLib
	end
end
getgenv()["Drawing"] = DrawingLib
getgenv()["clear_drawing_lib"] = DrawingLib.clear
getgenv().Drawing = DrawingLib
getgenv().clear_drawing_lib = DrawingLib.clear
--End

local lz4 = {}

type Streamer = {
	Offset: number,
	Source: string,
	Length: number,
	IsFinished: boolean,
	LastUnreadBytes: number,

	read: (Streamer, len: number?, shiftOffset: boolean?) -> string,
	seek: (Streamer, len: number) -> (),
	append: (Streamer, newData: string) -> (),
	toEnd: (Streamer) -> ()
}

type BlockData = {
	[number]: {
		Literal: string,
		LiteralLength: number,
		MatchOffset: number?,
		MatchLength: number?
	}
}

getgenv().lz4compress = function(str: string): string
	local blocks: BlockData = {}
	local iostream = streamer(str)

	if iostream.Length > 12 then
		local firstFour = iostream:read(4)

		local processed = firstFour
		local lit = firstFour
		local match = ""
		local LiteralPushValue = ""
		local pushToLiteral = true

		repeat
			pushToLiteral = true
			local nextByte = iostream:read()

			if plainFind(processed, nextByte) then
				local next3 = iostream:read(3, false)

				if string.len(next3) < 3 then
					--push bytes to literal block then break
					LiteralPushValue = nextByte .. next3
					iostream:seek(3)
				else
					match = nextByte .. next3

					local matchPos = plainFind(processed, match)
					if matchPos then
						iostream:seek(3)
						repeat
							local nextMatchByte = iostream:read(1, false)
							local newResult = match .. nextMatchByte

							local repos = plainFind(processed, newResult) 
							if repos then
								match = newResult
								matchPos = repos
								iostream:seek(1)
							end
						until not plainFind(processed, newResult) or iostream.IsFinished

						local matchLen = string.len(match)
						local pushMatch = true

						if iostream.Length - iostream.Offset <= 5 then
							LiteralPushValue = match
							pushMatch = false
							--better safe here, dont bother pushing to match ever
						end

						if pushMatch then
							pushToLiteral = false

							-- gets the position from the end of processed, then slaps it onto processed
							local realPosition = string.len(processed) - matchPos
							processed = processed .. match

							table.insert(blocks, {
								Literal = lit,
								LiteralLength = string.len(lit),
								MatchOffset = realPosition + 1,
								MatchLength = matchLen,
							})
							lit = ""
						end
					else
						LiteralPushValue = nextByte
					end
				end
			else
				LiteralPushValue = nextByte
			end

			if pushToLiteral then
				lit = lit .. LiteralPushValue
				processed = processed .. nextByte
			end
		until iostream.IsFinished
		table.insert(blocks, {
			Literal = lit,
			LiteralLength = string.len(lit)
		})
	else
		local str = iostream.Source
		blocks[1] = {
			Literal = str,
			LiteralLength = string.len(str)
		}
	end

	-- generate the output chunk
	-- %s is for adding header
	local output = string.rep("\x00", 4)
	local function write(char)
		output = output .. char
	end
	-- begin working through chunks
	for chunkNum, chunk in blocks do
		local litLen = chunk.LiteralLength
		local matLen = (chunk.MatchLength or 4) - 4

		-- create token
		local tokenLit = math.clamp(litLen, 0, 15)
		local tokenMat = math.clamp(matLen, 0, 15)

		local token = bit32.lshift(tokenLit, 4) + tokenMat
		write(string.pack("<I1", token))

		if litLen >= 15 then
			litLen = litLen - 15
			--begin packing extra bytes
			repeat
				local nextToken = math.clamp(litLen, 0, 0xFF)
				write(string.pack("<I1", nextToken))
				if nextToken == 0xFF then
					litLen = litLen - 255
				end
			until nextToken < 0xFF
		end

		-- push raw lit data
		write(chunk.Literal)

		if chunkNum ~= #blocks then
			-- push offset as u16
			write(string.pack("<I2", chunk.MatchOffset))

			-- pack extra match bytes
			if matLen >= 15 then
				matLen = matLen - 15

				repeat
					local nextToken = math.clamp(matLen, 0, 0xFF)
					write(string.pack("<I1", nextToken))
					if nextToken == 0xFF then
						matLen = matLen - 255
					end
				until nextToken < 0xFF
			end
		end
	end
	--append chunks
	local compLen = string.len(output) - 4
	local decompLen = iostream.Length

	return string.pack("<I4", compLen) .. string.pack("<I4", decompLen) .. output
end

getgenv().lz4decompress = function(lz4data: string): string
	local inputStream = streamer(lz4data)

	local compressedLen = string.unpack("<I4", inputStream:read(4))
	local decompressedLen = string.unpack("<I4", inputStream:read(4))
	local reserved = string.unpack("<I4", inputStream:read(4))

	if compressedLen == 0 then
		return inputStream:read(decompressedLen)
	end

	local outputStream = streamer("")

	repeat
		local token = string.byte(inputStream:read())
		local litLen = bit32.rshift(token, 4)
		local matLen = bit32.band(token, 15) + 4

		if litLen >= 15 then
			repeat
				local nextByte = string.byte(inputStream:read())
				litLen += nextByte
			until nextByte ~= 0xFF
		end

		local literal = inputStream:read(litLen)
		outputStream:append(literal)
		outputStream:toEnd()
		if outputStream.Length < decompressedLen then
			--match
			local offset = string.unpack("<I2", inputStream:read(2))
			if matLen >= 19 then
				repeat
					local nextByte = string.byte(inputStream:read())
					matLen += nextByte
				until nextByte ~= 0xFF
			end

			outputStream:seek(-offset)
			local pos = outputStream.Offset
			local match = outputStream:read(matLen)
			local unreadBytes = outputStream.LastUnreadBytes
			local extra
			if unreadBytes then
				repeat
					outputStream.Offset = pos
					extra = outputStream:read(unreadBytes)
					unreadBytes = outputStream.LastUnreadBytes
					match ..= extra
				until unreadBytes <= 0
			end

			outputStream:append(match)
			outputStream:toEnd()
		end

	until outputStream.Length >= decompressedLen

	return outputStream.Source
end

return lz4
--]]
