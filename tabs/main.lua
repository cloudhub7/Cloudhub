-- tabs/main.lua
return function(Window)
    local Tab = Window:CreateTab({
        Name = "Main",
        Icon = "view_in_ar",
        ImageSource = "Material",
        ShowTitle = true
    })

    Tab:CreateButton({
        Name = "Start",
        Callback = function()
            print("Main tab: Start button clicked")
        end
    })

    Tab:CreateToggle({
        Name = "Enable Feature",
        Default = false,
        Callback = function(state)
            print("Main tab toggle state:", state)
        end
    })
end
