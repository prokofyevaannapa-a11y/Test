local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer

local function setupCharacter(character)
	local humanoid = character:WaitForChild("Humanoid")

	humanoid.WalkSpeed = 32
	humanoid.JumpPower = 80

	UserInputService.JumpRequest:Connect(function()
		humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end)
end

if player.Character then
	setupCharacter(player.Character)
end

player.CharacterAdded:Connect(setupCharacter)
