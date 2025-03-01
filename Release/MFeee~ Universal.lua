--[[

$$\      $$\ $$$$$$$$\                              ~
$$$\    $$$ |$$  _____|                              
$$$$\  $$$$ |$$ |       $$$$$$\   $$$$$$\   $$$$$$\  
$$\$$\$$ $$ |$$$$$\    $$  __$$\ $$  __$$\ $$  __$$\ 
$$ \$$$  $$ |$$  __|   $$$$$$$$ |$$$$$$$$ |$$$$$$$$ |
$$ |\$  /$$ |$$ |      $$   ____|$$   ____|$$   ____|
$$ | \_/ $$ |$$ |      \$$$$$$$\ \$$$$$$$\ \$$$$$$$\ 
\__|     \__|\__|       \_______| \_______| \_______| 

Createor | MaiFengYXD
License  | CC0-1.0
Version  | 0.3.7 (Alpha)

# Project Started on 2024-11-13 #
# This Version was Last Edited on 2025-03-01 #

Issues Report on Github or https://discord.gg/YBQUd8X8PK
QQ: 3607178523

]]--



--|| Language Config ||--

makefolder("MFeee~ Project")
LanguageFilePath = "MFeee~ Project/Language.txt"

if isfile(LanguageFilePath) then
    local content = readfile(LanguageFilePath)
    if content == "Chinese" then
        getgenv().MFeeeLanguage = "Chinese"
    else
        getgenv().MFeeeLanguage = "English"
    end
else
    writefile(LanguageFilePath, "English")
    getgenv().MFeeeLanguage = "English"
    getgenv().MFeeeIAMNEW = true
end

GlobalText = (MFeeeLanguage == "Chinese" and {
    Oaklands = "😵 你正尝试在橡树地内运行MFeee, 但橡树地有UI反作弊, 如果你仍要运行, 我无法保证你不会被加入黑名单",
    ScriptLoaded = "🤧 已经加载了脚本了！",
    ScriptLoading = "🤧 脚本正在加载中！",
    LibraryLoaded = "✅ 已加载UI库",
    ThemeManagerLoaded = "✅ 已加载主题管理器",
    SaveManagerLoaded = "✅ 已加载文件保存管理器",
    UniversalsLoaded = "✅ 已加载通用模型",
    ESPLibraryLoaded = "✅ 已加载透视库",
    AimbotLoaded = "✅ 已加载自瞄模型",
    AssetsLoaded = "🥳 资源加载成功",
    GameNotLoaded = "🤒 游戏尚未完全加载！",
    MainWindowTitle = "通用",
    MainWindowFooter = "0.3.7 (Alpha测试) | ",
    MainTab = "主页",
    PlayerTab = "玩家",
    CameraTab = "相机",
    AmbientTab = "环境",
    ESPTab = "透视",
    AimbotTab = "自瞄",
    TrollTab = "恶搞",
    MISCTab = "杂项",
    UISettingsTab = "界面",
    AboutTab = "关于",
    MainExecutorGruopbox = "执行器",
    ExecutorNameText = "名称: ",
    ExecutorUNC = "UNC: ",
    UNCTesting = "正在测试UNC",
    UNCSuc = "UNC测试成功",
    UNCTest = "测试UNC",
    SUNCTest = "测试sUNC",
    SUNCTesting = "正在测试sUNC, 请稍等片刻",
    SUNCSuc = "SUNC测试成功, 请在控制台查看你的sUNC数值",
    SUNCWarn = "崩溃风险!",
    MainAFKGroupbox = "挂机",
    AntiAFKText = "防挂机",
    AntiAFKNotifyText = "防挂机次数通知",
    AntiAFKNotify = "已防挂机一次！总共防挂机 ",
    AntiAFKNotify2 = " 次",
    AntiAFKSuffix = " 秒",
    AntiAFKNumberText = "防挂机交互间隔时间(秒)",
    AntiAFKDropdownText = "防挂机交互方式",
    AntiAFKDropdownValues = {
        "鼠标相对移动",
        "鼠标绝对移动",
        "鼠标左键点击",
        "鼠标右键点击"
    },
    Mousemoverel = "鼠标相对移动",
    Mousemoveabs = "鼠标绝对移动",
    Mouseleftclick = "鼠标左键点击",
    Mouserightclick = "鼠标右键点击",
    FPSCapToggle = "FPS限制",
    FPSCapSlider = "目标FPS",
    MainOthersGroupbox = "更多",
    QuickLanguageChange = "Change Language",
    NeedRestartToApply = "重启脚本后生效",
    AntiKickToggleText = "防踢出(客户端)",
    AntiKickEgg = "这实际上是不可关闭的",
    CantAntiKick = "你的执行器不支持防踢出",
    BoringClickLabel = "本次功德",
    BoringClickLabel2 = "",
    BoringClickButton = "积德",
    BoringClickInput = "积德倍数",
    InputNumber = "请输入一个数字",
    BoringClickResetButton = "重置功德",
    ResetedClickLabel = "你失去了 ",
    ResetedClickLabel2 = " 功德",
    PlayerMovementGroupbox = "移动",
    PlayerWalkSpeedToggle = "移动速度覆写",
    PlayerWalkSpeedSlider = "移动速度",
    PlayerJumpPowerToggle = "跳跃力覆写",
    PlayerJumpPowerSlider = "跳跃力",
    WorkspaceGravityToggle = "重力覆写",
    WorkspaceGravitySlider = "重力",
    PlayerFeaturesGroupbox = "功能",
    NoclipToggle = "无碰撞",
    NoclipKeyLabel = "无碰撞按键",
    NoclipKeybind = "无碰撞",
    VehicleNoclipKeyLabel = "载具无碰撞按键",
    VehicleNoclipKeybind = "载具无碰撞",
    VehicleNoclipToggle = "载具无碰撞",
    VehicleNoclipNotify = "载具无碰撞已激活",
    VehicleNoclipNotify2 = "载具无碰撞未激活",
    AntiVoidToggle = "防虚空坠落伤害",
    AntiPlatformStandToggle = "防立正",
    FlyGruopbox = "飞行",
    FlyToggle = "飞行",
    FlySpeedSlider = "飞行速度",
    FlyKeyLabel = "飞行按键",
    FlyKeybind = "飞行",
    VerticalFlySpeedMultipilerSlider = "垂直速度倍数",
    Multipiler = " 倍",
    FlyModeDropdown = "飞行模式",
    StandFly = "立正飞行",
    VFly = "载具飞行",
    SitFly = "坐下飞行",
    FlyGyroToggle = "飞行姿态调整",
    QEFlyToggle = "使用QE进行垂直移动",
    StopFlyOnDiedToggle = "死亡时停止飞行",
    WeaponryCheck = "你正在游玩武器库, 该游戏包含飞行反作弊，无法启用飞行功能",
    MenuGroupbox = "界面",
    KeybindMenuOpenToggle = "打开快捷按键菜单",
    ShowCustomCursorToggle = "使用自定义鼠标",
    NotifySideToggle = "左侧通知",
    Right = "右侧",
    Left = "左侧",
    NotifyRight = "已将通知位置更改为右侧",
    NotifyLeft = "已将通知位置更改为左侧",
    DPIScaleDropdown = "DPI缩放",
    MenuKeyLabel = "打开界面按键",
    MenuKeybind = "",
    UnloadButton = "卸载脚本",
    UnloadButtonToolTip = "99%完全卸载",
    Unloaded = "😇 已卸载脚本",
    ClickToMoveToggle = "点击移动",
    CameraCommonGruopbox = "常用",
    FOVToggle = "视野覆写",
    FOVSlider = "视野",
    MaxZoomToggle = "最大缩放覆写",
    MaxZoomSlider = "最大缩放",
    MinZoomToggle = "最小缩放覆写",
    MinZoomSlider = "最小缩放",
    UnlockThirdPersonToggle = "解锁第三人称视角",
    CameraNoclipToggle = "相机无碰撞",
    AntiFollowCameraModeToggle = "防相机[跟随]模式",
    CameraMoreGruopbox = "更多",
    AllowShiftLockToggle = "允许视角锁定",
    AntiGameplayPausedToggle = "防游戏暂停画面",
    CameraOffsetToggle = "相机视角偏移",
    AmbientGeneralGruopbox = "常用",
    FullBrightToggle = "全亮",
    FullDarkToggle = "全黑(?)",
    SuperFullBrightToggle = "超级全亮(替换天空)",
    NoAtmosphereToggle = "无雾霾",
    NoDepthOfFieldToggle = "无景深",
    NoBlurToggle = "无模糊",
    NoBloomToggle = "无泛光",
    AmbientCustomGruopbox = "自定义",
    AmbientColorToggle = "环境颜色覆写",
    AmbientColorPicker = "环境颜色",
    BrightnessToggle = "亮度覆写",
    BrightnessSlider = "亮度",
    ClockTimeToggle = "时间覆写",
    ClockTimeSlider = "时间",
    OutdoorAmbientToggle = "室外环境光覆写",
    OutdoorAmbientColorPicker = "室外环境光颜色",
    ColorShiftBottomToggle = "底部偏移色覆写",
    ColorShiftBottomColorPicker = "底部偏移颜色",
    ColorShiftTopToggle = "顶部偏移色覆写",
    ColorShiftTopColorPicker = "顶部偏移颜色",
    DiffuseScaleToggle = "漫反射光覆写",
    DiffuseScaleSlider = "漫反射光",
    SpecularScaleToggle = "镜反射覆写",
    SpecularScaleSlider = "镜反射光",
    ShadowSoftnessToggle = "阴影软度覆写",
    ShadowSoftnessSlider = "阴影软度",
    GeographicLatitudeToggle = "地理纬度覆写",
    GeographicLatitudeSlider = "地理纬度",
    TechnologyToggle = "照明技术覆写",
    TechnologyDropdown = "照明技术",
    CameraOffsetWarn = "当相机主体不是Humanoid时, 相机视角偏移无法生效",
    Compatibility = "兼容性",
    Voxel = "体素(光照首计划)",
    ShadowMap = "阴影贴图(光照第二计划)",
    Future = "未来(光照第三计划)",
    Legacy = "传统",
    Unified = "统一",
    ESPGlobalSettingsGroupbox = "全局设置",
    ESPAllToggle = "透视",
    ESPTypeDropdown = "透视类型",
    Text = "文字",
    SphereAdornment = "球体",
    CylinderAdornment = "圆柱体",
    Adornment = "装饰",
    SelectionBox = "选择框",
    Highlight = "高亮",
    ESPTracerToggle = "透视追踪线",
    ESPArrowToggle = "透视箭头",
    ESPRandomColorToggle = "透视随机颜色",
    ESPColorLabel = "透视颜色",
    ESPColorPicker = "透视颜色",
    ESPTransparencySlider = "透视透明度",
    ESPHighlightGroupbox = "高亮类型设置",
    ESPFillColorLabel = "填充颜色",
    ESPFillColorPicker = "填充颜色",
    ESPOutlineColorLabel = "轮廓颜色",
    ESPOutlineColorPicker = "轮廓颜色",
    ESPFillTransparencySlider = "填充透明度",
    ESPOutlineTransparencySlider = "轮廓透明度",
    ESPTextGroupbox = "文字设置",
    ESPDisplayNameToggle = "使用玩家昵称而不是用户名",
    ESPTextSizeSlider = "文字大小",
    ESPThicknessSlider = "粗细",
    ESPTracerGroupbox = "追踪线设置",
    ESPTracerFromDropdown = "追踪线起点",
    Bottom = "底部",
    Center = "中心",
    Top = "顶部",
    Mouse = "鼠标",
    ESPTracerThicknessSlider = "追踪线粗细",
    ESPTracerTransparencySlider = "追踪线透明度",
    ESPArrowGroupbox = "箭头设置",
    ESPArrowCenterOffsetSlider = "箭头中心偏移",
    ESPHugeDistanceToggle = "无限透视距离",
    ESPMaxDistanceSlider = "最大透视距离",
    NewVersion = "⚠️ 你正在使用的版本非最新版! 请在Github或Discord获取最新版本",
    CreditsGroupbox = "制作人员",
    DeveloperLabel = "开发者: MaiFengYXD",
    DeveloperLabel2 = "另一位开发者: Github Copilot🐵",
    AssistantLabel1 = "助手: Kimi AI",
    AssistantLabel2 = "助手2: DeepSeek",
    AssistantLabel3 = "助手3: Gemini",
    AssistantLabel4 = "助手4: Grok3",
    SpecialThanksGroupbox = "特别感谢",
    ObsidianLabel = "DeividComsono: Obsidian UI库",
    AimbotLabel = "Exunys: 自瞄模块",
    ESPLabel = "Mstudio45: 透视库",
    AndYouLabel = "以及你: 使用这个脚本🥰",
    AboutProjectGroupbox = "关于我",
    MFeeeLabel = "MFeee~ Project",
    AboutLabel = "MFeee~ Project旨在提供完全免费开源, 没有繁琐的密钥系统, 同时拥有丰富功能的外部UI。MFeee~ Project奉上毫不费力的使用体验, 让你能沉浸式地享受, 做到丝滑地控制等等。",
    LicenseLabel = "MFeee~ Project全系列均使用CC0-1.0公共协议, 你可以随意编辑、重新发布、重新授权脚本",
    LinksGroupbox = "相关链接",
    DiscordLink = "Discord邀请已复制!",
    GithubLink = "Github主页链接已复制!",
    CantSetClipBoard = "你的执行器不支持Setclipboard或Toclipboard函数!",
    ExecuteOnTeleportToggle = "传送时执行",
    LoadFaild = "❌ 加载线程超时, 加载失败!",
    ESPMeToggle = "透视自己",
    ESPTeamCheckToggle = "队伍检测",
    ESPTeamColorToggle = "队伍颜色",
    ESPTracerColorLabel = "追踪线颜色",
    ESPTracerColorPicker = "追踪线颜色",
    ESPArrowColorLabel = "箭头颜色",
    ESPArrowColorPicker = "箭头颜色",
    UseUpVectorFlyToggle = "使用上向量控制垂直",
    WeirdGruopbox = "奇葩",
    HipHeightToggle = "臀部高度覆写",
    HipHeightSlider = "臀部高度",
    DoHipHeightAfterMeRespawnToggle = "复活后继续执行臀部高度覆写",
    MaxSlopeAngleToggle = "最大坡度角度覆写",
    MaxSlopeAngleSlider = "最大坡度角度",
}) or {
    Oaklands = "😵 You are trying to run MFeee in Oaklands, but Oaklands has an UI anticheat, if you still run it, I can't guarantee that you won't be banned",
    ScriptLoaded = "🤧 Script Already Loaded!",
    ScriptLoading = "🤧 Script Loading!",
    LibraryLoaded = "✅ Library Loaded",
    ThemeManagerLoaded = "✅ Theme Manager Loaded",
    SaveManagerLoaded = "✅ Save Manager Loaded",
    UniversalsLoaded = "✅ Universal Modules Loaded",
    ESPLibraryLoaded = "✅ ESP Library Loaded",
    AimbotLoaded = "✅ Aimbot Module Loaded",
    AssetsLoaded = "🥳 Assets Load Success",
    GameNotLoaded = "🤒 Game Not Fully Loaded!",
    MainWindowTitle = "Universal",
    MainWindowFooter = "0.3.7 (Alpha Testing) | ",
    MainTab = "Main",
    PlayerTab = "Player",
    CameraTab = "Camera",
    AmbientTab = "Ambient",
    ESPTab = "ESP",
    AimbotTab = "Aimbot",
    TrollTab = "Troll",
    MISCTab = "MISC",
    UISettingsTab = "UI Settings",
    AboutTab = "About",
    MainExecutorGruopbox = "Executor",
    ExecutorNameText = "Name: ",
    ExecutorUNC = "UNC: ",
    UNCTesting = "Testing UNC",
    UNCSuc = "UNC Test Successful",
    UNCTest = "Test UNC",
    SUNCTest = "Test sUNC",
    SUNCTesting = "Testing sUNC, Please Wait a Few Seconds",
    SUNCSuc = "SUNC Test Successful, Check Your sUNC Value in the Console",
    SUNCWarn = "Crash Risk!",
    MainAFKGroupbox = "AFK",
    AntiAFKText = "Anti AFK",
    AntiAFKNotifyText = "Anti AFK Notify",
    AntiAFKNotify = "Anti AFK Once! Total Anti AFK ",
    AntiAFKNotify2 = " Times",
    AntiAFKSuffix = " s",
    AntiAFKNumberText = "Anti AFK Interval(seconds)",
    AntiAFKDropdownText = "Anti AFK Interaction",
    AntiAFKDropdownValues = {
        "Mouse move relative",
        "Mouse move absolute",
        "Mouse leftclick",
        "Mouse rightclick"
    },
    Mousemoverel = "Mouse move relative",
    Mousemoveabs = "Mouse move absolute",
    Mouseleftclick = "Mouse leftclick",
    Mouserightclick = "Mouse rightclick",
    FPSCapToggle = "FPS Cap",
    FPSCapSlider = "Target FPS",
    MainOthersGroupbox = "More",
    QuickLanguageChange = "更改语言",
    NeedRestartToApply = "You Need to Restart to Apply the Change",
    AntiKickToggleText = "Anti Kick(Client Only)",
    AntiKickEgg = "This is Actually Cannot be Disabled",
    CantAntiKick = "Your Executor Doesn't Support Anti Kick",
    BoringClickLabel = "You Clicked ",
    BoringClickLabel2 = " Times",
    BoringClickButton = "Click Me!",
    BoringClickInput = "Click Multipiler",
    InputNumber = "Please Input a Number",
    BoringClickResetButton = "Reset Clicks",
    ResetedClickLabel = "You Lost ",
    ResetedClickLabel2 = " Clicks",
    PlayerMovementGroupbox = "Movement",
    PlayerWalkSpeedToggle = "Walk Speed Override",
    PlayerWalkSpeedSlider = "Walk Speed",
    PlayerJumpPowerToggle = "Jump Power Override",
    PlayerJumpPowerSlider = "Jump Power",
    WorkspaceGravityToggle = "Gravity Override",
    WorkspaceGravitySlider = "Gravity",
    PlayerFeaturesGroupbox = "Features",
    NoclipToggle = "Noclip",
    NoclipKeyLabel = "Noclip Keybind",
    NoclipKeybind = "Noclip",
    VehicleNoclipKeyLabel = "Vehicle Noclip Keybind",
    VehicleNoclipKeybind = "Vehicle Noclip",
    VehicleNoclipToggle = "Vehicle Noclip",
    VehicleNoclipNotify = "Vehicle Noclip Activated",
    VehicleNoclipNotify2 = "Vehicle Noclip Deactivated",
    AntiVoidToggle = "Anti Void Fall Damage",
    AntiPlatformStandToggle = "Anti Platform Stand",
    FlyGruopbox = "Fly",
    FlyToggle = "Fly",
    FlySpeedSlider = "Fly Speed",
    FlyKeyLabel = "Fly Keybind",
    FlyKeybind = "Fly",
    VerticalFlySpeedMultipilerSlider = "Vertical Speed Multipiler",
    Multipiler = " x",
    FlyModeDropdown = "Fly Mode",
    StandFly = "Stand Fly",
    VFly = "Vehicle Fly",
    SitFly = "Sit Fly",
    FlyGyroToggle = "Fly Gyro",
    QEFlyToggle = "Use QE Vertical Movement",
    StopFlyOnDiedToggle = "Stop Fly On Died",
    WeaponryCheck = "Weaponry Check Detected, This Game Contains Fly Anticheat, Fly are Disabled",
    MenuGroupbox = "Menu",
    KeybindMenuOpenToggle = "Open Keybind Menu",
    ShowCustomCursorToggle = "Use Custom Cursor",
    NotifySideToggle = "Left Side Notify",
    Right = "Right",
    Left = "Left",
    NotifyRight = "Changed Notify Side to Right",
    NotifyLeft = "Changed Notify Side to Left",
    DPIScaleDropdown = "DPI Scale",
    MenuKeyLabel = "Open Menu Keybind",
    MenuKeybind = "",
    UnloadButton = "Unload",
    UnloadButtonToolTip = "99% Fully Unload",
    Unloaded = "😇 Script Unloaded",
    ClickToMoveToggle = "Click To Move",
    CameraCommonGruopbox = "Common",
    FOVToggle = "FOV Override",
    FOVSlider = "FOV",
    MaxZoomToggle = "Max Zoom Override",
    MaxZoomSlider = "Max Zoom",
    MinZoomToggle = "Min Zoom Override",
    MinZoomSlider = "Min Zoom",
    UnlockThirdPersonToggle = "Unlock Third Person",
    CameraNoclipToggle = "Camera Noclip",
    AntiFollowCameraModeToggle = "Anti Follow Camera Mode",
    CameraMoreGruopbox = "More",
    AllowShiftLockToggle = "Allow Shift Lock",
    AntiGameplayPausedToggle = "Anti Gameplay Paused",
    CameraOffsetToggle = "Camera Offset",
    AmbientGeneralGruopbox = "General",
    FullBrightToggle = "Full Bright",
    FullDarkToggle = "Full Dark(?)",
    SuperFullBrightToggle = "Super Full Bright(Replace Sky)",
    NoAtmosphereToggle = "No Atmosphere",
    NoDepthOfFieldToggle = "No Depth Of Field",
    NoBlurToggle = "No Blur",
    NoBloomToggle = "No Bloom",
    AmbientCustomGruopbox = "Custom",
    AmbientColorToggle = "Ambient Color Override",
    AmbientColorPicker = "Ambient Color",
    BrightnessToggle = "Brightness Override",
    BrightnessSlider = "Brightness",
    ClockTimeToggle = "Clock Time Override",
    ClockTimeSlider = "Clock Time",
    OutdoorAmbientToggle = "Outdoor Ambient Override",
    OutdoorAmbientColorPicker = "Outdoor Ambient Color",
    ColorShiftBottomToggle = "Color Shift Bottom Override",
    ColorShiftBottomColorPicker = "Color Shift Bottom Color",
    ColorShiftTopToggle = "Color Shift Top Override",
    ColorShiftTopColorPicker = "Color Shift Top Color",
    DiffuseScaleToggle = "Diffuse Scale Override",
    DiffuseScaleSlider = "Diffuse Scale",
    SpecularScaleToggle = "Specular Scale Override",
    SpecularScaleSlider = "Specular Scale",
    ShadowSoftnessToggle = "Shadow Softness Override",
    ShadowSoftnessSlider = "Shadow Softness",
    GeographicLatitudeToggle = "Geographic Latitude Override",
    GeographicLatitudeSlider = "Geographic Latitude",
    TechnologyToggle = "Technology Override",
    TechnologyDropdown = "Technology",
    CameraOffsetWarn = "Camera Offset Can't Working When Camera Subject is Not Humanoid",
    Compatibility = "Compatibility",
    Voxel = "Voxel(First Light)",
    ShadowMap = "ShadowMap(Second Light)",
    Future = "Future(Third Light)",
    Legacy = "Legacy",
    Unified = "Unified",
    ESPGlobalSettingsGroupbox = "Global Settings",
    ESPAllToggle = "Enable ESP",
    ESPTypeDropdown = "ESP Type",
    Text = "Text",
    SphereAdornment = "Sphere",
    CylinderAdornment = "Cylinder",
    Adornment = "Adornment",
    SelectionBox = "Selection Box",
    Highlight = "Highlight",
    ESPTracerToggle = "Tracer",
    ESPArrowToggle = "Arrow",
    ESPRandomColorToggle = "Random Color",
    ESPColorLabel = "ESP Color",
    ESPColorPicker = "ESP Color",
    ESPTransparencySlider = "Transparency",
    ESPHighlightGroupbox = "Highlight Settings",
    ESPFillColorLabel = "Fill Color",
    ESPFillColorPicker = "Fill Color",
    ESPOutlineColorLabel = "Outline Color",
    ESPOutlineColorPicker = "Outline Color",
    ESPFillTransparencySlider = "Fill Transparency",
    ESPOutlineTransparencySlider = "Outline Transparency",
    ESPTextGroupbox = "Text Settings",
    ESPDisplayNameToggle = "Display Name",
    ESPTextSizeSlider = "Text Size",
    ESPThicknessSlider = "Thickness",
    ESPTracerGroupbox = "Tracer Settings",
    ESPTracerFromDropdown = "Tracer From",
    Bottom = "Bottom",
    Center = "Center",
    Top = "Top",
    Mouse = "Mouse",
    ESPTracerThicknessSlider = "Tracer Thickness",
    ESPTracerTransparencySlider = "Tracer Transparency",
    ESPArrowGroupbox = "Arrow Settings",
    ESPArrowCenterOffsetSlider = "Arrow Center Offset",
    ESPHugeDistanceToggle = "Infinite ESP Distance",
    ESPMaxDistanceSlider = "Max Distance",
    NewVersion = "⚠️ New Version Available! Get the Latest Version on Github or Discord",
    CreditsGroupbox = "Credits",
    DeveloperLabel = "Developer: MaiFengYXD",
    DeveloperLabel2 = "Another Developer: Github Copilot🐵",
    AssistantLabel1 = "Assistant: Kimi AI",
    AssistantLabel2 = "Assistant2: DeepSeek",
    AssistantLabel3 = "Assistant3: Gemini",
    AssistantLabel4 = "Assistant4: Grok3",
    SpecialThanksGroupbox = "Special Thanks",
    ObsidianLabel = "DeividComsono: Obsidian UI Library",
    AimbotLabel = "Exunys: Aimbot Module",
    ESPLabel = "Mstudio45: ESP Library",
    AndYouLabel = "And You: For Using This Script🥰",
    AboutProjectGroupbox = "About Me",
    MFeeeLabel = "MFeee~ Project",
    AboutLabel = "MFeee~ Project aims to provide a completely free and open-source external UI with rich features, without cumbersome key systems. MFeee~ Project offers an effortless user experience, allowing you to enjoy immersive, silky-smooth control, etc.",
    LicenseLabel = "MFeee~ Project series uses the CC0-1.0 public license, you can freely edit, republish, relicense the script",
    LinksGroupbox = "Links",
    DiscordLink = "Discord Invite Copied!",
    GithubLink = "Github Page Copied!",
    CantSetClipBoard = "Your Executor Doesn't Support Setclipboard or Toclipboard Function!",
    ExecuteOnTeleportToggle = "Execute On Teleport",
    LoadFaild = "❌ Load Thread Time Out, Load Faild!",
    ESPMeToggle = "Self ESP",
    ESPTeamCheckToggle = "Team Check",
    ESPTeamColorToggle = "Team Color",
    ESPTracerColorLabel = "Tracer Color",
    ESPTracerColorPicker = "Tracer Color",
    ESPArrowColorLabel = "Arrow Color",
    ESPArrowColorPicker = "Arrow Color",
    UseUpVectorFlyToggle = "Use Up Vector",
    WeirdGruopbox = "Weird",
    HipHeightToggle = "Hip Height Override",
    HipHeightSlider = "Hip Height",
    DoHipHeightAfterMeRespawnToggle = "Do Hip Height After Me Respawn",
    MaxSlopeAngleToggle = "Max Slope Angle Override",
    MaxSlopeAngleSlider = "Max Slope Angle",
}

--|| Oaklands Check ||--

if game.PlaceId == 9938675423 then
    game.Players.LocalPlayer:Kick(GlobalText.Oaklands)
    return
end

--|| Loaded Check ||--

if MFeeeLoaded then
    warn(GlobalText.ScriptLoaded)
    return
elseif MFeeeLoading then
    warn(GlobalText.ScriptLoading)
    return
end

--|| Start Loading ||--

getgenv().MFeeeLoading = true

--// Beautiful Arts 😎 \\--
Arts = {
-- | https://patorjk.com/software/taag | --
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

███▄ ▄███▓  █████▒▓█████ ▓█████ ▓█████ 
▓██▒▀█▀ ██▒▓██   ▒ ▓█   ▀ ▓█   ▀ ▓█   ▀ 
▓██    ▓██░▒████ ░ ▒███   ▒███   ▒███   
▒██    ▒██ ░▓█▒  ░ ▒▓█  ▄ ▒▓█  ▄ ▒▓█  ▄ 
▒██▒   ░██▒░▒█░    ░▒████▒░▒████▒░▒████▒
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

--// Load Obsidian and Modules \\--
Repo = "https://raw.githubusercontent.com/"
MFRepo = (Repo .. "MaiFengYXD/ObsidianCN/main/")
ObsidianRepo = (Repo .. "deividcomsono/Obsidian/main/")
PastebinRepo = "https://pastebin.com/raw/"
CurrentVersion = 37
Library = nil
ThemeManager = nil
SaveManager = nil
Universals = nil
Aimbot = nil

task.spawn(function()
    Library = (MFeeeLanguage == "Chinese" and loadstring(game:HttpGet(MFRepo .. "Library%20Chinese.lua"))()) or loadstring(game:HttpGet(ObsidianRepo .. "Library.lua"))()
    Options = Library.Options
    Toggles = Library.Toggles
    Library.ForceCheckbox = false
    Library.ShowToggleFrameInKeybinds = true
    print(GlobalText.LibraryLoaded)
end)
task.spawn(function()
    ThemeManager = (MFeeeLanguage == "Chinese" and loadstring(game:HttpGet(MFRepo .. "Addons/ThemeManager%20Chinese.lua"))()) or loadstring(game:HttpGet(ObsidianRepo .. "addons/ThemeManager.lua"))()
    print(GlobalText.ThemeManagerLoaded)
end)
task.spawn(function()
    SaveManager = (MFeeeLanguage == "Chinese" and loadstring(game:HttpGet(MFRepo .. "Addons/SaveManager%20Chinese.lua"))()) or loadstring(game:HttpGet(ObsidianRepo .. "addons/SaveManager.lua"))()
    print(GlobalText.SaveManagerLoaded)
end)
task.spawn(function()
    Universals = loadstring(game:HttpGet(PastebinRepo .. "ukLr0Pmm"))()--loadstring(game:HttpGet(Repo .. "MaiFengYXD/Universal-Modules/main/Universal%20Modules.lua"))()
    print(GlobalText.UniversalsLoaded)
end)
task.spawn(function()
    ESPLibrary = loadstring(game:HttpGet(Repo .. "mstudio45/MSESP/main/source.luau"))()
    print(GlobalText.ESPLibraryLoaded)
end)
task.spawn(function()
    Aimbot = loadstring(game:HttpGet(PastebinRepo .. "8A3dgm1q"))()
    Aimbot.Settings.Enabled = false
    print(GlobalText.AimbotLoaded)
end)
task.spawn(function()
    LeastVersion = loadstring(game:HttpGet(PastebinRepo .. "BhnD85nE"))()
end)

repeat
    wait(0.016)
    LoadTimer = (LoadTimer or 0) + 0.016
    if LoadTimer >= 15 then
        getgenv().MFeeeLoaded = false
        getgenv().MFeeeLoading = false
        warn(GlobalText.LoadFaild)
        error("load thread time out, time limit: 15s")
        break
    end
until Library and ThemeManager and SaveManager and Universals and ESPLibrary and Aimbot
print(GlobalText.AssetsLoaded)

if LeastVersion ~= CurrentVersion then
    print(GlobalText.NewVersion)
end

if not game:IsLoaded() then
    Library:Notify(GlobalText.GameNotLoaded, 5)
    warn(GlobalText.GameNotLoaded)
end

--|| Variables ||--

Cloneref = cloneref or function(x) return x end
Players = Cloneref(game:GetService("Players"))
Teams = Cloneref(game:GetService("Teams"))
Speaker = Players.LocalPlayer
Character = Speaker.Character
Humanoid = Character:FindFirstChild("Humanoid")
Arsenal = (game.PlaceId == 286090429 and true) or false
ExecutorName, ExecutorVersion = identifyexecutor()
QueueTeleport = (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport) or queue_on_teleport
Setclipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

Toclipboard = function(Text)
    if Setclipboard then
        Setclipboard(tostring(Text))
    else
        Library:Notify(GlobalText.CantSetClipBoard, 5)
        warn(GlobalText.CantSetClipBoard)
    end
end

if not MFeeeQueueTPSeted and QueueTeleport then
    getgenv().MFeeeQueueTPSeted = true
    QueueTeleport([[
        makefolder("MFeee~ Project")
        local TPFilePath = "MFeee~ Project/ExecuteOnTeleport.txt"
        if isfile(TPFilePath) then
            if readfile(TPFilePath) == "true" then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/MaiFengYXD/MFeee-Project/main/Release/MFeee%7E%20Universal"))()
            end
        end
    ]])
end

--|| Main Window ||--

MainWindow = Library:CreateWindow({
    Title = GlobalText.MainWindowTitle,
    Footer = GlobalText.MainWindowFooter .. Speaker.Name,
    Icon = 77335290652571,
    NotifySide = "Right",
    ShowCustomCursor = false,
    Center = true
})

--|| Tabs ||--

Tabs = {
    Main = MainWindow:AddTab(GlobalText.MainTab, "house"),
    Player = MainWindow:AddTab(GlobalText.PlayerTab, "user-round-cog"),
    Camera = MainWindow:AddTab(GlobalText.CameraTab, "camera"),
    Ambient = MainWindow:AddTab(GlobalText.AmbientTab, "sun"),
    ESP = MainWindow:AddTab(GlobalText.ESPTab, "eye"),
    Aimbot = MainWindow:AddTab(GlobalText.AimbotTab, "crosshair"),
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
        Library:Notify(GlobalText.UNCTesting, 5)
        ExecutorUNCLabel:SetText(GlobalText.ExecutorUNC .. "nil %")
        local ok, faild = pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/NXa1DA2u"))()
        end)
        if faild then
            Library:Notify(faild, 5)
        end
    end
})
ExecutorSUNCTestButton = ExecutorUNCTestButton:AddButton({
    Text = GlobalText.SUNCTest,
    Tooltip = GlobalText.SUNCWarn,
    DoubleClick = true,
    Risky = ExecutorName == "Atlantis" and true,
    Func = function()
        Library:Notify(GlobalText.SUNCTesting, 5)
        local ok, faild = pcall(function()
            loadstring(game:HttpGet("https://gitlab.com/sens3/nebunu/-/raw/main/HummingBird8's_sUNC_yes_i_moved_to_gitlab_because_my_github_acc_got_brickedd/sUNCm0m3n7.lua"))()
        end)
        if ok then
            Library:Notify(GlobalText.SUNCSuc, 5)
        else
            Library:Notify(faild, 5)
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
    Callback = function(Enabled)
        Universals.UseAntiAFKNotify(Enabled)
    end
})
AntiAFKSlider = MainAFKGroupbox:AddSlider("AntiAFKSlider", {
    Text = GlobalText.AntiAFKNumberText,
    Default = 60,
    Min = 3,
    Max = 300,
    Rounding = 0,
    Suffix = GlobalText.AntiAFKSuffix,
    HideMax = true,
    Callback = function(Number)
        Universals.AntiAFKValue(Number)
    end
})
AntiAFKDropdown = MainAFKGroupbox:AddDropdown("AntiAFKDropdown", {
    Text = GlobalText.AntiAFKDropdownText,
    Values = GlobalText.AntiAFKDropdownValues,
    Default = GlobalText.Mousemoverel,
    Multi = false,
    Callback = function(Method)
        if Method == GlobalText.Mousemoverel then
            Universals.AntiAFKMethod("1")
        elseif Method == GlobalText.Mousemoveabs then
            Universals.AntiAFKMethod("2")
        elseif Method == GlobalText.Mouseleftclick then
            Universals.AntiAFKMethod("3")
        elseif Method == GlobalText.Mouserightclick then
            Universals.AntiAFKMethod("4")
        end
    end
})
MainAFKGroupbox:AddDivider()
FPSCapToggle = MainAFKGroupbox:AddToggle("FPSCapToggle", {
    Text = GlobalText.FPSCapToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.FPSCap(Enabled)
    end
})
FPSCapSlider = MainAFKGroupbox:AddSlider("FPSCapSlider", {
    Text = GlobalText.FPSCapSlider,
    Default = getfpscap() or 240,
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
QuickLanguageChange = MFeeeIAMNEW and MainOthersGroupbox:AddDropdown("QuickLanguageChange", {
    Text = GlobalText.QuickLanguageChange,
    Values = {
        "English",
        "简体中文",
    },
    Default = MFeeeLanguage == "Chinese" and "简体中文" or "English",
    Multi = false,
    Callback = function(Language)
        writefile(LanguageFilePath, Language == "English" and "English" or "Chinese")
        Library:Notify(Language == "English" and "You Need to Restart to Apply the Change" or "重启脚本后生效", 5)
    end
})
QuickLanguageChangeDivider = MFeeeIAMNEW and QuickLanguageChange:AddDivider()
TPFilePath = "MFeee~ Project/ExecuteOnTeleport.txt"
ExecuteOnTeleportToggle = QueueTeleport and MainOthersGroupbox:AddToggle("ExecuteOnTeleportToggle", {
    Text = GlobalText.ExecuteOnTeleportToggle,
    Default = (isfile(TPFilePath) and readfile(TPFilePath) == "true" and true) or false,
    Callback = function(Enabled)
        makefolder("MFeee~ Project")
        if Enabled then
            writefile(TPFilePath, "true")
        else
            writefile(TPFilePath, "false")
        end
    end
})
AntiKickToggle = MainOthersGroupbox:AddToggle("AntiKickToggle", {
    Text = GlobalText.AntiKickToggleText,
    Default = false,
    Tooltip = GlobalText.AntiKickEgg,
    Callback = function(Enabled)
        Universals.AntiKick(Enabled)
    end
})
MainOthersGroupbox:AddDivider()
BoringClickLabel = MainOthersGroupbox:AddLabel(GlobalText.BoringClickLabel .. " 0 " .. GlobalText.BoringClickLabel2)
BoringClickButton = MainOthersGroupbox:AddButton({
    Text = GlobalText.BoringClickButton,
    Func = function()
        ClickedTimes = (ClickedTimes or 0) + (ClickMultipiler or 1)
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
        ClickMultipiler = tonumber(Text)
        if not tonumber(Text) then
            ClickMultipiler = 1
            Library:Notify(GlobalText.InputNumber, 5)
        end
    end
})
BoringClickResetButton = MainOthersGroupbox:AddButton({
    Text = GlobalText.BoringClickResetButton,
    DoubleClick = true,
    Func = function()
        BoringClickLabel:SetText(GlobalText.BoringClickLabel .. " 0 " .. GlobalText.BoringClickLabel2)
        Library:Notify(GlobalText.ResetedClickLabel .. ClickedTimes .. GlobalText.ResetedClickLabel2, 5)
        ClickedTimes = 0
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
    Default = math.round(Character and Humanoid and Humanoid.WalkSpeed) or 16,
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
    Default = math.round(Character and Humanoid and Humanoid.JumpPower) or 50,
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
    Default = math.round(workspace.Gravity) or 196,
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
        Universals.AntiVoid(Enabled)
    end
})
ClickToMoveToggle = PlayerFeaturesGroupbox:AddToggle("ClickToMoveToggle", {
    Text = GlobalText.ClickToMoveToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.ClickToMove(Enabled)
    end
})

--|| Fly Groupbox ||--

FlyGruopbox = Tabs.Player:AddRightGroupbox(GlobalText.FlyGruopbox)
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
    Default = 30,
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
VerticalFlySpeedMultipilerSlider = FlyGruopbox:AddSlider("VerticalFlySpeedMultipilerSlider", {
    Text = GlobalText.VerticalFlySpeedMultipilerSlider,
    Default = 1,
    Min = 0.5,
    Max = 2,
    Rounding = 1,
    Suffix = GlobalText.Multipiler,
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        VerticalFlySpeedMultipiler = Number
    end
})
FlyModeDropdown = FlyGruopbox:AddDropdown("FlyModeDropdown", {
    Text = GlobalText.FlyModeDropdown,
    Values = {
        GlobalText.StandFly,
        GlobalText.VFly,
        GlobalText.SitFly
    },
    Default = GlobalText.StandFly,
    Multi = false,
    Callback = function(Mode)
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
UseUpVectorFlyToggle = FlyGruopbox:AddToggle("UseUpVectorFlyToggle", {
    Text = GlobalText.UseUpVectorFlyToggle,
    Default = true,
    Callback = function(Enabled)
        UseUpVector = Enabled
    end
})
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
QEFlyToggle = FlyGruopbox:AddToggle("QEFlyToggle", {
    Text = GlobalText.QEFlyToggle,
    Default = true,
    Callback = function(Enabled)
        QEFly = Enabled
    end
})
StopFlyOnDiedToggle = FlyGruopbox:AddToggle("StopFlyOnDiedToggle", {
    Text = GlobalText.StopFlyOnDiedToggle,
    Default = true,
    Callback = function(Enabled)
        StopFlyOnDied = Enabled
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
    Default = Character and Humanoid and Humanoid.HipHeight or 2.25,
    Min = -1,
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
    Default = Character and Humanoid and Humanoid.MaxSlopeAngle or 89,
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
    Default = math.round(workspace.CurrentCamera.FieldOfView) or 70,
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
    Min = -5,
    Max = 5,
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
    Min = -5,
    Max = 5,
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
    Min = -5,
    Max = 5,
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
        Universals.FullDark(Enabled)
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
    Default = game.Lighting.Ambient,
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
    Default = math.round(game.Lighting.Brightness * 10) / 10 or 2,
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
    Default = math.round(game.Lighting.ClockTime * 10) / 10 or 14,
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
    Default = game.Lighting.OutdoorAmbient,
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
    Default = game.Lighting.ColorShift_Bottom,
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
    Default = game.Lighting.ColorShift_Top,
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
    Default = math.round(game.Lighting.EnvironmentDiffuseScale * 100) or 0,
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
    Default = math.round(game.Lighting.EnvironmentSpecularScale * 100) or 0,
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
    Default = math.round(game.Lighting.ShadowSoftness * 100) or 50,
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
    Default = math.round(game.Lighting.GeographicLatitude) or 42,
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
    Default = game.Lighting.Technology.Name == "Voxel" and GlobalText.Voxel or game.Lighting.Technology.Name == "ShadowMap" and GlobalText.ShadowMap or game.Lighting.Technology.Name == "Future" and GlobalText.Future or game.Lighting.Technology.Name == "Compatibility" and GlobalText.Compatibility or game.Lighting.Technology.Name == "Legacy" and GlobalText.Legacy or game.Lighting.Technology.Name == "Unified" and GlobalText.Unified,
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
        game.Lighting.Technology = Technology
    end
})

--|| ESP Series ||--

--// Variables \\--

--/ Color \--
ESPSurfaceColor = Color3.fromRGB(255, 255, 255)
ESPTextColor = Color3.fromRGB(255, 255, 255)
ESPFillColor = Color3.fromRGB(255, 255, 255)
ESPOutlineColor = Color3.fromRGB(255, 255, 255)
ESPTracerColor = Color3.fromRGB(255, 255, 255)
ESPArrowColor = Color3.fromRGB(255, 255, 255)

--/ Numbers \--
ESPStudsOffset = Vector3.new()
ESPTextSize = 22
ESPThickness = 0.1
ESPFillTransparency = 0.6
ESPOutlineTransparency = 0
ESPMaxDistance = 1000
ESPTransparency = 0.65
ESPTracerThickness = 1
ESPTracerTransparency = 1 -- Opposite to Roblox! --
ESPArrowCenterOffset = 300

--/ Booleans \--
ESPMe = false
ESPRandomColor = false
TracerEnabled = false
ArrowEnabled = false
ESPDisplayName = true
ESPElement = nil

--/ Strings \--
ESPType = (Arsenal and "SelectionBox") or "Highlight"
TracerFrom = "Bottom"

--/ Table \--
ESPPlayerConnections = {}

--// Functions \\--
function ESPPlayerAdded(Player)
    local TeamColor = Player.TeamColor.Color
    local function OnCharacterAdded(Character)
        if not AllowESP or not MFeeeLoaded then
            return
        end
        if (Player == Speaker and not ESPMe) or (Player.TeamColor == Speaker.TeamColor and #Teams:GetTeams() > 1 and ESPTeamCheck) then
            return
        end
        Character:WaitForChild("HumanoidRootPart", 1e308)
        ESPElement = ESPLibrary:Add({
            Name = ESPDisplayName and Player.DisplayName or Player.Name,
            Model = Character,
            Color = (ESPTeamColor and TeamColor) or ESPTextColor,
            MaxDistance = ESPMaxDistance,
            StudsOffset = ESPStudsOffset,
            TextSize = ESPTextSize,
            ESPType = ESPType,
            SurfaceColor = (ESPTeamColor and TeamColor) or ESPSurfaceColor,
            FillColor = (ESPTeamColor and TeamColor) or ESPFillColor,
            OutlineColor = (ESPTeamColor and TeamColor) or ESPOutlineColor,
            FillTransparency = ESPFillTransparency,
            OutlineTransparency = ESPOutlineTransparency,
            Transparency = ESPTransparency,
            Tracer = {
                Enabled = TracerEnabled,
                From = TracerFrom,
                Color = (ESPTeamColor and TeamColor) or ESPTracerColor,
                Thickness = ESPTracerThickness,
                Transparency = ESPOutlineTransparency,
            },
            Arrow = {
                Enabled = ArrowEnabled,
                Color = (ESPTeamColor and TeamColor) or ESPArrowColor,
                CenterOffset = ESPArrowCenterOffset,
            }
        })
    end
    OnCharacterAdded(Player.Character or Player.CharacterAdded:Wait())
    ESPPlayerConnections[Player] = (ESPPlayerConnections[Player] and ESPPlayerConnections[Player]:Disconnect()) or Player.CharacterAdded:Connect(OnCharacterAdded)
end

Players.PlayerAdded:Connect(ESPPlayerAdded)

--|| ESP Global Settings Groupbox ||--

ESPGlobalSettingsGroupbox = Tabs.ESP:AddLeftGroupbox(GlobalText.ESPGlobalSettingsGroupbox)
ESPAllToggle = ESPGlobalSettingsGroupbox:AddToggle("ESPAllToggle", {
    Text = GlobalText.ESPAllToggle,
    Default = false,
    Callback = function(Enabled)
        AllowESP = Enabled
        if Enabled then
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
        else
            ESPLibrary:Clear()
        end
    end
})
ESPMeToggle = ESPGlobalSettingsGroupbox:AddToggle("ESPMeToggle", {
    Text = GlobalText.ESPMeToggle,
    Default = false,
    Callback = function(Enabled)
        ESPMe = Enabled
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
        end
    end
})
ESPTeamCheckToggle = ESPGlobalSettingsGroupbox:AddToggle("ESPTeamCheckToggle", {
    Text = GlobalText.ESPTeamCheckToggle,
    Default = false,
    Callback = function(Enabled)
        ESPTeamCheck = Enabled
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
        end
    end
})
ESPTeamColorToggle = ESPGlobalSettingsGroupbox:AddToggle("ESPTeamColorToggle", {
    Text = GlobalText.ESPTeamColorToggle,
    Default = false,
    Callback = function(Enabled)
        ESPTeamColor = Enabled
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
        end
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
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
        end
    end
})
Heartbeat = Cloneref(game:GetService("RunService")).Heartbeat
ESPHugeDistanceToggle = ESPGlobalSettingsGroupbox:AddToggle("ESPHugeDistanceToggle", {
    Text = GlobalText.ESPHugeDistanceToggle,
    Default = false,
    Callback = function(Enabled)
        if Enabled then
            ESPMaxDistance = 1e308
            if AllowESP then
                ESPLibrary:Clear()
                for i,v in pairs(Players:GetPlayers()) do
                    ESPPlayerAdded(v)
                end
            end
        else
            ESPMaxDistance = 1000
            if AllowESP then
                ESPLibrary:Clear()
                for i,v in pairs(Players:GetPlayers()) do
                    ESPPlayerAdded(v)
                end
            end
        end
    end
})
ESPGlobalSettingsGroupbox:AddDivider()
ESPColorLabel = ESPGlobalSettingsGroupbox:AddLabel(GlobalText.ESPColorLabel):AddColorPicker("ESPColorPicker", {
    Title = GlobalText.ESPColorPicker,
    Default = ESPSurfaceColor,
    Callback = function(Color)
        ESPSurfaceColor = Color
        if AllowESP and not ESPTeamColor then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
            Heartbeat:Wait()
        end
    end
})
ESPTransparencySlider = ESPGlobalSettingsGroupbox:AddSlider("ESPTransparencySlider", {
    Text = GlobalText.ESPTransparencySlider,
    Default = ESPTransparency * 100,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = true,
    HideMax = true,
    Callback = function(Number)
        ESPTransparency = Number / 100
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
            Heartbeat:Wait()
        end
    end
})

--|| ESP Highlight Groupbox ||--

ESPHighlightGroupbox = Tabs.ESP:AddLeftGroupbox(GlobalText.ESPHighlightGroupbox)
ESPFillColorLabel = ESPHighlightGroupbox:AddLabel(GlobalText.ESPFillColorLabel):AddColorPicker("ESPFillColorPicker", {
    Title = GlobalText.ESPFillColorPicker,
    Default = ESPFillColor,
    Callback = function(Color)
        ESPFillColor = Color
        if AllowESP and not ESPTeamColor then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
            Heartbeat:Wait()
        end
    end
})
ESPOutlineColorLabel = ESPHighlightGroupbox:AddLabel(GlobalText.ESPOutlineColorLabel):AddColorPicker("ESPOutlineColorPicker", {
    Title = GlobalText.ESPOutlineColorPicker,
    Default = ESPOutlineColor,
    Callback = function(Color)
        ESPOutlineColor = Color
        if AllowESP and not ESPTeamColor then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
            Heartbeat:Wait()
        end
    end
})
ESPHighlightGroupbox:AddDivider()
ESPFillTransparencySlider = ESPHighlightGroupbox:AddSlider("ESPFillTransparencySlider", {
    Text = GlobalText.ESPFillTransparencySlider,
    Default = ESPFillTransparency * 100,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = false,
    HideMax = true,
    Callback = function(Number)
        ESPFillTransparency = Number / 100
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
            Heartbeat:Wait()
        end
    end
})
ESPOutlineTransparencySlider = ESPHighlightGroupbox:AddSlider("ESPOutlineTransparencySlider", {
    Text = GlobalText.ESPOutlineTransparencySlider,
    Default = ESPOutlineTransparency * 100,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = false,
    HideMax = true,
    Callback = function(Number)
        ESPOutlineTransparency = Number / 100
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
            Heartbeat:Wait()
        end
    end
})

--|| ESP Text Groupbox ||--

ESPTextGroupbox = Tabs.ESP:AddRightGroupbox(GlobalText.ESPTextGroupbox)
ESPDisplayNameToggle = ESPTextGroupbox:AddToggle("ESPDisplayNameToggle", {
    Text = GlobalText.ESPDisplayNameToggle,
    Default = true,
    Callback = function(Enabled)
        ESPDisplayName = Enabled
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
        end
    end
})
ESPTextSizeSlider = ESPTextGroupbox:AddSlider("ESPTextSizeSlider", {
    Text = GlobalText.ESPTextSizeSlider,
    Default = ESPTextSize,
    Min = 10,
    Max = 26,
    Rounding = 0,
    Suffix = "",
    Compact = false,
    HideMax = true,
    Callback = function(Number)
        ESPTextSize = Number
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
            Heartbeat:Wait()
        end
    end
})

--|| ESP Tracer Groupbox ||--

ESPTracerGroupbox = Tabs.ESP:AddRightGroupbox(GlobalText.ESPTracerGroupbox)
ESPTracerToggle = ESPTracerGroupbox:AddToggle("ESPTracerToggle", {
    Text = GlobalText.ESPTracerToggle,
    Default = false,
    Callback = function(Enabled)
        TracerEnabled = Enabled
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
        end
    end
})
ESPTracerColorLabel = ESPTracerGroupbox:AddLabel(GlobalText.ESPTracerColorLabel):AddColorPicker("ESPTracerColorPicker", {
    Title = GlobalText.ESPTracerColorPicker,
    Default = ESPTracerColor,
    Callback = function(Color)
        ESPTracerColor = Color
        if AllowESP and not ESPTeamColor then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
            Heartbeat:Wait()
        end
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
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
        end
    end
})
ESPTracerThicknessSlider = ESPTracerGroupbox:AddSlider("ESPTracerThicknessSlider", {
    Text = GlobalText.ESPTracerThicknessSlider,
    Default = ESPTracerThickness,
    Min = 1,
    Max = 10,
    Rounding = 0,
    Suffix = " px",
    Compact = false,
    HideMax = true,
    Callback = function(Number)
        ESPTracerThickness = Number
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
            Heartbeat:Wait()
        end
    end
})
ESPTracerTransparencySlider = ESPTracerGroupbox:AddSlider("ESPTracerTransparencySlider", {
    Text = GlobalText.ESPTracerTransparencySlider,
    Default = ESPTracerTransparency * 100,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Suffix = " %",
    Compact = false,
    HideMax = true,
    Callback = function(Number)
        ESPTracerTransparency = Number / 100
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
            Heartbeat:Wait()
        end
    end
})

--|| ESP Arrow Groupbox ||--

ESPArrowGroupbox = Tabs.ESP:AddRightGroupbox(GlobalText.ESPArrowGroupbox)
ESPArrowToggle = ESPArrowGroupbox:AddToggle("ESPArrowToggle", {
    Text = GlobalText.ESPArrowToggle,
    Default = false,
    Callback = function(Enabled)
        ArrowEnabled = Enabled
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
        end
    end
})
ESPArrowColorLabel = ESPArrowGroupbox:AddLabel(GlobalText.ESPArrowColorLabel):AddColorPicker("ESPArrowColorPicker", {
    Title = GlobalText.ESPArrowColorPicker,
    Default = ESPArrowColor,
    Callback = function(Color)
        ESPArrowColor = Color
        if AllowESP and not ESPTeamColor then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
            Heartbeat:Wait()
        end
    end
})
ESPArrowCenterOffsetSlider = ESPArrowGroupbox:AddSlider("ESPArrowCenterOffsetSlider", {
    Text = GlobalText.ESPArrowCenterOffsetSlider,
    Default = ESPArrowCenterOffset,
    Min = 0,
    Max = 500,
    Rounding = 0,
    Suffix = "",
    Compact = false,
    HideMax = true,
    Callback = function(Number)
        ESPArrowCenterOffset = Number
        if AllowESP then
            ESPLibrary:Clear()
            for i,v in pairs(Players:GetPlayers()) do
                ESPPlayerAdded(v)
            end
            Heartbeat:Wait()
        end
    end
})

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
NotifySideToggle = MenuGroup:AddToggle("NotifySideToggle", {
    Text = GlobalText.NotifySideToggle,
    Default = false,
    Callback = function(Enabled)
        if Enabled then
            Library.NotifySide = "Left"
            Library:Notify(GlobalText.NotifyLeft, 3)
        else
            Library.NotifySide = "Right"
            Library:Notify(GlobalText.NotifyRight, 3)
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
        Library:Notify(Language == "English" and "You Need to Restart to Apply the Change" or "重启脚本后生效", 5)
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
        Universals:Exit()
        ESPLibrary:Clear()
        ESPLibrary:Destroy()
        Library:Unload()
        getgenv().MFeeeLoaded = false
        print(GlobalText.Unloaded)
        print([[

        ]])
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

--|| Special Thanks Groupbox ||--

SpecialThanksGroupbox = Tabs.About:AddLeftGroupbox(GlobalText.SpecialThanksGroupbox)
ObsidianLabel = SpecialThanksGroupbox:AddLabel(GlobalText.ObsidianLabel)
AimbotLabel = SpecialThanksGroupbox:AddLabel(GlobalText.AimbotLabel)
ESPLabel = SpecialThanksGroupbox:AddLabel(GlobalText.ESPLabel)
SpecialThanksGroupbox:AddDivider()
AndYouLabel = SpecialThanksGroupbox:AddLabel(GlobalText.AndYouLabel)

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
        Library:Notify(GlobalText.DiscordLink, 3)
    end
})
ViewMyGithubButton = JoinDiscordButton:AddButton({
    Text = "Github",
    Func = function()
        Toclipboard("https://github.com/MaiFengYXD")
        Library:Notify(GlobalText.GithubLink, 3)
    end
})

--|| Addons ||--

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
ThemeManager:SetFolder("MFeee~ Project")
SaveManager:SetFolder("MFeee~ Project")
SaveManager:BuildConfigSection(Tabs.UI)
ThemeManager:ApplyToTab(Tabs.UI)

--|| End Loading ||--

getgenv().MFeeeLoading = false
getgenv().MFeeeLoaded = true
Aimbot.Load()
Options.FontFace:SetValue("Gotham")
SaveManager:LoadAutoloadConfig()
