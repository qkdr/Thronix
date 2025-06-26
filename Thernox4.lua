-- SERVICES
local Players            = game:GetService("Players")
local HttpService        = game:GetService("HttpService")
local RunService         = game:GetService("RunService")
local MarketplaceService = game:GetService("MarketplaceService")

-- LOCAL VARIABLES
local Player   = Players.LocalPlayer
local isStudio = RunService:IsStudio()

-- 🔽 تحميل مكتبة Luna
local Luna = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/qkdr/Rico/refs/heads/main/source%20(3).lua", true
))()

-- 🪟 إنشاء النافذة
local Window = Luna:CreateWindow({
    Name            = "Thronix Scripts | سكربتات ثرونيكس",
    Subtitle        = "النسخة المجانية",
    LogoID          = "82795327169782",
    LoadingEnabled  = true,
    LoadingTitle    = "Thronix Scripts | سكربتات ثرونيكس",
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
        Description = desc or "",
        Callback    = function()
            loadstring(game:HttpGet(url, true))()
        end,
    })
    RandomTab:CreateDivider()
end

-- إضافة السكربتات العشوائية
addRandomScript("سكربت ويسلي العالمي",
    "https://raw.githubusercontent.com/wisl884/wisl-i-Universal-Project1/main/Wisl'i%20Universal%20Project.lua"
)
addRandomScript("سكربت ايمبوت",
    "https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua"
)
addRandomScript("سكربت داينال هوب",
    "https://raw.githubusercontent.com/DanielHubll/DanielHubll/refs/heads/main/Aimbot%20Mobile.lua"
)
addRandomScript("سكربت كشف",
    "https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP.lua"
)
addRandomScript("سكربت مسجل الرسوم المتحركة",
    "https://raw.githubusercontent.com/Mautiku/ehh/main/sussy's%20animation%20logger.txt"
)
addRandomScript("سكربت روبوت الدردشة",
    "https://raw.githubusercontent.com/Guerric9018/chatbothub/main/ChatbotHub.lua"
)
addRandomScript("سكربت واجهة المستخدم الرسومية للرقص العالمي",
    "https://raw.githubusercontent.com/ocfi/aqua-hub-is-a-skid-lol/refs/heads/main/animatrix.lua"
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
addRandomScript("سكربت sirius",
    "https://sirius.menu/sirius"
)
addRandomScript("سكربت ادمن جديد",
    "https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"
)
addRandomScript("سكربت لكل مابات برج",
    "https://rawscripts.net/raw/Universal-Script-Roblox-WallHop-Script-38387.lua"
)
addRandomScript("سكربت Express Hub",
    "https://api.luarmor.net/files/v3/loaders/d8824b23a4d9f2e0d62b4e69397d206b.lua"
)

-- ◼️ أقسام إضافية داخل تبويب العشوائية
RandomTab:CreateDivider({Text = "الأداء"})
RandomTab:CreateSection("الأداء")
addRandomScript("سكربت FPS",
    "https://pastefy.app/c63s1M4w/raw"
)

RandomTab:CreateDivider({Text = "أدوات التطوير"})
RandomTab:CreateSection("أدوات التطوير")
addRandomScript("سكربت Dex",
    "https://raw.githubusercontent.com/OfficiallyMelon/BetterDecompiler/raw/main/dex_betterdecompiler.lua"
)
addRandomScript("سكربت تنقل",
    "https://rawscripts.net/raw/Universal-Script-Playerlist-and-goto-43447.lua"
)
addRandomScript("سكربت نسخ لكل مابات",
    "https://raw.githubusercontent.com/BidoSkinsYT/BidoSkinsYT/main/Fe%20lag%20chat%20Gui.lua"
)

RandomTab:CreateDivider({Text = "سكربتات ادمن"})
RandomTab:CreateSection("سكربتات ادمن")
addRandomScript("Infinite Yield",
    "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source.lua"
)
addRandomScript("NamelessAdmin",
    "https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source.lua"
)
addRandomScript("Orca",
    "https://raw.githubusercontent.com/richie0866/orca/master/public/snapshot.lua"
)

RandomTab:CreateDivider({Text = "سكربتات نسخ"})
RandomTab:CreateSection("سكربتات نسخ")
addRandomScript("نسخ سكنات يعمل على جميع المابات",
    "https://raw.githubusercontent.com/GhostPlayer352/Test4/refs/heads/main/Copy%20Avatar.lua",
    "ملاحظة: لا يظهر للآخرين"
)
addRandomScript("سكربت فيسات",
    "https://raw.githubusercontent.com/scripthubekitten/fakelimitedsv2/main/fakelimitedsv2.lua"
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
                                    Content = "قد يكون محمي بمفتاح أو غير متاح حالياً",
                                })
                            end
                        else
                            Luna:Notification({
                                Title   = "❌ خطأ في التحميل",
                                Content = "فشل في تحميل السكربت من ScriptBlox",
                            })
                        end
                    end,
                })
                FETab:CreateDivider()
            end
        else
            Luna:Notification({
                Title   = "❌ لا يوجد سكربتات",
                Content = "لم يتم العثور على أي سكربتات تحتوي الكلمة المطلوبة",
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
    Name     = "هاك Synapse X",
    Callback = function()
        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/AZYsGithub/Chillz-s-scripts/main/Synapse-X-Remake.lua",
            true
        ))()
    end,
})
HackTab:CreateSection("هاكات بي سي")
HackTab:CreateButton({
    Name     = "هاك Krnl",
    Callback = function()
        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/AZYsGithub/Chillz-s-scripts/refs/heads/main/KRNL%20UI%20Remake.lua",
            true
        ))()
    end,
})
HackTab:CreateButton({
    Name     = "هاك دلتا القديم",
    Callback = function()
        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/InfernusScripts/Other-Stuff/main/ExecutorInternal.lua",
            true
        ))()
    end,
})
HackTab:CreateButton({
    Name     = "سكربت Electron",
    Callback = function()
        loadstring(game:HttpGet(
            "https://rawscripts.net/raw/Universal-Script-Electron-UI-Remake-13807",
            true
        ))()
    end,
})
HackTab:CreateDivider({Text = "سكربتات نسخ"})
HackTab:CreateSection("هاكات اندوريد يشتغل للجميع")
local function addHackCopy(name, url)
    HackTab:CreateButton({
        Name     = name,
        Callback = function()
            loadstring(game:HttpGet(url, true))()
        end,
    })
    HackTab:CreateDivider()
end
addHackCopy("هاك Arceus X V3",
    "https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3.lua"
)
addHackCopy("هاك Delta",
    "https://raw.githubusercontent.com/ElijahGamingRBLX/Roblox-Executor/master/DeltaExecutor.lua"
)
addHackCopy("هاك iOS UI",
    "https://raw.githubusercontent.com/TableDevelopments/public/master/ui.lua"
)
addHackCopy("هاك Cubix",
    "https://raw.githubusercontent.com/1dontgiveaf/testscript69/main/Cubix.lua"
)
addHackCopy("هاك Krypton",
    "https://raw.githubusercontent.com/anyahubs/executer/main/Krypton(UI).txt"
)

-- ◼️ تبويب تصرفات اللاعب (باستخدام Slider)
local BehaviorTab = Window:CreateTab({
    Name        = "تصرفات اللاعب",
    Icon        = "directions_run",
    ImageSource = "Material",
    ShowTitle   = true,
})

BehaviorTab:CreateSection("التحكم بسرعة الاعب")
BehaviorTab:CreateSlider({
    Name         = "سرعة المشي",
    Range        = {16, 300},
    Increment    = 1,
    CurrentValue = 16,
    Callback     = function(value)
        local char = Players.LocalPlayer.Character
        local hum  = char and char:FindFirstChildOfClass("Humanoid")
        if hum then hum.WalkSpeed = value end
    end,
}, "WalkSpeedSlider")

-- 🌟 قسم التحكم بسرعة القفز
BehaviorTab:CreateSection("التحكم بارتفاع القفز")
BehaviorTab:CreateSlider({
    Name         = "قوة القفز",
    Range        = {50, 300},
    Increment    = 1,
    CurrentValue = 50,
    Callback     = function(value)
        local char = Players.LocalPlayer.Character
        local hum  = char and char:FindFirstChildOfClass("Humanoid")
        if hum then hum.JumpPower = value end
    end,
}, "JumpPowerSlider")

-- ◼️ إضافة زر تبديل بين صباح وليل في تبويب تصرفات اللاعب
BehaviorTab:CreateSection("تبديل الأجواء (صباح/ليل)")
BehaviorTab:CreateToggle({
    Name    = "تفعيل وضع الليل",
    Default = false,
    Callback = function(isNight)
        local Lighting = game:GetService("Lighting")
        if isNight then
            Lighting.ClockTime      = 20
            Lighting.Brightness     = 1
            Lighting.FogEnd         = 100
            Lighting.OutdoorAmbient = Color3.fromRGB(50,50,70)
            Lighting.Ambient        = Color3.fromRGB(30,30,50)
        else
            Lighting.ClockTime      = 8
            Lighting.Brightness     = 2
            Lighting.FogEnd         = 1000
            Lighting.OutdoorAmbient = Color3.fromRGB(128,128,128)
            Lighting.Ambient        = Color3.fromRGB(128,128,128)
        end
    end,
}, "DayNightToggle")

-- ◼️ تبويب الماب الحالي (آخر تبويب)
do
    local ok, info = pcall(function()
        return MarketplaceService:GetProductInfo(game.PlaceId)
    end)
    local mapName = (ok and info and info.Name) and info.Name or "غير معروف"

    local MapTab = Window:CreateTab({
        Name        = "ماب: " .. mapName,
        Icon        = "close",
        ImageSource = "Material",
        ShowTitle   = true,
    })

    MapTab:CreateLabel({
        Text  = "❌ لا يوجد سكربت لهذا الماب: " .. mapName,
        Style = 3,
    })
end
