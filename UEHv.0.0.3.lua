local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Universal Exploit Hub v.0.0.3", "Midnight")  --libs

local Tab1 = Window:NewTab("Main") 
local Tab4 = Window:NewTab("Scripts") 
local Tab2 = Window:NewTab("Keybinds and More") 
local Tab3 = Window:NewTab("Credits") 


local Section1 = Tab1:NewSection("Sliders")
local Section2 = Tab1:NewSection("Toggles/Buttons")
local Section3 = Tab2:NewSection("Re-open the TP UI")
local Section4 = Tab2:NewSection("Re-open the Main UI")
local Section6 = Tab3:NewSection("Credits")
local Section5 = Tab4:NewSection("Infinite Yield God-Mode")
--organization
-- Gui to Lua
-- Version: 3.2

-- Instances:


local TPUI = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local Username = Instance.new("TextBox")
local Username_Roundify_12px = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local TextButton_Roundify_12px = Instance.new("ImageLabel")

--Properties:

TPUI.Name = "TPUI"
TPUI.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = TPUI
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.389195144, 0, 0.330522776, 0)
Main.Size = UDim2.new(0, 200, 0, 200)
Main.Image = "rbxassetid://3570695787"
Main.ImageColor3 = Color3.fromRGB(48, 48, 48)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.SliceScale = 0.120

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(48, 48, 48)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "TP to player"
TextLabel.TextColor3 = Color3.fromRGB(253, 253, 253)
TextLabel.TextSize = 18.000

Username.Name = "Username"
Username.Parent = Main
Username.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Username.BackgroundTransparency = 1.000
Username.BorderSizePixel = 0
Username.Position = UDim2.new(0, 5, 0, 80)
Username.Size = UDim2.new(1, -10, 0, 40)
Username.ZIndex = 2
Username.Font = Enum.Font.SourceSans
Username.PlaceholderText = "Input Username"
Username.Text = "Input Username"
Username.TextColor3 = Color3.fromRGB(255, 255, 255)
Username.TextSize = 20.000
Username.TextWrapped = true

Username_Roundify_12px.Name = "Username_Roundify_12px"
Username_Roundify_12px.Parent = Username
Username_Roundify_12px.Active = true
Username_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
Username_Roundify_12px.BackgroundColor3 = Color3.fromRGB(241, 255, 240)
Username_Roundify_12px.BackgroundTransparency = 1.000
Username_Roundify_12px.Position = UDim2.new(0.5, 0, 0.5, 0)
Username_Roundify_12px.Selectable = true
Username_Roundify_12px.Size = UDim2.new(1, 0, 1, 0)
Username_Roundify_12px.Image = "rbxassetid://3570695787"
Username_Roundify_12px.ImageColor3 = Color3.fromRGB(40, 40, 40)
Username_Roundify_12px.ImageTransparency = 1.000
Username_Roundify_12px.ScaleType = Enum.ScaleType.Slice
Username_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
Username_Roundify_12px.SliceScale = 0.120

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, 0.61500001, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.ZIndex = 5
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Teleport"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

TextButton_Roundify_12px.Name = "TextButton_Roundify_12px"
TextButton_Roundify_12px.Parent = TextButton
TextButton_Roundify_12px.Active = true
TextButton_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_Roundify_12px.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton_Roundify_12px.BackgroundTransparency = 1.000
TextButton_Roundify_12px.Position = UDim2.new(0.5, 0, 0.499999881, 0)
TextButton_Roundify_12px.Selectable = true
TextButton_Roundify_12px.Size = UDim2.new(0.699999988, 0, 1, 0)
TextButton_Roundify_12px.Image = "rbxassetid://3570695787"
TextButton_Roundify_12px.ImageColor3 = Color3.fromRGB(40, 19, 8)
TextButton_Roundify_12px.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
TextButton_Roundify_12px.SliceScale = 0.120

TextButton.MouseButton1Click:Connect(function()
    local username = string.lower(Username.Text)
    local foundchild = false
    local child
    for i, v in pairs(game.Players:GetChildren()) do
        if string.lower(v.Name) == username then
            foundchild = true
            child = v
            
        end
    end
    if foundchild == true then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = child.Character.HumanoidRootPart.CFrame
    end
     
end)
    





Section1:NewSlider("Walk Speed", "Controls how fast you walk", 500, 0, function(WS) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WS
end)

Section1:NewSlider("Jump Power", "Controls how high you jump", 500, 0, function(JP)
    game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = JP
end)

Section3:NewButton("Show TP Gui", "shows the TP Gui", function()
    game.CoreGui.TPUI.Main.Visible = true
end)

Section3:NewButton("Hide TP Gui", "hides the TP Gui", function()
    game.CoreGui.TPUI.Main.Visible = false
end)

Section5:NewButton("Infinite Yield God-mode", "Enables Godmode by running Infinite Yield v5.9", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    
end)

Section4:NewKeybind("Press F for Main UI", "Press F to toggle the Main UI", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

Section6:NewLabel("Infinite Yield:Edge#3467 | Moon#6245 | bluntbloomer#1259 | GodHOLINAILILIUS#9156")
Section6:NewLabel("MainUI:Kavo-UI by xHeptc")
Section6:NewLabel("Other Exploits:WEAREFARMER")




        
	    
	    




    








    








    

