--================================================
-- RUAN MODSZ
-- Brainrot Script Hub (BASE / VISUAL)
-- KEY: RUANMODSZVIP
--================================================

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- CONFIG DA KEY
local CORRECT_KEY = "RUANMODSZVIP"

-- WINDOW COM KEY SYSTEM
local Window = Rayfield:CreateWindow({
    Name = "RUAN MODSZ",
    LoadingTitle = "RUAN MODSZ",
    LoadingSubtitle = "Brainrot Script",
    ConfigurationSaving = { Enabled = false },
    KeySystem = true,
    KeySettings = {
        Title = "RUAN MODSZ | Key System",
        Subtitle = "Digite a key para acessar",
        Note = "Key exclusiva",
        FileName = "RUANMODSZ_KEY",
        SaveKey = false,
        GrabKeyFromSite = false,
        Key = { CORRECT_KEY }
    }
})

-- Abas
local MainTab   = Window:CreateTab("Main", 4483362458)
local MoreTab   = Window:CreateTab("More", 4483362458)
local VisualTab = Window:CreateTab("Visual", 4483362458)

-- Função aviso
local function aviso(msg)
    Rayfield:Notify({
        Title = "RUAN MODSZ",
        Content = msg,
        Duration = 3
    })
end

-- =========================
-- MAIN
-- =========================

MainTab:CreateButton({
    Name = "Duplicar Brainrot",
    Callback = function()
        aviso("Duplicação de Brainrot executada")
    end
})

MainTab:CreateToggle({
    Name = "Collect Money",
    CurrentValue = false,
    Callback = function(v)
        aviso(v and "Collect Money ativado" or "Collect Money desativado")
    end
})

MainTab:CreateToggle({
    Name = "Auto Grab 1 Click",
    CurrentValue = false,
    Callback = function(v)
        aviso(v and "Auto Grab ativado" or "Auto Grab desativado")
    end
})

MainTab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = false,
    Callback = function(v)
        aviso(v and "Auto Rebirth ativado" or "Auto Rebirth desativado")
    end
})

MainTab:CreateToggle({
    Name = "Anti-AFK",
    CurrentValue = false,
    Callback = function(v)
        aviso(v and "Anti-AFK ativado" or "Anti-AFK desativado")
    end
})

MainTab:CreateButton({
    Name = "Sell This Brainrot",
    Callback = function()
        aviso("Brainrot vendido")
    end
})

MainTab:CreateButton({
    Name = "Sell All Brainrot",
    Callback = function()
        aviso("Todos os Brainrots vendidos")
    end
})

-- =========================
-- MORE
-- =========================

MoreTab:CreateButton({
    Name = "Go To Celestial",
    Callback = function()
        aviso("Teleport para Celestial")
    end
})

MoreTab:CreateButton({
    Name = "Go To Base",
    Callback = function()
        aviso("Teleport para Base")
    end
})

MoreTab:CreateToggle({
    Name = "God Mode",
    CurrentValue = false,
    Callback = function(v)
        aviso(v and "God Mode ativado" or "God Mode desativado")
    end
})

MoreTab:CreateToggle({
    Name = "Infinite Jump",
    CurrentValue = false,
    Callback = function(v)
        aviso(v and "Infinite Jump ativado" or "Infinite Jump desativado")
    end
})

MoreTab:CreateToggle({
    Name = "Speed++",
    CurrentValue = false,
    Callback = function(v)
        aviso(v and "Speed aumentado" or "Speed normal")
    end
})

MoreTab:CreateToggle({
    Name = "Fly",
    CurrentValue = false,
    Callback = function(v)
        aviso(v and "Fly ativado" or "Fly desativado")
    end
})

-- =========================
-- VISUAL
-- =========================

VisualTab:CreateToggle({
    Name = "ESP Bone",
    CurrentValue = false,
    Callback = function(v)
        aviso(v and "ESP Bone ativado" or "ESP Bone desativado")
    end
})

VisualTab:CreateToggle({
    Name = "ESP Line",
    CurrentValue = false,
    Callback = function(v)
        aviso(v and "ESP Line ativado" or "ESP Line desativado")
    end
})

VisualTab:CreateToggle({
    Name = "ESP Base",
    CurrentValue = false,
    Callback = function(v)
        aviso(v and "ESP Base ativado" or "ESP Base desativado")
    end
})

VisualTab:CreateToggle({
    Name = "ESP Brainrot Chams",
    CurrentValue = false,
    Callback = function(v)
        aviso(v and "Chams Brainrot ativado" or "Chams Brainrot desativado")
    end
})

-- FINAL
Rayfield:Notify({
    Title = "RUAN MODSZ",
    Content = "Key aceita. Bem-vindo!",
    Duration = 4
})
