-- Paths
local remote = game:GetService("ReplicatedStorage").Events.Player
local workspace = game:GetService("Workspace")
local actionModule = require(game:GetService("Players").LocalPlayer.PlayerScripts.Client.Action)

-- Player
local player = game.Players.LocalPlayer
local playerHead = player.Character.Head

getgenv().autoTpKill = false
while getgenv().autoTpKill do
    for i,v in pairs(game.Players:GetChildren()) do
        print('For loop I: ', i )
        print('For loop V: ', v )
        if v ~= player then
            if player.Character.HumanoidRootPart.CFrame and v.Character.Head then
                player.Character.HumanoidRootPart.CFrame = v.Character.Head.CFrame * CFrame.new(0,0,0)
                v.Character:WaitForChild("Humanoid").Died:Connect(function()
                    print(v , ' has died!')
                end)
            end
        end
    end
end


