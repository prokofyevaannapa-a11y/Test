local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "ModernMenu"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(320, 420)
frame.Position = UDim2.new(0.35,0,0.2,0)
frame.BackgroundColor3 = Color3.fromRGB(30,30,35)
frame.Active = true
frame.Draggable = true
frame.Parent = gui

Instance.new("UICorner", frame).CornerRadius = UDim.new(0,12)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,-40,0,40)
title.BackgroundTransparency = 1
title.Text = "Modern Menu"
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.TextColor3 = Color3.new(1,1,1)
title.Parent = frame

local close = Instance.new("TextButton")
close.Size = UDim2.fromOffset(30,30)
close.Position = UDim2.new(1,-35,0,5)
close.Text = "-"
close.Font = Enum.Font.GothamBold
close.TextSize = 20
close.Parent = frame
Instance.new("UICorner", close)

local list = Instance.new("UIListLayout")
list.Padding = UDim.new(0,8)

local holder = Instance.new("Frame")
holder.BackgroundTransparency = 1
holder.Size = UDim2.new(1,-20,1,-55)
holder.Position = UDim2.new(0,10,0,45)
holder.Parent = frame
list.Parent = holder

local function AddButton(name, callback)
	local b = Instance.new("TextButton")
	b.Size = UDim2.new(1,0,0,40)
	b.Text = name
	b.Font = Enum.Font.Gotham
	b.TextSize = 18
	b.BackgroundColor3 = Color3.fromRGB(45,45,55)
	b.TextColor3 = Color3.new(1,1,1)
	Instance.new("UICorner", b)
	b.Parent = holder
	b.MouseButton1Click:Connect(callback)
end

AddButton("Speed", function()
	print("Speed button pressed")
end)

AddButton("High Jump", function()
	print("Jump button pressed")
end)

AddButton("Infinite Jump", function()
	print("Infinite Jump button pressed")
end)

AddButton("Bunny Hop", function()
	print("BHop button pressed")
end)

local minimized = false

close.MouseButton1Click:Connect(function()
	minimized = not minimized
	TweenService:Create(frame,TweenInfo.new(0.25),{
		Size = minimized and UDim2.fromOffset(320,40) or UDim2.fromOffset(320,420)
	}):Play()
	holder.Visible = not minimized
end)

UIS.InputBegan:Connect(function(input,gp)
	if gp then return end
	if input.KeyCode == Enum.KeyCode.RightShift then
		gui.Enabled = not gui.Enabled
	end
end)
