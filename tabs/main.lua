-- tabs/main.lua

-- Return a function that takes the Window object
return function(Window)
    local Tab = Window:CreateTab({
        Name = "main",
        Icon = "view_in_ar",
        ImageSource = "Material",
        ShowTitle = true
    })

    -- Example button
    Tab:CreateButton({
        Name = "Example Button",
        Callback = function()
            print("Button clicked in main tab!")
        end
    })

    -- Example toggle
    Tab:CreateToggle({
        Name = "Example Toggle",
        Default = false,
        Callback = function(state)
            print("Toggle state:", state)
        end
    })
end
