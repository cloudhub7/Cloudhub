-- tabs/main.lua

-- Make sure 'Window' exists (passed from main.lua)
-- Create the main tab
local Tab = Window:CreateTab({
    Name = "main",
    Icon = "view_in_ar",
    ImageSource = "Material",
    ShowTitle = true
})

-- Example button inside the tab
Tab:CreateButton({
    Name = "Example Button",
    Callback = function()
        print("Button clicked in main tab!")
    end
})

-- Example toggle inside the tab
Tab:CreateToggle({
    Name = "Example Toggle",
    Default = false,
    Callback = function(state)
        print("Toggle state:", state)
    end
})
