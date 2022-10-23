repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character

getgenv().autoWins = true

-- Paths
local ws = game:GetService('Workspace')

-- Player
local lp = game.Players.LocalPlayer

-- Helper Functions
function touchInterest(part)
    firetouchinterest(lp.Character.HumanoidRootPart, part, 0)
    firetouchinterest(lp.Character.HumanoidRootPart, part, 1)
end

-- Spawn functions
function autoWins()
    spawn(function () 
        while wait() do
            if not getgenv().autoWins then break end
            for i=1,100 do
                touchInterest(ws.LoadedWorld.Track.Stage1K.Sign)
            end
        end
    end)
end

-- Library
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow('Race Clicker') -- Creates the window

local f = w:CreateFolder('Farming')

f:Toggle('Auto Wins',function(bool)
    getgenv().autoWins = bool
    if bool then 
        autoWins()
    end
end)

autoWins()

wait(10)
local tpservice= game:GetService("TeleportService")

tpservice:Teleport(game.PlaceId, lp)

