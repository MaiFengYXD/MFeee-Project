--[[

$$\      $$\ $$$$$$$$\                              ~
$$$\    $$$ |$$  _____|                              
$$$$\  $$$$ |$$ |       $$$$$$\   $$$$$$\   $$$$$$\  
$$\$$\$$ $$ |$$$$$\    $$  __$$\ $$  __$$\ $$  __$$\ 
$$ \$$$  $$ |$$  __|   $$$$$$$$ |$$$$$$$$ |$$$$$$$$ |
$$ |\$  /$$ |$$ |      $$   ____|$$   ____|$$   ____|
$$ | \_/ $$ |$$ |      \$$$$$$$\ \$$$$$$$\ \$$$$$$$\ 
\__|     \__|\__|       \_______| \_______| \_______| 

Creator |  MaiFengYXD or MikeFeng
License |     CC0-1.0
Version | Alpha 0.3.8

# Project Started on 2024-11-13 #
# This Version was Last Edited on 2025-03-22 #

Issues Report on Github or https://discord.gg/YBQUd8X8PK
QQ: 3607178523

]]--



--|| Studio Check ||--

local Cloneref = cloneref or function(...) return ... end
local RunService = Cloneref(game:GetService("RunService"))
local CoreGui = Cloneref(game:GetService("CoreGui"))
if RunService:IsStudio() then
    local Message = Instance.new("Message", CoreGui)
    Message.Text = "Do You Want to Cheat In Studio?"
    task.wait(3)
    return Message:Destroy()
end

--|| Language Config ||--

--// Get Language \\--
if not (makefolder and isfile and readfile and writefile) then
    warn("Incompatible Executor!(Missing makefolder, isfile, readfile, writefile)")
    local Message = Instance.new("Message", CoreGui)
    Message.Text = "Incompatible Executor!\n(Missing makefolder, isfile, readfile, writefile)"
    task.wait(3)
    return Message:Destroy()
end

if not getgenv then
    warn("Incompatible Executor!(Missing getgenv)")
    local Message = Instance.new("Message", CoreGui)
    Message.Text = "Incompatible Executor!\n(Missing getgenv)"
    task.wait(3)
    return Message:Destroy()
end

makefolder("MFeee~ Project")
local LanguageFilePath = "MFeee~ Project/Language.txt"
if isfile(LanguageFilePath) then
    getgenv().MFeeeLanguage = readfile(LanguageFilePath) == "Chinese" and "Chinese" or "English"
else
    writefile(LanguageFilePath, "English")
    getgenv().MFeeeLanguage = "English"
    getgenv().MFeeeIAMNEW = true
end

--// Localization: Chinese or English \\--
local Repo = "https://raw.githubusercontent.com/"
local MFRepo = (Repo .. "MaiFengYXD/ObsidianCN/main/")
local ObsidianRepo = (Repo .. "deividcomsono/Obsidian/main/")
local PastebinRepo = "https://pastebin.com/raw/"
local CurrentVersion = "Alpha 0.3.8"
local Library, ThemeManager, SaveManager, Universals, ESPLibrary, Aimbot, SilentAim, LatestVersion, SoundService, Heartbeat, ThisGamesName, PrintUI, NoGlobalText

task.spawn(function()
    local RichText, Time = getgenv().MFeeeLanguage == "Chinese" and "获取语言本地化" or "Getting Language Localization"
    local function Handle(Object, Error, Normal)
        if Object:IsA("TextLabel") and string.find(Object.Text, RichText) then
            Time = string.match(Object.Text, "^(.-)%s-%-%-")
            Object.Text = Error and `{Time} -- [nil%] {RichText}` or `{Time} -- [100%] {RichText}`
            Object.TextColor3 = (Error and Color3.fromRGB(215, 90, 74)) or (Normal and Color3.new(1, 1, 1)) or Color3.fromRGB(0, 255, 0)
            Object.Parent.image.Image = (Error and "rbxasset://textures/DevConsole/Error.png") or (Normal and "") or "rbxasset://textures/AudioDiscovery/done.png"
        end
    end
    print(RichText)
    local LogTemp = CoreGui.DescendantAdded:Connect(function(Object)
        Handle(Object, false, not GlobalText)
    end)
    function NoGlobalText()
        LogTemp:Disconnect()
        for _, Object in pairs(CoreGui:GetDescendants()) do
            Handle(Object, true)
        end
    end
    local LoadStatus, CurrentText = 0
    local function Handle2(Object)
        if string.find(Object.Text, "99%%") then return end
        Time = string.match(Object.Text, "^(.-)%s-%-%-")
        Object.Text = `{Time} -- [{LoadStatus}%] {RichText}`
        CurrentText.AncestryChanged:Once(function()
            CurrentText = nil
        end)
    end
    repeat
        task.wait(.01)
        LoadStatus += 1
        if not CurrentText then
            for _, Object in pairs(CoreGui:GetDescendants()) do
                if Object:IsA("TextLabel") and string.find(Object.Text, RichText) then
                    CurrentText = Object
                    Handle2(Object)
                end
            end
        else
            Handle2(CurrentText)
        end
    until GlobalText
    for _, Object in pairs(CoreGui:GetDescendants()) do
        Handle(Object)
    end
end)
GlobalText = loadstring(game:HttpGet(PastebinRepo .. "ELDu5xsW"))()
if not GlobalText then
    return NoGlobalText()
end

--|| Oaklands Check ||--

local Players = Cloneref(game:GetService("Players"))
local Speaker = Players.LocalPlayer
if game.PlaceId == 9938675423 then
    return Speaker:Kick(GlobalText.Oaklands)
end

--|| Loading Check ||--

if not game:IsLoaded() then
    print(GlobalText.GameNotLoaded)
    game.Loaded:Wait()
end

--|| Device Check ||--

local UserInputService = Cloneref(game:GetService("UserInputService"))
local GuiService = Cloneref(game:GetService("GuiService"))
if GuiService:IsTenFootInterface() then
    local Message = Instance.new("Message", CoreGui)
    Message.Text = GlobalText.WhyYouAreUsingConsole
    task.wait(3)
    return Message:Destroy()
elseif UserInputService.TouchEnabled and (not UserInputService.MouseEnabled or not UserInputService.KeyboardEnabled) then
    local Message = Instance.new("Message", CoreGui)
    Message.Text = GlobalText.MobileNotSupport
    task.wait(3)
    return Message:Destroy()
end

--|| Loaded Check ||--

if getgenv().MFeeeLoaded then
    return warn(GlobalText.ScriptLoaded)
elseif getgenv().MFeeeLoading then
    return warn(GlobalText.ScriptLoading)
end

--|| Start Loading ||--

getgenv().MFeeeLoaded = false
getgenv().MFeeeLoading = true

--// Festivals and Emojis \\--
local Year = tonumber(os.date("%Y"))
local function EasterDate()
    local A = math.floor(Year / 100)
    local B = math.floor((13 + 8 * A) / 25)
    local C = (15 - B + A - math.floor(A / 4)) % 30
    local D = (4 + A - math.floor(A / 4)) % 7
    local E = (19 * (Year % 19) + C) % 30
    local F = (2 * (Year % 4) + 4 * (Year % 7) + 6 * E + D) % 7
    local G = (22 + E + F)
    return (E == 29 and F == 6 and "04 19") or (E == 28 and F == 6 and "04 18") or (31 < G and ("04 %02d"):format(G - 31)) or ("03 %02d"):format(G)
end

local function MotherDay()
    for Day = 8, 14 do
        if os.date("%w", os.time{year = Year, month = 5, day = Day}) == "0" then
            return ("05 %02d"):format(Day)
        end
    end
end

local function FatherDay()
    for Day = 15, 21 do
        if os.date("%w", os.time{year = Year, month = 6, day = Day}) == "0" then
            return ("06 %02d"):format(Day)
        end
    end
end

local Valentine = ({"💚", "💛", "🧡", "❤️", "💗"})[math.random(5)]
local AprilFools = ({"🃏", "🤡", "😂", "🤣", "😡", "🤬", "😇", "🔥💀🔥", "🔥", "💀", "🐀", "🤨", "🤓", "🤑", "🤮", "👽", "😈", "👿", "🤘", "👎", "🈲", "🔞", "😤", "😕", "😏", "😒", "♿", "😎", "🤗", "🤔", "🧐", "👀", "❌", "✅", "⚠️", "😓", "🥵", "🙄", "🙄💅", "💄🙄💅", "🆘", "🉑", "😭", "😱", "🥴", "🥴🥴", "🤢", "🥸", "🐽", "👾", "🛠️", "🧧", "🧧", "🧧", "🧧", "🧧", "🧧", "🍃", "🏭", "🏭", "🏭","🏭", "🏭", "🥮", "👩", "👩", "👨", "👶", "🏮", "🎇", "🌳", "🎃", "🎃", "🎃", "🎃", "💚", "💛", "🧡", "❤️", "💗", "🧨", "🥣", "🪦", "🪦", "🪦", "🎄", "🎄", "🥚"})[math.random(88)]
local EmojiList = (MFeeeLanguage == "Chinese" and ({
    ["01 01"] = "🎇",
    ["01 26"] = "🥣", -- 2026
    ["02 14"] = Valentine,
    ["02 16"] = "🧨", -- 2026
    ["02 17"] = "🧧", -- 2026
    ["02 18"] = "🧧", -- 2026
    ["02 19"] = "🧧", -- 2026
    ["02 20"] = "🧧", -- 2026
    ["02 21"] = "🧧", -- 2026
    ["02 22"] = "🧧", -- 2026
    ["03 03"] = "🏮", -- 2026
    ["03 08"] = "👩",
    ["03 12"] = "🌳",
    [EasterDate()] = "🥚",
    ["04 01"] = AprilFools,
    ["04 04"] = "🪦",
    ["04 05"] = "🪦",
    ["04 06"] = "🪦",
    ["05 01"] = "🏭",
    ["05 02"] = "🏭",
    ["05 03"] = "🏭",
    ["05 04"] = "🏭",
    ["05 05"] = "🏭",
    [MotherDay()] = "👩",
    ["05 31"] = "🍃", -- 2025
    ["06 01"] = "👶",
    [FatherDay()] = "👨",
    ["10 06"] = "🥮", -- 2025
    ["10 29"] = "🎃",
    ["10 30"] = "🎃",
    ["10 31"] = "🎃",
    ["11 01"] = "🎃",
    ["12 24"] = "🎄",
    ["12 25"] = "🎄"
})[os.date("%m %d")]) or ({
    ["01 01"] = "🎇",
    ["02 14"] = Valentine,
    ["03 08"] = "👩",
    ["03 12"] = "🌳",
    [EasterDate()] = "🥚",
    ["04 01"] = AprilFools,
    [MotherDay()] = "👩",
    ["06 01"] = "👶",
    [FatherDay()] = "👨",
    ["10 29"] = "🎃",
    ["10 30"] = "🎃",
    ["10 31"] = "🎃",
    ["11 01"] = "🎃",
    ["12 24"] = "🎄",
    ["12 25"] = "🎄"
})[os.date("%m %d")]
local Emoji = EmojiList or ""

--// Beautiful Arts \\--
local Arts = {
--/ https://patorjk.com/software/taag \--
    [[

                 .-.                                
                /    \                              
  ___ .-. .-.   | .`. ;    .--.     .--.     .--.   
 (   )   '   \  | |(___)  /    \   /    \   /    \  
 |  .-.  .-. ;  | |_     |  .-. ; |  .-. ; |  .-. ; 
 | |  | |  | | (   __)   |  | | | |  | | | |  | | | 
 | |  | |  | |  | |      |  |/  | |  |/  | |  |/  | 
 | |  | |  | |  | |      |  ' _.' |  ' _.' |  ' _.' 
 | |  | |  | |  | |      |  .'.-. |  .'.-. |  .'.-. 
 | |  | |  | |  | |      '  `-' / '  `-' / '  `-' / 
(___)(___)(___)(___)      `.__.'   `.__.'   `.__.'  
    ]],
    [[

     ______  _______         _____       ______        ______        ______   
    |      \/       \   ____|\    \  ___|\     \   ___|\     \   ___|\     \  
   /          /\     \ |    | \    \|     \     \ |     \     \ |     \     \ 
  /     /\   / /\     ||    |______/|     ,_____/||     ,_____/||     ,_____/|
 /     /\ \_/ / /    /||    |----'\ |     \--'\_|/|     \--'\_|/|     \--'\_|/
|     |  \|_|/ /    / ||    |_____/ |     /___/|  |     /___/|  |     /___/|  
|     |       |    |  ||    |       |     \____|\ |     \____|\ |     \____|\ 
|\____\       |____|  /|____|       |____ '     /||____ '     /||____ '     /|
| |    |      |    | / |    |       |    /_____/ ||    /_____/ ||    /_____/ |
 \|____|      |____|/  |____|       |____|     | /|____|     | /|____|     | /
    \(          )/       )/           \( |_____|/   \( |_____|/   \( |_____|/ 
     '          '        '             '    )/       '    )/       '    )/    
                                            '             '             '     
    ]],
    [[

 ___      ___   _______    _______    _______    _______  
|"  \    /"  | /"     "|  /"     "|  /"     "|  /"     "| 
 \   \  //   |(: ______) (: ______) (: ______) (: ______) 
 /\\  \/.    | \/    |    \/    |    \/    |    \/    |   
|: \.        | // ___)    // ___)_   // ___)_   // ___)_  
|.  \    /:  |(:  (      (:      "| (:      "| (:      "| 
|___|\__/|___| \__/       \_______)  \_______)  \_______) 
    ]],
    [[

<-. (`-')              (`-')  _  (`-')  _  (`-')  _ 
   \(OO )_    <-.      ( OO).-/  ( OO).-/  ( OO).-/ 
,--./  ,-.)(`-')-----.(,------. (,------. (,------. 
|   `.'   |(OO|(_\---' |  .---'  |  .---'  |  .---' 
|  |'.'|  | / |  '--. (|  '--.  (|  '--.  (|  '--.  
|  |   |  | \_)  .--'  |  .--'   |  .--'   |  .--'  
|  |   |  |  `|  |_)   |  `---.  |  `---.  |  `---. 
`--'   `--'   `--'     `------'  `------'  `------' 
    ]],
    [[

 __  __      ___                             
|  \/  |    | __|    ___      ___      ___   
| |\/| |    | _|    / -_)    / -_)    / -_)  
|_|__|_|   _|_|_    \___|    \___|    \___|  
_|"""""| _| """ | _|"""""| _|"""""| _|"""""| 
"`-0-0-' "`-0-0-' "`-0-0-' "`-0-0-' "`-0-0-' 
    ]],
    [[

███╗   ███╗███████╗███████╗███████╗███████╗
████╗ ████║██╔════╝██╔════╝██╔════╝██╔════╝
██╔████╔██║█████╗  █████╗  █████╗  █████╗  
██║╚██╔╝██║██╔══╝  ██╔══╝  ██╔══╝  ██╔══╝  
██║ ╚═╝ ██║██║     ███████╗███████╗███████╗
╚═╝     ╚═╝╚═╝     ╚══════╝╚══════╝╚══════╝
    ]],
    [[

███▄ ▄▄███▓ ██████▒▓█████ ▓█████ ▓█████ 
▓██▒▀█▀ ██▒▓██   ▒ ▓█   ▀ ▓█   ▀ ▓█   ▀ 
▓██    ▓██░▒████ ░▒███   ▒███   ▒███    
▒██    ▒██ ░▓█▒  ░▒▓█  ▄ ▒▓█  ▄ ▒▓█  ▄  
▒██▒   ░██▒░▒█░   ░▒████▒░▒████▒░▒████▒ 
░ ▒░   ░  ░ ▒ ░    ░░ ▒░ ░░░ ▒░ ░░░ ▒░ ░
░  ░      ░ ░       ░ ░  ░ ░ ░  ░ ░ ░  ░
░      ░    ░ ░       ░      ░      ░   
    ░              ░  ░   ░  ░   ░  ░   
    ]],
    [[

     e    e      888~~                                
    d8b  d8b     888___  e88~~8e   e88~~8e   e88~~8e  
   d888bdY88b    888    d888  88b d888  88b d888  88b 
  / Y88Y Y888b   888    8888__888 8888__888 8888__888 
 /   YY   Y888b  888    Y888    , Y888    , Y888    , 
/          Y888b 888     "88___/   "88___/   "88___/  
    ]],
    [=[

.        :   .-:::::'                              
;;,.    ;;;  ;;;''''                               
[[[[, ,[[[[, [[[,,== ,cc[[[cc. ,cc[[[cc. ,cc[[[cc. 
$$$$$$$$"$$$ `$$$"`` $$$___--' $$$___--' $$$___--' 
888 Y88" 888o 888    88b    ,o,88b    ,o,88b    ,o,
MMM  M'  "MMM "MM,    "YUMMMMP" "YUMMMMP" "YUMMMMP"
    ]=],
    [[
    
--------------
4D 46 65 65 65
--------------
    ]],
    [[

     _         _         _         _         _    
   _( )__    _( )__    _( )__    _( )__    _( )__ 
 _|     _| _|     _| _|     _| _|     _| _|     _|
(_ M _ (_ (_ F _ (_ (_ e _ (_ (_ e _ (_ (_ e _ (_ 
  |_( )__|  |_( )__|  |_( )__|  |_( )__|  |_( )__|
    ]],
    [[

_______________________________________________________
/~~\__/~~\_/~~~~~~~~\_/~~~~~~~~\_/~~~~~~~~\_/~~~~~~~~\_
/~~~\/~~~\_/~~\_______/~~\_______/~~\_______/~~\_______
/~~~~~~~~\_/~~~~~~\___/~~~~~~\___/~~~~~~\___/~~~~~~\___
/~~\__/~~\_/~~\_______/~~\_______/~~\_______/~~\_______
/~~\__/~~\_/~~\_______/~~~~~~~~\_/~~~~~~~~\_/~~~~~~~~\_
_______________________________________________________
    ]],
    [[

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
/// \\/// \///////// \///////// \///////// \///////// \
//// //// \/// \\\\\\\/// \\\\\\\/// \\\\\\\/// \\\\\\\
/// / /// \/////// \\\/////// \\\/////// \\\/////// \\\
/// \\/// \/// \\\\\\\/// \\\\\\\/// \\\\\\\/// \\\\\\\
/// \\/// \/// \\\\\\\///////// \///////// \///////// \
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    ]],
    [[

 _______  _______                      
(_______)(_______)                     
 _  _  _  _____    _____  _____  _____ 
| ||_|| ||  ___)  | ___ || ___ || ___ |
| |   | || |      | ____|| ____|| ____|
|_|   |_||_|      |_____)|_____)|_____)
    ]],
    [[

______________________________________
7        77     77     77     77     7
|  _  _  ||  ___!|  ___!|  ___!|  ___!
|  7  7  ||  __| |  __|_|  __|_|  __|_
|  |  |  ||  7   |     7|     7|     7
!__!__!__!!__!   !_____!!_____!!_____!
    ]],
    [[

     _/\/\______/\/\__/\/\/\/\/\/\_____________________________________
    _/\/\/\__/\/\/\__/\/\____________/\/\/\______/\/\/\______/\/\/\___ 
   _/\/\/\/\/\/\/\__/\/\/\/\/\____/\/\/\/\/\__/\/\/\/\/\__/\/\/\/\/\_  
  _/\/\__/\__/\/\__/\/\__________/\/\________/\/\________/\/\_______   
 _/\/\______/\/\__/\/\____________/\/\/\/\____/\/\/\/\____/\/\/\/\_    
__________________________________________________________________     
    ]],
    [[

_/\/\______/\/\__/\/\/\/\/\/\_____________________________________
_/\/\/\__/\/\/\__/\/\____________/\/\/\______/\/\/\______/\/\/\___
_/\/\/\/\/\/\/\__/\/\/\/\/\____/\/\/\/\/\__/\/\/\/\/\__/\/\/\/\/\_
_/\/\__/\__/\/\__/\/\__________/\/\________/\/\________/\/\_______
_/\/\______/\/\__/\/\____________/\/\/\/\____/\/\/\/\____/\/\/\/\_
__________________________________________________________________
    ]],
    [[

$$\      $$\ $$$$$$$$\                               
$$$\    $$$ |$$  _____|                              
$$$$\  $$$$ |$$ |       $$$$$$\   $$$$$$\   $$$$$$\  
$$\$$\$$ $$ |$$$$$\    $$  __$$\ $$  __$$\ $$  __$$\ 
$$ \$$$  $$ |$$  __|   $$$$$$$$ |$$$$$$$$ |$$$$$$$$ |
$$ |\$  /$$ |$$ |      $$   ____|$$   ____|$$   ____|
$$ | \_/ $$ |$$ |      \$$$$$$$\ \$$$$$$$\ \$$$$$$$\ 
\__|     \__|\__|       \_______| \_______| \_______|
    ]]
}
print(Arts[math.random(18)])

--// Environment Test \\--
local Workspace = Cloneref(game:GetService("Workspace"))
local QueueTeleport = (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport) or queue_on_teleport
local Setclipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set) or setrbxclipboard
local GetConnections, Compare = getconnections or get_signal_cons, compareinstances or function(A, B) return A == B end

print("————————————————————")
print(QueueTeleport and "⏺️ toclipboard" or "❌ toclipboard")
print(Setclipboard and "⏺️ queue_on_teleport" or "❌ queue_on_teleport")

local function EnvTest(Name, Function)
    local Can, Error = pcall(Function)
    print((Can and "✅ " .. Name) or (`❌ {Name}, {GlobalText.Because}:{Error:match("^:[^:]*:(.*)$")}`))
    return Can
end

CanHookMM = EnvTest("hookmetamethod", function()
    local Object = setmetatable({}, {
        __index = newcclosure(function()
            return false
        end),
        __metatable = "Locked!"
    })
    local Reference = hookmetamethod(Object, "__index", function()
        return true
    end)
    assert(Object.Test == true, GlobalText.EnvTestFail.HookMM1)
    assert(Reference() == false, GlobalText.EnvTestFail.HookMM2)
end)

CanFirePP = EnvTest("fireproximityprompt", function()
    local Prompt = Instance.new("ProximityPrompt", Workspace)
    Prompt.Triggered:Once(function()
        Prompt = Prompt:Destroy() or true
    end)
    fireproximityprompt(Prompt)
    assert(task.wait(.1) and Prompt, GlobalText.EnvTestFail.FirePP)
end)

CanGetCons = EnvTest("getconnections", function()
    local Types = {
        Enabled = "boolean",
        ForeignState = "boolean",
        LuaConnection = "boolean",
        Function = "function",
        Thread = "thread",
        Fire = "function",
        Defer = "function",
        Disconnect = "function",
        Disable = "function",
        Enable = "function",
    }
    local Bindable = Instance.new("BindableEvent")
    Bindable.Event:Once(function() end)
    local Connection = GetConnections(Bindable.Event)[1]
    for i, v in pairs(Types) do
        assert(Connection[i] ~= nil, GlobalText.EnvTestFail.GetCons1 .. i .. GlobalText.EnvTestFail.GetCons11)
        assert(type(Connection[i]) == v, GlobalText.EnvTestFail.GetCons2 .. i .. GlobalText.EnvTestFail.GetCons22 .. v .. GlobalText.EnvTestFail.GetCons222 .. type(Connection[i]))
    end
end)

CanGetNM = EnvTest("getnamecallmethod", function()
    pcall(function()
        game:MFeee()
    end)
    assert(getnamecallmethod() == "MFeee", GlobalText.EnvTestFail.GetNM)
end)

CanHookFunc = EnvTest("hookfunction", function()
    local Hook = hookfunction or replaceclosure
    local function Original()
        return true
    end
    local Reference = Hook(Original, function()
        return false
    end)
    assert(Original() == false, GlobalText.EnvTestFail.HookFunc1)
    assert(Reference() == true, GlobalText.EnvTestFail.HookFunc2)
    assert(Original ~= Reference, GlobalText.EnvTestFail.HookFunc3)
end)

CanDraw = EnvTest("Drawing.new", function()
    local Drawing = Drawing.new("Circle")
    Drawing.Visible = false
    assert(not Drawing:Remove(), GlobalText.EnvTestFail.Drawing)
end)

CanCP = EnvTest("compareinstances", function()
    local Part = Instance.new("Part")
    local Clone = Cloneref(Part)
    assert(Part ~= Clone, GlobalText.EnvTestFail.CP1)
    assert(Compare(Part, Clone), GlobalText.EnvTestFail.CP2)
end)

CanIDCC = EnvTest("iscclosure", function()
    assert(iscclosure(print) == true, GlobalText.EnvTestFail.IDCC1)
    assert(iscclosure(function() end) == false, GlobalText.EnvTestFail.IDCC2)
end)

CanNewCC = EnvTest("newcclosure", function()
    local function Original()
        return true
    end
    local Closure = newcclosure(Original)
    assert(Closure() == true, GlobalText.EnvTestFail.NewCC1)
    assert(Original ~= Closure, GlobalText.EnvTestFail.NewCC2)
    assert(iscclosure(Closure), GlobalText.EnvTestFail.NewCC3)
end)

CanGetCS = EnvTest("getcallingscript", getcallingscript)

CanCC = EnvTest("checkcaller", checkcaller)
print("————————————————————")

--// Load Obsidian and Modules \\--
function PrintUI()
    if Library and ThemeManager and SaveManager then
        print(GlobalText.LibraryLoaded)
        PrintUI = function() end
    end
end

local function SpawnLoad(Function)
    task.spawn(function()
        pcall(Function)
    end)
end

SpawnLoad(function()
    Library = (MFeeeLanguage == "Chinese" and loadstring(game:HttpGet(MFRepo .. "Library%20Chinese.lua"))()) or loadstring(game:HttpGet(ObsidianRepo .. "Library.lua"))()
    if TimeOut and Library then
        Library:Unload()
    elseif Library then
        Options = Library.Options
        Toggles = Library.Toggles
        Library.ForceCheckbox = false
        Library.ShowToggleFrameInKeybinds = true
        PrintUI()
    end
end)

SpawnLoad(function()
    ThemeManager = (MFeeeLanguage == "Chinese" and loadstring(game:HttpGet(MFRepo .. "Addons/ThemeManager%20Chinese.lua"))()) or loadstring(game:HttpGet(ObsidianRepo .. "addons/ThemeManager.lua"))()
    PrintUI()
end)

SpawnLoad(function()
    SaveManager = (MFeeeLanguage == "Chinese" and loadstring(game:HttpGet(MFRepo .. "Addons/SaveManager%20Chinese.lua"))()) or loadstring(game:HttpGet(ObsidianRepo .. "addons/SaveManager.lua"))()
    PrintUI()
end)

SpawnLoad(function()
    Universals = loadstring(game:HttpGet(PastebinRepo .. "ukLr0Pmm"))()--loadstring(game:HttpGet(Repo .. "MaiFengYXD/Universal-Modules/main/Universal%20Modules.lua"))()
    if TimeOut and Universals then
        Universals:Exit()
    elseif Universals then
        print(GlobalText.UniversalsLoaded)
    end
end)

SpawnLoad(function()
    ESPLibrary = loadstring(game:HttpGet(Repo .. "mstudio45/MSESP/main/source.luau"))()
    if TimeOut and ESPLibrary then
        ESPLibrary:Destroy()
    elseif ESPLibrary then
        print(GlobalText.ESPLibraryLoaded)
    end
end)

SpawnLoad(function()
    Aimbot = loadstring(game:HttpGet(PastebinRepo .. "8A3dgm1q"))()
    if TimeOut and Aimbot then
        Aimbot:Exit()
    elseif Aimbot then
        Aimbot.Load()
        print(GlobalText.AimbotLoaded)
    end
end)

SpawnLoad(function()
    SilentAim = loadstring(game:HttpGet(PastebinRepo .. "MRygSimb"))()
    if TimeOut and SilentAim then
        SilentAim:Exit()
    elseif SilentAim then
        print(GlobalText.SilentAimLoaded)
    end
end)

SpawnLoad(function()
    LatestVersion = loadstring(game:HttpGet(PastebinRepo .. "BhnD85nE"))("Universal")
end)

SpawnLoad(function()
    SoundService = Cloneref(game:GetService("SoundService"))
    local function Preload(Id)
        local Sound = Instance.new("Sound", SoundService)
        Sound.SoundId = "rbxassetid://" .. Id
        Sound.Volume = 0
        Sound.PlayOnRemove = true
        Sound:Destroy()
    end
    Preload("4590662766")
    Preload("4590657391")
    Preload("9113884125")
    Preload("15675032796")
end)

SpawnLoad(function()
    Heartbeat = RunService.Heartbeat
    ThisGamesName = Cloneref(game:GetService("MarketplaceService")):GetProductInfo(game.PlaceId).Name
    repeat
        Heartbeat:Wait()
    until ThisGamesName and GameNameLabel
    GameNameLabel:SetText(GlobalText.GameName .. ThisGamesName)
end)

makefolder("MFeee~ Project")
local TimeOutLimiteFilePath, LoadTimer = "MFeee~ Project/TimeOutLimite.txt", 0
if isfile(TimeOutLimiteFilePath) then
    TimeOutLimite = math.max(5, math.min(tonumber(readfile(TimeOutLimiteFilePath)) or 10, 60))
else
    writefile(TimeOutLimiteFilePath, "10")
    TimeOutLimite = 10
end

repeat
    LoadTimer += Heartbeat:Wait()
    if LoadTimer >= TimeOutLimite then
        TimeOut = true
        getgenv().MFeeeLoaded = false
        getgenv().MFeeeLoading = false
        Library = Library and Library:Unload()
        Universals = Universals and Universals:Exit()
        ESPLibrary = ESPLibrary and ESPLibrary:Destroy()
        Aimbot = Aimbot and Aimbot:Exit()
        error(GlobalText.LoadFaild, 2)
        break
    end
until Library and ThemeManager and SaveManager and Universals and ESPLibrary and Aimbot and SilentAim
print(GlobalText.AssetsLoaded)

--|| Variables ||--

local Teams = Cloneref(game:GetService("Teams"))
local ReplicatedStorage = Cloneref(game:GetService("ReplicatedStorage"))
local TextChatService = Cloneref(game:GetService("TextChatService"))
local Lighting = Cloneref(game:GetService("Lighting"))
local Character = Speaker.Character
local Humanoid = Character and Character:FindFirstChild("Humanoid")
local Arsenal = game.PlaceId == 286090429
local Rivals = game.PlaceId == 17625359962
local ExecutorName, ExecutorVersion = (identifyexecutor and identifyexecutor()) or (getexecutorname and getexecutorname()) or "Unknown", ""
local NotifyAlert = true
local ObsidianNotify = true
local MFCons = {}

--// Toclipboard Function \\--
local Toclipboard = function(Text)
    if Setclipboard then
        Setclipboard(tostring(Text))
    else
        NotifySound(GlobalText.CantSetClipBoard, 5)
        warn(GlobalText.CantSetClipBoard)
    end
end

--// Queue TP Function \\--
if not getgenv().MFeeeQueueTPSeted and QueueTeleport then
    getgenv().MFeeeQueueTPSeted = true
    QueueTeleport([[
        local TPFilePath = "MFeee~ Project/ExecuteOnTeleport.txt"
        if isfile(TPFilePath) and readfile(TPFilePath) == "true" then
            MFeee_IsFromTP = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/MaiFengYXD/MFeee-Project/main/Release/MFeee%7E%20Universal.lua"))()
        end
    ]])
end

--// Notify Sound Function \\--
function NotifySound(Text, Duration, OnlySound)
    if NotifyAlert then
        local NotifySound = Instance.new("Sound", SoundService) do
            NotifySound.SoundId = ObsidianNotify and "rbxassetid://4590662766" or "rbxassetid://4590657391"
            NotifySound.Volume = 2
            NotifySound.PlayOnRemove = true
            NotifySound:Destroy()
        end
    end
    if not OnlySound then
        Library:Notify(Text, Duration)
    end
end

--|| Main Window ||--

local MainWindow = Library:CreateWindow({
    Title = GlobalText.MainWindowTitle .. Emoji,
    Footer = CurrentVersion .. " | " .. Speaker.DisplayName,
    Icon = 77335290652571,
    NotifySide = "Right",
    ShowCustomCursor = false,
    AutoShow = true,
    Resizable = true,
    Center = true,
    TabPadding = 2,
    MenuFadeTime = 0.5
})

--|| Tabs ||--

local Tabs = {
    Main = MainWindow:AddTab(GlobalText.MainTab, "house"),
    Player = MainWindow:AddTab(GlobalText.PlayerTab, "user-round-cog"),
    Camera = MainWindow:AddTab(GlobalText.CameraTab, "camera"),
    Ambient = MainWindow:AddTab(GlobalText.AmbientTab, "sun"),
    ESP = MainWindow:AddTab(GlobalText.ESPTab, "eye"),
    Aimbot = MainWindow:AddTab(GlobalText.AimbotTab, "circle-plus"),
    SilentAim = MainWindow:AddTab(GlobalText.SilentAimTab, "crosshair"),
    Troll = MainWindow:AddTab(GlobalText.TrollTab, "banana"),
    MISC = MainWindow:AddTab(GlobalText.MISCTab, "captions"),
    UI = MainWindow:AddTab(GlobalText.UISettingsTab, "settings"),
    About = MainWindow:AddTab(GlobalText.AboutTab, "info")
}

--|| Main Executor Groupbox ||--

MainExecutorGruopbox = Tabs.Main:AddLeftGroupbox(GlobalText.MainExecutorGruopbox)
ExecutorNameLabel = MainExecutorGruopbox:AddLabel(GlobalText.ExecutorNameText .. ExecutorName .. " " .. ExecutorVersion)
ExecutorUNCLabel = MainExecutorGruopbox:AddLabel(GlobalText.ExecutorUNC .. "nil %")
ExecutorUNCTestButton = MainExecutorGruopbox:AddButton({
    Text = GlobalText.UNCTest,
    DoubleClick = true,
    Func = function()
        NotifySound(GlobalText.UNCTesting, 5)
        ExecutorUNCLabel:SetText(GlobalText.ExecutorUNC .. "nil %")
        local ok, faild = pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/NXa1DA2u"))()
        end)
        if faild then
            NotifySound(faild, 5)
        end
    end
})
ExecutorSUNCTestButton = ExecutorUNCTestButton:AddButton({
    Text = GlobalText.SUNCTest,
    Tooltip = GlobalText.SUNCWarn,
    DoubleClick = true,
    Risky = ExecutorName == "Atlantis" and true,
    Func = function()
        NotifySound(GlobalText.SUNCTesting, 5)
        local ok, faild = pcall(function()
            loadstring(game:HttpGet("https://gitlab.com/sens3/nebunu/-/raw/main/HummingBird8's_sUNC_yes_i_moved_to_gitlab_because_my_github_acc_got_brickedd/sUNCm0m3n7.lua"))()
            NotifySound(GlobalText.SUNCSuc, 5)
        end)
        if faild then
            NotifySound(faild, 5)
        end
    end
})

--|| Main AFK Groupbox ||--

MainAFKGroupbox = Tabs.Main:AddLeftGroupbox(GlobalText.MainAFKGroupbox)
AntiAFKToggle = MainAFKGroupbox:AddToggle("AntiAFKToggle", {
    Text = GlobalText.AntiAFKText,
    Default = false,
    Callback = function(Enabled)
        Universals.AntiAFK(Enabled)
    end
})
AntiAFKNotify = MainAFKGroupbox:AddToggle("AntiAFKNotify", {
    Text = GlobalText.AntiAFKNotifyText,
    Default = false,
    Disabled = CanGetCons,
    Callback = function(Enabled)
        Universals.UseAntiAFKNotify(Enabled)
    end
})
AntiAFKSlider = MainAFKGroupbox:AddSlider("AntiAFKSlider", {
    Text = GlobalText.AntiAFKNumberText,
    Default = 15,
    Min = 3,
    Max = 300,
    Rounding = 0,
    Suffix = GlobalText.AntiAFKSuffix,
    Disabled = CanGetCons,
    Callback = function(Number)
        AntiAFKEnabled = Enabled
        Universals.AntiAFKValue(Number)
    end
})
AntiAFKDropdown = MainAFKGroupbox:AddDropdown("AntiAFKDropdown", {
    Text = GlobalText.AntiAFKDropdownText,
    Values = {
        GlobalText.DisconnectIdleConnections,
        GlobalText.Mousemoverel,
        GlobalText.Mousemoveabs,
        GlobalText.Mouseleftclick,
        GlobalText.Mouserightclick
    },
    Default = CanGetCons and GlobalText.DisconnectIdleConnections or GlobalText.Mousemoverel,
    DisabledValues = not CanGetCons and {GlobalText.DisconnectIdleConnections},
    DisabledTooltip = GlobalText.NoGetConnections,
    Multi = false,
    Callback = function(Method)
        AntiIdle = Method == GlobalText.DisconnectIdleConnections
        if Method == GlobalText.Mousemoverel then
            Universals.AntiAFKMethod("1")
        elseif Method == GlobalText.Mousemoveabs then
            Universals.AntiAFKMethod("2")
        elseif Method == GlobalText.Mouseleftclick then
            Universals.AntiAFKMethod("3")
        elseif Method == GlobalText.Mouserightclick then
            Universals.AntiAFKMethod("4")
        end
        AntiAFKSlider:SetDisabled(AntiIdle)
        AntiAFKNotify:SetDisabled(AntiIdle)
        if AntiAFKEnabled then
            Universals.AntiAFK(false)
            Heartbeat:Wait()
            Universals.AntiAFK(true)
        end
    end
})
MainAFKGroupbox:AddDivider()
NoRenderToggle = MainAFKGroupbox:AddToggle("NoRenderToggle", {
    Text = GlobalText.NoRenderToggle,
    Default = false,
    Callback = function(Enabled)
        RunService:Set3dRenderingEnabled(not Enabled)
    end
})
FPSCapToggle = MainAFKGroupbox:AddToggle("FPSCapToggle", {
    Text = GlobalText.FPSCapToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.FPSCap(Enabled)
    end
})
FPSCapSlider = MainAFKGroupbox:AddSlider("FPSCapSlider", {
    Text = GlobalText.FPSCapSlider,
    Default = UniversalModules.CurrentFPS,
    Min = 1,
    Max = 240,
    Rounding = 0,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.FPSCapValue(Number)
    end
})

--|| Main Others Groupbox ||--

MainOthersGroupbox = Tabs.Main:AddRightGroupbox(GlobalText.MainOthersGroupbox)
QuickLanguageChange = getgenv().MFeeeIAMNEW and MainOthersGroupbox:AddDropdown("QuickLanguageChange", {
    Text = GlobalText.QuickLanguageChange,
    Values = {
        "English",
        "简体中文",
    },
    Default = MFeeeLanguage == "Chinese" and "简体中文" or "English",
    Multi = false,
    Callback = function(Language)
        writefile(LanguageFilePath, Language == "English" and "English" or "Chinese")
        NotifySound(Language == "English" and "You Need to Restart to Apply the Change" or "重启脚本后生效", 5)
    end
})
QuickLanguageChangeDivider = getgenv().MFeeeIAMNEW and QuickLanguageChange:AddDivider()
TPFilePath = "MFeee~ Project/ExecuteOnTeleport.txt"
MFeeeIsFromTP = isfile(TPFilePath) and readfile(TPFilePath) == "true"
ExecuteOnTeleportToggle = QueueTeleport and MainOthersGroupbox:AddToggle("ExecuteOnTeleportToggle", {
    Text = GlobalText.ExecuteOnTeleportToggle,
    Default = MFeee_IsFromTP or MFeeeIsFromTP,
    Callback = function(Enabled)
        makefolder("MFeee~ Project")
        writefile(TPFilePath, Enabled and "true" or "false")
    end
})
AntiKickToggle = MainOthersGroupbox:AddToggle("AntiKickToggle", {
    Text = GlobalText.AntiKickToggleText,
    Default = false,
    Callback = function(Enabled)
        Universals.AntiKick(Enabled)
    end
})
AntiKickNotify = MainOthersGroupbox:AddToggle("AntiKickNotify", {
    Text = GlobalText.AntiKickNotifyText,
    Default = false,
    Callback = function(Enabled)
        AntiKickNotify = Enabled
    end
})
MainOthersGroupbox:AddDivider()
BoringClickLabel = MainOthersGroupbox:AddLabel(GlobalText.BoringClickLabel .. " 0 " .. GlobalText.BoringClickLabel2)
BoringClickButton = MainOthersGroupbox:AddButton({
    Text = GlobalText.BoringClickButton,
    Func = function()
        ClickedTimes = (ClickedTimes or 0) + (ClickMultiplier or 1)
        BoringClickLabel:SetText(GlobalText.BoringClickLabel .. " " .. ClickedTimes .. " " .. GlobalText.BoringClickLabel2)
    end
})
BoringClickInput = MainOthersGroupbox:AddInput("BoringClickInput", {
    Text = GlobalText.BoringClickInput,
    Default = 1,
    Numeric = true,
    Finished = true,
    ClearTextOnFocus = false,
    Placeholder = GlobalText.BoringClickInput,
    Callback = function(Text)
        ClickMultiplier = tonumber(Text)
        if not tonumber(Text) then
            ClickMultiplier = 1
            NotifySound(GlobalText.InputNumber, 5)
        end
    end
})
BoringClickResetButton = MainOthersGroupbox:AddButton({
    Text = GlobalText.BoringClickResetButton,
    DoubleClick = true,
    Func = function()
        BoringClickLabel:SetText(GlobalText.BoringClickLabel .. " 0 " .. GlobalText.BoringClickLabel2)
        NotifySound(GlobalText.ResetedClickLabel .. ClickedTimes .. GlobalText.ResetedClickLabel2, 5)
        ClickedTimes = 0
    end
})

--|| Advanced Groupbox ||--

AdvancedGroupbox = Tabs.Main:AddRightGroupbox(GlobalText.AdvancedGroupbox)
AnimationModeDropdown = AdvancedGroupbox:AddDropdown("AnimationModeDropdown", {
    Text = GlobalText.AnimationModeDropdown,
    Values = {
        GlobalText.CubicEaseIn,
        GlobalText.CubicEaseOut,
        GlobalText.CubicEaseInOut,
        GlobalText.QuarticEaseIn,
        GlobalText.QuarticEaseOut,
        GlobalText.QuarticEaseInOut,
        GlobalText.Linear,
        GlobalText.NoAnimation
    },
    Default = GlobalText.QuarticEaseOut,
    Multi = false,
    Callback = function(Mode)
        NoEasingAnimator = Mode == GlobalText.NoAnimation
        if Mode == GlobalText.CubicEaseIn then
            EasingSelector("CubicEaseIn")
        elseif Mode == GlobalText.CubicEaseOut then
            EasingSelector("CubicEaseOut")
        elseif Mode == GlobalText.CubicEaseInOut then
            EasingSelector("CubicEaseInOut")
        elseif Mode == GlobalText.QuarticEaseIn then
            EasingSelector("QuarticEaseIn")
        elseif Mode == GlobalText.QuarticEaseOut then
            EasingSelector("QuarticEaseOut")
        elseif Mode == GlobalText.QuarticEaseInOut then
            EasingSelector("QuarticEaseInOut")
        else
            EasingSelector("Linear")
        end
    end
})
AnimationSpeedSlider = AdvancedGroupbox:AddSlider("AnimationSpeedSlider", {
    Text = GlobalText.AnimationSpeedSlider,
    Default = 1,
    Min = 0.2,
    Max = 2,
    Rounding = 1,
    Suffix = " s",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        EasingDuration = Number
    end
})
AdvancedGroupbox:AddDivider()
TimeOutLimiterSlider = AdvancedGroupbox:AddSlider("TimeOutLimiterSlider", {
    Text = GlobalText.TimeOutLimiterSlider,
    Default = TimeOutLimite,
    Min = 5,
    Max = 60,
    Rounding = 0,
    Suffix = " s",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        TimeOutLimite = Number
        writefile(TimeOutLimiteFilePath, tostring(Number))
    end
})

--|| Player Movement Groupbox ||--

PlayerMovementGroupbox = Tabs.Player:AddLeftGroupbox(GlobalText.PlayerMovementGroupbox)
PlayerWalkSpeedToggle = PlayerMovementGroupbox:AddToggle("PlayerWalkSpeedToggle", {
    Text = GlobalText.PlayerWalkSpeedToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.WalkSpeed(Enabled)
    end
})
PlayerWalkSpeedSlider = PlayerMovementGroupbox:AddSlider("PlayerWalkSpeedSlider", {
    Text = GlobalText.PlayerWalkSpeedSlider,
    Default = Humanoid and math.round(Humanoid and Humanoid.WalkSpeed) or 16,
    Min = 0,
    Max = 200,
    Rounding = 0,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.WalkSpeedValue(Number)
    end
})
PlayerJumpPowerToggle = PlayerMovementGroupbox:AddToggle("PlayerJumpPowerToggle", {
    Text = GlobalText.PlayerJumpPowerToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.JumpPower(Enabled)
    end
})
PlayerJumpPowerSlider = PlayerMovementGroupbox:AddSlider("PlayerJumpPowerSlider", {
    Text = GlobalText.PlayerJumpPowerSlider,
    Default = Humanoid and math.round(Humanoid and Humanoid.JumpPower) or 50,
    Min = 0,
    Max = 625,
    Rounding = 0,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.JumpPowerValue(Number)
    end
})
WorkspaceGravityToggle = PlayerMovementGroupbox:AddToggle("WorkspaceGravityToggle", {
    Text = GlobalText.WorkspaceGravityToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.Gravity(Enabled)
    end
})
WorkspaceGravitySlider = PlayerMovementGroupbox:AddSlider("WorkspaceGravitySlider", {
    Text = GlobalText.WorkspaceGravitySlider,
    Default = math.round(Workspace.Gravity) or 196,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.GravityValue(Number)
    end
})
PlayerMovementGroupbox:AddDivider()
TPWalkToggle = PlayerMovementGroupbox:AddToggle("TPWalkToggle", {
    Text = GlobalText.TPWalkToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.TPWalk(Enabled)
    end
})
TPWalkSlider = PlayerMovementGroupbox:AddSlider("TPWalkSlider", {
    Text = GlobalText.TPWalkSlider,
    Default = 10,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.TPWalkValue(Number)
    end
})
NoAccelerationToggle = PlayerMovementGroupbox:AddToggle("NoAccelerationToggle", {
    Text = GlobalText.NoAccelerationToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.NoAcceleration(Enabled)
    end
})

--|| Player Features Groupbox ||--

PlayerFeaturesGroupbox = Tabs.Player:AddLeftGroupbox(GlobalText.PlayerFeaturesGroupbox)
NoclipToggle = PlayerFeaturesGroupbox:AddToggle("NoclipToggle", {
    Text = GlobalText.NoclipToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.Noclip(Enabled)
    end
}):AddKeyPicker("NoclipKeyPicker", {
    Text = GlobalText.NoclipKeybind,
    Default = "N",
    Mode = "Toggle",
    SyncToggleState = true,
})
VehicleNoclipToggle = PlayerFeaturesGroupbox:AddToggle("VehicleNoclipToggle", {
    Text = GlobalText.VehicleNoclipToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.VehicleNoclip(Enabled)
    end
}):AddKeyPicker("VehicleNoclipKeyPicker", {
    Text = GlobalText.VehicleNoclipKeybind,
    Default = "H",
    Mode = "Toggle",
    SyncToggleState = true,
})
PlayerFeaturesGroupbox:AddDivider()
AntiVoidToggle = PlayerFeaturesGroupbox:AddToggle("AntiVoidToggle", {
    Text = GlobalText.AntiVoidToggle,
    Default = false,
    Callback = function(Enabled)
        if InvisibleRunning then
            return
        end
        Universals.AntiVoid(Enabled)
    end
})
AntiFallingDownToggle = PlayerFeaturesGroupbox:AddToggle("AntiFallingDownToggle", {
    Text = GlobalText.AntiFallingDownToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.AntiFallingDown(Enabled)
    end
})
ClickToMoveToggle = PlayerFeaturesGroupbox:AddToggle("ClickToMoveToggle", {
    Text = GlobalText.ClickToMoveToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.ClickToMove(Enabled)
    end
})
SpinToggle = PlayerFeaturesGroupbox:AddToggle("SpinToggle", {
    Text = GlobalText.SpinToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.Spin(Enabled)
    end
})
SpinSpeedSlider = PlayerFeaturesGroupbox:AddSlider("SpinSpeedSlider", {
    Text = GlobalText.SpinSpeedSlider,
    Default = 3,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.SpinValue(Number)
    end
})
PlayerFeaturesGroupbox:AddDivider()
AutoInteractionToggle = PlayerFeaturesGroupbox:AddToggle("AutoInteractionToggle", {
    Text = GlobalText.AutoInteractionToggle,
    Default = false,
    Disabled = not CanFirePP,
    DisabledTooltip = GlobalText.NoFireproximityprompt,
    Callback = function(Enabled)
        AllowAutoInteraction = Enabled
    end
}):AddKeyPicker("AutoInteractionKeyPicker", {
    Text = GlobalText.AutoInteractionKeybind,
    Default = "R",
    Mode = "Hold",
    NoUI = false,
    SyncToggleState = false,
})
AutoInteractionMethodDropdown = PlayerFeaturesGroupbox:AddDropdown("AutoInteractionMethodDropdown", {
    Text = GlobalText.AutoInteractionMethodDropdown,
    Values = {
        GlobalText.AIFromCharacter,
        GlobalText.AIFromCamera
    },
    Default = GlobalText.AIFromCharacter,
    Multi = false,
    Callback = function(Method)
        AIMethod = Method == GlobalText.AIFromCharacter and "Character" or "Camera"
    end
})
AutoInteractionIntervalSlider = PlayerFeaturesGroupbox:AddSlider("AutoInteractionIntervalSlider", {
    Text = GlobalText.AutoInteractionIntervalSlider,
    Default = 0.01,
    Min = 0.01,
    Max = 1,
    Rounding = 2,
    Suffix = " s",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        AIInterval = Number
    end
})
InstantPromptToggle = PlayerFeaturesGroupbox:AddToggle("InstantPromptToggle", {
    Text = GlobalText.InstantPromptToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.InstantPrompt(Enabled)
    end
})
InstantPromptMethodDropdown = PlayerFeaturesGroupbox:AddDropdown("InstantPromptMethodDropdown", {
    Text = GlobalText.InstantPromptMethodDropdown,
    Values = {
        GlobalText.FirePP,
        GlobalText.HoldDuration,
    },
    Default = (CanFirePP and GlobalText.FirePP) or GlobalText.HoldDuration,
    DisabledValues = not CanFirePP and {GlobalText.FirePP},
    DisabledTooltip = GlobalText.NoFireproximityprompt,
    Multi = false,
    Callback = function(Method)
        IPMethod = Method == GlobalText.FirePP and "FirePP" or "HoldDuration"
        if Toggles.InstantPromptToggle.Value then
            Universals.InstantPrompt(false)
            Heartbeat:Wait()
            Universals.InstantPrompt(true)
        end
    end
})
DistantPromptToggle = PlayerFeaturesGroupbox:AddToggle("DistantPromptToggle", {
    Text = GlobalText.DistantPromptToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.MaxActivationDistance(Enabled)
    end
})
PromptDistanceMultiplierSlider = PlayerFeaturesGroupbox:AddSlider("PromptDistanceMultiplierSlider", {
    Text = GlobalText.PromptDistanceMultiplierSlider,
    Default = 1,
    Min = 0.5,
    Max = 2,
    Rounding = 1,
    Suffix = GlobalText.Multiplier,
    Compact = true,
    HideMax = true,
    Callback = function(Multiplier)
        Universals.MaxActivationDistanceValue(Multiplier)
    end
})
PromptNoclipToggle = PlayerFeaturesGroupbox:AddToggle("PromptNoclipToggle", {
    Text = GlobalText.PromptNoclipToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.RequiresLineOfSight(Enabled)
    end
})
PlayerFeaturesGroupbox:AddDivider()
LastResetTime = 0
ResetInterval = 1
FastResetMethod = "All"
MFCons.FR = (MFCons.FR and MFCons.FR:Disconnect()) or Heartbeat:Connect(function()
    pcall(function()
        local Character = Speaker.Character
        local Humanoid = Character:FindFirstChildOfClass("Humanoid")
        if Options.FastResetKeyPicker:GetState() and AllowFastReset and tick() - LastResetTime >= ResetInterval and Humanoid.Health > 0 then
            if FastResetMethod == "BreakJoints" then
                Character:BreakJoints()
            elseif FastResetMethod == "Died" then
                Humanoid:ChangeState(15)
            elseif FastResetMethod == "Health" then
                Humanoid.Health = 0
            else
                Character:BreakJoints()
                Humanoid:ChangeState(15)
                Humanoid.Health = 0
            end
            LastResetTime = tick()
        end
    end)
end)
FastResetToggle = PlayerFeaturesGroupbox:AddToggle("FastResetToggle", {
    Text = GlobalText.FastResetToggle,
    Default = false,
    Callback = function(Enabled)
        AllowFastReset = Enabled
    end
}):AddKeyPicker("FastResetKeyPicker", {
    Text = GlobalText.FastResetKeybind,
    Mode = "Hold",
    NoUI = false,
    SyncToggleState = false
})
ResetIntervalSlider = PlayerFeaturesGroupbox:AddSlider("ResetIntervalSlider", {
    Text = GlobalText.ResetIntervalSlider,
    Default = 1,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Suffix = " s",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        ResetInterval = Number
    end
})
ResetMethodDropdown = PlayerFeaturesGroupbox:AddDropdown("ResetMethodDropdown", {
    Text = GlobalText.ResetMethodDropdown,
    Values = {
        GlobalText.BreakJoints,
        GlobalText.StateDied,
        GlobalText.Health0,
        GlobalText.All
    },
    Default = GlobalText.All,
    Multi = false,
    Callback = function(Method)
        if Method == GlobalText.BreakJoints then
            FastResetMethod = "BreakJoints"
        elseif Method == GlobalText.StateDied then
            FastResetMethod = "Died"
        elseif Method == GlobalText.Health0 then
            FastResetMethod = "Health"
        else
            FastResetMethod = "All"
        end
    end
})

--|| Fly Tabs ||--

FlyTabs = Tabs.Player:AddRightTabbox()

--// Velocity Fly Tab \\--
FlyGruopbox = FlyTabs:AddTab(GlobalText.FlyGruopbox) -- I am too lazy to rename the tab fr
FlyToggle = FlyGruopbox:AddToggle("FlyToggle", {
    Text = GlobalText.FlyToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.Fly(Enabled)
    end
}):AddKeyPicker("FlyKeyPicker", {
    Text = GlobalText.FlyKeybind,
    Default = "F",
    Mode = "Toggle",
    SyncToggleState = true,
})
FlySpeedSlider = FlyGruopbox:AddSlider("FlySpeedSlider", {
    Text = GlobalText.FlySpeedSlider,
    Default = 32,
    Min = 10,
    Max = 200,
    Rounding = 0,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        FlySpeed = Number
    end
})
VerticalFlySpeedMultiplierSlider = FlyGruopbox:AddSlider("VerticalFlySpeedMultiplierSlider", {
    Text = GlobalText.VerticalFlySpeedMultiplierSlider,
    Default = 1,
    Min = 0.5,
    Max = 2,
    Rounding = 1,
    Suffix = GlobalText.Multiplier,
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        VerticalFlySpeedMultiplier = Number
    end
})
FlyModeDropdown = FlyGruopbox:AddDropdown("FlyModeDropdown", {
    Text = GlobalText.FlyModeDropdown,
    Values = {
        GlobalText.Smart,
        GlobalText.StandFly,
        GlobalText.VFly,
        GlobalText.SitFly
    },
    Default = GlobalText.Smart,
    Multi = false,
    Callback = function(Mode)
        if Mode == GlobalText.Smart then
            SmartFly = true
        else
            SmartFly = false
        end
        if Mode == GlobalText.StandFly then
            VFly = false
            SitFly = false
        elseif Mode == GlobalText.VFly then
            VFly = true
            SitFly = false
        elseif Mode == GlobalText.SitFly then
            VFly = false
            SitFly = true
        end
    end
})
FlyGruopbox:AddDivider()
FlyGyroToggle = FlyGruopbox:AddToggle("FlyGyroToggle", {
    Text = GlobalText.FlyGyroToggle,
    Default = true,
    Callback = function(Enabled)
        UseFlyGyro = Enabled
        if Universals.Flying then
            Universals.Fly(false)
            Heartbeat:Wait()
            Universals.Fly(true)
        end
    end
})
SmoothGyroToggle = FlyGruopbox:AddToggle("SmoothGyroToggle", {
    Text = GlobalText.SmoothGyroToggle,
    Default = true,
    Callback = function(Enabled)
        SmoothGyro = Enabled
    end
})
SmoothGyroValueSlider = FlyGruopbox:AddSlider("SmoothGyroValueSlider", {
    Text = GlobalText.SmoothGyroValueSlider,
    Default = 0,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        SmoothGyroValue = 500 + Number * 20
    end
})
FlyGruopbox:AddDivider()
FlyControllerDropdown = FlyGruopbox:AddDropdown("FlyControllerDropdown", {
    Text = GlobalText.FlyControllerDropdown,
    Values = {
        GlobalText.QEFly,
        GlobalText.LeftShiftDown,
        GlobalText.LeftControlDown
    },
    Default = GlobalText.QEFly,
    Multi = false,
    Callback = function(Mode)
        QEFly = Mode == GlobalText.QEFly and true or false
        LeftControlDown = Mode == GlobalText.LeftControlDown and true or false
    end
})
UseUpVectorFlyToggle = FlyGruopbox:AddToggle("UseUpVectorFlyToggle", {
    Text = GlobalText.UseUpVectorFlyToggle,
    Default = true,
    Callback = function(Enabled)
        UseUpVector = Enabled
    end
})
StopFlyOnDiedToggle = FlyGruopbox:AddToggle("StopFlyOnDiedToggle", {
    Text = GlobalText.StopFlyOnDiedToggle,
    Default = true,
    Callback = function(Enabled)
        StopFlyOnDied = Enabled
    end
})

--// Constraints Fly Tab \\--
ConstraintsFlyTab = FlyTabs:AddTab(GlobalText.ConstraintsFlyTab)
ConstraintsFlyToggle = ConstraintsFlyTab:AddToggle("ConstraintsFlyToggle", {
    Text = GlobalText.ConstraintsFlyToggle,
    Default = false,
    Callback = function(Enabled)
        UseConstraintsFly = Enabled
        if Universals.Flying then
            Universals.Fly(false)
            Heartbeat:Wait()
            Universals.Fly(true)
        end
    end
})
ConstraintsMaxSpeedSlider = ConstraintsFlyTab:AddSlider("ConstraintsMaxSpeedSlider", {
    Text = GlobalText.ConstraintsMaxSpeedSlider,
    Default = 32,
    Min = 10,
    Max = 200,
    Rounding = 0,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        ConstraintsMaxSpeed = Number
    end
})
ConstraintsAccelerationSlider = ConstraintsFlyTab:AddSlider("ConstraintsAccelerationSlider", {
    Text = GlobalText.ConstraintsAccelerationSlider,
    Default = 75,
    Min = 10,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        ConstraintsAcceleration = Number / 10
    end
})
ConstraintsFlyTab:AddDivider()
LookToCameraToggle = ConstraintsFlyTab:AddToggle("LookToCameraToggle", {
    Text = GlobalText.LookToCameraToggle,
    Default = true,
    Callback = function(Enabled)
        ConstraintsTurnSpeedSlider:SetDisabled(Enabled)
        LookToCamera = Enabled
    end
})
ConstraintsResponsivenessSlider = ConstraintsFlyTab:AddSlider("ConstraintsResponsivenessSlider", {
    Text = GlobalText.ConstraintsResponsivenessSlider,
    Default = 100,
    Min = 1,
    Max = 200,
    Rounding = 0,
    Suffix = " %",
    Compact = true,
    Callback = function(Number)
        ConstraintsResponsiveness = Number
    end
})
ConstraintsTurnSpeedSlider = ConstraintsFlyTab:AddSlider("ConstraintsTurnSpeedSlider", {
    Text = GlobalText.ConstraintsTurnSpeedSlider,
    Default = 60,
    Min = 10,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        ConstraintsTurnSpeed = Number / 10
    end
})
ConstraintsFlyTab:AddDivider()
ConstraintsFlyingStateDropdown = ConstraintsFlyTab:AddDropdown("ConstraintsFlyingStateDropdown", {
    Text = GlobalText.ConstraintsFlyingStateDropdown,
    Values = {
        GlobalText.NoChange,
        GlobalText.FallingDown,
        GlobalText.Ragdoll,
        GlobalText.GettingUp,
        GlobalText.Jumping,
        GlobalText.Swimming,
        GlobalText.Freefall,
        GlobalText.Flying,
        GlobalText.Landed,
        GlobalText.Running,
        GlobalText.RunningNoPhysics,
        GlobalText.StrafingNoPhysics,
        GlobalText.Climbing,
        GlobalText.Seated,
        GlobalText.PlatformStanding,
        GlobalText.Died,
        GlobalText.Physics
    },
    Default = GlobalText.NoChange,
    Multi = false,
    Callback = function(State)
        if State == GlobalText.FallingDown then
            ConstraintsFlyingState = 0
        elseif State == GlobalText.Ragdoll then
            ConstraintsFlyingState = 1
        elseif State == GlobalText.GettingUp then
            ConstraintsFlyingState = 2
        elseif State == GlobalText.Jumping then
            ConstraintsFlyingState = 3
        elseif State == GlobalText.Swimming then
            ConstraintsFlyingState = 4
        elseif State == GlobalText.Freefall then
            ConstraintsFlyingState = 5
        elseif State == GlobalText.Flying then
            ConstraintsFlyingState = 6
        elseif State == GlobalText.Landed then
            ConstraintsFlyingState = 7
        elseif State == GlobalText.Running then
            ConstraintsFlyingState = 8
        elseif State == GlobalText.RunningNoPhysics then
            ConstraintsFlyingState = 10
        elseif State == GlobalText.StrafingNoPhysics then
            ConstraintsFlyingState = 11
        elseif State == GlobalText.Climbing then
            ConstraintsFlyingState = 12
        elseif State == GlobalText.Seated then
            ConstraintsFlyingState = 13
        elseif State == GlobalText.PlatformStanding then
            ConstraintsFlyingState = 14
        elseif State == GlobalText.Died then
            ConstraintsFlyingState = 15
        elseif State == GlobalText.Physics then
            ConstraintsFlyingState = 16
        else
            ConstraintsFlyingState = 18
        end
    end
})

--|| Weird Groupbox ||--

WeirdGruopbox = Tabs.Player:AddRightGroupbox(GlobalText.WeirdGruopbox)
HipHeightToggle = WeirdGruopbox:AddToggle("HipHeightToggle", {
    Text = GlobalText.HipHeightToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.HipHeight(Enabled)
    end
})
HipHeightSlider = WeirdGruopbox:AddSlider("HipHeightSlider", {
    Text = GlobalText.HipHeightSlider,
    Default = Character and Humanoid and math.round(Humanoid.HipHeight * 100) / 100 or 2.25,
    Min = -2.50,
    Max = 69,
    Rounding = 2,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.HipHeightValue(Number)
    end
})
DoHipHeightAfterMeRespawnToggle = WeirdGruopbox:AddToggle("DoHipHeightAfterMeRespawnToggle", {
    Text = GlobalText.DoHipHeightAfterMeRespawnToggle,
    Default = false,
    Callback = function(Enabled)
        DoHipHeightAfterMeRespawn = Enabled
    end
})
WeirdGruopbox:AddDivider()
MaxSlopeAngleToggle = WeirdGruopbox:AddToggle("MaxSlopeAngleToggle", {
    Text = GlobalText.MaxSlopeAngleToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.MaxSlopeAngle(Enabled)
    end
})
MaxSlopeAngleSlider = WeirdGruopbox:AddSlider("MaxSlopeAngleSlider", {
    Text = GlobalText.MaxSlopeAngleSlider,
    Default = Character and Humanoid and math.round(Humanoid.MaxSlopeAngle * 10) / 10 or 89,
    Min = 0,
    Max = 89.9,
    Rounding = 1,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.MaxSlopeAngleValue(Number)
    end
})
WeirdGruopbox:AddDivider()
PlayerScaleToggle = WeirdGruopbox:AddToggle("PlayerScaleToggle", {
    Text = GlobalText.PlayerScaleToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.PlayerScale(Enabled)
    end
})
PlayerScaleSlider = WeirdGruopbox:AddSlider("PlayerScaleSlider", {
    Text = GlobalText.PlayerScaleSlider,
    Default = Character and math.round(Character:GetScale() * 100) / 100 or 1,
    Min = 0.01,
    Max = 50,
    Rounding = 2,
    Suffix = GlobalText.Multiplier,
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.PlayerScaleValue(Number)
    end
})

--|| Camera Common Groupbox ||--

CameraCommonGruopbox = Tabs.Camera:AddLeftGroupbox(GlobalText.CameraCommonGruopbox)
FOVToggle = CameraCommonGruopbox:AddToggle("FOVToggle", {
    Text = GlobalText.FOVToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.FOV(Enabled)
    end
})
FOVSlider = CameraCommonGruopbox:AddSlider("FOVSlider", {
    Text = GlobalText.FOVSlider,
    Default = math.round(Workspace.CurrentCamera.FieldOfView) or 70,
    Min = 5,
    Max = 120,
    Rounding = 0,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.FOVValue(Number)
    end
})
MaxZoomToggle = CameraCommonGruopbox:AddToggle("MaxZoomToggle", {
    Text = GlobalText.MaxZoomToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.MaxZoom(Enabled)
    end
})
MaxZoomSlider = CameraCommonGruopbox:AddSlider("MaxZoomSlider", {
    Text = GlobalText.MaxZoomSlider,
    Default = math.round(Speaker.CameraMaxZoomDistance* 10) / 10 or 128,
    Min = 0.5,
    Max = 1500,
    Rounding = 1,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.MaxZoomValue(Number)
    end
})
MinZoomToggle = CameraCommonGruopbox:AddToggle("MinZoomToggle", {
    Text = GlobalText.MinZoomToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.MinZoom(Enabled)
    end
})
MinZoomSlider = CameraCommonGruopbox:AddSlider("MinZoomSlider", {
    Text = GlobalText.MinZoomSlider,
    Default = math.round(Speaker.CameraMinZoomDistance * 10) /10 or 0.5,
    Min = 0.5,
    Max = 1500,
    Rounding = 1,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.MinZoomValue(Number)
    end
})
CameraCommonGruopbox:AddDivider()
FreeCameraToggle = CameraCommonGruopbox:AddToggle("FreeCameraToggle", {
    Text = GlobalText.FreeCameraToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.FreeCamera(Enabled)
    end
}):AddKeyPicker("FreeCameraKeyPicker", {
    Text = GlobalText.FreeCameraKeybind,
    Default = "P",
    Mode = "Toggle",
    SyncToggleState = true,
})
FreecamSpeedSlider = CameraCommonGruopbox:AddSlider("FreecamSpeedSlider", {
    Text = GlobalText.FreecamSpeedSlider,
    Default = 32,
    Min = 10,
    Max = 200,
    Rounding = 0,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        local Speed = Number / 64
        NavKeyboardSpeed = Vector3.new(Speed, Speed, Speed)
    end
})
LeftShiftMultiplierSlider = CameraCommonGruopbox:AddSlider("LeftShiftMultiplierSlider", {
    Text = GlobalText.LeftShiftMultiplierSlider,
    Default = 0.3,
    Min = 0.1,
    Max = 2,
    Rounding = 1,
    Suffix = GlobalText.Multiplier,
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        NavShiftMultiplier = Number
    end
})
SpaceMultiplierSlider = CameraCommonGruopbox:AddSlider("SpaceMultiplierSlider", {
    Text = GlobalText.SpaceMultiplierSlider,
    Default = 2,
    Min = 0.1,
    Max = 2,
    Rounding = 1,
    Suffix = GlobalText.Multiplier,
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        NavSpaceMultiplier = Number
    end
})
CameraCommonGruopbox:AddDivider()
CameraPlayerSelectorDropdown = CameraCommonGruopbox:AddDropdown("CameraPlayerSelectorDropdown", {
    Text = GlobalText.CameraPlayerSelectorDropdown,
    SpecialType = "Player",
    ExcludeLocalPlayer = true,
    Callback = function(Player)
        CameraPlayer = Player
    end
})
SpectatePlayerToggle = CameraCommonGruopbox:AddToggle("SpectatePlayerToggle", {
    Text = GlobalText.SpectatePlayerToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.SpectatePlayer(Enabled)
    end
})
UnSpectateWhenCharacterRemovingToggle = CameraCommonGruopbox:AddToggle("UnSpectateWhenCharacterRemovingToggle", {
    Text = GlobalText.UnSpectateWhenCharacterRemovingToggle,
    Default = false,
    Callback = function(Enabled)
        USWCR = Enabled
    end
})
CameraCommonGruopbox:AddDivider()
UnlockThirdPersonToggle = CameraCommonGruopbox:AddToggle("UnlockThirdPersonToggle", {
    Text = GlobalText.UnlockThirdPersonToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.UnlockThirdPerson(Enabled)
    end
})
CameraNoclipToggle = CameraCommonGruopbox:AddToggle("CameraNoclipToggle", {
    Text = GlobalText.CameraNoclipToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.CameraNoclip(Enabled)
    end
})
AntiFollowCameraModeToggle = CameraCommonGruopbox:AddToggle("AntiFollowCameraModeToggle", {
    Text = GlobalText.AntiFollowCameraModeToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.AntiFollowCameraMode(Enabled)
    end
})

--|| Camera More Groupbox ||--

CameraMoreGruopbox = Tabs.Camera:AddRightGroupbox(GlobalText.CameraMoreGruopbox)
AllowShiftLockToggle = CameraMoreGruopbox:AddToggle("AllowShiftLockToggle", {
    Text = GlobalText.AllowShiftLockToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.AllowShiftLock(Enabled)
    end
})
AntiGameplayPausedToggle = CameraMoreGruopbox:AddToggle("AntiGameplayPausedToggle", {
    Text = GlobalText.AntiGameplayPausedToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.AntiGameplayPaused(Enabled)
    end
})
FixCameraButton = CameraMoreGruopbox:AddButton({
    Text = GlobalText.FixCameraButton,
    DoubleClick = true,
    Func = function()
        Universals.FixCamera()
    end
})
CameraMoreGruopbox:AddDivider()
CameraOffsetToggle = CameraMoreGruopbox:AddToggle("CameraOffsetToggle", {
    Text = GlobalText.CameraOffsetToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.CameraOffset(Enabled)
    end
})
CameraX, CameraY, CameraZ = 0, 0, 0
CameraOffsetXSlider = CameraMoreGruopbox:AddSlider("CameraOffsetXSlider", {
    Text = "X",
    Default = 0,
    Min = -10,
    Max = 10,
    Rounding = 1,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(NumberX)
        CameraX = NumberX
        Universals.CameraOffsetValue(CameraX, CameraY, CameraZ)
    end
})
CameraOffsetYSlider = CameraMoreGruopbox:AddSlider("CameraOffsetYSlider", {
    Text = "Y",
    Default = 0,
    Min = -10,
    Max = 10,
    Rounding = 1,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(NumberY)
        CameraY = NumberY
        Universals.CameraOffsetValue(CameraX, CameraY, CameraZ)
    end
})
CameraOffsetZSlider = CameraMoreGruopbox:AddSlider("CameraOffsetZSlider", {
    Text = "Z",
    Default = 0,
    Min = -10,
    Max = 10,
    Rounding = 1,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(NumberZ)
        CameraZ = NumberZ
        Universals.CameraOffsetValue(CameraX, CameraY, CameraZ)
    end
})

--|| Ambient General Groupbox ||--

AmbientGeneralGruopbox = Tabs.Ambient:AddLeftGroupbox(GlobalText.AmbientGeneralGruopbox)
FullBrightToggle = AmbientGeneralGruopbox:AddToggle("FullBrightToggle", {
    Text = GlobalText.FullBrightToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.FullBright(Enabled)
    end
})
FullDarkToggle = AmbientGeneralGruopbox:AddToggle("FullDarkToggle", {
    Text = GlobalText.FullDarkToggle,
    Default = false,
    Callback = function(Enabled)
        if Enabled and FullWhiteToggle.Value then
            FullWhiteToggle:SetValue(false)
        end
        Universals.FullDark(Enabled)
    end
})
FullWhiteToggle = AmbientGeneralGruopbox:AddToggle("FullWhiteToggle", {
    Text = GlobalText.FullWhiteToggle,
    Default = false,
    Callback = function(Enabled)
        if Enabled and FullDarkToggle.Value then
            FullDarkToggle:SetValue(false)
        end
        Universals.FullWhite(Enabled)
    end
})
SuperFullBrightToggle = AmbientGeneralGruopbox:AddToggle("SuperFullBrightToggle", {
    Text = GlobalText.SuperFullBrightToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.Day(Enabled)
    end
})
AmbientGeneralGruopbox:AddDivider()
NoAtmosphereToggle = AmbientGeneralGruopbox:AddToggle("NoAtmosphereToggle", {
    Text = GlobalText.NoAtmosphereToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.NoFog(Enabled)
        Universals.NoAtmosphere(Enabled)
    end
})
NoDepthOfFieldToggle = AmbientGeneralGruopbox:AddToggle("NoDepthOfFieldToggle", {
    Text = GlobalText.NoDepthOfFieldToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.NoDepthOfField(Enabled)
    end
})
NoBlurToggle = AmbientGeneralGruopbox:AddToggle("NoBlurToggle", {
    Text = GlobalText.NoBlurToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.NoBlur(Enabled)
    end
})
NoBloomToggle = AmbientGeneralGruopbox:AddToggle("NoBloomToggle", {
    Text = GlobalText.NoBloomToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.NoBloom(Enabled)
    end
})

--|| Ambient Custom Groupbox ||--

AmbientCustomGruopbox = Tabs.Ambient:AddRightGroupbox(GlobalText.AmbientCustomGruopbox)
AmbientColorToggle = AmbientCustomGruopbox:AddToggle("AmbientColorToggle", {
    Text = GlobalText.AmbientColorToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.Ambient(Enabled)
    end
}):AddColorPicker("AmbientColorPicker", {
    Title = GlobalText.AmbientColorPicker,
    Default = Lighting.Ambient,
    Callback = function(Color)
        Universals.AmbientColor(Color)
    end
})
BrightnessToggle = AmbientCustomGruopbox:AddToggle("BrightnessToggle", {
    Text = GlobalText.BrightnessToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.Brightness(Enabled)
    end
})
BrightnessSlider = AmbientCustomGruopbox:AddSlider("BrightnessSlider", {
    Text = GlobalText.BrightnessSlider,
    Default = math.round(Lighting.Brightness * 10) / 10 or 2,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.BrightnessValue(Number)
    end
})
ClockTimeToggle = AmbientCustomGruopbox:AddToggle("ClockTimeToggle", {
    Text = GlobalText.ClockTimeToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.ClockTime(Enabled)
    end
})
ClockTimeSlider = AmbientCustomGruopbox:AddSlider("ClockTimeSlider", {
    Text = GlobalText.ClockTimeSlider,
    Default = math.round(Lighting.ClockTime * 10) / 10 or 14,
    Min = 0,
    Max = 24,
    Rounding = 1,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.ClockTimeValue(Number)
    end
})
OutdoorAmbientToggle = AmbientCustomGruopbox:AddToggle("OutdoorAmbientToggle", {
    Text = GlobalText.OutdoorAmbientToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.OutdoorAmbient(Enabled)
    end
}):AddColorPicker("OutdoorAmbientColorPicker", {
    Title = GlobalText.OutdoorAmbientColorPicker,
    Default = Lighting.OutdoorAmbient,
    Callback = function(Color)
        Universals.OutdoorAmbientColor(Color)
    end
})
AmbientCustomGruopbox:AddDivider()
ColorShiftBottomToggle = AmbientCustomGruopbox:AddToggle("ColorShiftBottomToggle", {
    Text = GlobalText.ColorShiftBottomToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.ColorShiftBottom(Enabled)
    end
}):AddColorPicker("ColorShiftBottomColorPicker", {
    Title = GlobalText.ColorShiftBottomColorPicker,
    Default = Lighting.ColorShift_Bottom,
    Callback = function(Color)
        Universals.ColorShiftBottomColor(Color)
    end
})
ColorShiftTopToggle = AmbientCustomGruopbox:AddToggle("ColorShiftTopToggle", {
    Text = GlobalText.ColorShiftTopToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.ColorShiftTop(Enabled)
    end
}):AddColorPicker("ColorShiftTopColorPicker", {
    Title = GlobalText.ColorShiftTopColorPicker,
    Default = Lighting.ColorShift_Top,
    Callback = function(Color)
        Universals.ColorShiftTopColor(Color)
    end
})
DiffuseScaleToggle = AmbientCustomGruopbox:AddToggle("DiffuseScaleToggle", {
    Text = GlobalText.DiffuseScaleToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.DiffuseScale(Enabled)
    end
})
DiffuseScaleSlider = AmbientCustomGruopbox:AddSlider("DiffuseScaleSlider", {
    Text = GlobalText.DiffuseScaleSlider,
    Default = math.round(Lighting.EnvironmentDiffuseScale * 100) or 0,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        local Number = Number / 100
        Universals.DiffuseScaleValue(Number)
    end
})
SpecularScaleToggle = AmbientCustomGruopbox:AddToggle("SpecularScaleToggle", {
    Text = GlobalText.SpecularScaleToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.SpecularScale(Enabled)
    end
})
SpecularScaleSlider = AmbientCustomGruopbox:AddSlider("SpecularScaleSlider", {
    Text = GlobalText.SpecularScaleSlider,
    Default = math.round(Lighting.EnvironmentSpecularScale * 100) or 0,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        local Number = Number / 100
        Universals.SpecularScaleValue(Number)
    end
})
ShadowSoftnessToggle = AmbientCustomGruopbox:AddToggle("ShadowSoftnessToggle", {
    Text = GlobalText.ShadowSoftnessToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.ShadowSoftness(Enabled)
    end
})
ShadowSoftnessSlider = AmbientCustomGruopbox:AddSlider("ShadowSoftnessSlider", {
    Text = GlobalText.ShadowSoftnessSlider,
    Default = math.round(Lighting.ShadowSoftness * 100) or 50,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        local Number = Number / 100
        Universals.ShadowSoftnessValue(Number)
    end
})
GeographicLatitudeToggle = AmbientCustomGruopbox:AddToggle("GeographicLatitudeToggle", {
    Text = GlobalText.GeographicLatitudeToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.GeographicLatitude(Enabled)
    end
})
GeographicLatitudeSlider = AmbientCustomGruopbox:AddSlider("GeographicLatitudeSlider", {
    Text = GlobalText.GeographicLatitudeSlider,
    Default = math.round(Lighting.GeographicLatitude) or 42,
    Min = -180,
    Max = 180,
    Rounding = 0,
    Suffix = "°",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Universals.GeographicLatitudeValue(Number)
    end
})
AmbientCustomGruopbox:AddDivider()
TechnologyDropdown = AmbientCustomGruopbox:AddDropdown("TechnologyDropdown", {
    Text = GlobalText.TechnologyDropdown,
    Values = {
        GlobalText.Voxel,
        GlobalText.ShadowMap,
        GlobalText.Future,
        GlobalText.Compatibility,
        GlobalText.Legacy,
        GlobalText.Unified
    },
    Default = Lighting.Technology.Name == "Voxel" and GlobalText.Voxel or Lighting.Technology.Name == "ShadowMap" and GlobalText.ShadowMap or Lighting.Technology.Name == "Future" and GlobalText.Future or Lighting.Technology.Name == "Compatibility" and GlobalText.Compatibility or Lighting.Technology.Name == "Legacy" and GlobalText.Legacy or Lighting.Technology.Name == "Unified" and GlobalText.Unified,
    Multi = false,
    Callback = function(Text)
        if Text == GlobalText.Voxel then
            Technology = Enum.Technology.Voxel
        elseif Text == GlobalText.ShadowMap then
            Technology = Enum.Technology.ShadowMap
        elseif Text == GlobalText.Future then
            Technology = Enum.Technology.Future
        elseif Text == GlobalText.Compatibility then
            Technology = Enum.Technology.Compatibility
        elseif Text == GlobalText.Legacy then
            Technology = Enum.Technology.Legacy
        elseif Text == GlobalText.Unified then
            Technology = Enum.Technology.Unified
        end
        Lighting.Technology = Technology
    end
})

--|| ESP Functions ||--

local ESPConnections = {CA = {}, CR = {}, TC = {}}
local ESPElements = {}
local ESPTextSize = 22
local ESPVisible = true
local ESPDisplayName = true
local ESPTextModel = "HumanoidRootPart" :: ("HumanoidRootPart" | "Humanoid" | "Head")?

local White = Color3.new(1, 1, 1)
local ESPMainColor, ESPSelectionBoxColor, ESPFillColor, ESPOutlineColor = White, White, White, White

local function ESPConditions(Player)
    return Player and not (AllowESP and (ESPMe or Player ~= Speaker) and (not ESPTeamColor or #Teams:GetTeams() < 2 or Player.TeamColor.Color ~= Speaker.TeamColor.Color))
end

local function ESPHandleCharacter(Character, Player)
    local Player = Player or Players:GetPlayerFromCharacter(Character)
    if ESPConditions(Player) then return end
    local Color = ESPTeamColor and Player.TeamColor.Color or ESPMainColor
    local TextModel = Character:WaitForChild(ESPTextModel)
    local Humanoid = Character:WaitForChild("Humanoid")
    local RootPart = Humanoid.RootPart
    if ESPElements[Player] then
        ESPElements[Player]:Destroy()
    end
    ESPElements[Player] = ESPLibrary:Add({
        Name = ESPDisplayName and Player.DisplayName or Player.Name,
        ESPType = ESPType or Arsenal and "Adornment" or "Highlight",
        OutlineTransparency = ESPOutlineTransparency,
        FillTransparency = ESPFillTransparency,
        SurfaceColor = ESPSelectionBoxColor,
        MaxDistance = ESPMaxDistance,
        TextSize = ESPTextSize,
        FillColor = Color,
        Color = Color,
        Model = Character,
        Visible = ESPVisible,
        OutlineColor = Color,
        TextModel = TextModel,
        Thickness = ESPMainThickness,
        Transparency = ESPMainTransparency,
        Tracer = {
            Transparency = ESPTracerOpacity or 1,
            Thickness = ESPTracerThickness or 2,
            From = TracerFrom or "Bottom",
            Enabled = ESPTracerEnabled,
            Color = Color
        },
        Arrow = {
            Color = Color,
            Enabled = ESPArrowEnabled,
            CenterOffset = ESPArrowCenterOffset
        }
    })
end

local function ESPHandlePlayer(Player)
    if ESPConditions(Player) then return end
    if Player.Character then
        ESPHandleCharacter(Player.Character, Player)
    end
    ESPConnections.CA[Player] = (ESPConnections.CA[Player] and ESPConnections.CA[Player]:Disconnect()) or Player.CharacterAdded:Connect(ESPHandleCharacter)
    ESPConnections.CR[Player] = (ESPConnections.CR[Player] and ESPConnections.CR[Player]:Disconnect()) or Player.CharacterRemoving:Connect(function()
        if ESPElements[Player] then
            ESPElements[Player]:Destroy()
        end
    end)
    ESPConnections.TC[Player] = (ESPConnections.TC[Player] and ESPConnections.TC[Player]:Disconnect()) or Player:GetPropertyChangedSignal("TeamColor"):Connect(function()
        if not Player.Character then return end
        ESPHandleCharacter(Player.Character, Player)
    end)
end

local function ESPUpdateCore(Class, Player)
    local function Update(Property, Value, TypeFilter, Folders, TeamCheck)
        if TeamCheck and ESPTeamColor then return end
        ESPElements[Player].CurrentSettings[Property] = Value
        for _, Folder in pairs(Folders) do
            for _, Object in pairs(Folder:GetDescendants()) do
                if Object:IsA(TypeFilter) then
                    Object[Property] = Value
                end
            end
        end
    end
    if Class == "ESPSelectionBoxColor" then
        Update("SurfaceColor3", ESPSelectionBoxColor, "SelectionBox", {ESPLibrary.ActiveFolder, ESPLibrary.StorageFolder}, true)
    elseif Class == "ESPMainTransparency" then
        Update("Transparency", ESPMainTransparency, "HandleAdornment,TextLabel", {ESPLibrary.ActiveFolder, ESPLibrary.StorageFolder})
    elseif Class == "ESPFillColor" then
        Update("FillColor", ESPFillColor, "Highlight", {ESPLibrary.ActiveFolder, ESPLibrary.StorageFolder}, true)
    elseif Class == "ESPOutlineColor" then
        Update("OutlineColor", ESPOutlineColor, "Highlight", {ESPLibrary.ActiveFolder, ESPLibrary.StorageFolder}, true)
    elseif Class == "ESPFillTransparency" then
        Update("FillTransparency", ESPFillTransparency, "Highlight", {ESPLibrary.ActiveFolder, ESPLibrary.StorageFolder})
    elseif Class == "ESPOutlineTransparency" then
        Update("OutlineTransparency", ESPOutlineTransparency, "Highlight", {ESPLibrary.ActiveFolder, ESPLibrary.StorageFolder})
    elseif Class == "TracerColor" then
        Update("Color", ESPTracerColor, "Path2D", {ESPLibrary.MainGUI})
    elseif Class == "TracerThickness" then
        Update("Thickness", ESPTracerThickness, "Path2D", {ESPLibrary.MainGUI})
    elseif Class == "TracerOpacity" then
        Update("Transparency", ESPTracerOpacity, "Path2D", {ESPLibrary.MainGUI})
    elseif Class == "ArrowColor" then
        Update("ImageColor3", ESPArrowColor, "ImageLabel", {ESPLibrary.MainGUI})
    elseif Class == "ArrowCenterOffset" then
        ESPElements[Player].CurrentSettings.Arrow.CenterOffset = ESPArrowCenterOffset
    elseif Class == "TextSize" then
        ESPElements[Player].CurrentSettings.TextSize = ESPTextSize
        for _, Text in pairs(ESPLibrary.BillboardGUI:GetDescendants()) do
            if Text:IsA("TextLabel") then
                Text.TextSize = ESPTextSize
            end
        end
    end
end

local function ESPUpdate(Class)
    for _, Player in pairs(Players:GetPlayers()) do
        if ESPConditions(Player) then continue end
        task.spawn(function()
            pcall(ESPUpdateCore, Class, Player)
        end)
    end
end

local function ESPClear()
    local function Disconnect(Object)
        for _, Connection in Object do
            Connection:Disconnect()
        end
    end
    Disconnect(ESPConnections.CA)
    Disconnect(ESPConnections.CR)
    Disconnect(ESPConnections.TC)
    ESPLibrary:Clear()
    ESPElements = {}
end

local function ESPRestart()
    ESPClear()
    Heartbeat:Wait()
    for _, Player in pairs(Players:GetPlayers()) do
        ESPHandlePlayer(Player)
    end
end

ESPConnections.TA = Teams.ChildAdded:Connect(ESPRestart)
ESPConnections.TR = Teams.ChildRemoved:Connect(ESPRestart)
ESPConnections.TS = Speaker:GetPropertyChangedSignal("TeamColor"):Connect(ESPRestart)

ESPConnections.PA = Players.PlayerAdded:Connect(ESPHandlePlayer)
ESPConnections.PR = Players.PlayerRemoving:Connect(function(Player)
    ESPElements[Player] = ESPElements[Player] and ESPElements[Player]:Destroy()
    ESPConnections.CA[Player] = ESPConnections.CA[Player] and ESPConnections.CA[Player]:Disconnect()
    ESPConnections.TC[Player] = ESPConnections.TC[Player] and ESPConnections.TC[Player]:Disconnect()
end)

task.spawn(function()
    while task.wait(3) and (getgenv().MFeeeLoaded or getgenv().MFeeeLoading) do
        if not AllowESP then
            ESPClear()
        end
    end
end)

--|| ESP Global Settings Groupbox ||--

ESPGlobalSettingsGroupbox = Tabs.ESP:AddLeftGroupbox(GlobalText.ESPGlobalSettingsGroupbox)
ESPAllToggle = ESPGlobalSettingsGroupbox:AddToggle("ESPAllToggle", {
    Text = GlobalText.ESPAllToggle,
    Default = false,
    Callback = function(Enabled)
        AllowESP = Enabled
        if Enabled then
            for _, Player in pairs(Players:GetPlayers()) do
                ESPHandlePlayer(Player)
            end
        else
            ESPClear()
        end
    end
})
ESPMeToggle = ESPGlobalSettingsGroupbox:AddToggle("ESPMeToggle", {
    Text = GlobalText.ESPMeToggle,
    Default = false,
    Callback = function(Enabled)
        ESPMe = Enabled
        ESPRestart()
    end
})
ESPGlobalSettingsGroupbox:AddDivider()
ESPTeamCheckToggle = ESPGlobalSettingsGroupbox:AddToggle("ESPTeamCheckToggle", {
    Text = GlobalText.ESPTeamCheckToggle,
    Default = false,
    Callback = function(Enabled)
        ESPTeamCheck = Enabled
        ESPRestart()
    end
})
ESPTeamColorToggle = ESPGlobalSettingsGroupbox:AddToggle("ESPTeamColorToggle", {
    Text = GlobalText.ESPTeamColorToggle,
    Default = false,
    Callback = function(Enabled)
        ESPTeamColor = Enabled
        ESPRestart()
    end
})
ESPHugeDistanceToggle = ESPGlobalSettingsGroupbox:AddToggle("ESPHugeDistanceToggle", {
    Text = GlobalText.ESPHugeDistanceToggle,
    Default = false,
    Callback = function(Enabled)
        ESPMaxDistance = Enabled and math.huge or 5000
        ESPRestart()
    end
})
GayESPToggle = ESPGlobalSettingsGroupbox:AddToggle("GayESPToggle", {
    Text = GlobalText.GayESPToggle,
    Default = false,
    Callback = function(Enabled)
        ESPLibrary.GlobalConfig.Rainbow = Enabled
        ESPRestart()
    end
})
ESPTypeDropdown = ESPGlobalSettingsGroupbox:AddDropdown("ESPTypeDropdown", {
    Text = GlobalText.ESPTypeDropdown,
    Values = {
        GlobalText.Text,
        GlobalText.SphereAdornment,
        GlobalText.CylinderAdornment,
        GlobalText.Adornment,
        GlobalText.SelectionBox,
        GlobalText.Highlight
    },
    Default = Arsenal and GlobalText.SelectionBox or GlobalText.Highlight,
    DisabledValues = Arsenal and {GlobalText.Highlight },
    Multi = false,
    Callback = function(Type)
        if Type == GlobalText.Text then
            ESPType = "Text"
        elseif Type == GlobalText.SphereAdornment then
            ESPType = "SphereAdornment"
        elseif Type == GlobalText.CylinderAdornment then
            ESPType = "CylinderAdornment"
        elseif Type == GlobalText.Adornment then
            ESPType = "Adornment"
        elseif Type == GlobalText.SelectionBox then
            ESPType = "SelectionBox"
        elseif Type == GlobalText.Highlight then
            ESPType = "Highlight"
        end
        ESPRestart()
    end
})
ESPGlobalSettingsGroupbox:AddDivider()
ESPColorLabel = ESPGlobalSettingsGroupbox:AddLabel(GlobalText.ESPColorLabel):AddColorPicker("ESPColorPicker", {
    Title = GlobalText.ESPColorPicker,
    Default = Color3.new(1, 1, 1),
    Callback = function(Color)
        ESPSelectionBoxColor = Color
        ESPUpdate("ESPSelectionBoxColor")
    end
})
ESPTransparencySlider = ESPGlobalSettingsGroupbox:AddSlider("ESPTransparencySlider", {
    Text = GlobalText.ESPTransparencySlider,
    Default = 65,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        ESPMainTransparency = Number / 100
        ESPUpdate("ESPMainTransparency")
    end
})

--|| ESP Highlight Groupbox ||--

ESPHighlightGroupbox = Tabs.ESP:AddLeftGroupbox(GlobalText.ESPHighlightGroupbox)
ESPFillColorLabel = ESPHighlightGroupbox:AddLabel(GlobalText.ESPFillColorLabel):AddColorPicker("ESPFillColorPicker", {
    Title = GlobalText.ESPFillColorPicker,
    Default = Color3.new(1, 1, 1),
    Callback = function(Color)
        ESPFillColor = Color
        ESPUpdate("ESPFillColor")
    end
})
ESPOutlineColorLabel = ESPHighlightGroupbox:AddLabel(GlobalText.ESPOutlineColorLabel):AddColorPicker("ESPOutlineColorPicker", {
    Title = GlobalText.ESPOutlineColorPicker,
    Default = Color3.new(1, 1, 1),
    Callback = function(Color)
        ESPOutlineColor = Color
        ESPUpdate("ESPOutlineColor")
    end
})
ESPHighlightGroupbox:AddDivider()
ESPFillTransparencySlider = ESPHighlightGroupbox:AddSlider("ESPFillTransparencySlider", {
    Text = GlobalText.ESPFillTransparencySlider,
    Default = 65,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        ESPFillTransparency = Number / 100
        ESPUpdate("ESPFillTransparency")
    end
})
ESPOutlineTransparencySlider = ESPHighlightGroupbox:AddSlider("ESPOutlineTransparencySlider", {
    Text = GlobalText.ESPOutlineTransparencySlider,
    Default = 0,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        ESPOutlineTransparency = Number / 100
        ESPUpdate("ESPOutlineTransparency")
    end
})

--|| ESP Text Groupbox ||--

ESPTextGroupbox = Tabs.ESP:AddRightGroupbox(GlobalText.ESPTextGroupbox)
ESPShowTextToggle = ESPTextGroupbox:AddToggle("ESPShowTextToggle", {
    Text = GlobalText.ESPShowTextToggle,
    Default = true,
    Callback = function(Enabled)
        ESPLibrary.GlobalConfig.Billboards = Enabled
        ESPRestart()
    end
})
ESPDisplayNameToggle = ESPTextGroupbox:AddToggle("ESPDisplayNameToggle", {
    Text = GlobalText.ESPDisplayNameToggle,
    Default = true,
    Callback = function(Enabled)
        ESPDisplayName = Enabled
        ESPRestart()
    end
})
ESPDisplayDistanceToggle = ESPTextGroupbox:AddToggle("ESPDisplayDistanceToggle", {
    Text = GlobalText.ESPDisplayDistanceToggle,
    Default = true,
    Callback = function(Enabled)
        ESPLibrary.GlobalConfig.Distance = Enabled
        ESPRestart()
    end
})
ESPTextSizeSlider = ESPTextGroupbox:AddSlider("ESPTextSizeSlider", {
    Text = GlobalText.ESPTextSizeSlider,
    Default = 22,
    Min = 10,
    Max = 26,
    Rounding = 0,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        ESPTextSize = Number
        ESPUpdate("TextSize")
    end
})
ESPTextModelDropdown = ESPTextGroupbox:AddDropdown("ESPTextModelDropdown", {
    Text = GlobalText.ESPTextModelDropdown,
    Values = {
        GlobalText.Humanoid,
        GlobalText.RootPart,
        GlobalText.Character
    },
    Default = GlobalText.RootPart,
    Multi = false,
    Callback = function(Model)
        if Model == GlobalText.Humanoid then
            ESPTextModel = 1
        elseif Model == GlobalText.RootPart then
            ESPTextModel = 2
        else
            ESPTextModel = 0
        end
        ESPRestart()
    end
})

--|| ESP Tracer Groupbox ||--

ESPTracerGroupbox = Tabs.ESP:AddRightGroupbox(GlobalText.ESPTracerGroupbox)
ESPTracerToggle = ESPTracerGroupbox:AddToggle("ESPTracerToggle", {
    Text = GlobalText.ESPTracerToggle,
    Default = false,
    Callback = function(Enabled)
        ESPTracerEnabled = Enabled
        ESPRestart()
    end
})
ESPTracerColorLabel = ESPTracerGroupbox:AddLabel(GlobalText.ESPTracerColorLabel):AddColorPicker("ESPTracerColorPicker", {
    Title = GlobalText.ESPTracerColorPicker,
    Default = Color3.new(1, 1, 1),
    Callback = function(Color)
        ESPTracerColor = Color
        ESPUpdate("TracerColor")
    end
})
ESPTracerFromDropdown = ESPTracerGroupbox:AddDropdown("ESPTracerFromDropdown", {
    Text = GlobalText.ESPTracerFromDropdown,
    Values = {
        GlobalText.Bottom,
        GlobalText.Center,
        GlobalText.Top,
        GlobalText.Mouse
    },
    Default = GlobalText.Bottom,
    Multi = false,
    Callback = function(From)
        if From == GlobalText.Bottom then
            TracerFrom = "Bottom"
        elseif From == GlobalText.Center then
            TracerFrom = "Center"
        elseif From == GlobalText.Top then
            TracerFrom = "Top"
        elseif From == GlobalText.Mouse then
            TracerFrom = "Mouse"
        end
        ESPRestart()
    end
})
ESPTracerThicknessSlider = ESPTracerGroupbox:AddSlider("ESPTracerThicknessSlider", {
    Text = GlobalText.ESPTracerThicknessSlider,
    Default = 2,
    Min = 1,
    Max = 10,
    Rounding = 0,
    Suffix = " px",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        ESPTracerThickness = Number
        ESPUpdate("TracerThickness")
    end
})
ESPTracerTransparencySlider = ESPTracerGroupbox:AddSlider("ESPTracerTransparencySlider", {
    Text = GlobalText.ESPTracerTransparencySlider,
    Default = 100,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        ESPTracerOpacity = Number / 100
        ESPUpdate("TracerOpacity")
    end
})

--|| ESP Arrow Groupbox ||--

ESPArrowGroupbox = Tabs.ESP:AddRightGroupbox(GlobalText.ESPArrowGroupbox)
ESPArrowToggle = ESPArrowGroupbox:AddToggle("ESPArrowToggle", {
    Text = GlobalText.ESPArrowToggle,
    Default = false,
    Callback = function(Enabled)
        ESPArrowEnabled = Enabled
        ESPRestart()
    end
})
ESPArrowColorLabel = ESPArrowGroupbox:AddLabel(GlobalText.ESPArrowColorLabel):AddColorPicker("ESPArrowColorPicker", {
    Title = GlobalText.ESPArrowColorPicker,
    Default = Color3.new(1, 1, 1),
    Callback = function(Color)
        ESPArrowColor = Color
        ESPUpdate("ArrowColor")
    end
})
ESPArrowCenterOffsetSlider = ESPArrowGroupbox:AddSlider("ESPArrowCenterOffsetSlider", {
    Text = GlobalText.ESPArrowCenterOffsetSlider,
    Default = 300,
    Min = 0,
    Max = 500,
    Rounding = 0,
    Suffix = "",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        ESPArrowCenterOffset = Number
        ESPUpdate("ArrowCenterOffset")
    end
})

--|| Aimbot Settings Groupbox ||--

AimbotSettingsGroupbox = Tabs.Aimbot:AddLeftGroupbox(GlobalText.AimbotSettingsGroupbox)
EnableAimbotToggle = AimbotSettingsGroupbox:AddToggle("EnableAimbotToggle", {
    Text = GlobalText.EnableAimbotToggle,
    Default = false,
    Callback = function(Enabled)
        if Enabled and EnableSilentAimToggle.Value then
            EnableSilentAimToggle:SetValue(false)
            Heartbeat:Wait()
        end
        Aimbot.Settings.Enabled = Enabled
    end
}):AddKeyPicker("AimbotKeybind",{
    Text = GlobalText.AimbotKeybind,
    Default = MFeeeLanguage == "Chinese" and "右键" or "MB2",
    Mode = "Hold",
    NoUI = false,
    SyncToggleState = false,
    ChangedCallback = function(Key)
        Aimbot.Settings.TriggerKey = Key
    end
})
AimbotToggleModeToggle = AimbotSettingsGroupbox:AddToggle("AimbotToggleModeToggle", {
    Text = GlobalText.AimbotToggleModeToggle,
    Default = false,
    Callback = function(Enabled)
        Aimbot.Settings.Toggle = Enabled
    end
})
AimbotInfiniteLockDistanceToggle = AimbotSettingsGroupbox:AddToggle("AimbotInfiniteLockDistanceToggle", {
    Text = GlobalText.AimbotInfiniteLockDistanceToggle,
    Default = false,
    Callback = function(Enabled)
        Aimbot.Settings.InfiniteDistance = Enabled
    end
})
AimbotSettingsGroupbox:AddDivider()
AimbotTeamCheckToggle = AimbotSettingsGroupbox:AddToggle("AimbotTeamCheckToggle", {
    Text = GlobalText.AimbotTeamCheckToggle,
    Default = true,
    Callback = function(Enabled)
        Aimbot.Settings.TeamCheck = Enabled
    end
})
AimbotAliveCheckToggle = AimbotSettingsGroupbox:AddToggle("AimbotAliveCheckToggle", {
    Text = GlobalText.AimbotAliveCheckToggle,
    Default = true,
    Callback = function(Enabled)
        Aimbot.Settings.AliveCheck = Enabled
    end
})
AimbotWallCheckToggle = AimbotSettingsGroupbox:AddToggle("AimbotWallCheckToggle", {
    Text = GlobalText.AimbotWallCheckToggle,
    Default = false,
    Callback = function(Enabled)
        Aimbot.Settings.WallCheck = Enabled
    end
})
AimbotSettingsGroupbox:AddDivider()
AimbotOffsetToMoveDirectionToggle = AimbotSettingsGroupbox:AddToggle("AimbotOffsetToMoveDirectionToggle", {
    Text = GlobalText.AimbotOffsetToMoveDirectionToggle,
    Default = false,
    Callback = function(Enabled)
        Aimbot.Settings.OffsetToMoveDirection = Enabled
    end
})
AimbotOffsetIncrementSlider = AimbotSettingsGroupbox:AddSlider("AimbotOffsetIncrementSlider", {
    Text = GlobalText.AimbotOffsetIncrementSlider,
    Default = 15,
    Min = 0,
    Max = 30,
    Rounding = 0,
    Suffix = "",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        Aimbot.Settings.OffsetIncrement = Number
    end
})
AimbotSettingsGroupbox:AddDivider()
AimbotSensitivitySlider = AimbotSettingsGroupbox:AddSlider("AimbotSensitivitySlider", {
    Text = GlobalText.AimbotSensitivitySlider,
    Default = 0,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        Aimbot.Settings.Sensitivity = Number / 100
    end
})
AimbotSensitivity2Slider = AimbotSettingsGroupbox:AddSlider("AimbotSensitivity2Slider", {
    Text = GlobalText.AimbotSensitivity2Slider,
    Default = 100,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        Aimbot.Settings.Sensitivity2 = Number / 10
    end
})
AimbotSettingsGroupbox:AddDivider()
AimbotLockModeDropdown = AimbotSettingsGroupbox:AddDropdown("AimbotLockModeDropdown", {
    Text = GlobalText.AimbotLockModeDropdown,
    Values = {
        GlobalText.CFrame,
        GlobalText.Mousemoverel
    },
    Default = (Rivals and GlobalText.Mousemoverel) or GlobalText.CFrame,
    Multi = false,
    Callback = function(Mode)
        if Mode == GlobalText.CFrame then
            Aimbot.Settings.LockMode = 1
            if Rivals then
                Library:Notify({
                    Title = GlobalText.RivalsCFrameLockTitle,
                    Description = GlobalText.RivalsCFrameLockDescription,
                    Time = 5
                })
                NotifySound(_, _, true)
            end
        else
            Aimbot.Settings.LockMode = 2
        end
    end
})
AimbotLockPartDropdown = AimbotSettingsGroupbox:AddDropdown("AimbotLockPartDropdown", {
    Text = GlobalText.AimbotLockPartDropdown,
    Values = {
        GlobalText.Head,
        GlobalText.HumanoidRootPart,
        GlobalText.Torso,
        GlobalText.LeftArm,
        GlobalText.RightArm,
        GlobalText.LeftLeg,
        GlobalText.RightLeg,
        GlobalText.UpperTorso,
        GlobalText.LowerTorso,
        GlobalText.LeftUpperArm,
        GlobalText.LeftLowerArm,
        GlobalText.LeftHand,
        GlobalText.RightUpperArm,
        GlobalText.RightLowerArm,
        GlobalText.RightHand,
        GlobalText.LeftUpperLeg,
        GlobalText.LeftLowerLeg,
        GlobalText.LeftFoot,
        GlobalText.RightUpperLeg,
        GlobalText.RightLowerLeg,
        GlobalText.RightFoot
    },
    Default = GlobalText.Head,
    Multi = false,
    Callback = function(Part)
        if Part == GlobalText.Head then
            Aimbot.Settings.LockPart = "Head"
        elseif Part == GlobalText.HumanoidRootPart then
            Aimbot.Settings.LockPart = "HumanoidRootPart"
        elseif Part == GlobalText.Torso then
            Aimbot.Settings.LockPart = "Torso"
        elseif Part == GlobalText.LeftArm then
            Aimbot.Settings.LockPart = "Left Arm"
        elseif Part == GlobalText.RightArm then
            Aimbot.Settings.LockPart = "Right Arm"
        elseif Part == GlobalText.LeftLeg then
            Aimbot.Settings.LockPart = "Left Leg"
        elseif Part == GlobalText.RightLeg then
            Aimbot.Settings.LockPart = "Right Leg"
        elseif Part == GlobalText.UpperTorso then
            Aimbot.Settings.LockPart = "UpperTorso"
        elseif Part == GlobalText.LowerTorso then
            Aimbot.Settings.LockPart = "LowerTorso"
        elseif Part == GlobalText.LeftUpperArm then
            Aimbot.Settings.LockPart = "LeftUpperArm"
        elseif Part == GlobalText.LeftLowerArm then
            Aimbot.Settings.LockPart = "LeftLowerArm"
        elseif Part == GlobalText.LeftHand then
            Aimbot.Settings.LockPart = "LeftHand"
        elseif Part == GlobalText.RightUpperArm then
            Aimbot.Settings.LockPart = "RightUpperArm"
        elseif Part == GlobalText.RightLowerArm then
            Aimbot.Settings.LockPart = "RightLowerArm"
        elseif Part == GlobalText.RightHand then
            Aimbot.Settings.LockPart = "RightHand"
        elseif Part == GlobalText.LeftUpperLeg then
            Aimbot.Settings.LockPart = "LeftUpperLeg"
        elseif Part == GlobalText.LeftLowerLeg then
            Aimbot.Settings.LockPart = "LeftLowerLeg"
        elseif Part == GlobalText.LeftFoot then
            Aimbot.Settings.LockPart = "LeftFoot"
        elseif Part == GlobalText.RightUpperLeg then
            Aimbot.Settings.LockPart = "RightUpperLeg"
        elseif Part == GlobalText.RightLowerLeg then
            Aimbot.Settings.LockPart = "RightLowerLeg"
        elseif Part == GlobalText.RightFoot then
            Aimbot.Settings.LockPart = "RightFoot"
        end
    end
})

--|| Aimbot FOV Groupbox ||--

AimbotFOVGroupbox = Tabs.Aimbot:AddRightGroupbox(GlobalText.AimbotFOVGroupbox)
EnableAimbotFOVToggle = AimbotFOVGroupbox:AddToggle("EnableAimbotFOVToggle", {
    Text = GlobalText.EnableAimbotFOVToggle,
    Default = false,
    Callback = function(Enabled)
        AimbotInfiniteLockDistanceToggle:SetDisabled(Enabled)
        Aimbot.FOVSettings.Enabled = Enabled
    end
})
VisibleAimbotFOVToggle = AimbotFOVGroupbox:AddToggle("VisibleAimbotFOVToggle", {
    Text = GlobalText.VisibleAimbotFOVToggle,
    Default = true,
    Callback = function(Enabled)
        Aimbot.FOVSettings.Visible = Enabled
    end
})
AimbotFOVRadiusSlider = AimbotFOVGroupbox:AddSlider("AimbotFOVRadiusSlider", {
    Text = GlobalText.AimbotFOVRadiusSlider,
    Default = 120,
    Min = 0,
    Max = 720,
    Rounding = 0,
    Suffix = " px",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Aimbot.FOVSettings.Radius = Number
    end
})
AimbotFOVNumSidesSlider = AimbotFOVGroupbox:AddSlider("AimbotFOVNumSidesSlider", {
    Text = GlobalText.AimbotFOVNumSidesSlider,
    Default = 60,
    Min = 3,
    Max = 120,
    Rounding = 0,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Aimbot.FOVSettings.NumSides = Number
    end
})
AimbotFOVThicknessSlider = AimbotFOVGroupbox:AddSlider("AimbotFOVThicknessSlider", {
    Text = GlobalText.AimbotFOVThicknessSlider,
    Default = 2,
    Min = 1,
    Max = 10,
    Rounding = 0,
    Suffix = " px",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Aimbot.FOVSettings.Thickness = Number
    end
})
AimbotFOVTransparencySlider = AimbotFOVGroupbox:AddSlider("AimbotFOVTransparencySlider", {
    Text = GlobalText.AimbotFOVTransparencySlider,
    Default = 65,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        Aimbot.FOVSettings.Transparency = Number / 100
    end
})
AimbotFOVFilledToggle = AimbotFOVGroupbox:AddToggle("AimbotFOVFilledToggle", {
    Text = GlobalText.AimbotFOVFilledToggle,
    Default = false,
    Callback = function(Enabled)
        Aimbot.FOVSettings.Filled = Enabled
    end
})
AimbotFOVGroupbox:AddDivider()
AimbotFOVRainbowColorToggle = AimbotFOVGroupbox:AddToggle("AimbotFOVRainbowColorToggle", {
    Text = GlobalText.AimbotFOVRainbowColorToggle,
    Default = false,
    Callback = function(Enabled)
        Aimbot.FOVSettings.RainbowColor = Enabled
    end
})
AimbotFOVRainbowOutlineColorToggle = AimbotFOVGroupbox:AddToggle("AimbotFOVRainbowOutlineColorToggle", {
    Text = GlobalText.AimbotFOVRainbowOutlineColorToggle,
    Default = false,
    Callback = function(Enabled)
        Aimbot.FOVSettings.RainbowOutlineColor = Enabled
    end
})
AimbotFOVColorLabel = AimbotFOVGroupbox:AddLabel(GlobalText.AimbotFOVColorLabel):AddColorPicker("AimbotFOVColorPicker", {
    Title = GlobalText.AimbotFOVColorPicker,
    Default = Color3.fromRGB(255, 255, 255),
    Callback = function(Color)
        Aimbot.FOVSettings.Color = Color
    end
})
AimbotFOVOutlineColorLabel = AimbotFOVGroupbox:AddLabel(GlobalText.AimbotFOVOutlineColorLabel):AddColorPicker("AimbotFOVOutlineColorPicker", {
    Title = GlobalText.AimbotFOVOutlineColorPicker,
    Default = Color3.fromRGB(0, 0, 0),
    Callback = function(Color)
        Aimbot.FOVSettings.OutlineColor = Color
    end
})
AimbotFOVLockedColorLabel = AimbotFOVGroupbox:AddLabel(GlobalText.AimbotFOVLockedColorLabel):AddColorPicker("AimbotFOVLockedColorPicker", {
    Title = GlobalText.AimbotFOVLockedColorPicker,
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(Color)
        Aimbot.FOVSettings.LockedColor = Color
    end
})

--|| Aimbot Developer Settings Groupbox ||--

AimbotDeveloperSettingsGroupbox = Tabs.Aimbot:AddRightGroupbox(GlobalText.AimbotDeveloperSettingsGroupbox)
AimbotUpdateModeDropdown = AimbotDeveloperSettingsGroupbox:AddDropdown("AimbotUpdateModeDropdown", {
    Text = GlobalText.AimbotUpdateModeDropdown,
    Values = {
        GlobalText.RenderStepped,
        GlobalText.Stepped,
        GlobalText.Heartbeat
    },
    Default = GlobalText.RenderStepped,
    Multi = false,
    Callback = function(Mode)
        if Mode == GlobalText.RenderStepped then
            Aimbot.DeveloperSettings.UpdateMode = "RenderStepped"
        elseif Mode == GlobalText.Stepped then
            Aimbot.DeveloperSettings.UpdateMode = "Stepped"
        elseif Mode == GlobalText.Heartbeat then
            Aimbot.DeveloperSettings.UpdateMode = "Heartbeat"
        end
    end
})
AimbotTeamCheckMethodDropdown = AimbotDeveloperSettingsGroupbox:AddDropdown("AimbotTeamCheckMethodDropdown", {
    Text = GlobalText.AimbotTeamCheckMethodDropdown,
    Values = {
        GlobalText.TeamColor,
        GlobalText.Team
    },
    Default = GlobalText.TeamColor,
    Multi = false,
    Callback = function(Method)
        if Method == GlobalText.TeamColor then
            Aimbot.DeveloperSettings.TeamCheckOption = "TeamColor"
        elseif Method == GlobalText.Team then
            Aimbot.DeveloperSettings.TeamCheckOption = "Team"
        end
    end
})
AimbotFOVRainbowSpeedSlider = AimbotDeveloperSettingsGroupbox:AddSlider("AimbotFOVRainbowSpeedSlider", {
    Text = GlobalText.AimbotFOVRainbowSpeedSlider,
    Default = 40,
    Min = 10,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        Aimbot.DeveloperSettings.RainbowSpeed = Number / 100
    end
})

--|| Silent Aim General Groupbox ||--

SilentAimGeneralGroupbox = Tabs.SilentAim:AddLeftGroupbox(GlobalText.SilentAimGeneralGroupbox)
EnableSilentAimToggle = SilentAimGeneralGroupbox:AddToggle("EnableSilentAimToggle", {
    Text = GlobalText.EnableSilentAimToggle,
    Default = false,
    Callback = function(Enabled)
        if Enabled and EnableAimbotToggle.Value then
            EnableAimbotToggle:SetValue(false)
            Heartbeat:Wait()
        end
        SilentAim.Go(Enabled)
    end
})
SilentAimWallCheckToggle = SilentAimGeneralGroupbox:AddToggle("SilentAimWallCheckToggle", {
    Text = GlobalText.SilentAimWallCheckToggle,
    Default = true,
    Callback = function(Enabled)
        SilentAim.WallCheck = Enabled
    end
})
SilentAimTeamCheckToggle = SilentAimGeneralGroupbox:AddToggle("SilentAimTeamCheckToggle", {
    Text = GlobalText.SilentAimTeamCheckToggle,
    Default = true,
    Disabled = true,
    Callback = function()
        NotifySound(GlobalText.SilentAimTeamCheck, 3)
        print(GlobalText.SilentAimTeamCheck)
    end
})
SilentAimForceFieldCheckToggle = SilentAimGeneralGroupbox:AddToggle("SilentAimForceFieldCheckToggle", {
    Text = GlobalText.SilentAimForceFieldCheckToggle,
    Default = true,
    Disabled = true,
    Callback = function()
        NotifySound(GlobalText.SilentAimTeamCheck, 3)
        print(GlobalText.SilentAimTeamCheck)
    end
})
SilentAimAliveCheckToggle = SilentAimGeneralGroupbox:AddToggle("SilentAimAliveCheckToggle", {
    Text = GlobalText.SilentAimAliveCheckToggle,
    Default = true,
    Disabled = true,
    Callback = function(Enabled)
        SilentAim.AliveCheck = Enabled
    end
})
SilentAimGeneralGroupbox:AddDivider()
SilentAimHitChanceSlider = SilentAimGeneralGroupbox:AddSlider("SilentAimHitChanceSlider", {
    Text = GlobalText.SilentAimHitChanceSlider,
    Default = 100,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        SilentAim.HitChance = Number
    end
})
SilentAimHeadShotChanceSlider = SilentAimGeneralGroupbox:AddSlider("SilentAimHeadShotChanceSlider", {
    Text = GlobalText.SilentAimHeadShotChanceSlider,
    Default = 100,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        SilentAim.HeadshotChance = Number
    end
})
SilentAimRangeSlider = SilentAimGeneralGroupbox:AddSlider("SilentAimRangeSlider", {
    Text = GlobalText.SilentAimRangeSlider,
    Default = 3000,
    Min = 0,
    Max = 10000,
    Rounding = 0,
    Suffix = " px",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        SilentAim.Range = Number
    end
})
SilentAimLockWhoDropdown = SilentAimGeneralGroupbox:AddDropdown("SilentAimLockWhoDropdown", {
    Text = GlobalText.SilentAimLockWhoDropdown,
    Values = {
        GlobalText.Players,
        GlobalText.NPCs
    },
    Default = GlobalText.Players,
    Multi = true,
    Callback = function(Who)
        SilentAim.Players = table.find(Who, GlobalText.Players)
        SilentAim.NPCs = table.find(Who, GlobalText.NPCs)
    end
})
SilentAimLockMethodDropdown = SilentAimGeneralGroupbox:AddDropdown("SilentAimLockMethodDropdown", {
    Text = GlobalText.SilentAimLockMethodDropdown,
    Values = {
        GlobalText.FindPartOnRay,
        GlobalText.ViewportPointToRay,
        GlobalText.Raycast,
        GlobalText.Ray
    },
    DisabledValues = {
        GlobalText.FindPartOnRay,
        GlobalText.Raycast,
        GlobalText.Ray
    },
    DisabledTooltip = GlobalText.SilentAimLockMethodDropdownDisabledTooltip,
    Default = GlobalText.ViewportPointToRay,
    Multi = false,
})
SilentAimGeneralGroupbox:AddDivider()
SilentAimProjectileToggle = SilentAimGeneralGroupbox:AddToggle("SilentAimProjectileToggle", {
    Text = GlobalText.SilentAimProjectileToggle,
    Default = false,
    Callback = function(Enabled)
        SilentAim.Projectile.Enabled = Enabled
    end
})
SilentAimProjectileSpeedSlider = SilentAimGeneralGroupbox:AddSlider("SilentAimProjectileSpeedSlider", {
    Text = GlobalText.SilentAimProjectileSpeedSlider,
    Default = 1000,
    Min = 10,
    Max = 3000,
    Rounding = 0,
    Suffix = "",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        SilentAim.Projectile.Speed = Number
    end
})
SilentAimProjectileGravitySlider = SilentAimGeneralGroupbox:AddSlider("SilentAimProjectileGravitySlider", {
    Text = GlobalText.SilentAimProjectileGravitySlider,
    Default = math.round(Workspace.Gravity * 10) / 10,
    Min = 0,
    Max = 1000,
    Rounding = 0,
    Suffix = "",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        SilentAim.Projectile.Gravity = Number
    end
})

--|| Silent Aim FOV Groupbox ||--

SilentAimFOVGroupbox = Tabs.SilentAim:AddRightGroupbox(GlobalText.SilentAimFOVGroupbox)
EnableSilentAimFOVToggle = SilentAimFOVGroupbox:AddToggle("EnableSilentAimFOVToggle", {
    Text = GlobalText.EnableSilentAimFOVToggle,
    Default = false,
    Callback = function(Enabled)
        SilentAim.TheCircle.Enabled = Enabled
    end
})
SilentAimFOVVisibleToggle = SilentAimFOVGroupbox:AddToggle("SilentAimFOVVisibleToggle", {
    Text = GlobalText.SilentAimFOVVisibleToggle,
    Default = true,
    Callback = function(Enabled)
        SilentAim.TheCircle.Visible = Enabled
    end
})
SilentAimFOVOutlineVisibleToggle = SilentAimFOVGroupbox:AddToggle("SilentAimFOVOutlineVisibleToggle", {
    Text = GlobalText.SilentAimFOVOutlineVisibleToggle,
    Default = true,
    Callback = function(Enabled)
        SilentAim.TheCircle.OutlineVisible = Enabled
    end
})
SilentAimFOVFilledToggle = SilentAimFOVGroupbox:AddToggle("SilentAimFOVFilledToggle", {
    Text = GlobalText.SilentAimFOVFilledToggle,
    Default = false,
    Callback = function(Enabled)
        SilentAim.TheCircle.Filled = Enabled
    end
})
SilentAimFOVFromMouseToggle = SilentAimFOVGroupbox:AddToggle("SilentAimFOVFromMouseToggle", {
    Text = GlobalText.SilentAimFOVFromMouseToggle,
    Default = true,
    Callback = function(Enabled)
        SilentAim.TheCircle.FromMouse = Enabled
    end
})
SilentAimFOVGroupbox:AddDivider()
SilentAimFOVColorLabel = SilentAimFOVGroupbox:AddLabel(GlobalText.SilentAimFOVColorLabel):AddColorPicker("SilentAimFOVColorPicker", {
    Title = GlobalText.SilentAimFOVColorPicker,
    Default = Color3.fromRGB(255, 255, 255),
    Callback = function(Color)
        SilentAim.TheCircle.Color = Color
    end
})
SilentAimFOVOutlineColorLabel = SilentAimFOVGroupbox:AddLabel(GlobalText.SilentAimFOVOutlineColorLabel):AddColorPicker("SilentAimFOVOutlineColorPicker", {
    Title = GlobalText.SilentAimFOVOutlineColorPicker,
    Default = Color3.fromRGB(0, 0, 0),
    Callback = function(Color)
        SilentAim.TheCircle.OutlineColor = Color
    end
})
SilentAimRainbowColorToggle = SilentAimFOVGroupbox:AddToggle("SilentAimRainbowColorToggle", {
    Text = GlobalText.SilentAimRainbowColorToggle,
    Default = false,
    Callback = function(Enabled)
        SilentAim.TheCircle.Rainbow = Enabled
    end
})
SilentAimRainbowOutlineColorToggle = SilentAimFOVGroupbox:AddToggle("SilentAimRainbowOutlineColorToggle", {
    Text = GlobalText.SilentAimRainbowOutlineColorToggle,
    Default = false,
    Callback = function(Enabled)
        SilentAim.TheCircle.RainbowOutline = Enabled
    end
})
SilentAimFOVGroupbox:AddDivider()
SilentAimFOVRadiusSlider = SilentAimFOVGroupbox:AddSlider("SilentAimFOVRadiusSlider", {
    Text = GlobalText.SilentAimFOVRadiusSlider,
    Default = 150,
    Min = 0,
    Max = 720,
    Rounding = 0,
    Suffix = " px",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        SilentAim.TheCircle.Radius = Number
    end
})
SilentAimFOVNumSidesSlider = SilentAimFOVGroupbox:AddSlider("SilentAimFOVNumSidesSlider", {
    Text = GlobalText.SilentAimFOVNumSidesSlider,
    Default = 60,
    Min = 3,
    Max = 120,
    Rounding = 0,
    Suffix = "",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        SilentAim.TheCircle.NumSides = Number
    end
})
SilentAimFOVThicknessSlider = SilentAimFOVGroupbox:AddSlider("SilentAimFOVThicknessSlider", {
    Text = GlobalText.SilentAimFOVThicknessSlider,
    Default = 2,
    Min = 1,
    Max = 10,
    Rounding = 0,
    Suffix = " px",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        SilentAim.TheCircle.Thickness = Number
    end
})
SilentAimFOVTransparencySlider = SilentAimFOVGroupbox:AddSlider("SilentAimFOVTransparencySlider", {
    Text = GlobalText.SilentAimFOVTransparencySlider,
    Default = 35,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        SilentAim.TheCircle.Transparency = Number / 100
    end
})
SilentAimFOVGroupbox:AddDivider()
SilentAimFOVOutlineThicknessSlider = SilentAimFOVGroupbox:AddSlider("SilentAimFOVOutlineThicknessSlider", {
    Text = GlobalText.SilentAimFOVOutlineThicknessSlider,
    Default = 2,
    Min = 1,
    Max = 10,
    Rounding = 0,
    Suffix = " px",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        SilentAim.TheCircle.OutlineThickness = Number
    end
})
SilentAimFOVOutlineTransparencySlider = SilentAimFOVGroupbox:AddSlider("SilentAimFOVOutlineTransparencySlider", {
    Text = GlobalText.SilentAimFOVOutlineTransparencySlider,
    Default = 0,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        SilentAim.TheCircle.OutlineTransparency = Number / 100
    end
})

--|| Silent Aim Advanced Groupbox ||--

SilentAimAdvancedGroupbox = Tabs.SilentAim:AddRightGroupbox(GlobalText.SilentAimAdvancedGroupbox)
IgnoredScriptsToggle = SilentAimAdvancedGroupbox:AddToggle("IgnoredScriptsToggle", {
    Text = GlobalText.IgnoredScriptsToggle,
    Default = false,
    Callback = function(Enabled)
        SilentAim.IgnoredScriptsEnabled = Enabled
    end
})
IgnoredScriptsInput = SilentAimAdvancedGroupbox:AddInput("IgnoredScriptsInput", {
    Text = GlobalText.IgnoredScriptsInput,
    Default = "",
    Numeric = false,
    Finished = true,
    ClearTextOnFocus = false,
    Placeholder = GlobalText.IgnoredScriptsInputPlaceholder,
    Callback = function(Text)
        table.insert(SilentAim.IgnoredScripts, Text)
        IgnoredScriptsListDropdown:AddValues(Text)
    end
})
local SelectedIgnoredScript = ""
IgnoredScriptsListDropdown = SilentAimAdvancedGroupbox:AddDropdown("IgnoredScriptsListDropdown", {
    Text = GlobalText.IgnoredScriptsListDropdown,
    Values = SilentAim.IgnoredScripts,
    Default = "",
    Multi = false,
    Callback = function(Script)
        SelectedIgnoredScript = Script
    end
})
CleanIgnoredScriptsButton = SilentAimAdvancedGroupbox:AddButton("CleanIgnoredScriptsButton", {
    Text = GlobalText.CleanIgnoredScriptsButton,
    Callback = function()
        local Script = table.find(SilentAim.IgnoredScripts, SelectedIgnoredScript)
        if Script then
            table.remove(SilentAim.IgnoredScripts, Script)
        end
        IgnoredScriptsListDropdown:SetValues(SilentAim.IgnoredScripts)
    end
})

--|| A Lil Troll Groupbox ||--

ALilTrollGroupbox = Tabs.Troll:AddLeftGroupbox(GlobalText.ALilTrollGroupbox)
GodButton = ALilTrollGroupbox:AddButton("GodButton", {
    Text = GlobalText.GodButton,
    DoubleClick = true,
    Func = function()
        Universals.God()
    end
})
InvisibleToggle = ALilTrollGroupbox:AddToggle("InvisibleToggle", {
    Text = GlobalText.InvisibleToggle,
    Default = false,
    Callback = function(Enabled)
        if Enabled then
            Universals.Invisible()
        else
            Universals.Visible()
        end
    end
})
InvisibleTransparencySlider = ALilTrollGroupbox:AddSlider("InvisibleTransparencySlider", {
    Text = GlobalText.InvisibleTransparencySlider,
    Default = 0,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        InvisibleTransparency = Number / 100
        pcall(Universals.InvisTransparency)
    end
})
ALilTrollGroupbox:AddDivider()
APlayerDropdown = ALilTrollGroupbox:AddDropdown("APlayerDropdown", {
    Text = GlobalText.APlayerDropdown,
    SpecialType = "Player",
    ExcludeLocalPlayer = true,
    Multi = false,
    Callback = function(Player)
        APlayerPicked = Player
        if Player == nil and HeadSitPlayer then
            local Character = Speaker.Character
            local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
            if Humanoid then
                Humanoid.Sit = false
                Humanoid:ChangeState(2)
            end
        end
    end
})

MFCons.LP = (MFCons.LP and MFCons.LP:Disconnect()) or Heartbeat:Connect(function()
    if LockToPlayer and APlayerPicked ~= Speaker then
        pcall(function()
            Speaker.Character.HumanoidRootPart.CFrame = APlayerPicked.Character.HumanoidRootPart.CFrame
        end)
    end
end)
MFCons.HS = (MFCons.HS and MFCons.HS:Disconnect()) or Heartbeat:Connect(function()
    if HeadSitPlayer and APlayerPicked ~= Speaker then
        pcall(function()
            local Humanoid = Speaker.Character:FindFirstChildOfClass("Humanoid")
            local RootPart = Humanoid.RootPart
            local PRootPart = APlayerPicked.Character.HumanoidRootPart
            RootPart.CFrame = PRootPart.CFrame * CFrame.Angles(0, math.rad(0), 0) * CFrame.new(0, 1.6, 0.4)
            Humanoid.Sit = true
        end)
    end
end)
MFCons.TPR = (MFCons.TPR and MFCons.TPR:Disconnect()) or Players.PlayerRemoving:Connect(function(Player)
    if APlayerPicked == Player then
        APlayerPicked = nil
        LockToPlayerToggle:SetValue(false)
        HeadSitPlayerToggle:SetValue(false)
    end
end)

LockToPlayerToggle = ALilTrollGroupbox:AddToggle("LockToPlayerToggle", {
    Text = GlobalText.LockToPlayerToggle,
    Default = false,
    Callback = function(Enabled)
        LockToPlayer = Enabled
        if Enabled and HeadSitPlayer then
            HeadSitPlayerToggle:SetValue(false)
        end
    end
})
HeadSitPlayerToggle = ALilTrollGroupbox:AddToggle("HeadSitPlayerToggle", {
    Text = GlobalText.HeadSitPlayerToggle,
    Default = false,
    Callback = function(Enabled)
        HeadSitPlayer = Enabled
        if Enabled and LockToPlayer then
            LockToPlayerToggle:SetValue(false)
        elseif not Enabled then
            local Character = Speaker.Character
            local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
            if Humanoid then
                Humanoid.Sit = false
                Humanoid:ChangeState(2)
            end
        end
    end
})
ALilTrollGroupbox:AddDivider()
SpamSpeed = 1
SpamText = "Join team c00lkidd today!"
SpamInput = ALilTrollGroupbox:AddInput("SpamInput", {
    Text = GlobalText.SpamInput,
    Default = "Join team c00lkidd today!",
    Numeric = false,
    Finished = true,
    ClearTextOnFocus = false,
    Placeholder = GlobalText.SpamInputPlaceholder,
    Callback = function(Text)
        SpamText = tostring(Text)
    end
})
SpamToggle = ALilTrollGroupbox:AddToggle("SpamToggle", {
    Text = GlobalText.SpamToggle,
    Default = false,
    Callback = function(Enabled)
        Spamming = Enabled
        task.spawn(function()
            while Spamming and SpamText do
                local Start = tick()
                task.wait(SpamSpeed)
                local End = tick()
                local ActWait = End - Start
                local Deviation = ActWait - SpamSpeed
                if math.abs(Deviation) > 0.1 then
                    local WaitMore = -Deviation
                    if WaitMore > 0 then
                        task.wait(WaitMore)
                    end
                end
                if Spamming and SpamText then
                    if TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService then
                        ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(SpamText, "All")
                    else
                        TextChatService.TextChannels.RBXGeneral:SendAsync(SpamText)
                    end
                else
                    break
                end
            end
        end)
    end
})
SpamSpeedSlider = ALilTrollGroupbox:AddSlider("SpamSpeedSlider", {
    Text = GlobalText.SpamSpeedSlider,
    Default = 1,
    Min = 0.1,
    Max = 5,
    Rounding = 1,
    Suffix = " s",
    Compact = false,
    HideMax = false,
    Callback = function(Number)
        SpamSpeed = Number
    end
})

--|| Fling Groupbox ||--

FlingGroupbox = Tabs.Troll:AddLeftGroupbox(GlobalText.FlingGroupbox)
FlingMode = 1
FlingToggle = FlingGroupbox:AddToggle("FlingToggle", {
    Text = GlobalText.FlingToggle,
    Default = false,
    Callback = function(Enabled)
        GlobalFlinging = Enabled
        if FlingMode == 1 then
            Universals.WalkFling(Enabled)
        else
            Universals.Fling(Enabled)
        end
    end
}):AddKeyPicker("FlingKeybind", {
    Text = GlobalText.WalkFlingKeybind,
    Default = "T",
    Mode = "Toggle",
    NoUI = false,
    SyncToggleState = true,
})
FlingModeDropdown = FlingGroupbox:AddDropdown("FlingModeDropdown", {
    Text = GlobalText.FlingModeDropdown,
    Values = {
        GlobalText.WalkFling,
        GlobalText.SpinFling
    },
    Default = GlobalText.WalkFling,
    Multi = false,
    Callback = function(Mode)
        if Mode == GlobalText.WalkFling then
            FlingMode = 1
        else
            FlingMode = 2
        end
        if GlobalFlinging then
            if FlingMode == 1 then
                Universals.WalkFling(true)
            else
                Universals.Fling(true)
            end
        end
    end
})
InvisFlingButton = FlingGroupbox:AddButton({
    Text = GlobalText.InvisFlingButton,
    DoubleClick = true,
    Func = function()
        Universals.InvisFling()
    end
})
FlingGroupbox:AddDivider()
AntiFlingToggle = FlingGroupbox:AddToggle("AntiFlingToggle", {
    Text = GlobalText.AntiFlingToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.AntiFling(Enabled)
    end
})
AntiFlingMethodDropdown = FlingGroupbox:AddDropdown("AntiFlingMethodDropdown", {
    Text = GlobalText.AntiFlingMethodDropdown,
    Values = {
        GlobalText.NoClipOthers,
        GlobalText.RestoreVelocity,
        GlobalText.MixedAntiFlingMethod
    },
    Default = GlobalText.MixedAntiFlingMethod,
    Multi = false,
    Callback = function(Method)
        if Method == GlobalText.NoClipOthers then
            AntiFlingMethod = 1
        elseif Method == GlobalText.RestoreVelocity then
            AntiFlingMethod = 2
        else
            AntiFlingMethod = 3
        end
    end
})

--|| Animation Groupbox ||--

--AnimationGroupbox = Tabs.Troll:AddRightGroupbox(GlobalText.AnimationGroupbox)

--|| Menu Groupbox ||--

MenuGroup = Tabs.UI:AddLeftGroupbox(GlobalText.MenuGroupbox)
KeybindMenuOpenToggle = MenuGroup:AddToggle("KeybindMenuOpenToggle", {
    Text = GlobalText.KeybindMenuOpenToggle,
    Default = Library.KeybindFrame.Visible,
    Callback = function(Enabled)
        Library.KeybindFrame.Visible = Enabled
    end
})
ShowCustomCursorToggle = MenuGroup:AddToggle("ShowCustomCursorToggle", {
    Text = GlobalText.ShowCustomCursorToggle,
    Default = Library.ShowCustomCursor,
    Callback = function(Enabled)
        Library.ShowCustomCursor = Enabled
    end
})
ForceCheckboxToggle = MenuGroup:AddToggle("ForceCheckboxToggle", {
    Text = GlobalText.ForceCheckboxToggle,
    Default = false,
    Callback = function(Enabled)
        Library.ForceCheckbox = Enabled
        NotifySound(GlobalText.PLSRestart, 5)
    end
})
NotifySideDropdown = MenuGroup:AddDropdown("NotifySideDropdown", {
    Text = GlobalText.NotifySideToggle,
    Values = {
        GlobalText.Left,
        GlobalText.Right
    },
    Default = GlobalText.Right,
    Multi = false,
    Callback = function(Side)
        Library.NotifySide = Side == GlobalText.Left and "Left" or "Right"
        NotifySound(Side == GlobalText.Left and GlobalText.NotifyLeft or GlobalText.NotifyRight, 3)
    end
})
NotifySoundDropdown = MenuGroup:AddDropdown("NotifySoundDropdown", {
    Text = GlobalText.NotifySoundDropdown,
    Values = {
        "Obsidian",
        "Linoria",
        GlobalText.None
    },
    Default = "Obsidian",
    Multi = false,
    Callback = function(Sound)
        if Sound == "Obsidian" then
            ObsidianNotify = true
            NotifyAlert = true
            NotifySound(GlobalText.ObsidianNotify, 3)
        elseif Sound == "Linoria" then
            ObsidianNotify = false
            NotifyAlert = true
            NotifySound(GlobalText.LinoriaNotify, 3)
        else
            NotifyAlert = false
            NotifySound(GlobalText.NoneNotify, 3)
        end
    end
})
DPIScaleDropdown = MenuGroup:AddDropdown("DPIScaleDropdown", {
    Text = GlobalText.DPIScaleDropdown,
    Values = {
        "50%",
        "75%",
        "100%",
        "125%",
        "150%",
        "175%",
        "200%"
    },
    Default = "100%",
    Multi = false,
    Callback = function(Scale)
        local Scale = Scale:gsub("%%", "")
        Library:SetDPIScale(tonumber(Scale))
    end
})
ChangeLanguageDropdown = MenuGroup:AddDropdown("ChangeLanguageDropdown", {
    Text = GlobalText.QuickLanguageChange,
    Values = {
        "English",
        "简体中文",
    },
    Default = MFeeeLanguage == "Chinese" and "简体中文" or "English",
    Multi = false,
    Callback = function(Language)
        writefile(LanguageFilePath, Language == "English" and "English" or "Chinese")
        NotifySound(Language == "English" and "You Need to Restart to Apply the Change" or "重启脚本后生效", 5)
    end
})
MenuGroup:AddDivider()
MenuKeyLabel = MenuGroup:AddLabel(GlobalText.MenuKeyLabel):AddKeyPicker("MenuKeyPicker", {
    Text = GlobalText.MenuKeybind,
    Default = "RightControl",
    Mode = "Toggle",
    NoUI = true,
    SyncToggleState = true,
})
Library.ToggleKeybind = Options.MenuKeyPicker
UnloadButton = MenuGroup:AddButton({
    Text = GlobalText.UnloadButton,
    Tooltip = GlobalText.UnloadButtonToolTip,
    DoubleClick = true,
    Func = function()
        Aimbot:Exit()
        SilentAim:Exit()
        Universals:Exit()
        ESPLibrary:Destroy()
        Library:Unload()
        local function Disconnect(Table)
            for _, Object in pairs(Table) do
                if typeof(Object) == "RBXScriptConnection" then
                    Object:Disconnect()
                elseif typeof(Object) == "table" then
                    Disconnect(Object)
                end
            end
        end
        Disconnect(ESPConnections)
        Disconnect(MFCons)
        getgenv().MFeeeLoaded = false
        getgenv().MFeeeLoading = false
        print(GlobalText.Unloaded .. "\n\n")
    end
})

--|| Credits Groupbox ||--

CreditsGroupbox = Tabs.About:AddLeftGroupbox(GlobalText.CreditsGroupbox)
DeveloperLabel = CreditsGroupbox:AddLabel(GlobalText.DeveloperLabel)
DeveloperLabel2 = CreditsGroupbox:AddLabel(GlobalText.DeveloperLabel2)
CreditsGroupbox:AddDivider()
AssistantLabel1 = CreditsGroupbox:AddLabel(GlobalText.AssistantLabel1)
AssistantLabel2 = CreditsGroupbox:AddLabel(GlobalText.AssistantLabel2)
AssistantLabel3 = CreditsGroupbox:AddLabel(GlobalText.AssistantLabel3)
AssistantLabel4 = CreditsGroupbox:AddLabel(GlobalText.AssistantLabel4)
AssistantLabel5 = CreditsGroupbox:AddLabel(GlobalText.AssistantLabel5)

--|| Special Thanks Groupbox ||--

SpecialThanksGroupbox = Tabs.About:AddLeftGroupbox(GlobalText.SpecialThanksGroupbox)
ObsidianLabel = SpecialThanksGroupbox:AddLabel(GlobalText.ObsidianLabel)
AimbotLabel = SpecialThanksGroupbox:AddLabel(GlobalText.AimbotLabel)
ESPLabel = SpecialThanksGroupbox:AddLabel(GlobalText.ESPLabel)
SpecialThanksGroupbox:AddDivider()
AndYouLabel = SpecialThanksGroupbox:AddLabel(GlobalText.AndYouLabel)

--|| About Game Groupbox ||--

AboutGameGroupbox = Tabs.About:AddRightGroupbox(GlobalText.AboutGameGroupbox)
YouPlayedLabel = AboutGameGroupbox:AddLabel(GlobalText.YouPlayedLabel .. math.round(Workspace.DistributedGameTime * 10) / 10 .. GlobalText.YouPlayedLabel2)
task.spawn(function()
    while (getgenv().MFeeeLoaded or getgenv().MFeeeLoading) and task.wait(.05) do
        local Time = math.round(Workspace.DistributedGameTime * 10) / 10
        local Suffix = GlobalText.YouPlayedLabel2
        if Time > 31536000 then
            Time = math.round(Time / 31536000 * 1e7) / 1e7
            Suffix = GlobalText.YouPlayedLabel8
        elseif Time > 2592000 then
            Time = math.round(Time / 2592000 * 1e6) / 1e6
            Suffix = GlobalText.YouPlayedLabel7
        elseif Time > 604800 then
            Time = math.round(Time / 604800 * 1e5) / 1e5
            Suffix = GlobalText.YouPlayedLabel6
        elseif Time > 86400 then
            Time = math.round(Time / 86400 * 1e4) / 1e4
            Suffix = GlobalText.YouPlayedLabel5
        elseif Time > 3600 then
            Time = math.round(Time / 3600 * 1e3) / 1e3
            Suffix = GlobalText.YouPlayedLabel4
        elseif Time > 60 then
            Time = math.round(Time / 60 * 1e2) / 1e2
            Suffix = GlobalText.YouPlayedLabel3
        end
        YouPlayedLabel:SetText(GlobalText.YouPlayedLabel .. Time .. Suffix)
    end
end)
GameNameLabel = AboutGameGroupbox:AddLabel(GlobalText.GameName .. (ThisGamesName or GlobalText.GameNaming))
GamePlaceIdButton = AboutGameGroupbox:AddButton({
    Text = GlobalText.GamePlaceId .. game.PlaceId,
    Func = function()
        Toclipboard(game.PlaceId)
        NotifySound(GlobalText.GamePlaceIdCopied, 3)
    end
})

--|| About Project Groupbox ||--

AboutProjectGroupbox = Tabs.About:AddRightGroupbox(GlobalText.AboutProjectGroupbox)
MFeeeLabel = AboutProjectGroupbox:AddLabel(GlobalText.MFeeeLabel)
AboutProjectGroupbox:AddDivider()
AboutLabel = AboutProjectGroupbox:AddLabel("AboutLabel", {
    Text = GlobalText.AboutLabel,
    DoesWrap = true
})
AboutProjectGroupbox:AddDivider()
LicenseLabel = AboutProjectGroupbox:AddLabel("LicenseLabel", {
    Text = GlobalText.LicenseLabel,
    DoesWrap = true
})

--|| Links Groupbox ||--

LinksGroupbox = Tabs.About:AddRightGroupbox(GlobalText.LinksGroupbox)
JoinDiscordButton = LinksGroupbox:AddButton({
    Text = "Discord",
    Func = function()
        Toclipboard("https://discord.gg/YBQUd8X8PK")
        NotifySound(GlobalText.DiscordLink, 3)
    end
})
ViewMyGithubButton = JoinDiscordButton:AddButton({
    Text = "Github",
    Func = function()
        Toclipboard("https://github.com/MaiFengYXD")
        NotifySound(GlobalText.GithubLink, 3)
    end
})
IssuesReportOnLabel = LinksGroupbox:AddLabel("IssuesReportOnLabel", {
    Text = GlobalText.IssuesReportOnLabel,
    DoesWrap = true
})

--|| Addons ||--

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
ThemeManager:SetFolder("MFeee~ Project")
SaveManager:SetFolder("MFeee~ Project")
SaveManager:BuildConfigSection(Tabs.UI)
ThemeManager:ApplyToTab(Tabs.UI)

--|| End Loading ||--

task.spawn(function()
    if not LatestVersion then
        repeat
            task.wait()
        until LatestVersion
    end
    if LatestVersion ~= CurrentVersion then
        print(GlobalText.NewVersion)
        NotifySound(GlobalText.NewVersion, 5)
    end
end)

Options.FontFace:SetValue("Gotham")
local Camera = Workspace.CurrentCamera
if Camera.ViewportSize.X >= 3840 and Camera.ViewportSize.Y >= 2089 then
    Options.DPIScaleDropdown:SetValue("150%")
elseif Camera.ViewportSize.X >= 2560 and Camera.ViewportSize.Y >= 1369 then
    Options.DPIScaleDropdown:SetValue("125%")
elseif Camera.ViewportSize.X >= 1920 and Camera.ViewportSize.Y >= 1009 then
    Options.DPIScaleDropdown:SetValue("100%")
elseif Camera.ViewportSize.X >= 1280 and Camera.ViewportSize.Y >= 649 then
    Options.DPIScaleDropdown:SetValue("75%")
else
    Options.DPIScaleDropdown:SetValue("50%")
end

SaveManager:LoadAutoloadConfig()

getgenv().MFeeeLoading = false
getgenv().MFeeeLoaded = true
