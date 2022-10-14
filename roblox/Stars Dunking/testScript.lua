getgenv().autoDunk = false

function
function autoDunk() 
    spawn(function () 
        while wait() do
            if not autoDunk then break end
            spawn(function()
                while wait(3.9) do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(252, 18, 75)
                game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(-102,-6,172))
                

game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(1716, 50, 449))

wait(5)

game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(1716, 50, 449))

wait(5)

game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(1716, 50, 449))

wait(5)

game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(1716, 50, 449))

wait(5)

game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(1716, 50, 449))

wait(5)
game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(1716, 50, 449))
                wait(3)
                local args = {
                    [1] = "Accuracy",
                    [2] = 1
                }
                
                game:GetService("Players").LocalPlayer.Character.Ball.ServerEvent:FireServer(unpack(args))
                local args = {
                    [1] = "Start"
                }
                
                game:GetService("Players").LocalPlayer.Character.Ball.ServerEvent:FireServer(unpack(args))
                
                wait(1.55)
                
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BlueGoal1.Score.CFrame + Vector3.new(6,0,0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BlueGoal1.Score.CFrame + Vector3.new(3,0,0)
                end
                end)
                spawn(function()
                while wait() do
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 40
                end
                end)


        end
    end)
end

autoDunk()
getgenv().autoDunk = true
function autoDunker()
		while autoDunk do
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-134,-6,171)
                game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(-90,-6,172))
                wait(1)
                local args = {
                    [1] = "Accuracy",
                    [2] = 1
                }
                game:GetService("Players").LocalPlayer.Character.Ball.ServerEvent:FireServer(unpack(args))
                local args = {
                    [1] = "Start"
                }
                game:GetService("Players").LocalPlayer.Character.Ball.ServerEvent:FireServer(unpack(args))
                wait(1.5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BlueGoal1.Score.CFrame + Vector3.new(6,0,0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").BlueGoal1.Score.CFrame + Vector3.new(3,0,0)
                wait(4)
		end
end
autoDunker()