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

-- Function to load a file from GitHub
local function loadFromRepo(path)
    local url = "https://raw.githubusercontent.com/cloudhub7/Cloudhub/main/" .. path
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url, true))()
    end)
    if not success then
        warn("Failed to load: "..path.." - "..tostring(result))
    end
    return result
end

-- Load main tab from tabs/main.lua
loadFromRepo("tabs/main.lua")
