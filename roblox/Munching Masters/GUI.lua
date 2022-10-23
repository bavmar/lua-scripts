repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
-- Booleans
getgenv().autoAction    = false
getgenv().autoEat       = false
getgenv().autoDevour    = false
getgenv().autoPunch     = false
getgenv().autoStomp     = false
getgenv().autoBellyFlop = false
getgenv().autoSell      = false
getgenv().autoCoins     = false
getgenv().autoFood      = false
getgenv().autoStomach   = false
getgenv().autoSeasoning = false
getgenv().autoSkins     = false
getgenv().autoKing      = false
getgenv().autoRank      = false
getgenv().autoTpKill    = false

local data = game:GetService('ReplicatedStorage').Functions.Data.GetPlayer:InvokeServer()

-- locals
local totalPlayersKilled = 0

-- Paths
local rm = game:GetService('ReplicatedStorage').Events.Player
local ws = game:GetService('Workspace')

-- Player
local lp = game.Players.LocalPlayer

-- Arrays
local foods = {'Bacon', 'Pizza', 'Watermelon', 'Hotdog', 'Pie', 'Cookie', 'Pancakes', 'Donut', 'Ice Cream', 'Sugar Cookie', 'Turkey Leg', 'Cake', 'Burger'}
local metabolisms = {'Slender', 'Skinny', 'Average', 'Pudgy', 'Big', 'Fat', 'Chunky', 'Hefty', 'Muffin Top', 'Huge', 'Giant', 'Massive', 'Enormous', 'Toxic', 'Colossal'}
local seasonings = {'None', 'Spicy', 'Glitter', 'Fire', 'Ice', 'Electric', 'Crystal', 'Golden', 'Radioactive', 'Galaxy', 'Alien', 'MLG', 'Rainbow', 'Diamond', 'Void'}
local codes = {'food', '50m', 'hungry', '2m', 'release', 'scotty', 'tofuu', 'BARO'}

-- Helper Functions
function touchInterest(part)
    firetouchinterest(lp.Character.HumanoidRootPart, part, 0)
    firetouchinterest(lp.Character.HumanoidRootPart, part, 1)
end

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

function tools(plr)
	if plr:FindFirstChildOfClass('Backpack'):FindFirstChildOfClass('Tool') or plr.Character:FindFirstChildOfClass('Tool') then
		return true
	end
end

function r15(plr)
	if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end

-- Spawn functions
function autoEat()
    spawn(function () 
        while wait() do
            if not getgenv().autoEat then break end
            rm.Eat:FireServer()
        end
    end)
end

function autoSell() 
    spawn(function () 
        while wait() do
            if not getgenv().autoSell then break end
            touchInterest(ws.SELL.Pad)
        end
    end)
end

function autoCoins() 
    spawn(function () 
        while wait() do
            if not getgenv().autoCoins then break end
            touchInterest(ws.Giver)
        end
    end)
end

function autoKing() 
    spawn(function () 
        while wait() do
            if not getgenv().autoKing then break end
            touchInterest(ws.King.Area)
        end
    end)
end

function autoRank()
    spawn(function () 
        while wait() do
            if not getgenv().autoRank then break end
            rm.UpgradeRank:FireServer()
        end
    end)
end

-- Attacks
function autoPunch() 
    spawn(function () 
        while wait() do
            if not getgenv().autoPunch then break end
            rm.Action:FireServer('Punch')
        end
    end)
end

function autoStomp() 
    spawn(function () 
        while wait() do
            if not getgenv().autoStomp then break end
            rm.Action:FireServer('Stomp')
        end
    end)
end

function autoDevour()  
    spawn(function () 
        while wait() do
            if not getgenv().autoDevour then break end
            rm.Action:FireServer('Devour')
        end
    end)
end

function autoBellyFlop() 
    spawn(function () 
        while wait() do
            if not getgenv().autoBellyFlop then break end
            rm.Action:FireServer('Belly Flop')
        end
    end)
end

function autoTpKill()
    spawn(function ()
        while wait() do
            if getgenv().autoTpKill then
                for i, v in pairs(game.Players:GetPlayers()) do
                    if not getgenv().autoTpKill then break end
                    if v.Name ~= lp.Name then
                        local playerLoaded = lp.Character or lp.CharacterAdded:Wait()
                        local playerHumanoidLoaded = playerLoaded:WaitForChild('Humanoid')
                        repeat wait()
                        rm.Action:FireServer('Punch')
                        if v.Character ~= nil and playerHumanoidLoaded and v.Character.HumanoidRootPart ~= nil then 
                            lp.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,0)
                        end
                        until v.Character == nil or v.Character.Humanoid.Health <= 0 or v.Character.HumanoidRootPart.CFrame == nil or lp.Character.HumanoidRootPart.CFrame == nil or getgenv().autoTpKill == false
                        totalPlayersKilled += 1
                        print(totalPlayersKilled)
                    else
                        wait(0.1)
                        print('No humanoid found!, switching to other player..', v.Name)
                    end
                end
            end
        end
    end)
end

-- Library
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow('Munching Meister!') -- Creates the window

local farming = w:CreateFolder('Farming')
local fighting = w:CreateFolder('Fighting')
local teleport = w:CreateFolder('Teleport')
local destroy = w:CreateFolder('Destroy')
local misc = w:CreateFolder('Miscellaneous')
local credits = w:CreateFolder('Credits')

farming:Toggle('Auto Eat',function(bool)
    getgenv().autoEat = bool
    if bool then 
        autoEat()
    end
end)

farming:Toggle('Auto Sell',function(bool)
    getgenv().autoSell = bool
    if bool then 
        autoSell();
    end
end)

farming:Toggle('Auto Coins',function(bool)
    getgenv().autoCoins = bool
    if bool then 
        autoCoins();
    end
end)

farming:Toggle('Auto King',function(bool)
    getgenv().autoKing = bool
    if bool then 
        autoKing();
    end
end)

farming:Toggle('Auto Rank',function(bool)
    getgenv().autoRank = bool
    if bool then 
        autoRank();
    end
end)

farming:Button('Buy Lucky Block',function()
    rm.BuyLucky:FireServer(5)
end)


fighting:Toggle('Auto Punch',function(bool)
    getgenv().autoPunch = bool
    if bool then 
        autoPunch();
    end
end)

fighting:Toggle('Auto Stomp',function(bool)
    getgenv().autoStomp = bool
    if bool then 
        autoStomp();
    end
end)

fighting:Toggle('Auto Devour',function(bool)
    getgenv().autoDevour = bool
    if bool then 
        autoDevour();
    end
end)

fighting:Toggle('Auto Belly',function(bool)
    getgenv().autoBellyFlop = bool
    if bool then 
        autoBellyFlop();
    end
end)

fighting:Toggle('Auto TP Kill',function(bool)
    getgenv().autoTpKill = bool
    if bool then 
        autoTpKill();
        lp.CharacterAdded:connect(function()
            autoTpKill();
        end)
    end
end)

fighting:Button('Set low hipheight',function()

end)

destroy:Button('DESTROY EVERYTHING',function()
    if ws.World then
        ws.World:Destroy()
    end
    if ws.Edible then
        ws.Edible:Destroy()
    end
end)

destroy:Button('Sell pads',function()
    if ws.SELL then
        ws.SELL:Destroy()
    end
end)

destroy:Button('Buy pads',function()
    if ws.BUY then
        ws.BUY:Destroy()
    end
end)

destroy:Button('Rank / Skin pads',function()
    if ws.OTHER then
        ws.OTHER:Destroy()
    end
end)

destroy:Button('QuestGiver',function()
    if ws.QuestGiver then
        ws.QuestGiver:Destroy()
    end
end)

destroy:Button('Portals',function()
    if ws.MGNPortals then
        ws.MGNPortals:Destroy()
    end
end)

destroy:Button('Barriers',function()
    if ws.MGNPortals then
        ws.Barriers:Destroy()
    end
end)

destroy:Button('Safezone',function()
    if ws.Safezone then
        ws.Safezone:Destroy()
    end
end)

misc:Button('Rejoin server',function()
    local TeleportService = game:GetService('TeleportService')
    local Players = game:GetService('Players')
    local LocalPlayer = Players.LocalPlayer
    
    local Rejoin = coroutine.create(function()
        local Success, ErrorMessage = pcall(function()
            TeleportService:TeleportToPrivateServer(game.PlaceId, LocalPlayer)
        end)
    
        if ErrorMessage and not Success then
            warn(ErrorMessage)
        end
    end)
    
    coroutine.resume(Rejoin)
end)

misc:Button('Redeem All Codes',function()
    for i, v in pairs(codes) do
        rm.Code:FireServer(v.toUpperCase())
        print(v)
    end
end)

misc:DestroyGui()

-- local T = getRoot(Players.LocalPlayer.Character)

-- local c=ws.CurrentCamera.CFrame
-- for i,v in pairs(game.Players:GetPlayers()) do
--     if v.Name:lower() == 'bartvanmV2' then
--         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,-100,0)
--         ws.CurrentCamera.CFrame=c*CFrame.Angles(math.rad(v.Character.HumanoidRootPart.CFrame.LookVector.X),math.rad(v.Character.HumanoidRootPart.CFrame.LookVector.Y),0)
--     end
-- end
-- FLYING = true
-- local BG = Instance.new('BodyGyro')
-- local BV = Instance.new('BodyVelocity')
-- BG.P = 9e4
-- BG.Parent = T
-- BV.Parent = T
-- BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)


-- BV.velocity = Vector3.new(0, 0, 0)
-- BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
-- Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true