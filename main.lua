-- main.lua (entry point)

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

-- Function to load a tab script and pass Window
local function loadTab(path)
    local url = "https://raw.githubusercontent.com/cloudhub7/Cloudhub/main/" .. path
    local success, func = pcall(function()
        return loadstring(game:HttpGet(url, true))
    end)

    if success and typeof(func) == "function" then
        func()(Window)  -- Pass Window to the loaded script
    else
        warn("Failed to load tab: "..path)
    end
end

-- Load the main tab
loadTab("tabs/main.lua")
