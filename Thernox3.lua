-- Services
local Players             = game:GetService("Players")
local HttpService         = game:GetService("HttpService")
local RunService          = game:GetService("RunService")
local MarketplaceService  = game:GetService("MarketplaceService")

local Player   = Players.LocalPlayer
local isStudio = RunService:IsStudio()

-- 🔽 تحميل مكتبة Luna
local Luna = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/qkdr/Rico/refs/heads/main/source%20(3).lua",
    true
))()

-- 🪟 إنشاء النافذة الرئيسية
local Window = Luna:CreateWindow({
    Name            = "Thronix Scripts | سكربتات ثرونيكس ",
    Subtitle        = "النسخة المجانية",
    LogoID          = "82795327169782",
    LoadingEnabled  = true,
    LoadingTitle    = "Thronix Scripts | سكربتات ثرونيكس ",
    LoadingSubtitle = "جاري تحميل...",
    TabSize         = 140,
    Acrylic         = true,
    DarkMode        = true,
    ImageSource     = "Material",
    KeySystem       = false,
})

-- ✅ تبويب الصفحة الرئيسية
Window:CreateHomeTab({
    Icon               = 2,
    SupportedExecutors = {"Krnl", "Fluxus", "Electron", "دلتا"},
    DiscordInvite      = "nebula",
})

-- ◼️ تبويب سكربتات عشوائية
local RandomTab = Window:CreateTab({
    Name        = "سكربتات عشوائية",
    Icon        = "search",
    ImageSource = "Material",
    ShowTitle   = true,
})

local function addRandomScript(name, url, desc)
    RandomTab:CreateButton({
        Name        = name,
        Description = desc,
        Callback    = function()
            loadstring(game:HttpGet(url, true))()
        end,
    })
    RandomTab:CreateDivider()
end

addRandomScript("سكربت ويسلي العالمي",
    "https://raw.githubusercontent.com/wisl884/wisl-i-Universal-Project1/main/Wisl'i%20Universal%20Project.lua"
)
addRandomScript("سكربت ايمبوت",
    "https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua"
)
addRandomScript("سكربت داينال هوب",
    "https://raw.githubusercontent.com/DanielHubll/DanielHubll/refs/heads/main/Aimbot%20Mobile"
)
addRandomScript("سكربت كشف",
    "https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP"
)
addRandomScript("سكربت مسجل الرسوم المتحركة",
    "https://raw.githubusercontent.com/Mautiku/ehh/main/sussy's%20animation%20logger.txt"
)
addRandomScript("سكربت روبوت الدردشة",
    "https://raw.githubusercontent.com/Guerric9018/chatbothub/main/ChatbotHub.lua"
)
addRandomScript("سكربت واجهة المستخدم الرسومية للرقص العالمي",
    "https://raw.githubusercontent.com/ocfi/aqua-hub-is-a-skid-lol/refs/heads/main/animatrix"
)
addRandomScript("سكربت لوحة اختبارات المنفذ",
    "https://raw.githubusercontent.com/RealBatu20/AI-Scripts-2025/refs/heads/main/ExecutorTestsPanel.lua",
    "اضغط على F9 عند تشغيل الاختبارات"
)
addRandomScript("كاميرا مجانية",
    "https://zxfolix.github.io/freecamV2.txt",
    "تحتاج سكربت كيبوورد و اضغط على P للتحكم"
)
addRandomScript("سكربت Hitbox Expander",
    "https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/HitboxExpander.lua"
)
addRandomScript("سكربت Shaders",
    "https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua"
)
addRandomScript("سكربت طيران",
    "https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"
)
addRandomScript("سكربت Sirius",
    "https://sirius.menu/sirius"
)
addRandomScript("بحث سكربتات ScriptSearcher",
    "https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/ScriptSearcher"
)
addRandomScript("انتقال فوري إلى اللاعبين",
    "https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/stare"
)
addRandomScript("Express Hub",
    "https://api.luarmor.net/files/v3/loaders/d8824b23a4d9f2e0d62b4e69397d206b.lua"
)

-- ◼️ تبويب سكربتات FE (بحث ديناميكي)
local FETab = Window:CreateTab({
    Name        = "سكربتات FE",
    Icon        = "visibility",
    ImageSource = "Material",
    ShowTitle   = true,
})

FETab:CreateSection("نتائج البحث عن: FE Scripts")
do
    local query   = "FE Scripts"
    local url     = "https://scriptblox.com/api/script/search?q=" .. HttpService:UrlEncode(query)
    local ok, res = pcall(function() return game:HttpGet(url, true) end)
    if ok then
        local data = HttpService:JSONDecode(res)
        if data and data.result and data.result.scripts then
            for _, s in ipairs(data.result.scripts) do
                local title = s.title or "بدون عنوان"
                local slug  = s.slug
                FETab:CreateButton({
                    Name        = title,
                    Description = "تشغيل هذا السكربت",
                    Callback    = function()
                        local fetchUrl = "https://scriptblox.com/api/script/" .. slug
                        local ok2, info = pcall(function()
                            return game:HttpGet(fetchUrl, true)
                        end)
                        if ok2 then
                            local tbl = HttpService:JSONDecode(info)
                            if tbl and tbl.script and tbl.script.script then
                                loadstring(tbl.script.script)()
                                Luna:Notification({
                                    Title       = "✅ تم تشغيل السكربت",
                                    Icon        = "check_circle",
                                    ImageSource = "Material",
                                    Content     = title,
                                })
                            else
                                Luna:Notification({
                                    Title   = "⚠️ لم يتم العثور على السكربت",
                                    Content = "قد يكون محمي أو غير متاح.",
                                })
                            end
                        else
                            Luna:Notification({
                                Title   = "❌ خطأ في التحميل",
                                Content = "فشل في تحميل السكربت",
                            })
                        end
                    end,
                })
                FETab:CreateDivider()
            end
        else
            Luna:Notification({
                Title   = "❌ لا يوجد سكربتات",
                Content = "لم يتم العثور على نتائج",
            })
        end
    else
        Luna:Notification({
            Title   = "❌ فشل في الاتصال",
            Content = "تعذّر الاتصال بـ ScriptBlox",
        })
    end
end

-- ◼️ تبويب هاكات منوعة
local HackTab = Window:CreateTab({
    Name        = "هاكات منوعة",
    Icon        = "search",
    ImageSource = "Material",
    ShowTitle   = true,
})

HackTab:CreateButton({
    Name     = "Synapse X Hack",
    Callback = function()
        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/AZYsGithub/Chillz-s-scripts/main/Synapse-X-Remake.lua",
            true
        ))()
    end,
})
HackTab:CreateSection("هاكات بي سي")
HackTab:CreateButton({
    Name     = "Krnl Hack",
    Callback = function()
        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/AZYsGithub/Chillz-s-scripts/refs/heads/main/KRNL%20UI%20Remake.lua",
            true
        ))()
    end,
})
HackTab:CreateButton({
    Name     = "Delta Hack",
    Callback = function()
        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/InfernusScripts/Other-Stuff/main/ExecutorInternal.lua",
            true
        ))()
    end,
})
HackTab:CreateButton({
    Name     = "Electron UI Hack",
    Callback = function()
        loadstring(game:HttpGet(
            "https://rawscripts.net/raw/Universal-Script-Electron-UI-Remake-13807",
            true
        ))()
    end,
})
HackTab:CreateDivider({Text = "سكربتات نسخ"})
local function addHackCopy(name, url)
    HackTab:CreateButton({
        Name     = name,
        Callback = function()
            loadstring(game:HttpGet(url, true))()
        end,
    })
    HackTab:CreateDivider()
end
addHackCopy("Arceus X V3",
    "https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"
)
addHackCopy("Delta Executor",
    "https://raw.githubusercontent.com/ElijahGamingRBLX/Roblox-Executor/8536d27eef4eca985572dc30fc146dfc146df77423"
)
addHackCopy("iOS UI Hack",
    "https://raw.githubusercontent.com/TableDevelopments/public/e89d51c0c0c414f7b0263c68983d8564543b7771/ui.lua"
)
addHackCopy("Cubix Hack",
    "https://github.com/1dontgiveaf/testscript69/raw/main/Cubix"
)
addHackCopy("Krypton Hack",
    "https://raw.githubusercontent.com/anyahubs/executer/main/Krypton(UI).txt"
)

-- ◼️ تبويب تصرفات اللاعب
local BehaviorTab = Window:CreateTab({
    Name        = "تصرفات اللاعب",
    Icon        = "directions_run",
    ImageSource = "Material",
    ShowTitle   = true,
})
BehaviorTab:CreateSection("التحكم بسرعة الاعب")
BehaviorTab:CreateSlider({
    Name         = "WalkSpeed: 16",
    Range        = {16, 100},
    Increment    = 1,
    CurrentValue = 16,
    Callback     = function(value)
        local char = Players.LocalPlayer.Character
        local hum  = char and char:FindFirstChildOfClass("Humanoid")
        if hum then hum.WalkSpeed = value end
    end,
}, "WalkSpeedSlider")

BehaviorTab:CreateSection("التحكم بارتفاع القفز")
BehaviorTab:CreateSlider({
    Name         = "JumpPower: 50",
    Range        = {50, 100},
    Increment    = 1,
    CurrentValue = 50,
    Callback     = function(value)
        local char = Players.LocalPlayer.Character
        local hum  = char and char:FindFirstChildOfClass("Humanoid")
        if hum then hum.JumpPower = value end
    end,
}, "JumpPowerSlider")

BehaviorTab:CreateSection("تبديل الأجواء (صباح/ليل)")
BehaviorTab:CreateToggle({
    Name    = "الوضع الليلي",
    Default = false,
    Callback = function(isNight)
        local L = game:GetService("Lighting")
        if isNight then
            L.ClockTime      = 20
            L.Brightness     = 1
            L.FogEnd         = 100
            L.OutdoorAmbient = Color3.fromRGB(50,50,70)
            L.Ambient        = Color3.fromRGB(30,30,50)
        else
            L.ClockTime      = 8
            L.Brightness     = 2
            L.FogEnd         = 1000
            L.OutdoorAmbient = Color3.fromRGB(128,128,128)
            L.Ambient        = Color3.fromRGB(128,128,128)
        end
    end,
}, "DayNightToggle")

-- ◼️ تبويب سكربتات حلوة (آخر تبويب)
local Tab = Window:CreateTab({
    Name        = "سكربتات ماب: Slap Tower X",
    Icon        = "sports_esports",
    ImageSource = "Material",
    ShowTitle   = true,
})
-- 🌐 البحث في ScriptBlox
do
    local query     = "Slap Tower X"
    local searchUrl = "https://scriptblox.com/api/script/search?q=" .. HttpService:UrlEncode(query)
    local ok, res   = pcall(function() return game:HttpGet(searchUrl, true) end)
    if ok then
        local data = HttpService:JSONDecode(res)
        if data and data.result and data.result.scripts then
            for _, scriptData in ipairs(data.result.scripts) do
                local title = scriptData.title or "بدون عنوان"
                local slug  = scriptData.slug
                Tab:CreateButton({
                    Name        = title,
                    Description = "تشغيل هذا السكربت",
                    Callback    = function()
                        local fetchUrl = "https://scriptblox.com/api/script/" .. slug
                        local ok2, raw = pcall(function() return game:HttpGet(fetchUrl, true) end)
                        if ok2 then
                            local info = HttpService:JSONDecode(raw)
                            if info and info.script and info.script.script then
                                loadstring(info.script.script)()
                                Luna:Notification({
                                    Title       = "✅ تم تشغيل السكربت",
                                    Icon        = "check_circle",
                                    ImageSource = "Material",
                                    Content     = title,
                                })
                            else
                                Luna:Notification({
                                    Title   = "⚠️ لم يتم العثور على السكربت",
                                    Content = "قد يكون محمي بمفتاح أو غير متاح حالياً",
                                })
                            end
                        else
                            Luna:Notification({
                                Title   = "❌ خطأ في التحميل",
                                Content = "فشل في تحميل السكربت",
                            })
                        end
                    end,
                })
                Tab:CreateDivider()
            end
        else
            Luna:Notification({
                Title   = "❌ لا يوجد سكربتات",
                Content = "لم يتم العثور على أي نتائج",
            })
        end
    else
        Luna:Notification({
            Title   = "❌ فشل في الاتصال",
            Content = "تعذّر الاتصال بـ ScriptBlox",
        })
    end
end
