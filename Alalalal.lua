local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Parent = player.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0,250,0,300)
frame.Position = UDim2.new(0.3,0,0.2,0)
frame.BackgroundColor3 = Color3.fromRGB(35,35,35)
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,30)
title.Text = "Меню"
title.BackgroundColor3 = Color3.fromRGB(50,50,50)
title.TextColor3 = Color3.new(1,1,1)
title.Parent = frame

local function CreateButton(text, posY, callback)
	local b = Instance.new("TextButton")
	b.Size = UDim2.new(0.9,0,0,35)
	b.Position = UDim2.new(0.05,0,0,posY)
	b.Text = text
	b.Parent = frame
	b.MouseButton1Click:Connect(callback)
end

CreateButton("Скорость",40,function()
	print("Speed")
end)

CreateButton("Прыжок",85,function()
	print("Jump")
end)

CreateButton("Беск. прыжок",130,function()
	print("Infinite Jump")
end)

CreateButton("BHop",175,function()
	print("BHop")
end)
