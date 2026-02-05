--[[ 
    RUAN MODSZ | MENU COMPLETO COM KEY
    Criado para Executor Mobile
    By RUAN MODSZ
]]

-- ===== SERVICES =====
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local Player = Players.LocalPlayer

-- ===== CONFIG =====
local KEY_CORRETA = "RUANMODSZVIP"

-- ===== GUI BASE =====
local gui = Instance.new("ScreenGui")
gui.Name = "RUANMODSZ_GUI"
gui.ResetOnSpawn = false
gui.Parent = CoreGui

-- ===== TELA DE KEY =====
local keyFrame = Instance.new("Frame", gui)
keyFrame.Size = UDim2.new(0, 300, 0, 180)
keyFrame.Position = UDim2.new(0.5, -150, 0.5, -90)
keyFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
keyFrame.BorderSizePixel = 0

local keyCorner = Instance.new("UICorner", keyFrame)
keyCorner.CornerRadius = UDim.new(0, 12)

local keyTitle = Instance.new("TextLabel", keyFrame)
keyTitle.Size = UDim2.new(1, 0, 0, 40)
keyTitle.BackgroundTransparency = 1
keyTitle.Text = "RUAN MODSZ - KEY"
keyTitle.TextColor3 = Color3.new(1,1,1)
keyTitle.Font = Enum.Font.GothamBold
keyTitle.TextSize = 18

local keyBox = Instance.new("TextBox", keyFrame)
keyBox.Size = UDim2.new(0.85, 0, 0, 35)
keyBox.Position = UDim2.new(0.075, 0, 0.4, 0)
keyBox.PlaceholderText = "Digite a key"
keyBox.Text = ""
keyBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
keyBox.TextColor3 = Color3.new(1,1,1)
keyBox.Font = Enum.Font.Gotham
keyBox.TextSize = 14

Instance.new("UICorner", keyBox).CornerRadius = UDim.new(0, 8)

local keyBtn = Instance.new("TextButton", keyFrame)
keyBtn.Size = UDim2.new(0.6, 0, 0, 35)
keyBtn.Position = UDim2.new(0.2, 0, 0.7, 0)
keyBtn.Text = "VERIFICAR"
keyBtn.BackgroundColor3 = Color3.fromRGB(0,170,0)
keyBtn.TextColor3 = Color3.new(1,1,1)
keyBtn.Font = Enum.Font.GothamBold
keyBtn.TextSize = 14

Instance.new("UICorner", keyBtn).CornerRadius = UDim.new(0, 8)

-- ===== MENU =====
local menu = Instance.new("Frame", gui)
menu.Size = UDim2.new(0, 260, 0, 220)
menu.Position = UDim2.new(0.5, -130, 0.5, -110)
menu.BackgroundColor3 = Color3.fromRGB(30,30,30)
menu.Visible = false
menu.BorderSizePixel = 0

Instance.new("UICorner", menu).CornerRadius = UDim.new(0, 12)

local menuTitle = Instance.new("TextLabel", menu)
menuTitle.Size = UDim2.new(1, 0, 0, 40)
menuTitle.BackgroundTransparency = 1
menuTitle.Text = "RUAN MODSZ MENU"
menuTitle.TextColor3 = Color3.new(1,1,1)
menuTitle.Font = Enum.Font.GothamBold
menuTitle.TextSize = 18

-- ===== BOTÕES DE FUNÇÃO (EXEMPLO) =====
local function criarBotao(texto, posY)
    local btn = Instance.new("TextButton", menu)
    btn.Size = UDim2.new(0.85, 0, 0, 35)
    btn.Position = UDim2.new(0.075, 0, posY, 0)
    btn.Text = texto
    btn.BackgroundColor3 = Color3.fromRGB(45,45,45)
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 14
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
    return btn
end

local btn1 = criarBotao("Função 1 (exemplo)", 0.25)
local btn2 = criarBotao("Função 2 (exemplo)", 0.45)
local btn3 = criarBotao("Fechar Menu", 0.65)

btn1.MouseButton1Click:Connect(function()
    print("Função 1 ativada")
end)

btn2.MouseButton1Click:Connect(function()
    print("Função 2 ativada")
end)

btn3.MouseButton1Click:Connect(function()
    menu.Visible = false
end)

-- ===== BOTÃO FLUTUANTE =====
local openBtn = Instance.new("TextButton", gui)
openBtn.Size = UDim2.new(0, 130, 0, 40)
openBtn.Position = UDim2.new(0, 20, 0.5, 0)
openBtn.Text = "RUAN MODSZ"
openBtn.BackgroundColor3 = Color3.fromRGB(0,170,0)
openBtn.TextColor3 = Color3.new(1,1,1)
openBtn.Font = Enum.Font.GothamBold
openBtn.TextSize = 14
openBtn.Visible = false

Instance.new("UICorner", openBtn).CornerRadius = UDim.new(0, 10)

openBtn.MouseButton1Click:Connect(function()
    menu.Visible = not menu.Visible
end)

-- ===== VERIFICAÇÃO DA KEY =====
keyBtn.MouseButton1Click:Connect(function()
    if keyBox.Text == KEY_CORRETA then
        keyFrame.Visible = false
        openBtn.Visible = true

        pcall(function()
            game.StarterGui:SetCore("SendNotification", {
                Title = "RUAN MODSZ",
                Text = "Key correta! Menu liberado",
                Duration = 5
            })
        end)
    else
        keyBox.Text = ""
        keyBox.PlaceholderText = "Key incorreta!"
    end
end)

-- ===== NOTIFICAÇÃO =====
pcall(function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "RUAN MODSZ",
        Text = "Script carregado com sucesso!",
        Duration = 5
    })
end)
