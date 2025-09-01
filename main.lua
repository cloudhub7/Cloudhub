-- main.lua (single file, self-contained)

-- Load Luna library
local Luna = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/luna", true))()

-- Create the main window
local Window = Luna:CreateWindow({
    Name = "Cloudhub",
    Subtitle = nil,
    LogoID = "103421448242769",
    LoadingEnabled = true,
    LoadingTitle = "Cloudhub Interface Suite",
    LoadingSubtitle = "by Cloudhub",
    ConfigSettings = {
        RootFolder = nil,
        ConfigFolder = "Cloudhub"
    },
    KeySystem = false
})

-- Example Tab inside main.lua
local Tab = Window:CreateTab("Main")

-- Add buttons, sliders, toggles, etc. directly here
Tab:CreateButton({
    Name = "Example Button",
    Callback = function()
        print("Button clicked!")
    end
})

Tab:CreateToggle({
    Name = "Example Toggle",
    Default = false,
    Callback = function(state)
        print("Toggle state:", state)
    end
})

Tab:CreateSlider({
    Name = "Example Slider",
    Min = 0,
    Max = 100,
    Default = 50,
    Callback = function(value)
        print("Slider value:", value)
    end
})
