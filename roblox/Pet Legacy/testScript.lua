local weaponDamage = 100;
function calculateDamage()
    local multiplier = 1.2

end

-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "Basic",
    [2] = "fe3c7967970948289bde7562ffa27f95"
}

game:GetService("ReplicatedStorage").Functions.Combat.UseCapsule:InvokeServer(unpack(args))


getgenv().autoCrystal = false
getgenv().autoChest = true;

function autoChests() 
    spawn(function () 
        while wait(5) do
            if not autoChest then break end
            game:GetService("ReplicatedStorage").Functions.Combat.SendFighters:FireServer("JungleChest")
        end
    end)
end
autoChests()
function autoCrystalFunc()
    while autoCrystal do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-635, -14, 2057)
        wait(1)
        game:GetService("ReplicatedStorage").Functions.Combat.SendFighters:FireServer("Crystal1")
        wait(4)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-759, -14, 2140)
        wait(1)
        game:GetService("ReplicatedStorage").Functions.Combat.SendFighters:FireServer("Crystal2")
        wait(4)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-571, 13, 1960)
        wait(1)
        game:GetService("ReplicatedStorage").Functions.Combat.SendFighters:FireServer("Crystal3")
        wait(4)
    end
end
autoChests()
autoCrystalFunc()

-- CHEST AUTOFARMER (PUT IN AUTOEXEC)
-- MADE BY BART :D

-- Toggler
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
function teleportTo(x, y, z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z);
end
-- Teleport to chest once character is loaded and put on anti AFK
while wait() do
    print("Checking for player")
    if game.Players.LocalPlayer.Character.HumanoidRootPart then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1247, -46, 2433) 
        antiAFK()
        print("Player teleported!")
        break
    end
end

-- Once on teleport start farming
local remoteFired = false
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



local remoteFired = false;
function attackJungleChest(JungleChestExists)
    if JungleChestExists and not remoteFired then
        game:GetService("ReplicatedStorage").Functions.Combat.SendFighters:FireServer("JungleChest")
        remoteFired = true;
    elseif not JungleChestExists
        remoteFired = false;
    end
end



function autoChests() 
    spawn(function () 
        while wait(5) do
            if not autoChest then break end
            game:GetService("ReplicatedStorage").Functions.Combat.SendFighters:FireServer("JungleChest")
        end
    end)
end


-- MAOI AUTOFARMER (PUT IN AUTOEXEC)
-- MADE BY BART :D
if not game:IsLoaded() then

    game.Loaded:Wait()
        
end
-- Toggler
print("Initializing.")
wait(10)
getgenv().autoMoai = true;
-- Functions
function antiAFK()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end

function teleportTo(x, y, z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z);
end

function getAllEggs(part)
    for i, v in pairs(game:GetService("Workspace").Map.Eggs:GetChildren()) do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Eggs.3
        
    end
end
teleportTo(274, 18, 66)
wait(2)
teleportTo(136, 18, 306)
wait(2)
teleportTo(633, 22, 76)
wait(2)
teleportTo(301, 19, 1027)
wait(2)
teleportTo(530, 23, 1325)
wait(2)
teleportTo(382, 17, 1355)
wait(2)
teleportTo(24, 3, 1460)
wait(2)
teleportTo(-70, 12, 1343)
wait(2)
teleportTo(-381, 50, 1544)
wait(2)
teleportTo(286, 19, 73)
wait(2)
1717, 50, 453
268, 18, 145
antiAFK()



-- Once on teleport start farming
local remoteFired = false
function startMoai()
    while wait(1) do
        -- Stop on toggle
        if not autoMoai then break end
        -- If junglechest exists fire 1 remote
        if game:GetService("Workspace").Enemies:FindFirstChild("Moai") and not remoteFired then
            game:GetService("ReplicatedStorage").Functions.Combat.SendFighters:FireServer("Moai")
            remoteFired = true
        elseif not game:GetService("Workspace").Enemies:FindFirstChild("Moai") then
            remoteFired = false
        end
    end
end

startMoai()




-- chest

-- Script generated by SimpleSpy - credits to exx#9394
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "SFX",
    [2] = false
}

game:GetService("ReplicatedStorage").Functions.Settings.setSetting:FireServer(unpack(args))

-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "Music",
    [2] = false
}

game:GetService("ReplicatedStorage").Functions.Settings.setSetting:FireServer(unpack(args))


game:GetService("ReplicatedStorage").Functions.Settings.Verify:InvokeServer("bartMaarschalk")


local args = {
    [1] = "Cat"
}

game:GetService("ReplicatedStorage").Functions.Progress.PickStarter:FireServer("Cat")

-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "Intro"
}

game:GetService("ReplicatedStorage").Functions.Quests.StartQuest:FireServer("Intro")



game:GetService("ReplicatedStorage").Functions.Trade.TradeRequest:InvokeServer(game:GetService("Players").bartvanm)

-- Script generated by SimpleSpy - credits to exx#9394


game:GetService("ReplicatedStorage").Functions.Trade.SetAccepted:FireServer(true)

-- Script generated by SimpleSpy - credits to exx#9394

game:GetService("ReplicatedStorage").Functions.Trade.AnswerRequest:InvokeServer(true)


-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "1"
}

game:GetService("ReplicatedStorage").Functions.Easter.FindEgg:FireServer(unpack(args))

-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = 3
}

game:GetService("ReplicatedStorage").Functions.Areas.BuyArea:FireServer(2)
game:GetService("ReplicatedStorage").Functions.Areas.BuyArea:FireServer(3)
game:GetService("ReplicatedStorage").Functions.Areas.BuyArea:FireServer(4)
game:GetService("ReplicatedStorage").Functions.Areas.BuyArea:FireServer(5)


-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "84d7c1cd5aad4bd5bb2943c8fc0d47ab"
}

game:GetService("ReplicatedStorage").Functions.Pets.Unequip:FireServer("84d7c1cd5aad4bd5bb2943c8fc0d47ab")

-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = {
        [1] = "ecbdb9205a4d4c8383fa17f823eb0500",
        [2] = "775493d410254ea9b85b73d84f902953",
        [3] = "de155a1b7cfd4d55bb16cedbe8177de7",
        [4] = "b5a3e049c6f04bd0ba236904b660e864",
        [5] = "c0dede9d5be6448c9dbc7aacd90aef97",
        [6] = "2eec51a6eb2744859cca6ee6d996b631",
        [7] = "e9e46e660e7743ad914a307dcf9c9eb2",
        [8] = "50d50cba0a7c4bd29cebe2ad4fc56e30",
        [9] = "84d7c1cd5aad4bd5bb2943c8fc0d47ab"
    }
}

game:GetService("ReplicatedStorage").Functions.Pets.SetEquipped:FireServer(unpack(args))

-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "e2f878902c2d44b8828bfb2d3e5d703e"
}

game:GetService("ReplicatedStorage").Functions.Pets.Equip:FireServer(unpack(args))

-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "Easter"
}

game:GetService("ReplicatedStorage").Functions.Areas.SetLocation:FireServer(unpack(args))

-- Decompiled with the Synapse X Luau decompiler.

local PetModule = require(game:GetService("ReplicatedStorage").PetModule)


print("--UPVALUES--")
for i,v in pairs(getupvalues(PetModule.getReward)) do
	print(i,v);
end

print("---")
print("--CONSTANTS--")
for i,v in pairs(getconstants(PetModule.getReward)) do
	print(i,v);
end
setconstant(PetModule.getReward, 5, 80)

PetModule.getChance = function() return 1 end

local petz = game:GetService("Workspace").Pets["34441bd922164cb89355ab05d892a24a"]headGui.Rarity.Value
game:GetService("StarterGui").World.EasterShop.Pets["Easter Fox"]

print(petz)
local equip = game.ReplicatedStorage.Events.PetCommand
local data = function()
    return game.ReplicatedStorage.Events.UpdateData:InvokeServer()
end

print(data);

local get = {
    pets = function()
        local e,f = data(),{}
        for i,v in next,e.PetsInventory do
            v.id = i
            if not e.PetsEquipped[i] then f[i] = v end
        end
        return f
    end,
    data = function()
        local e = {};for i,v in next,game.ReplicatedStorage.Pets:GetChildren() do
            e[v.Name] = v.CoinsMulti.Value+v.CrownsMulti.Value+v.StrengthMulti.Value
        end;return e
    end,
    equipped = function()
        local e,f = data(),{}
        for i,v in next,e.PetsInventory do
            v.id = i
            if e.PetsEquipped[i] then f[i] = v end
        end
        return f
    end,
    bybest = function(self)
        local e,f,l = self.data(),nil
        for i,v in next,self.pets() do
            if l and e[v.PetName] > e[l.PetName] then l = v
            elseif not l then l = v end
        end;return l
    end,
    byworst = function(self)
        local e,f,l = self.data(),nil
        for i,v in next,self.equipped() do
            if l and e[v.PetName] < e[l.PetName] then l = v
            elseif not l then l = v end
        end;return l
    end,
    maxpets = function()
        local i = 0
        for _,_ in next,data().PetsEquipped do
            i = i + 1
        end;return i
    end
}

print(get.pets())

while wait(2) do -- 2 secs loop, i still did not tried to detect pet changes, probly sometime
    local max,best,worst = get.maxpets(),get:bybest(),get:byworst()
    if get.data()[best.PetName] > get.data()[worst.PetName] then
        if data().MaxPetsEquipped >= max then
            equip:FireServer(worst.id, 'EquipToggle')
        end
    end
    equip:FireServer(best.id, 'EquipToggle')
end



local v1 = {};
local l__ReplicatedStorage__2 = game.ReplicatedStorage;
local l__PhysicsService__3 = game:GetService("PhysicsService");
v1.MaxDistance = 60;
function v1.createMovers(p1, p2)
	local v4 = Instance.new("BodyPosition");
	v4.MaxForce = Vector3.new(40000000000, 4000000000, 4000000000);
	v4.P = 100000;
	v4.Parent = p2.PrimaryPart;
	local v5 = Instance.new("BodyGyro");
	v5.MaxTorque = Vector3.new(40000000000, 400000000000, 4000000000);
	v5.P = 350000;
	v5.Parent = p2.PrimaryPart;
end;
function v1.makeModel(p3, p4, p5)
	if p5 then
		p4 = p4 .. "_" .. p5;
	end;
	local v6 = l__ReplicatedStorage__2.Assets.Pets[p4]:Clone();
	v1:createMovers(v6);
	v6:SetAttribute("Variation", p5);
	for v7, v8 in pairs(v6:GetDescendants()) do
		if v8:IsA("BasePart") then

		end;
	end;
	return v6;
end;
local u1 = require(l__ReplicatedStorage__2.Items);
function v1.getChance(p6, p7, p8, p9)
	if string.match(p7, "Robux") then
		return 1;
	end;
	return math.clamp(math.ceil(p9 * u1.Capsules[p7].Chance[u1.Pets[p8].Rarity] * 100) / 100, 0, 1);
end;
function v1.getHealing(p10, p11)
	local v9 = u1.Pets[p11];
	return 0.2;
end;
function v1.getReward(p12, p13)
	local v10 = u1.Pets[p13];
	return v10.Rarity * 8 * u1.Areas[v10.Area].CoinGain;
end;
function v1.mergeCost(p14, p15)
	return u1.Pets[p15].Rarity * 60;
end;
local u2 = require(l__ReplicatedStorage__2.GameModule);
local u3 = {
	Red = Color3.fromRGB(255, 71, 87), 
	Yellow = Color3.fromRGB(254, 156, 11), 
	Green = Color3.fromRGB(40, 175, 99)
};
local l__TweenService__4 = game:GetService("TweenService");
function v1.healthBar(p16, p17, p18, p19)
	local l__Bar__11 = p17.headGui.HealthBar.Bar;
	local v12 = p18 / p19;
	local l__Health__13 = p17.headGui.HealthBar.Health;
	local v14 = u2:Affix(math.floor(p18));
	l__Health__13.AnchorPoint = Vector2.new(0.5 + (#v14 - 3) * 0.05, 0.5);
	l__Health__13.Label.Text = v14;
	if v12 >= 0.5 then
		local v15 = u3.Yellow:Lerp(u3.Green, (v12 - 0.5) * 2);
	else
		v15 = u3.Red:Lerp(u3.Yellow, v12 * 2);
	end;
	l__TweenService__4:Create(l__Bar__11, u2.UI:getInfo(0.3, "Elastic", "Out"), {
		BackgroundColor3 = v15
	}):Play();
	l__TweenService__4:Create(l__Bar__11.Gradient, u2.UI:getInfo(0.3, "Elastic", "Out"), {
		Offset = Vector2.new(-0.5 + v12, 0)
	}):Play();
end;
function v1.setLevel(p20, p21, p22)
	local v16 = math.floor(p22);
	p21.Level.Label.Text = tostring(v16);
	l__TweenService__4:Create(p21.Level.Bar.Gradient, u2.UI:getInfo(0.1, "Quad", "In"), {
		Offset = Vector2.new(0, -1 * (p22 - v16) + 0.5)
	}):Play();
end;
function v1.giveXP(p23, p24, p25)
	local v17 = p24:GetAttribute("Level");
	local v18 = p25 / (0.5 * (v17 + 5) ^ 2);
	if p24:GetAttribute("Variation") == "Gold" then
		v18 = v18 / 4;
	end;
	p24:SetAttribute("Level", (math.clamp(v17 + v18, 0, 100)));
end;
function v1.avgLevel(p26, p27)
	local v19 = 0;
	for v20, v21 in pairs(p27) do
		v19 = v19 + 0.5 * (v21 + 5) ^ 2;
	end;
	return (2 * (v19 / #p27)) ^ 0.5 - 5;
end;
function v1.createHeadGui(p28, p29, p30, p31)
	local v22 = l__ReplicatedStorage__2.Assets.Overheads[p30]:Clone();
	v22.Name = "headGui";
	v22.Parent = p29;
	v22.Adornee = p29.PrimaryPart;
	if p31 then
		local v23 = u1.Pets[p31];
		local v24 = u1.Rarities[v23.Rarity];
		v22.Rarity.Text = v24.Name;
		v22.Rarity.TextColor3 = v24.Colors.Bright;
		v22.PetName.Text = p31;
		local l__MaxHealth__25 = v23.MaxHealth;
		v1:healthBar(p29, l__MaxHealth__25, l__MaxHealth__25);
	end;
	return v22;
end;
function v1.hipheight(p32, p33)
	local v26, v27 = p33:GetBoundingBox();
	local v28 = (p33.PrimaryPart.CFrame - (v26 - v27 * 0.5).p).Y;
	if p33:GetAttribute("Name") and u1.Pets[p33:GetAttribute("Name")].Fly then
		v28 = v28 + 3;
	end;
	return v28 - 0.1;
end;
local u5 = {};
local l__Pets__6 = workspace.Pets;
local l__Enemies__7 = workspace.Enemies;
function v1.getHeight(p34, p35, p36, p37, p38)
	local v29 = nil;
	local l__Y__30 = p38:GetExtentsSize().Y;
	local v31 = Vector3.new(p35, p36 + l__Y__30, p37);
	local v32 = 1;
	while true do
		local v33 = RaycastParams.new();
		v33.FilterDescendantsInstances = { p38, u5, l__Pets__6, l__Enemies__7 };
		v29 = workspace:Raycast(v31, Vector3.new(0, -150, 0), v33);
		v31 = v31 + Vector3.new(0, l__Y__30 * 0.5, 0);
		v32 = v32 + 1;
		if v29 then
			break;
		end;
		if v32 == 15 then
			break;
		end;	
	end;
	if not v29 then
		return;
	end;
	return v29.Position.Y + p38:GetAttribute("HipHeight");
end;
function playerSetup(p39)
	if p39.Character then
		table.insert(u5, p39.Character);
	end;
	p39.CharacterAdded:Connect(function(p40)
		table.insert(u5, p40);
	end);
end;
for v34, v35 in pairs(game.Players:GetPlayers()) do
	playerSetup(v35);
end;
game.Players.PlayerAdded:Connect(playerSetup);
return v1;



local function moveTo(humanoid, targetPoint, andThen)
	local targetReached = false
 
	-- listen for the humanoid reaching its target
	local connection
	connection = humanoid.MoveToFinished:Connect(function(reached)
		targetReached = true
		connection:Disconnect()
		connection = nil
		if andThen then
			andThen()
		end
	end)
 
	-- start walking
	humanoid:MoveTo(targetPoint)
 
	-- execute on a new thread so as to not yield function
	spawn(function()
		while not targetReached do
			-- does the humanoid still exist?
			if not (humanoid and humanoid.Parent) then
				break
			end
			-- has the target changed?
			if humanoid.WalkToPoint ~= targetPoint then
				break
			end
			-- refresh the timeout
			humanoid:MoveTo(targetPoint)
			wait(6)
		end
		
		-- disconnect the connection if it is still connected
		if connection then
			connection:Disconnect()
			connection = nil
		end
	end)
end

moveTo(game.Players.LocalPlayer.Character.Humanoid, [1716, 50, 449])

game:GetService("Workspace").Map.Areas



local data = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.GetInitDataRequest:InvokeServer()

print(data[1])

game:GetService("ReplicatedStorage").GameModulegame:GetService("ReplicatedStorage").GameModule



local data = game:GetService("ReplicatedStorage").Functions.Core.GetData:InvokeServer()
for key, value in pairs(data.pets) do
    print(key, " -- ", value)
    for i,v in pairs(value) do
        print(i, " -- ", v)
    end
end
print(data)
print("=======")
for key, value in pairs(data) do
    print(key, " -- ", value)
end
print("=======")

for i,v in pairs(data.Equipped) do
    print(i, " -- ", v)
end
for key, value in pairs(data.pets) do
    print(key, " -- ", value)
    for i,v in pairs(value) do
        print(i, " -- ", v)
    end
end

-- Script generated by SimpleSpy - credits to exx#9394

local initData = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.GetInitDataRequest:InvokeServer()

for i,v in pairs(initData) do
    print(i, " -- ", v)
end
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = "XpBoost"
}

local edges = game:GetService("ReplicatedStorage").Functions.Areas.GetEdges:InvokeServer()

for i,v in pairs(priceC) do
    print(i, " -- ", v)
end

local battlesScript = game:GetService("Workspace").bartvanm.Battles

battlesScript:sendPets()

-- LETS GO
wait(20)

local plr1 = game.Players.LocalPlayer.Character
local plr2 = game.Workspace:FindFirstChild("bartvanm")

plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.new(0,2,0)

spawn(function()
    while true do 
        local args = {
            [1] = "Robux",
            [2] = "919736b5c02647cba572d8becfc8fab9"
        }
        game:GetService("ReplicatedStorage").Functions.Combat.UseCapsule:InvokeServer(unpack(args))
        wait(1)
    end
end)

local data = game:GetService("ReplicatedStorage").Functions.Core.GetData:InvokeServer()
for hex,pet in pairs(data.Pets) do
        game:GetService("ReplicatedStorage").Functions.Pets.Delete:FireServer(hex)
    end
end