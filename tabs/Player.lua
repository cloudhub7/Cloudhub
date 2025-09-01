-- tabs/player.lua
return function(Window)
    local Tab = Window:CreateTab({
        Name = "Player",
        Icon = "person",
        ImageSource = "Material",
        ShowTitle = true
    })

    -- Example button
    Tab:CreateButton({
        Name = "Reset Character",
        Callback = function()
            local player = game.Players.LocalPlayer
            if player.Character then
                player.Character:BreakJoints()
            end
            print("Player tab: Reset Character clicked")
        end
    })

    -- Example toggle
    Tab:CreateToggle({
        Name = "God Mode",
        Default = false,
        Callback = function(state)
            local player = game.Players.LocalPlayer
            if player.Character and player.Character:FindFirstChild("Humanoid") then
                if state then
                    player.Character.Humanoid.MaxHealth = math.huge
                    player.Character.Humanoid.Health = math.huge
                else
                    player.Character.Humanoid.MaxHealth = 100
                    player.Character.Humanoid.Health = 100
                end
            end
            print("Player tab god mode:", state)
        end
    })

    -- Example slider
    Tab:CreateSlider({
        Name = "WalkSpeed",
        Min = 16,
        Max = 200,
        Default = 16,
        Callback = function(value)
            local player = game.Players.LocalPlayer
            if player.Character and player.Character:FindFirstChild("Humanoid") then
                player.Character.Humanoid.WalkSpeed = value
            end
            print("Player tab WalkSpeed:", value)
        end
    })
end
