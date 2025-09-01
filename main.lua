local Luna = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/luna", true))()
local Window = Luna:CreateWindow({
    Name = "Luna Example Window", -- This Is Title Of Your Window
    Subtitle = nil, -- A Gray Subtitle next To the main title.
    LogoID = "103421448242769", -- The Asset ID of your logo. Set to nil if you do not have a logo for Luna to use.
    LoadingEnabled = true, -- Whether to enable the loading animation. Set to false if you do not want the loading screen or have your own custom one.
    LoadingTitle = "Luna Interface Suite", -- Header for loading screen
    LoadingSubtitle = "by Nebula Softworks", -- Subtitle for loading screen

    ConfigSettings = {
        RootFolder = nil, -- The Root Folder Is Only If You Have A Hub With Multiple Game Scripts and u may remove it. DO NOT ADD A SLASH
        ConfigFolder = "Big Hub" -- The Name Of The Folder Where Luna Will Store Configs For This Script. DO NOT ADD A SLASH
    },

    KeySystem= false, -- As Of Beta 6, Luna Has officially Implemented A Key System!
    KeySettings = {
        Title = "Luna Example Key",
        Subtitle = "Key System",
        Note = "Best Key System Ever! Also, Please Use A HWID Keysystem like Pelican, Luarmor etc. that provide key strings based on your HWID since putting a simple string is very easy to bypass",
        SaveInRoot = false,
        SaveKey = true,
        Key = {"Example Key"},
        SecondAction = {
            Enabled = true,
            Type = "Link",
            Parameter = ""
        }
    }
})

-- 🔹 Auto-load all .lua files in the "tabs" folder as tabs
local TabsFolder = "tabs"
if isfolder(TabsFolder) then
    local files = listfiles(TabsFolder)
    for _, file in ipairs(files) do
        if file:sub(-4) == ".lua" then
            local tabName = file:match("([^/\\]+)%.lua$") -- filename without extension
            local success, result = pcall(function()
                return loadfile(file)()
            end)

            if success then
                -- Create tab with filename as title
                local Tab = Window:CreateTab(tabName)

                -- If the tab file returned a function, call it with the Tab object
                if typeof(result) == "function" then
                    result(Tab)
                end
            else
                warn("Failed to load tab: " .. file .. " - " .. tostring(result))
            end
        end
    end
else
    warn("Tabs folder not found: " .. TabsFolder)
end
