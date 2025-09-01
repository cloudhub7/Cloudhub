-- tabs/settings.lua

return function(Window)
    local Tab = Window:CreateTab({
        Name = "Settings",
        Icon = "settings",
        ImageSource = "Material",
        ShowTitle = true
    })

    -- Example slider
    Tab:CreateSlider({
        Name = "Volume",
        Min = 0,
        Max = 100,
        Default = 50,
        Callback = function(value)
            print("Settings tab slider value:", value)
        end
    })

    -- Example button
    Tab:CreateButton({
        Name = "Reset Settings",
        Callback = function()
            print("Settings tab: Reset clicked")
        end
    })
end
