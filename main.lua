-- main.lua (Cloudhub entry point)

-- Load Luna library
local Luna = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/luna", true))()

-- Create the main window
local Window = Luna:CreateWindow({
    Name = "Cloudhub",
    Subtitle = nil,
    LogoID = "103421448242769", -- replace with your logo ID or nil
    LoadingEnabled = true,
    LoadingTitle = "Cloudhub Interface Suite",
    LoadingSubtitle = "by Cloudhub",
    ConfigSettings = {
        RootFolder = nil,
        ConfigFolder = "Cloudhub"
    },
    KeySystem = false
})

-- Function to load tabs dynamically
local function loadTab(path)
    local url = "https://raw.githubusercontent.com/cloudhub7/Cloudhub/main/" .. path
    local success, chunk = pcall(function()
        return loadstring(game:HttpGet(url, true))
    end)

    if success and typeof(chunk) == "function" then
        local ok, err = pcall(chunk(), Window)
        if not ok then
            warn("Error running tab "..path..": "..tostring(err))
        end
    else
        warn("Failed to load tab: "..path.." ("..tostring(chunk)..")")
    end
end

-- Load the main tab
loadTab("tabs/main.lua")
