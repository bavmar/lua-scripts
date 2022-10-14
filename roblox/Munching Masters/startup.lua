-- credits:Label("bart#2465",{
--     TextSize = 14 -- Self Explaining
--     TextColor = Color3.fromRGB(255,255,255) -- Self Explaining
--     BgColor = Color3.fromRGB(69,69,69) -- Self Explaining
-- }) 

-- b:Toggle("Toggle",function(bool)
--     shared.toggle = bool
--     print(shared.toggle)
-- end)

-- b:Slider("Slider",{
--     min = 10 -- min value of the slider
--     max = 50 -- max value of the slider
--     precise = true -- max 2 decimals
-- },function(value)
--     print(value)
-- end)

-- b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
--     print(mob)
-- end)

-- b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
--     print("Yes")
-- end)

-- b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
--     print(color)
-- end)

-- b:Box("Box","number",function(value) -- "number" or "string"
--     print(value)
-- end)



--[[
How to refresh a dropdown:
1)Create the dropdown and save it in a variable
local yourvariable = b:Dropdown("Hi",yourtable,function(a)
    print(a)
end)
2)Refresh it using the function
yourvariable:Refresh(yourtable)
How to refresh a label:
1)Create your label and save it in a variable
local yourvariable = b:Label("Pretty Useless NGL",{
    TextSize = 25 -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255)
    BgColor = Color3.fromRGB(69,69,69)
})
2)Refresh it using the function
yourvariable:Refresh("Hello") It will only change the text ofc
]]


-- Library (new)
-- local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

-- local Window = Library.CreateLib("Munching Meister.", "Ocean")

-- local tabMain = Window:NewTab("Main")

-- local tabPlayer = Window:NewTab("Player")

-- local Section = tabMain:NewSection("Farming")

-- Section:NewLabel("LabelText")

-- Section:NewButton("ButtonText", "ButtonInfo", function()
--     print("Clicked")
-- end)

-- Section:NewToggle("ToggleText", "ToggleInfo", function(state)
--     if state then
--         print("Toggle On")
--     else
--         print("Toggle Off")
--     end
-- end)

-- Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
--     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
-- end)

-- Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
-- 	print(txt)
-- end)

-- Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
-- 	print("You just clicked the bind")
-- end)

-- Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
--     print(currentOption)
-- end)

-- Section:NewColorPicker("Color Text", "Color Info", Color3.fromRGB(0,0,0), function(color)
--     print(color)
--     -- Second argument is the default color
-- end)