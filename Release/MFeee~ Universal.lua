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
Version  | Alpha 0.3.8

# Project Started on 2024-11-13 #
# This Version was Last Edited on 2025-03-17 #

Issues Report on Github or https://discord.gg/YBQUd8X8PK
QQ: 3607178523

]]--



--|| Studio Check ||--

Cloneref = cloneref or function(...) return ... end
RunService = Cloneref(game:GetService("RunService"))
CoreGui = Cloneref(game:GetService("CoreGui"))
if RunService:IsStudio() then
    local Message = Instance.new("Message", CoreGui)
    Message.Text = "Do You Want to Cheat In Studio?"
    wait(3)
    Message:Destroy()
    return
end

--|| Language Config ||--

--// Get Language \\--
makefolder("MFeee~ Project")
LanguageFilePath = "MFeee~ Project/Language.txt"
if isfile(LanguageFilePath) then
    getgenv().MFeeeLanguage = readfile(LanguageFilePath) == "Chinese" and "Chinese" or "English"
else
    writefile(LanguageFilePath, "English")
    getgenv().MFeeeLanguage = "English"
    MFeeeIAMNEW = true
end

--// Localization: Chinese or English \\--
GlobalText = (MFeeeLanguage == "Chinese" and {
    Oaklands = "😵 你正尝试在橡树地内运行MFeee, 但橡树地有UI反作弊, 如果你仍要运行, 我无法保证你不会被加入黑名单",
    ScriptLoaded = "🤧 已经加载了脚本了！",
    ScriptLoading = "🤧 脚本正在加载中！",
    LibraryLoaded = "✅ 已加载UI库",
    ThemeManagerLoaded = "✅ 已加载主题管理器",
    SaveManagerLoaded = "✅ 已加载文件保存管理器",
    UniversalsLoaded = "✅ 已加载通用模块",
    ESPLibraryLoaded = "✅ 已加载透视模块",
    AimbotLoaded = "✅ 已加载自瞄模块",
    AssetsLoaded = "🥳 资源加载成功",
    GameNotLoaded = "🤒 游戏尚未完全加载！",
    MainWindowTitle = "通用",
    MainWindowFooter = "Alpha 0.3.8 | ",
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
    DisconnectIdleConnections = "断开挂机连接",
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
    FlyGruopbox = "速度飞行",
    FlyToggle = "飞行",
    FlySpeedSlider = "飞行速度",
    FlyKeyLabel = "飞行按键",
    FlyKeybind = "飞行",
    VerticalFlySpeedMultiplierSlider = "垂直速度倍数",
    Multiplier = " 倍",
    FlyModeDropdown = "飞行模式",
    StandFly = "立正飞行",
    VFly = "载具飞行",
    SitFly = "坐下飞行",
    FlyGyroToggle = "飞行陀螺仪",
    QEFlyToggle = "使用QE进行垂直移动",
    StopFlyOnDiedToggle = "死亡时停止飞行",
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
    UnloadButtonToolTip = "完全卸载?",
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
    ESPAllToggle = "透视玩家",
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
    ESPColorPicker = "选择框颜色",
    ESPTransparencySlider = "透视主透明度",
    ESPHighlightGroupbox = "高亮类型设置",
    ESPFillColorLabel = "填充颜色",
    ESPFillColorPicker = "填充颜色",
    ESPOutlineColorLabel = "轮廓颜色",
    ESPOutlineColorPicker = "轮廓颜色",
    ESPFillTransparencySlider = "填充透明度",
    ESPOutlineTransparencySlider = "轮廓透明度",
    ESPTextGroupbox = "文字设置",
    ESPDisplayNameToggle = "使用玩家昵称而不是用户名",
    ESPHealthToggle = "显示血量",
    ESPTextSizeSlider = "文字大小",
    ESPThicknessSlider = "粗细",
    ESPTracerGroupbox = "追踪线设置",
    ESPTracerFromDropdown = "追踪线起点",
    Bottom = "底部",
    Center = "中心",
    Top = "顶部",
    Mouse = "鼠标",
    ESPTracerThicknessSlider = "追踪线粗细",
    ESPTracerTransparencySlider = "追踪线不透明度",
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
    AssistantLabel4 = "助手4: Grok",
    AssistantLabel5 = "助手5: Qwen",
    SpecialThanksGroupbox = "特别感谢",
    ObsidianLabel = "DeividComsono: UI库",
    AimbotLabel = "Exunys: 自瞄模块",
    ESPLabel = "Mstudio45: 透视模块",
    AndYouLabel = "以及你: 使用这个脚本🥰",
    AboutProjectGroupbox = "关于我",
    MFeeeLabel = "MFeee~ Project",
    AboutLabel = "MFeee~ Project旨在提供完全免费开源, 没有繁琐的密钥系统, 同时拥有丰富功能的外部UI。MFeee~ Project奉上毫不费力的使用体验, 让你能沉浸式地享受, 做到丝滑地控制等等。",
    LicenseLabel = "MFeee~ Project全系列均使用CC0-1.0公共协议, 你可以随意编辑、重新发布、重新授权脚本",
    LinksGroupbox = "相关链接",
    DiscordLink = "Discord邀请已复制!",
    GithubLink = "Github主页链接已复制!",
    IssuesReportOnLabel = "在Github或者Discord反馈任何Bug! 我接受各种语言的报告(推荐中文), 以及意见。不要刷屏!",
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
    AimbotSettingsGroupbox = "设置",
    EnableAimbotToggle = "启用自瞄",
    AimbotKeyLabel = "自瞄按键",
    AimbotKeybind = "自瞄",
    AimbotToggleModeToggle = "切换式自瞄",
    AimbotTeamCheckToggle = "队伍检测",
    AimbotAliveCheckToggle = "存活检测",
    AimbotWallCheckToggle = "子弹穿墙",
    AimbotWallCheckTooltip = "已被修复！",
    AimbotOffsetToMoveDirectionToggle = "自瞄预判",
    AimbotOffsetIncrementSlider = "预判增量",
    AimbotSensitivitySlider = "平滑度",
    AimbotSensitivity2Slider = "鼠标相对移动灵敏度",
    AimbotLockModeDropdown = "锁定模式",
    CFrame = "CFrame",
    Mousemoverel = "鼠标相对移动",
    AimbotLockPartDropdown = "锁定部位",
    Head = "头部",
    HumanoidRootPart = "HumanoidRootPart",
    Torso = "[R6]躯干",
    LeftArm = "[R6]左臂",
    RightArm = "[R6]右臂",
    LeftLeg = "[R6]左腿",
    RightLeg = "[R6]右腿",
    UpperTorso = "[R15]上半身",
    LowerTorso = "[R15]臀部",
    LeftUpperArm = "[R15]左上臂",
    LeftLowerArm = "[R15]左下臂",
    LeftHand = "[R15]左手",
    RightUpperArm = "[R15]右上臂",
    RightLowerArm = "[R15]右下臂",
    RightHand = "[R15]右手",
    LeftUpperLeg = "[R15]左大腿",
    LeftLowerLeg = "[R15]左小腿",
    LeftFoot = "[R15]左脚",
    RightUpperLeg = "[R15]右大腿",
    RightLowerLeg = "[R15]右小腿",
    RightFoot = "[R15]右脚",
    AimbotFOVGroupbox = "圆圈",
    EnableAimbotFOVToggle = "启用圆圈",
    AimbotFOVRadiusSlider = "圆圈半径",
    AimbotFOVNumSidesSlider = "圆圈边数",
    AimbotFOVThicknessSlider = "圆圈粗细",
    AimbotFOVTransparencySlider = "圆圈不透明度",
    AimbotFOVFilledToggle = "填充圆圈",
    AimbotFOVRainbowColorToggle = "彩虹圆圈",
    AimbotFOVRainbowOutlineColorToggle = "彩虹圆圈轮廓",
    AimbotFOVColorLabel = "圆圈颜色",
    AimbotFOVColorPicker = "圆圈颜色",
    AimbotFOVOutlineColorLabel = "圆圈轮廓颜色",
    AimbotFOVOutlineColorPicker = "圆圈轮廓颜色",
    AimbotFOVLockedColorLabel = "锁定时圆圈颜色",
    AimbotFOVLockedColorPicker = "锁定时圆圈颜色",
    AimbotDeveloperSettingsGroupbox = "开发者",
    AimbotUpdateModeDropdown = "更新模式",
    RenderStepped = "渲染帧开始渲染之前",
    Stepped = "物理模拟步骤之前",
    Heartbeat = "逻辑帧处理之后",
    AimbotTeamCheckMethodDropdown = "队伍检测方式",
    TeamColor = "队伍颜色",
    Team = "队伍",
    AimbotRainbowSpeedSlider = "彩虹速度",
    RivalsCFrameLockTitle = "竞争对手风险提醒",
    RivalsCFrameLockDescription = "竞争对手会检测锁定方式, 如果使用CFrame瞄准大概率会被秋后算账(Ban), 且影响体验！",
    AimbotInfiniteLockDistanceToggle = "无限锁定距离",
    VisibleAimbotFOVToggle = "可见的圆圈",
    NoCharacterWarn = "未检测到玩家角色, 请尝试重生(重置人物)",
    GodSuccess = "已启用本地无敌",
    InvisSuccess = "已启用隐身, 现在你在别人眼里就是透明的了!",
    InvisFlingWarn = "正在隐形甩飞, 不能切换甩飞模式",
    TPWalkToggle = "传送行走",
    TPWalkSlider = "传送行走速度",
    SpinToggle = "旋转",
    SpinSpeedSlider = "旋转速度",
    ALilTrollGroupbox = "小恶搞",
    GodButton = "本地无敌",
    InvisibleToggle = "隐身",
    InvisibleTransparencySlider = "隐身透明度(只有你能看见)",
    FlingGroupbox = "甩飞",
    FlingToggle = "甩飞",
    SpinFling = "旋转甩飞",
    WalkFling = "行走甩飞",
    InvisFlingButton = "隐形甩飞",
    AntiFlingToggle = "防甩飞",
    AntiFlingMethodDropdown = "防甩飞方式",
    NoClipOthers = "使别人无碰撞",
    RestoreVelocity = "重置速度",
    MixedAntiFlingMethod = "混合",
    WalkFlingKeybind = "甩飞",
    ESPInstantApplyToggle = "即时应用(会卡)",
    ContinueFlingOnDiedToggle = "复活后继续甩飞",
    ForceCheckboxToggle = "强制复选框",
    CubicEaseInOut = "缓入缓出",
    CubicEaseIn = "缓入",
    CubicEaseOut = "缓出",
    Linear = "线性",
    NotifySoundDropdown = "通知音效",
    None = "无",
    ObsidianNotify = "将使用Obsidian通知音效",
    LinoriaNotify = "将使用Linoria通知音效",
    NoneNotify = "将关闭通知音效",
    AnimationModeDropdown = "动画曲线模式",
    CubicEaseIn = "三次缓入",
    CubicEaseOut = "三次缓出",
    CubicEaseInOut = "三次缓入缓出",
    QuarticEaseIn = "四次缓入",
    QuarticEaseOut = "四次缓出",
    QuarticEaseInOut = "四次缓入缓出",
    Linear = "线性",
    NoAnimation = "无动画",
    AnimationSpeedSlider = "动画持续时长",
    InstantPromptToggle = "瞬间互动",
    PromptNoclipToggle = "穿墙互动",
    DistantPromptToggle = "远距互动",
    PromptDistanceMultiplierSlider = "互动距离",
    PlayerScaleToggle = "玩家缩放",
    PlayerScaleSlider = "玩家缩放",
    AdvancedGroupbox = "高级",
    FlyPhysicsTab = "物理飞行",
    PhysicsFlyToggle = "物理飞行",
    SmoothGyroToggle = "平滑陀螺仪",
    SmoothGyroValueSlider = "平滑度",
    Smart = "智能模式",
    ToclipboardOK = "⏺️ Toclipboard函数存在",
    ToclipboardNO = "❌ Toclipboard函数不存在",
    QueueTeleportOK = "⏺️ QueueTeleport函数存在",
    QueueTeleportNO = "❌ QueueTeleport函数不存在",
    Hookmetamethod = "✅ Hookmetamethod函数可用",
    NoHookmetamethod = "❌ Hookmetamethod函数不可用",
    Fireproximityprompt = "✅ Fireproximityprompt函数可用",
    NoFireproximityprompt = "❌ Fireproximityprompt函数不可用",
    AutoInteractionToggle = "自动互动",
    AutoInteractionKeybind = "自动互动",
    InstantPromptMethodDropdown = "瞬间互动方式",
    FirePP = "Fireproximityprompt",
    HoldDuration = "修改按住时间为0",
    WhyYouAreUsingConsole = "为什么你要使用控制台运行此脚本?",
    MobileNotSupport = "😥 很抱歉, 脚本的移动端体验正在优化中, 但是很快就会上线!",
    GayESPToggle = "彩虹颜色",
    AutoInteractionMethodDropdown = "自动互动方式",
    AIFromCharacter = "以角色位置",
    AIFromCamera = "以相机位置",
    ESPDisplayDistanceToggle = "显示距离",
    ESPShowTextToggle = "显示文字",
    TimeOutLimiterSlider = "加载线程超时限制",
    FastResetToggle = "快速重置人物(适用跑酷游戏)",
    FastResetKeybind = "快速重置人物",
    ResetIntervalSlider = "重置人物间隔",
    FlyControllerDropdown = "飞行垂直控制键",
    QEFly = "Q / E",
    LeftShiftDown = "左Shift / 空格",
    LeftControlDown = "左Ctrl / 空格",
    ConstraintsFlyTab = "约束飞行",
    ConstraintsFlyToggle = "使用约束飞行",
    ConstraintsMaxSpeedSlider = "最大速度",
    ConstraintsAccelerationSlider = "加速度",
    ConstraintsTurnSpeedSlider = "转向速度",
    ConstraintsResponsivenessSlider = "响应速度",
    LookToCameraToggle = "朝向相机",
    ResetMethodDropdown = "重置人物方式",
    BreakJoints = "断开关节",
    StateDied = "设为死亡状态",
    Health0 = "血量 = 0",
    All = "全都用一遍",
    InvisFlingNotify = "可在恶搞标签页中修改你的甩飞模式",
    ConstraintsFlyingStateDropdown = "飞行时切换人物状态",
    NoChange = "不修改",
    FallingDown = "倒地",
    Ragdoll = "布娃娃",
    GettingUp = "起身",
    Jumping = "跳跃",
    Swimming = "游泳",
    Freefall = "自由落体",
    Flying = "飞行",
    Landed = "着陆",
    Running = "奔跑",
    RunningNoPhysics = "奔跑(无物理)",
    StrafingNoPhysics = "横向移动(无物理)",
    Climbing = "攀爬",
    Seated = "坐下",
    PlatformStanding = "平台站立",
    Died = "死亡(?💀)",
    Physics = "物理",
    GetConnectionsOK = "✅ GetConnections函数可用",
    NoGetConnections = "❌ GetConnections函数不可用",
    ESPTextModelDropdown = "文字模型",
    Humanoid = "Humanoid",
    RootPart = "HumanoidRootPart",
    Character = "角色",
    APlayerDropdown = "选择玩家",
    LockToPlayerToggle = "锁定到玩家",
    HeadSitPlayerToggle = "骑在玩家头上",
    SpamInput = "垃圾邮件文本",
    SpamInputPlaceholder = "任意字符, 不能发脏话",
    SpamToggle = "垃圾邮件",
    SpamSpeedSlider = "垃圾邮件间隔",
    NoRenderToggle = "禁用3D渲染器",
    FreeCameraToggle = "自由视角",
    FreeCameraKeybind = "自由视角",
    FreecamSpeedSlider = "自由视角速度",
    CameraPlayerSelectorDropdown = "选择玩家",
    SpectatePlayerToggle = "旁观玩家",
    UnSpectateWhenCharacterRemovingToggle = "旁观玩家死亡后停止旁观",
    FixCameraButton = "修复相机",
    LeftShiftMultiplierSlider = "左Shift倍速",
    SpaceMultiplierSlider = "空格倍速",
    AntiFallingDownToggle = "防摔倒",
    SilentAimLoaded = "✅ 已加载魔法子弹模块",
    GameName = "游戏名称: ",
    GameNaming = "正在获取...",
    GamePlaceId = "游戏ID: ",
    GamePlaceIdCopied = "游戏ID已复制!",
    YouPlayedLabel = "你玩了: ",
    YouPlayedLabel2 = " 秒",
    YouPlayedLabel3 = " 分",
    YouPlayedLabel4 = " 时🤓",
    YouPlayedLabel5 = " 天🤔",
    YouPlayedLabel6 = " 周😨",
    YouPlayedLabel7 = " 月💀",
    YouPlayedLabel8 = " 年👻",
    AboutGameGroupbox = "关于游戏",
    AimbotFOVRainbowSpeedSlider = "彩虹圆圈速度",
}) or {
    Oaklands = "😵 You are trying to run MFeee in Oaklands, but Oaklands has an UI anticheat, if you still run it, I can't guarantee that you won't be banned",
    ScriptLoaded = "🤧 Script Already Loaded!",
    ScriptLoading = "🤧 Script Loading!",
    LibraryLoaded = "✅ UI Library Loaded",
    ThemeManagerLoaded = "✅ Theme Manager Loaded",
    SaveManagerLoaded = "✅ Save Manager Loaded",
    UniversalsLoaded = "✅ Universal Modules Loaded",
    ESPLibraryLoaded = "✅ ESP Module Loaded",
    AimbotLoaded = "✅ Aimbot Module Loaded",
    AssetsLoaded = "🥳 Assets Load Success",
    GameNotLoaded = "🤒 Game Not Fully Loaded!",
    MainWindowTitle = "Universal",
    MainWindowFooter = "Alpha 0.3.8 | ",
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
    DisconnectIdleConnections = "Disconnect Idle Connections",
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
    BoringClickInput = "Click Multiplier",
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
    FlyGruopbox = "Body Movers",
    FlyToggle = "Fly",
    FlySpeedSlider = "Fly Speed",
    FlyKeyLabel = "Fly Keybind",
    FlyKeybind = "Fly",
    VerticalFlySpeedMultiplierSlider = "Vertical Speed Multiplier",
    Multiplier = " x",
    FlyModeDropdown = "Fly Mode",
    StandFly = "Stand Fly",
    VFly = "Vehicle Fly",
    SitFly = "Sit Fly",
    FlyGyroToggle = "Fly Gyro",
    QEFlyToggle = "Use QE Vertical Movement",
    StopFlyOnDiedToggle = "Stop Fly On Died",
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
    UnloadButtonToolTip = "Fully Unload?",
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
    NoAtmosphereToggle = "No Fogs",
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
    ESPColorPicker = "Selection Box Color",
    ESPTransparencySlider = "Transparency",
    ESPHighlightGroupbox = "Highlight Settings",
    ESPFillColorLabel = "Fill Color",
    ESPFillColorPicker = "Fill Color",
    ESPOutlineColorLabel = "Outline Color",
    ESPOutlineColorPicker = "Outline Color",
    ESPFillTransparencySlider = "Fill Transparency",
    ESPOutlineTransparencySlider = "Outline Transparency",
    ESPTextGroupbox = "Text Settings",
    ESPDisplayNameToggle = "Use Player's Display Name",
    ESPHealthToggle = "Show Health",
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
    AssistantLabel4 = "Assistant4: Grok",
    AssistantLabel5 = "Assistant5: Qwen",
    SpecialThanksGroupbox = "Special Thanks",
    ObsidianLabel = "DeividComsono: UI Library",
    AimbotLabel = "Exunys: Aimbot Module",
    ESPLabel = "Mstudio45: ESP Module",
    AndYouLabel = "And You: For Using This Script🥰",
    AboutProjectGroupbox = "About Me",
    MFeeeLabel = "MFeee~ Project",
    AboutLabel = "MFeee~ Project aims to provide a completely free and open-source external UI with rich features, without cumbersome key systems. MFeee~ Project offers an effortless user experience, allowing you to enjoy immersive, silky-smooth control, etc.",
    LicenseLabel = "MFeee~ Project series uses the CC0-1.0 public license, you can freely edit, republish, relicense the script",
    LinksGroupbox = "Links",
    DiscordLink = "Discord Invite Copied!",
    GithubLink = "Github Page Copied!",
    IssuesReportOnLabel = "Report Any Bugs on Github or Discord! I Accept Any Language(Recommended English), Any Suggestions. No Spamming!",
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
    AimbotSettingsGroupbox = "Settings",
    EnableAimbotToggle = "Enable Aimbot",
    AimbotKeyLabel = "Aimbot Trigger Key",
    AimbotKeybind = "Aimbot",
    AimbotToggleModeToggle = "Toggle Mode",
    AimbotTeamCheckToggle = "Team Check",
    AimbotAliveCheckToggle = "Alive Check",
    AimbotWallCheckToggle = "Wall Check",
    AimbotWallCheckTooltip = "Patched! Not Working Now",
    AimbotOffsetToMoveDirectionToggle = "Offset to Move Direction",
    AimbotOffsetIncrementSlider = "Offset Increment",
    AimbotSensitivitySlider = "Smoothness",
    AimbotSensitivity2Slider = "Mouse Move Relative Sensitivity",
    AimbotLockModeDropdown = "Lock Mode",
    CFrame = "CFrame",
    Mousemoverel = "Mouse Move Relative",
    AimbotLockPartDropdown = "Lock Part",
    Head = "Head",
    HumanoidRootPart = "HumanoidRootPart",
    Torso = "[R6]Torso",
    LeftArm = "[R6]Left Arm",
    RightArm = "[R6]Right Arm",
    LeftLeg = "[R6]Left Leg",
    RightLeg = "[R6]Right Leg",
    UpperTorso = "[R15]Upper Torso",
    LowerTorso = "[R15]Lower Torso",
    LeftUpperArm = "[R15]Left Upper Arm",
    LeftLowerArm = "[R15]Left Lower Arm",
    LeftHand = "[R15]Left Hand",
    RightUpperArm = "[R15]Right Upper Arm",
    RightLowerArm = "[R15]Right Lower Arm",
    RightHand = "[R15]Right Hand",
    LeftUpperLeg = "[R15]Left Upper Leg",
    LeftLowerLeg = "[R15]Left Lower Leg",
    LeftFoot = "[R15]Left Foot",
    RightUpperLeg = "[R15]Right Upper Leg",
    RightLowerLeg = "[R15]Right Lower Leg",
    RightFoot = "[R15]Right Foot",
    AimbotFOVGroupbox = "Circle",
    EnableAimbotFOVToggle = "Enable Circle",
    AimbotFOVRadiusSlider = "Circle Radius",
    AimbotFOVNumSidesSlider = "Circle Sides",
    AimbotFOVThicknessSlider = "Circle Thickness",
    AimbotFOVTransparencySlider = "Circle Opacity",
    AimbotFOVFilledToggle = "Filled Circle",
    AimbotFOVRainbowColorToggle = "Rainbow Circle",
    AimbotFOVRainbowOutlineColorToggle = "Rainbow Circle Outline",
    AimbotFOVColorLabel = "Circle Color",
    AimbotFOVColorPicker = "Circle Color",
    AimbotFOVOutlineColorLabel = "Circle Outline Color",
    AimbotFOVOutlineColorPicker = "Circle Outline Color",
    AimbotFOVLockedColorLabel = "Locked Circle Color",
    AimbotFOVLockedColorPicker = "Locked Circle Color",
    AimbotDeveloperSettingsGroupbox = "Developer",
    AimbotUpdateModeDropdown = "Update Mode",
    RenderStepped = "RenderStepped",
    Stepped = "Stepped",
    Heartbeat = "Heartbeat",
    AimbotTeamCheckMethodDropdown = "Team Check Method",
    TeamColor = "Team Color",
    Team = "Team",
    AimbotRainbowSpeedSlider = "Rainbow Speed",
    RivalsCFrameLockTitle = "Rivals CFrame Lock Warning",
    RivalsCFrameLockDescription = "Rivals will detect the lock mode, if you use CFrame to aim, you will probably be banned, and it will affect the experience!",
    AimbotInfiniteLockDistanceToggle = "Infinite Lock Distance",
    VisibleAimbotFOVToggle = "Visible Circle",
    NoCharacterWarn = "No Character Detected, Please Try to Respawn",
    GodSuccess = "Local God Mode Enabled",
    InvisSuccess = "Invisible Enabled, You are Now Invisible",
    InvisibleFlingWarn = "Invisible Flinging, Can't Change Fling Mode",
    TPWalkToggle = "TP Walk",
    TPWalkSlider = "TP Walk Speed",
    SpinToggle = "Spin",
    SpinSpeedSlider = "Spin Speed",
    ALilTrollGroupbox = "A Lil Troll",
    GodButton = "Local God Mode",
    InvisibleToggle = "Invisible",
    InvisibleTransparencySlider = "Transparency(Only You Can See)",
    FlingGroupbox = "Fling",
    FlingToggle = "Fling",
    SpinFling = "Spin Fling",
    WalkFling = "Walk Fling",
    InvisFlingButton = "Invisible Fling",
    AntiFlingToggle = "Anti Fling",
    AntiFlingMethodDropdown = "Anti Fling Method",
    NoClipOthers = "No Clip Others",
    RestoreVelocity = "Restore Velocity",
    MixedAntiFlingMethod = "Both",
    WalkFlingKeybind = "Fling",
    ESPInstantApplyToggle = "Instant Apply(Laggy)",
    IssuesReportOn = "Report Any Bug on Github or Discord!",
    ContinueFlingOnDiedToggle = "Continue Fling On Relive",
    ForceCheckboxToggle = "Force Checkbox",
    CubicEaseInOut = "Ease In Out",
    CubicEaseIn = "Ease In",
    CubicEaseOut = "Ease Out",
    Linear = "Linear",
    NotifySoundDropdown = "Notify Sound",
    None = "None",
    ObsidianNotify = "Will Use Obsidian Notify Sound",
    LinoriaNotify = "Will Use Linoria Notify Sound",
    NoneNotify = "Will Disable Notify Sound",
    AnimationModeDropdown = "Animation Mode",
    CubicEaseIn = "Cubic Ease In",
    CubicEaseOut = "Cubic Ease Out",
    CubicEaseInOut = "Cubic Ease In Out",
    QuarticEaseIn = "Quartic Ease In",
    QuarticEaseOut = "Quartic Ease Out",
    QuarticEaseInOut = "Quartic Ease In Out",
    Linear = "Linear",
    NoAnimation = "No Animation",
    AnimationSpeedSlider = "Animation Duration",
    InstantPromptToggle = "Instant Prompt",
    PromptNoclipToggle = "Prompt Clip",
    DistancePromptToggle = "Distant Prompt",
    PromptDistanceMultiplierSlider = "Prompt Distance",
    PlayerScaleToggle = "Player Scale",
    PlayerScaleSlider = "Scale",
    AdvancedGroupbox = "Advanced",
    FlyPhysicsTab = "Fly Physics",
    PhysicsFlyToggle = "Physics Fly",
    SmoothGyroToggle = "Smooth Gyro",
    SmoothGyroValueSlider = "Smoothness",
    Smart = "Smart Mode",
    ToclipboardOK = "⏺️ Toclipboard Exist",
    ToclipboardNO = "❌ Toclipboard Not Exist",
    QueueTeleportOK = "⏺️ Queueteleport Exist",
    QueueTeleportNO = "❌ Queueteleport Not Exist",
    Hookmetamethod = "✅ Hookmetamethod Available",
    NoHookmetamethod = "❌ Hookmetamethod Unavailable",
    Fireproximityprompt = "✅ Fireproximityprompt Available",
    NoFireproximityprompt = "❌ Fireproximityprompt Unavailable",
    AutoInteractionToggle = "Auto Interaction",
    AutoInteractionKeybind = "Auto Interaction",
    InstantPromptMethodDropdown = "Instant Prompt Method",
    FirePP = "Fireproximityprompt",
    HoldDuration = "HoldDuration = 0",
    WhyYouAreUsingConsole = "Why You Are Using Console to Run This Script?",
    MobileNotSupport = "😥 I'm Sorry, The Script's Mobile Experience is Under Optimization, But It Will Be Coming Soon!",
    GayESPToggle = "Rainbow Color",
    AutoInteractionMethodDropdown = "Auto Interaction Method",
    AIFromCharacter = "From Character",
    AIFromCamera = "From Camera",
    ESPDisplayDistanceToggle = "Display Distance",
    ESPShowTextToggle = "Show Text",
    TimeOutLimiterSlider = "Loader Timeout Limite",
    FastResetToggle = "Fast Reset(For obby games)",
    FastResetKeybind = "Fast Reset",
    ResetIntervalSlider = "Reset Interval",
    FlyControllerDropdown = "Fly Vertical Controller",
    QEFly = "Q / E",
    LeftShiftDown = "Left Shift / Space",
    LeftControlDown = "Left Ctrl / Space",
    ConstraintsFlyTab = "Constraints Fly",
    ConstraintsFlyToggle = "Use Constraints Fly",
    ConstraintsMaxSpeedSlider = "Max Speed",
    ConstraintsAccelerationSlider = "Acceleration",
    ConstraintsTurnSpeedSlider = "Turn Speed",
    ConstraintsResponsivenessSlider = "Responsiveness",
    LookToCameraToggle = "Look To Camera",
    ResetMethodDropdown = "Reset Method",
    BreakJoints = "Break Joints",
    StateDied = "Change State Died",
    Health0 = "Health = 0",
    All = "All",
    InvisFlingNotify = "You Can Change Your Fling Mode in Troll Tab",
    ConstraintsFlyingStateDropdown = "Change State When Flying",
    NoChange = "No Change",
    FallingDown = "Falling Down",
    Ragdoll = "Ragdoll",
    GettingUp = "Getting Up",
    Jumping = "Jumping",
    Swimming = "Swimming",
    Freefall = "Freefall",
    Flying = "Flying",
    Landed = "Landed",
    Running = "Running",
    RunningNoPhysics = "Running(No Physics)",
    StrafingNoPhysics = "Strafing(No Physics)",
    Climbing = "Climbing",
    Seated = "Seated",
    PlatformStanding = "Platform Standing",
    Died = "Died(Why?💀)",
    Physics = "Physics",
    GetConnectionsOK = "✅ GetConnections Available",
    NoGetConnections = "❌ GetConnections Unavailable",
    ESPTextModelDropdown = "Text Model",
    Humanoid = "Humanoid",
    RootPart = "HumanoidRootPart",
    Character = "Character",
    APlayerDropdown = "Select Player",
    LockToPlayerToggle = "Lock To Player",
    HeadSitPlayerToggle = "Head Sit Player",
    SpamInput = "Spam Input",
    SpamInputPlaceholder = "Any Characters, No Swearing Words",
    SpamToggle = "Spam",
    SpamSpeedSlider = "Spam Interval",
    NoRenderToggle = "Disable 3D Renderer",
    FreeCameraToggle = "Free Camera",
    FreeCameraKeybind = "Free Camera",
    FreecamSpeedSlider = "Freecam Speed",
    CameraPlayerSelectorDropdown = "Select Player",
    SpectatePlayerToggle = "Spectate",
    UnSpectateWhenCharacterRemovingToggle = "Unspectate When Character Removing",
    FixCameraButton = "Fix Camera",
    LeftShiftMultiplierSlider = "Left Shift Multiplier",
    SpaceMultiplierSlider = "Space Multiplier",
    AntiFallingDownToggle = "Anti Falling Down",
    SilentAimLoaded = "✅ Silent Aim Module Loaded",
    GameName = "Game Name: ",
    GameNaming = "Getting...",
    GamePlaceId = "Game ID: ",
    GamePlaceIdCopied = "Game ID Copied!",
    YouPlayedLabel = "You Played: ",
    YouPlayedLabel2 = " Seconds",
    YouPlayedLabel3 = " Minutes",
    YouPlayedLabel4 = " Hours🤓",
    YouPlayedLabel5 = " Days🤔",
    YouPlayedLabel6 = " Weeks😨",
    YouPlayedLabel7 = " Months💀",
    YouPlayedLabel8 = " Years👻",
    AboutGameGroupbox = "About Game",
    AimbotFOVRainbowSpeedSlider = "Rainbow Circle Speed",
}

--|| Oaklands Check ||--

Players = Cloneref(game:GetService("Players"))
Speaker = Players.LocalPlayer
if game.PlaceId == 9938675423 then
    Speaker:Kick(GlobalText.Oaklands)
    return
end

--|| Device Check ||--

UserInputService = Cloneref(game:GetService("UserInputService"))
GuiService = Cloneref(game:GetService("GuiService"))
if GuiService:IsTenFootInterface() then
    local Message = Instance.new("Message", CoreGui)
    Message.Text = GlobalText.WhyYouAreUsingConsole
    wait(3)
    Message:Destroy()
    return
elseif UserInputService.TouchEnabled and (not UserInputService.MouseEnabled or not UserInputService.KeyboardEnabled) then
    local Message = Instance.new("Message", CoreGui)
    Message.Text = GlobalText.MobileNotSupport
    wait(3)
    Message:Destroy()
    return
end

--|| Loaded Check ||--

if getgenv().MFeeeLoaded then
    warn(GlobalText.ScriptLoaded)
    return
elseif getgenv().MFeeeLoading then
    warn(GlobalText.ScriptLoading)
    return
end

--|| Start Loading ||--

getgenv().MFeeeLoaded = false
getgenv().MFeeeLoading = true

--// Festivals and Emojis \\--
Year = tonumber(os.date("%Y"))
function EasterDate()
    local A = math.floor(Year / 100)
    local B = math.floor((13 + 8 * A) / 25)
    local C = (15 - B + A - math.floor(A / 4)) % 30
    local D = (4 + A - math.floor(A / 4)) % 7
    local E = (19 * (Year % 19) + C) % 30
    local F = (2 * (Year % 4) + 4 * (Year % 7) + 6 * E + D) % 7
    local G = (22 + E + F)
    return (E == 29 and F == 6 and "04 19") or (E == 28 and F == 6 and "04 18") or (31 < G and ("04 %02d"):format(G - 31)) or ("03 %02d"):format(G)
end

function MotherDay()
    for Day = 8, 14 do
        if os.date("%w", os.time{year = Year, month = 5, day = Day}) == "0" then
            return ("05 %02d"):format(Day)
        end
    end
end

function FatherDay()
    for Day = 15, 21 do
        if os.date("%w", os.time{year = Year, month = 6, day = Day}) == "0" then
            return ("06 %02d"):format(Day)
        end
    end
end

EmojiList = (MFeeeLanguage == "Chinese" and ({
    ["01 01"] = "🎇",
    ["01 26"] = "🥣", -- 2026
    ["02 14"] = ({"💚", "💛", "🧡", "❤️", "💗"})[math.random(5)],
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
    ["04 01"] = ({"🃏", "🤡", "😂", "🤣", "😡", "🤬", "😇", "🔥💀🔥", "🔥", "💀", "🐀", "🤨", "🤓", "🤑", "🤮", "👽", "😈", "👿", "🤘", "👎", "🈲", "🔞", "😤", "😕", "😏", "😒", "♿", "😎", "🤗", "🤔", "🧐", "👀", "❌", "✅", "⚠️", "😓", "🥵", "🙄", "🙄💅", "💄🙄💅", "🆘", "🉑", "😭", "😱", "🥴", "🥴🥴", "🤢", "🥸", "🐽", "👾", "🛠️", "🧧", "🧧", "🧧", "🧧", "🧧", "🧧", "🍃", "🏭", "🏭", "🏭","🏭", "🏭", "🥮", "👩", "👩", "👨", "👶", "🏮", "🎇", "🌳", "🎃", "🎃", "🎃", "🎃", "💚", "💛", "🧡", "❤️", "💗", "🧨", "🥣", "🪦", "🪦", "🪦", "🎄", "🎄", "🥚"})[math.random(88)],
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
    ["02 14"] = ({"💚", "💛", "🧡", "❤️", "💗"})[math.random(5)],
    ["03 08"] = "👩",
    ["03 12"] = "🌳",
    [EasterDate()] = "🥚",
    ["04 01"] = ({"🃏", "🤡", "😂", "🤣", "😡", "🤬", "😇", "🔥💀🔥", "🔥", "💀", "🐀", "🤨", "🤓", "🤑", "🤮", "👽", "😈", "👿", "🤘", "👎", "🈲", "🔞", "😤", "😕", "😏", "😒", "♿", "😎", "🤗", "🤔", "🧐", "👀", "❌", "✅", "⚠️", "😓", "🥵", "🙄", "🙄💅", "💄🙄💅", "🆘", "🉑", "😭", "😱", "🥴", "🥴🥴", "🤢", "🥸", "🐽", "👾", "🛠️", "🧧", "🧧", "🧧", "🧧", "🧧", "🧧", "🍃", "🏭", "🏭", "🏭","🏭", "🏭", "🥮", "👩", "👩", "👨", "👶", "🏮", "🎇", "🌳", "🎃", "🎃", "🎃", "🎃", "💚", "💛", "🧡", "❤️", "💗", "🧨", "🥣", "🪦", "🪦", "🪦", "🎄", "🎄", "🥚"})[math.random(88)],
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
Emoji = EmojiList or ""

--// Beautiful Arts \\--
Arts = {
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
Workspace = Cloneref(game:GetService("Workspace"))
QueueTeleport = (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport) or queue_on_teleport
Setclipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

print("————————————————————")
print((QueueTeleport and GlobalText.QueueTeleportOK) or GlobalText.QueueTeleportNO)
print((Setclipboard and GlobalText.ToclipboardOK) or GlobalText.ToclipboardNO)

if hookmetamethod then
    pcall(function()
        local Object = setmetatable({}, { __index = newcclosure(function() return false end), __metatable = "Locked!" })
        local Ref = hookmetamethod(Object, "__index", function() return true end)
        CanHookMM = Object.test ~= false and Ref() ~= true
    end)
else
    CanHookMM = false
end

print((CanHookMM and GlobalText.Hookmetamethod) or GlobalText.NoHookmetamethod)

if fireproximityprompt then
    pcall(function()
        local ProximityPrompt = Instance.new("ProximityPrompt", Workspace)
        ProximityPrompt.MaxActivationDistance = math.huge
        ProximityPrompt.RequiresLineOfSight = false
        ProximityPrompt.Triggered:Once(function()
            CanFirePP = true
            ProximityPrompt:Destroy()
        end)
        fireproximityprompt(ProximityPrompt)
        task.wait(.1)
    end)
else
    CanFirePP = false
end
print((CanFirePP and GlobalText.Fireproximityprompt) or GlobalText.NoFireproximityprompt)

GetConnections = getconnections or get_signal_cons
if GetConnections then
    pcall(function()
        local Types = { Enabled = "boolean" }
        local Bindable = Instance.new("BindableEvent")
        Bindable.Event:Once(function() end)
        local Connection = GetConnections(Bindable.Event)[1]
        for i, v in pairs(Types) do
            CanGetCons = Connection[i] ~= nil and typeof(Connection[i]) == v
        end
    end)
else
    CanGetCons = false
end

print((CanGetCons and GlobalText.GetConnectionsOK) or GlobalText.NoGetConnections)
print("————————————————————")

--// Load Obsidian and Modules \\--
Repo = "https://raw.githubusercontent.com/"
MFRepo = (Repo .. "MaiFengYXD/ObsidianCN/main/")
ObsidianRepo = (Repo .. "deividcomsono/Obsidian/main/")
PastebinRepo = "https://pastebin.com/raw/"
CurrentVersion = "Alpha 0.3.8"
Library = nil
ThemeManager = nil
SaveManager = nil
Universals = nil
Aimbot = nil

task.spawn(function()
    pcall(function()
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
end)
task.spawn(function()
    pcall(function()
        ThemeManager = (MFeeeLanguage == "Chinese" and loadstring(game:HttpGet(MFRepo .. "Addons/ThemeManager%20Chinese.lua"))()) or loadstring(game:HttpGet(ObsidianRepo .. "addons/ThemeManager.lua"))()
        PrintUI()
    end)
end)
task.spawn(function()
    pcall(function()
        SaveManager = (MFeeeLanguage == "Chinese" and loadstring(game:HttpGet(MFRepo .. "Addons/SaveManager%20Chinese.lua"))()) or loadstring(game:HttpGet(ObsidianRepo .. "addons/SaveManager.lua"))()
        PrintUI()
    end)
end)
task.spawn(function()
    pcall(function()
        Universals = loadstring(game:HttpGet(PastebinRepo .. "ukLr0Pmm"))()--loadstring(game:HttpGet(Repo .. "MaiFengYXD/Universal-Modules/main/Universal%20Modules.lua"))()
        if TimeOut and Universals then
            Universals:Exit()
        elseif Universals then
            print(GlobalText.UniversalsLoaded)
        end
    end)
end)
task.spawn(function()
    pcall(function()
        ESPLibrary = loadstring(game:HttpGet(Repo .. "mstudio45/MSESP/refs/heads/main/source.luau"))()
        if TimeOut and ESPLibrary then
            ESPLibrary:Destroy()
        elseif ESPLibrary then
            print(GlobalText.ESPLibraryLoaded)
        end
    end)
end)
task.spawn(function()
    pcall(function()
        Aimbot = loadstring(game:HttpGet(PastebinRepo .. "8A3dgm1q"))()
        if TimeOut and Aimbot then
            Aimbot:Exit()
        elseif Aimbot then
            Aimbot.Load()
            print(GlobalText.AimbotLoaded)
        end
    end)
end)
task.spawn(function()
    pcall(function()
        SilentAim = loadstring(game:HttpGet(PastebinRepo .. "MRygSimb"))()
        if TimeOut and SilentAim then
            SilentAim:Exit()
        elseif SilentAim then
            print(GlobalText.SilentAimLoaded)
        end
    end)
end)
task.spawn(function()
    pcall(function()
        LeastVersion = loadstring(game:HttpGet(PastebinRepo .. "BhnD85nE"))()
    end)
end)
task.spawn(function()
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
task.spawn(function()
    Heartbeat = RunService.Heartbeat
    ThisGamesName = Cloneref(game:GetService("MarketplaceService")):GetProductInfo(game.PlaceId).Name
    repeat
        Heartbeat:Wait()
    until ThisGamesName and GameNameLabel
    GameNameLabel:SetText(GlobalText.GameName .. ThisGamesName)
end)

makefolder("MFeee~ Project")
TimeOutLimiteFilePath = "MFeee~ Project/TimeOutLimite.txt"
if isfile(TimeOutLimiteFilePath) then
    TimeOutLimite = math.max(5, math.min(tonumber(readfile(TimeOutLimiteFilePath)) or 10, 60))
else
    writefile(TimeOutLimiteFilePath, "10")
    TimeOutLimite = 10
end

function PrintUI()
    if Library and ThemeManager and SaveManager then
        print(GlobalText.LibraryLoaded)
        PrintUI = function() return end
    end
end

repeat
    LoadTimer = (LoadTimer or 0) + Heartbeat:Wait()
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
until Library and ThemeManager and SaveManager and Universals and ESPLibrary and Aimbot
print(GlobalText.AssetsLoaded)

--|| Variables ||--

Teams = Cloneref(game:GetService("Teams"))
ReplicatedStorage = Cloneref(game:GetService("ReplicatedStorage"))
TextChatService = Cloneref(game:GetService("TextChatService"))
Character = Speaker.Character
Humanoid = Character and Character:FindFirstChild("Humanoid")
Arsenal = (game.PlaceId == 286090429 and true) or false
Rivals = (game.PlaceId == 17625359962 and true) or false
ExecutorName, ExecutorVersion = identifyexecutor()
NotifyAlert = true
ObsidianNotify = true
MFCons = {}

--// Toclipboard Function \\--
Toclipboard = function(Text)
    if Setclipboard then
        Setclipboard(tostring(Text))
    else
        NotifySound(GlobalText.CantSetClipBoard, 5)
        warn(GlobalText.CantSetClipBoard)
    end
end

--// Queue TP Function \\--
if not MFeeeQueueTPSeted and QueueTeleport then
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

MainWindow = Library:CreateWindow({
    Title = GlobalText.MainWindowTitle .. Emoji,
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
    HideMax = true,
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
        NotifySound(Language == "English" and "You Need to Restart to Apply the Change" or "重启脚本后生效", 5)
    end
})
QuickLanguageChangeDivider = MFeeeIAMNEW and QuickLanguageChange:AddDivider()
TPFilePath = "MFeee~ Project/ExecuteOnTeleport.txt"
ExecuteOnTeleportToggle = QueueTeleport and MainOthersGroupbox:AddToggle("ExecuteOnTeleportToggle", {
    Text = GlobalText.ExecuteOnTeleportToggle,
    Default = MFeee_IsFromTP,
    Callback = function(Enabled)
        makefolder("MFeee~ Project")
        writefile(TPFilePath, Enabled and "true" or "false")
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
InstantPromptToggle = PlayerFeaturesGroupbox:AddToggle("InstantPromptToggle", {
    Text = GlobalText.InstantPromptToggle,
    Default = false,
    Callback = function(Enabled)
        Universals.InstantPrompt(Enabled)
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

--|| ESP Functions ||--

ESPConnections = {
    CA = {},
    TC = {}
}
ESPElements = {}
ESPVisible = true
ESPDisplayName = true
ESPTextModel = 2

function ESPConditions(Player)
    if not AllowESP then
        return false
    elseif not ESPMe and Player == Speaker then
        return false
    elseif ESPTeamCheck and #Teams:GetTeams() > 1 and Player.Team == Speaker.Team then
        return false
    end
    return true
end

function ESPHandlePlayer()
    for _, Player in pairs(Players:GetPlayers()) do
        if ESPConditions(Player) then
            ESPHandleCharacter(Player)
            ESPConnections.CA[Player] = (ESPConnections.CA[Player] and ESPConnections.CA[Player]:Disconnect()) or Player.CharacterAdded:Connect(function()
                ESPHandleCharacter(Player)
            end)
            ESPConnections.TA = (ESPConnections.TA and ESPConnections.TA:Disconnect()) or Teams.ChildAdded:Connect(function()
                ESPRestart()
            end)
            ESPConnections.TC[Player] = (ESPConnections.TC[Player] and ESPConnections.TC[Player]:Disconnect()) Player:GetPropertyChangedSignal("Team"):Connect(function()
                ESPHandlePlayer()
            end)
        end
    end
end

function ESPHandleCharacter(Player)
    if ESPConditions(Player) then
        local TeamColor = Player.TeamColor.Color
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local Humanoid = Character:WaitForChild("Humanoid", math.huge)
        local RootPart = Humanoid.RootPart
        ESPElements[Player] = ESPLibrary:Add({
            Name = ESPDisplayName and tostring(Player.DisplayName) or tostring(Player.Name),
            Model = Character,
            TextModel = ESPTextModel == 1 and Humanoid or ESPTextModel == 2 and RootPart or Character,
            Visible = ESPVisible,
            Color = ESPTeamColor and TeamColor or ESPMainColor or Color3.new(1, 1, 1),
            MaxDistance = ESPMaxDistance or 5000,
            TextSize = ESPTextSize or 22,
            ESPType = ESPType or Arsenal and "Adornment" or "Highlight",
            Thickness = ESPMainThickness or 0.1,
            Transparency = ESPMainTransparency or 0.65,
            SurfaceColor = ESPTeamColor and TeamColor or ESPSelectionBoxColor or Color3.new(1, 1, 1),
            FillColor = ESPTeamColor and TeamColor or ESPFillColor or Color3.new(1, 1, 1),
            OutlineColor = ESPTeamColor and TeamColor or ESPOutlineColor or Color3.new(1, 1, 1),
            FillTransparency = ESPFillTransparency or 0.65,
            OutlineTransparency = ESPOutlineTransparency or 0,
            Tracer = {
                Enabled = ESPTracerEnabled,
                From = TracerFrom or "Bottom",
                Transparency = ESPTracerOpacity or 1,
                Thickness = ESPTracerThickness or 2,
                Color = ESPTeamColor and TeamColor or ESPTracerColor or Color3.new(1, 1, 1)
            },
            Arrow = {
                Enabled = ESPArrowEnabled,
                Color = ESPTeamColor and TeamColor or ESPArrowColor or Color3.new(1, 1, 1),
                CenterOffset = ESPArrowCenterOffset or 300
            }
        })
    end
end

function ESPUpdate(Class)
    task.spawn(function()
        for _, Player in pairs(Players:GetPlayers()) do
            if ESPConditions(Player) then
                pcall(function()
                    if Class == "ESPSelectionBoxColor" and not ESPTeamColor then
                        ESPElements[Player].CurrentSettings.SurfaceColor = ESPSelectionBoxColor
                        for _, Box in pairs(ESPLibrary.ActiveFolder:GetDescendants()) do
                            if Box:IsA("SelectionBox") then
                                Box.SurfaceColor3 = ESPSelectionBoxColor
                            end
                        end
                        for _, Box in pairs(ESPLibrary.StorageFolder:GetDescendants()) do
                            if Box:IsA("SelectionBox") then
                                Box.SurfaceColor3 = ESPSelectionBoxColor
                            end
                        end
                    elseif Class == "ESPMainTransparency" then
                        ESPElements[Player].CurrentSettings.Transparency = ESPMainTransparency
                        for _, Element in pairs(ESPLibrary.ActiveFolder:GetDescendants()) do
                            if Element:IsA("SphereHandleAdornment") or Element:IsA("CylinderHandleAdornment") or Element:IsA("BoxHandleAdornment") or Element:IsA("TextLabel") then
                                Element.Transparency = ESPMainTransparency
                            end
                        end
                        for _, Element in pairs(ESPLibrary.StorageFolder:GetDescendants()) do
                            if Element:IsA("SphereHandleAdornment") or Element:IsA("CylinderHandleAdornment") or Element:IsA("BoxHandleAdornment") or Element:IsA("TextLabel") then
                                Element.Transparency = ESPMainTransparency
                            end
                        end
                    elseif Class == "ESPFillColor" and not ESPTeamColor then
                        ESPElements[Player].CurrentSettings.FillColor = ESPFillColor
                        for _, Highlight in pairs(ESPLibrary.ActiveFolder:GetDescendants()) do
                            if Highlight:IsA("Highlight") then
                                Highlight.FillColor = ESPFillColor
                            end
                        end
                        for _, Highlight in pairs(ESPLibrary.StorageFolder:GetDescendants()) do
                            if Highlight:IsA("Highlight") then
                                Highlight.FillColor = ESPFillColor
                            end
                        end
                    elseif Class == "ESPOutlineColor" and not ESPTeamColor then
                        ESPElements[Player].CurrentSettings.OutlineColor = ESPOutlineColor
                        for _, Highlight in pairs(ESPLibrary.ActiveFolder:GetDescendants()) do
                            if Highlight:IsA("Highlight") then
                                Highlight.OutlineColor = ESPOutlineColor
                            end
                        end
                        for _, Highlight in pairs(ESPLibrary.StorageFolder:GetDescendants()) do
                            if Highlight:IsA("Highlight") then
                                Highlight.OutlineColor = ESPOutlineColor
                            end
                        end
                    elseif Class == "ESPFillTransparency" then
                        ESPElements[Player].CurrentSettings.FillTransparency = ESPFillTransparency
                        for _, Highlight in pairs(ESPLibrary.ActiveFolder:GetDescendants()) do
                            if Highlight:IsA("Highlight") then
                                Highlight.FillTransparency = ESPFillTransparency
                            end
                        end
                        for _, Highlight in pairs(ESPLibrary.StorageFolder:GetDescendants()) do
                            if Highlight:IsA("Highlight") then
                                Highlight.FillTransparency = ESPFillTransparency
                            end
                        end
                    elseif Class == "ESPOutlineTransparency" then
                        ESPElements[Player].CurrentSettings.OutlineTransparency = ESPOutlineTransparency
                        for _, Highlight in pairs(ESPLibrary.ActiveFolder:GetDescendants()) do
                            if Highlight:IsA("Highlight") then
                                Highlight.OutlineTransparency = ESPOutlineTransparency
                            end
                        end
                        for _, Highlight in pairs(ESPLibrary.StorageFolder:GetDescendants()) do
                            if Highlight:IsA("Highlight") then
                                Highlight.OutlineTransparency = ESPOutlineTransparency
                            end
                        end
                    elseif Class == "TextSize" then
                        ESPElements[Player].CurrentSettings.TextSize = ESPTextSize
                        for _, Text in pairs(ESPLibrary.BillboardGUI:GetDescendants()) do
                            if Text:IsA("TextLabel") then
                                Text.TextSize = ESPTextSize
                            end
                        end
                    elseif Class == "TracerColor" then
                        ESPElements[Player].CurrentSettings.Tracer.Color = ESPTracerColor
                        for _, Tracer in pairs(ESPLibrary.MainGUI:GetDescendants()) do
                            if typeof(Tracer) == "Path2D" then
                                Tracer.Color = ESPTracerColor
                            end
                        end
                    elseif Class == "TracerThickness" then
                        ESPElements[Player].CurrentSettings.Tracer.Thickness = ESPTracerThickness
                        for _, Tracer in pairs(ESPLibrary.MainGUI:GetDescendants()) do
                            if typeof(Tracer) == "Path2D" then
                                Tracer.Thickness = ESPTracerThickness
                            end
                        end
                    elseif Class == "TracerOpacity" then
                        ESPElements[Player].CurrentSettings.Tracer.Transparency = ESPTracerOpacity
                        for _, Tracer in pairs(ESPLibrary.MainGUI:GetDescendants()) do
                            if typeof(Tracer) == "Path2D" then
                                Tracer.Transparency = ESPTracerOpacity
                            end
                        end
                    elseif Class == "ArrowColor" then
                        ESPElements[Player].CurrentSettings.Arrow.Color = ESPArrowColor
                        for _, Arrow in pairs(ESPLibrary.MainGUI:GetDescendants()) do
                            if typeof(Arrow) == "ImageLabel" then
                                Arrow.ImageColor3 = ESPArrowColor
                            end
                        end
                    elseif Class == "ArrowCenterOffset" then
                        ESPElements[Player].CurrentSettings.Arrow.CenterOffset = ESPArrowCenterOffset
                    end
                end)
            end
        end
    end)
end

function ESPClear()
    ESPConnections.TA = ESPConnections.TA and ESPConnections.TA:Disconnect()
    ESPConnections.TR = ESPConnections.TR and ESPConnections.TR:Disconnect()
    for _, Object in pairs(ESPConnections) do
        if typeof(Object) == "RBXScriptConnection" then
            Object:Disconnect()
        elseif typeof(Object) == "table" then
            for _, Object2 in pairs(Object) do
                Object2:Disconnect()
            end
        end
    end
    ESPLibrary:Clear()
end

function ESPRestart()
    if AllowESP then
        ESPLibrary:Clear()
        Heartbeat:Wait()
        ESPHandlePlayer()
    end
end

--|| Player Connections ||--

PlayerConnections = {}
PlayerConnections.PA = (PlayerConnections.PA and PlayerConnections.PA:Disconnect()) or Players.PlayerAdded:Connect(function(Player)
    if ESPConditions(Player) then
        ESPHandleCharacter(Player)
        ESPConnections.CA[Player] = (ESPConnections.CA[Player] and ESPConnections.CA[Player]:Disconnect()) or Player.CharacterAdded:Connect(function()
            ESPHandleCharacter(Player)
        end)
        ESPConnections.TC[Player] = (ESPConnections.TC[Player] and ESPConnections.TC[Player]:Disconnect()) or Player.Team and Player.Team.Changed:Connect(ESPRestart)
        ESPConnections.TA = (ESPConnections.TA and ESPConnections.TA:Disconnect()) or Teams.ChildAdded:Connect(ESPRestart)
        ESPConnections.TR = (ESPConnections.TR and ESPConnections.TR:Disconnect()) or Teams.ChildRemoved:Connect(ESPRestart)
    end
end)

PlayerConnections.PR = (PlayerConnections.PR and PlayerConnections.PR:Disconnect()) or Players.PlayerRemoving:Connect(function(Player)
    ESPConnections.CA[Player] = ESPConnections.CA[Player] and ESPConnections.CA[Player]:Disconnect()
    ESPConnections.TC[Player] = ESPConnections.TC[Player] and ESPConnections.TC[Player]:Disconnect()
end)

--|| ESP Global Settings Groupbox ||--

ESPGlobalSettingsGroupbox = Tabs.ESP:AddLeftGroupbox(GlobalText.ESPGlobalSettingsGroupbox)
ESPAllToggle = ESPGlobalSettingsGroupbox:AddToggle("ESPAllToggle", {
    Text = GlobalText.ESPAllToggle,
    Default = false,
    Callback = function(Enabled)
        AllowESP = Enabled
        if Enabled then
            ESPHandlePlayer()
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
    Default = false,
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
    Disabled = true,
    Tooltip = GlobalText.AimbotWallCheckTooltip,
    DisabledTooltip = GlobalText.AimbotWallCheckTooltip,
    Callback = function(Enabled)
        Aimbot.Settings.WallCheck = false
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
                wait(SpamSpeed)
                local End = tick()
                local ActWait = End - Start
                local Deviation = ActWait - SpamSpeed
                if math.abs(Deviation) > 0.1 then
                    local WaitMore = -Deviation
                    if WaitMore > 0 then
                        wait(WaitMore)
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
    end
})
NotifySideToggle = MenuGroup:AddToggle("NotifySideToggle", {
    Text = GlobalText.NotifySideToggle,
    Default = false,
    Callback = function(Enabled)
        if Enabled then
            Library.NotifySide = "Left"
            NotifySound(GlobalText.NotifyLeft, 3)
        else
            Library.NotifySide = "Right"
            NotifySound(GlobalText.NotifyRight, 3)
        end
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
        Disconnect(PlayerConnections)
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
MFCons.YP = (MFCons.YP and MFCons.YP:Disconnect()) or Heartbeat:Connect(function()
    local Time = math.round(Workspace.DistributedGameTime * 10) / 10
    local Suffix = GlobalText.YouPlayedLabel2
    if Time > 31536000 then
        Time = Time / 31536000
        Suffix = GlobalText.YouPlayedLabel8
    elseif Time > 2592000 then
        Time = Time / 2592000
        Suffix = GlobalText.YouPlayedLabel7
    elseif Time > 604800 then
        Time = Time / 604800
        Suffix = GlobalText.YouPlayedLabel6
    elseif Time > 86400 then
        Time = Time / 86400
        Suffix = GlobalText.YouPlayedLabel5
    elseif Time > 3600 then
        Time = Time / 3600
        Suffix = GlobalText.YouPlayedLabel4
    elseif Time > 60 then
        Time = Time / 60
        Suffix = GlobalText.YouPlayedLabel3
    end
    YouPlayedLabel:SetText(GlobalText.YouPlayedLabel .. Time .. Suffix)
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

if not game:IsLoaded() then
    print(GlobalText.GameNotLoaded)
    NotifySound(GlobalText.GameNotLoaded, 5)
end

if LeastVersion ~= CurrentVersion then
    print(GlobalText.NewVersion)
    NotifySound(GlobalText.NewVersion, 5)
end

Options.FontFace:SetValue("Gotham")
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
