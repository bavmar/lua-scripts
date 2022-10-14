-- put in autoexed
if not game:IsLoaded() then
    game.Loaded:Wait()
end
-- Toggler
print("Initializing.")
getgenv().autoJungleChest = true;
-- Functions
function antiAFK()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end

-- Once on teleport start farming
local remoteFired = false
function startJungleChestbot()
    while wait(1) do
        -- Stop on toggle
        if not autoJungleChest then break end
        -- If junglechest exists fire 1 remote
        if game:GetService("Workspace").Enemies:FindFirstChild("JungleChest") and not remoteFired then
            game:GetService("ReplicatedStorage").Functions.Combat.SendFighters:FireServer("JungleChest")
            remoteFired = true
        elseif not game:GetService("Workspace").Enemies:FindFirstChild("JungleChest") then
            remoteFired = false
        end
    end
end

wait(20)
-- Teleport to chest once character is loaded and put on anti AFK
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1247, -46, 2433) 
antiAFK()
print("========================")
print("Jungle chest bot loaded!")
print("========================")
startJungleChestbot()

-- LATER EXECUTION
function antiAFK()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end
antiAFK()
getgenv().autoJungleChest = true;
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1247, -46, 2433) 
local remoteFired = false
function startJungleChestbot()
    while wait(1) Button2Down
        if not autoJungleChest then break end
        if game:GetService("Workspace").Enemies:FindFirstChild("JungleChest") and not remoteFired then
            game:GetService("ReplicatedStorage").Functions.Combat.SendFighters:FireServer("JungleChest")
            remoteFired = true
        elseif not game:GetService("Workspace").Enemies:FindFirstChild("JungleChest") then
            remoteFired = false
        end
    end
end
startJungleChestbot()