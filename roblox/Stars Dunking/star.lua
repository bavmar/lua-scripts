repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
-- Values 
getgenv().autoDunkDistance = 10

-- Booleans
getgenv().autoDunk = false
getgenv().autoUpgrade = false
getgenv().autoBalls = false
getgenv().autoJerseys = false
getgenv().autoShoes = false
getgenv().autoRebirth = false
getgenv().autoContest = false

-- Paths
local lp = game.Players.LocalPlayer
local ws = game:GetService('Workspace')
local serverEvent = game:GetService("ReplicatedStorage").ServerEvent
-- Arrays
local balls = {'Default', 'Allstar', 'Grass', 'Tennis', 'Moon', 'Magma', 'Water', 'Fire', 'White Fire', 'Black Fire', 'Blue Fire', 'Galaxy', 'Blue Orb', 'White Orb', 'Black Orb', 'Ruby Orb', 'Gold', 'Amethyst', 'Gloomy', 'Fire & Ice'}
local jerseys = {'Default', 'Classic', 'Abstract', 'Hearts', 'Sprinkles', 'Checkerboard', 'Floral', 'Jacko', 'Snowflakes', 'Allstar', 'Sapphire', 'Emerald', 'Ruby', 'Diamond', 'Galaxy', 'Gold', 'Amethyst', 'Gloomy', 'Fire & Ice'}
local shoes = {'Default', 'Basketball', 'Cow', 'Cloudy', 'Smiley', 'Santa', 'Pink Camo', 'Magma', 'Minecraft', 'Money', 'Lightning', 'Allstar', 'Sapphire', 'Emerald', 'Ruby', 'Diamond', 'Galaxy', 'Gold', 'Amethyst', 'Gloomy', 'Fire & Ice'}

-- functions
function autoDunk()
    spawn(function () 
        while wait() do
            if not getgenv().autoDunk then lp.Character.HumanoidRootPart.Anchored = false break end
            lp.Character.Humanoid.WalkSpeed = 100
            lp.Character.HumanoidRootPart.CFrame = ws.BlueGoal1.Score.CFrame + Vector3.new(getgenv().autoDunkDistance,-10,0)
            lp.Character.HumanoidRootPart.Anchored = false        
            wait(0.5)
            lp.Character.HumanoidRootPart.CFrame = ws.BlueGoal1.Score.CFrame + Vector3.new(getgenv().autoDunkDistance,-10,0) 
            lp.Character.Ball.ServerEvent:FireServer('Accuracy', 1)
            lp.Character.Ball.ServerEvent:FireServer('Start')
            wait(1)
            for i=1,5 do
                lp.Character.HumanoidRootPart.CFrame = ws.BlueGoal1.Score.CFrame + Vector3.new(0,-1,0)
                wait(0.2)
                lp.Character.HumanoidRootPart.Anchored = true
            end
            
        end
    end)
end

function autoUpgrade()
    spawn(function () 
        while wait() do
            if not getgenv().autoUpgrade then break end
            serverEvent:FireServer('Dunk')
        end
    end)
end

function autoBalls()
    spawn(function () 
        while wait() do
            if not getgenv().autoBalls then break end
            for i, v in pairs(balls) do
                serverEvent:FireServer('Buy', 'Balls', v)
                wait(0.1)
            end
        end
    end)
end

function autoJerseys()
    spawn(function () 
        while wait() do
            if not getgenv().autoJerseys then break end
            for i, v in pairs(jerseys) do
                serverEvent:FireServer('Buy', 'Jerseys', v)
                wait(0.1)
            end
        end
    end)
end

function autoShoes()
    spawn(function () 
        while wait() do
            if not getgenv().autoShoes then break end
            for i, v in pairs(balls) do
                serverEvent:FireServer('Buy', 'Shoes', v)
                wait(0.1)
            end
        end
    end)
end

function autoRebirth()
    spawn(function () 
        while wait() do
            if not getgenv().autoRebirth then break end
            serverEvent:FireServer('Rebirth')
        end
    end)
end

-- GUI
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow('DUNKING MEISTER') 

local f = w:CreateFolder('farm👨‍🌾')
local d = w:CreateFolder('Demolish💥')

f:Toggle('Auto Dunk',function(bool)
    getgenv().autoDunk = bool
    if bool then 
        autoDunk()
    end
end)

f:Slider('Auto Dunk Distance',{
    min = 10,
    max = 500,
    precise = false
},function(value)
    getgenv().autoDunkDistance = value 
    print(autoDunkDistance)
end)

f:Toggle('Auto Upgrade',function(bool)
    getgenv().autoUpgrade = bool
    if bool then 
        autoUpgrade()
    end
end)

f:Toggle('Auto Balls',function(bool)
    getgenv().autoBalls = bool
    if bool then 
        autoBalls()
    end
end)

f:Toggle('Auto Jerseys',function(bool)
    getgenv().autoJerseys = bool
    if bool then 
        autoJerseys()
    end
end)

f:Toggle('Auto Shoes',function(bool)
    getgenv().autoShoes = bool
    if bool then 
        autoShoes()
    end
end)

f:Toggle('Auto Rebirth',function(bool)
    getgenv().autoRebirth = bool
    if bool then 
        autoRebirth()
    end
end)


d:Button('Teleporters',function()
    if ws.Teleporters then ws.Teleporters:Destroy() end
end)