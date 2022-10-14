-- == TOGGLES == --
getgenv().autoJungleChest = false
getgenv().autoMoai = false
getgenv().autoCatch = false
getgenv().autoFarmZone = false
getgenv().autoFarmZoneCatch = false
getgenv().autoFarmZoneDelete = false
getgenv().autoBuy = false

-- == VARIABLES == --
-- Paths
local remote = game:GetService("ReplicatedStorage")
local workspace = game:GetService("Workspace")

-- Player
local player = game.Players.LocalPlayer
local playerHead = player.Character.Head

-- Game specific
local zones = workspace.Map.Areas:GetChildren()

-- == HELPER FUNCTIONS == --
function teleportTo(x, y, z)
    player.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z);
end

-- == SPAWN FUNCTIONS == --
function startMoai()
    spawn(function()
        local remoteFired = false
        while wait() do
            -- Stop on toggle
            if not autoMoai then break end
            -- If junglechest exists fire 1 remote
            if workspace.Enemies:FindFirstChild("Moai") and not remoteFired then
                remote.Functions.Combat.SendFighters:FireServer("Moai")
                remoteFired = true
            elseif not workspace.Enemies:FindFirstChild("Moai") then
                remoteFired = false
            end
        end
    end)
end

function startJungleChest()
    spawn(function()
        local remoteFired = false
        while wait() do
            -- Stop on toggle
            if not autoJungleChest then break end
            -- If junglechest exists fire 1 remote
            if workspace.Enemies:FindFirstChild("JungleChest") and not remoteFired then
                remote.Functions.Combat.SendFighters:FireServer("JungleChest")
                remoteFired = true
            elseif not workspace.Enemies:FindFirstChild("JungleChest") then
                remoteFired = false
            end
        end
    end)
end

function farmZone(zone, killtime)
    spawn(function()
        while wait() do
            -- Stop on toggle
            if not autoFarmZone then break end
            for i, v in pairs(game:GetService("Workspace").Map.Areas[zone].Spots:GetChildren()) do
                if v.Name ~= "Empty" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Areas[zone].Spots[tostring(v)].CFrame
                    wait(0.2)
                    game:GetService("ReplicatedStorage").Functions.Combat.SendFighters:FireServer(tostring(v))
                    if autoFarmZoneCatch then
                        spawn(function()
                            local args = {
                                [1] = "Basic",
                                [2] = tostring(v)
                            }
                            for i = 1, 20  do
                                game:GetService("ReplicatedStorage").Functions.Combat.UseCapsule:InvokeServer(unpack(args))
                                wait(0.001)
                            end
                        end)
                    end
                    if autoFarmZoneDelete then
                        local data = game:GetService("ReplicatedStorage").Functions.Core.GetData:InvokeServer()
                        for hex,pet in pairs(data.Pets) do
                            if pet.Name ~= "Sand Golem" and pet.Name ~= "Orc" and pet.Name ~= "Blob" then
                                game:GetService("ReplicatedStorage").Functions.Pets.Delete:FireServer(hex)
                            end
                        end
                    end
                    wait(killtime)
                end
            end
        end
    end)
end

function buyCapsule(capsule, interval)
    spawn(function()
        while wait() do
            -- Stop on toggle
            if not autoBuy then break end
            game:GetService("ReplicatedStorage").Functions.Progress.BuyCapsule:FireServer(capsule)
            wait(interval)
        end
    end)
end
-- == LIBRARY == --
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("barts Legacy")

 -- Creates the folder(U will put here your buttons,etc)
local farming = w:CreateFolder("Farming")
local constants = w:CreateFolder("Constants")
local teleports = w:CreateFolder("Teleports")
local misc = w:CreateFolder("Misc")

-- Autofarm moai
farming:Toggle("Moai",function(bool)
    getgenv().autoMoai = bool
    if bool then
        startMoai()
    end
end)

-- Autofarm Jungle Chest
farming:Toggle("Jungle Chest",function(bool)
    getgenv().autoJungleChest = bool
    if bool then
        startJungleChest()
    end
end)

local selectedZone
farming:Dropdown("Select zone to farm",{"Forest", "Beach", "Desert", "Cavern", "Jungle", "Easter", "Volcano", "Winter"},true,function(value) --true/false, replaces the current title "Dropdown" with the option that t
    selectedZone = value
    farmZone()
end)

local timeToKill = 1
farming:Slider("Time To kill",{
    min = 1; -- min value of the slider
    max = 10; -- max value of the slider
    precise = false; -- max 2 decimals
},function(value)
    timeToKill = value
end)

farming:Toggle("Farm zone",function(bool)
    getgenv().autoFarmZone = bool
    if bool and selectedZone then
        farmZone(selectedZone, timeToKill)
    end
end)
farming:Toggle("Catch pets",function(bool)
    getgenv().autoFarmZoneCatch = bool
end)

farming:Toggle("Delete pets",function(bool)
    getgenv().autoFarmZoneDelete = bool
end)

local selectedCapsule
farming:Dropdown("Select capsule to buy",{"Basic", "Pro", "Mythic"},true,function(value) --true/false, replaces the current title "Dropdown" with the option that t
    selectedCapsule = value
end)

local buyCapsuleInterval = 1
farming:Slider("Delay capsule",{
    min = 1; -- min value of the slider
    max = 10; -- max value of the slider
    precise = false; -- max 2 decimals
},function(value)
    buyCapsuleInterval = value
end)

farming:Toggle("Buy capsule",function(bool)
    getgenv().autoBuy = bool
    if bool and selectedCapsule then
        buyCapsule(selectedCapsule, buyCapsuleInterval)
    end
end)

constants:Button("100% catch rate",function()
    local petModule = require(remote.PetModule)

    petModule.getChance = function() return 1 end
end)

constants:Button("Gold merge cost",function()
    local petModule = require(remote.PetModule)

    setconstant(petModule.mergeCost, 2, 1)
end)

constants:Button("Buy All Areas",function()
    for i = 2, 20  do
        game:GetService("ReplicatedStorage").Functions.Areas.BuyArea:FireServer(i)
        wait(1)
    end
end)

teleports:Button("Moai",function()
    teleportTo(1717, 50, 451)
end)

teleports:Button("Jungle Chest",function()
    teleportTo(-1246, -42, 2434)
end)

misc:DestroyGui()