if not game:IsLoaded() then game.Loaded:Wait() end
Players = game:GetService("Players")
spDelay = 0.01
local spawnpos = CFrame.new(-17, 74, 1039)
function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

local lastDeath
function onDied()
	task.spawn(function()
		if pcall(function() Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') end) and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
			Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Died:Connect(function()
				if getRoot(Players.LocalPlayer.Character) then
					lastDeath = getRoot(Players.LocalPlayer.Character).CFrame
				end
			end)
		else
			wait(2)
			onDied()
		end
	end)
end

Players.LocalPlayer.CharacterAdded:Connect(function()
	repeat wait() until getRoot(Players.LocalPlayer.Character)
	pcall(function()
		if spawnpos ~= nil then
			wait(spDelay)
			getRoot(Players.LocalPlayer.Character).CFrame = spawnpos
		end
	end)
	onDied()
end)

onDied()