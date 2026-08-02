local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Enabled = false
local TargetName = "ИмяИгрока" -- Замени на ник игрока

-- Создание кнопки
local gui = Instance.new("ScreenGui")
gui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 150, 0, 50)
button.Position = UDim2.new(0, 20, 0, 20)
button.Text = "OFF"
button.Parent = gui

button.MouseButton1Click:Connect(function()
	Enabled = not Enabled
	button.Text = Enabled and "ON" or "OFF"
end)

RunService.RenderStepped:Connect(function()
	if not Enabled then return end

	local target = Players:FindFirstChild(TargetName)
	if not target then return end

	local myChar = LocalPlayer.Character
	local targetChar = target.Character

	if myChar and targetChar then
		local myRoot = myChar:FindFirstChild("HumanoidRootPart")
		local targetRoot = targetChar:FindFirstChild("HumanoidRootPart")

		if myRoot and targetRoot then
			-- Становимся немного перед игроком
			myRoot.CFrame = targetRoot.CFrame * CFrame.new(0, 0, -2)
		end
	end
end)
