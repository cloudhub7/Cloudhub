-- tabs/main.lua
return function(Window)
    local Tab = Window:CreateTab({
        Name = "Main",
        Icon = "view_in_ar",
        ImageSource = "Material",
        ShowTitle = true
    })

    -- Example button
    Tab:CreateButton({
        Name = "Start",
        Callback = function()
            print("Main tab: Start button clicked")
        end
    })

    -- Example toggle
    Tab:CreateToggle({
        Name = "Enable Feature",
        Default = false,
        Callback = function(state)
            print("Main tab toggle state:", state)
        end
    })

    -- Example slider
    Tab:CreateSlider({
        Name = "Volume",
        Min = 0,
        Max = 100,
        Default = 50,
        Callback = function(value)
            print("Main tab slider value:", value)
        end
    })

    -- Minimize button
    local guiVisible = true
    Tab:CreateButton({
        Name = "Minimize GUI",
        Callback = function()
            guiVisible = not guiVisible
            Window:SetVisibility(guiVisible)
            print("GUI visibility:", guiVisible)
        end
    })
end
