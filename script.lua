-- RUAN MODSZ | MENU COMPLETO COM KEY

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- ===== CONFIG =====
local KEY_CORRETA = "RUANMODSZVIP"

-- ===== GUI =====
local gui = Instance.new("ScreenGui")
gui.Name = "RUANMODSZ_GUI"
gui.ResetOnSpawn = false
gui.Parent = PlayerGui

-- ===== TELA DE KEY =====
local keyFrame = Instance.new("Frame", gui)
keyFrame.Size = UDim2.new(0, 300, 0, 180)
keyFrame.Position = UDim2.new(0.5, -150, 0.5, -90)
keyFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)

local keyTitle = Instance.new("TextLabel", keyFrame)
keyTitle.Size = UDim2.new(1,0,0,40)
keyTitle.Text = "🔐 RUAN MODSZ KEY"
keyTitle.TextColor3 = Color3.new(1,1,1)
keyTitle.BackgroundTransparency = 1
keyTitle.TextScaled = true

local keyBox = Instance.new("TextBox", keyFrame)
keyBox.Size = UDim2.new(0.8,0,0,40)
keyBox.Position = UDim2.new(0.1,0,0.4,0)
keyBox.PlaceholderText = "Digite a KEY"
keyBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
keyBox.TextColor3 = Color3.new(1,1,1)

local keyBtn = Instance.new("TextButton", keyFrame)
keyBtn.Size = UDim2.new(0.8,0,0,35)
keyBtn.Position = UDim2.new(0.1,0,0.7,0)
keyBtn.Text = "CONFIRMAR"
keyBtn.BackgroundColor3 = Color3.fromRGB(0,170,0)
keyBtn.TextColor3 = Color3.new(1,1,1)

-- ===== BOTÃO FLUTUANTE =====
local openBtn = Instance.new("TextButton", gui)
openBtn.Size = UDim2.new(0,140,0,45)
openBtn.Position = UDim2.new(0,20,0.5,0)
openBtn.Text = "RUAN MODSZ"
openBtn.BackgroundColor3 = Color3.fromRGB(0,170,0)
openBtn.TextColor3 = Color3.new(1,1,1)
openBtn.Visible = false

-- ===== MENU =====
local menu = Instance.new("Frame", gui)
menu.Size = UDim2.new(0,280,0,300)
menu.Position = UDim2.new(0.5,-140,0.5,-150)
menu.BackgroundColor3 = Color3.fromRGB(30,30,30)
menu.Visible = false

local menuTitle = Instance.new("TextLabel", menu)
menuTitle.Size = UDim2.new(1,0,0,40)
menuTitle.Text = "🔥 RUAN MODSZ MENU"
menuTitle.TextColor3 = Color3.new(1,1,1)
menuTitle.BackgroundTransparency = 1
menuTitle.TextScaled = true

-- ===== FUNÇÕES (BASE) =====
local funcs = {
	["Auto Farm"] = false,
	["Duplicar Brainrot"] = false,
	["Velocidade"] = false,
	["Pulo Alto"] = false,
}

local y = 50

for name,_ in pairs(funcs) do
	local btn = Instance.new("TextButton", menu)
	btn.Size = UDim2.new(0.85,0,0,40)
	btn.Position = UDim2.new(0.075,0,0,y)
	btn.Text = name .. " [OFF]"
	btn.BackgroundColor3 = Color3.fromRGB(60,60,60)
	btn.TextColor3 = Color3.new(1,1,1)

	btn.MouseButton1Click:Connect(function()
		funcs[name] = not funcs[name]

		if funcs[name] then
			btn.Text = name .. " [ON]"
			btn.BackgroundColor3 = Color3.fromRGB(0,170,0)

			-- AQUI ENTRA O CÓDIGO DA FUNÇÃO
			print(name .. " ATIVADO")

		else
			btn.Text = name .. " [OFF]"
			btn.BackgroundColor3 = Color3.fromRGB(60,60,60)

			-- AQUI DESATIVA A FUNÇÃO
			print(name .. " DESATIVADO")
		end
	end)

	y = y + 50
end

-- ===== ABRIR / FECHAR =====
openBtn.MouseButton1Click:Connect(function()
	menu.Visible = not menu.Visible
end)

-- ===== KEY CHECK =====
keyBtn.MouseButton1Click:Connect(function()
	if keyBox.Text == KEY_CORRETA then
		keyFrame:Destroy()
		openBtn.Visible = true

		game.StarterGui:SetCore("SendNotification", {
			Title = "RUAN MODSZ",
			Text = "Key correta! Menu liberado 🔥",
			Duration = 5
		})
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "RUAN MODSZ",
			Text = "Key incorreta ❌",
			Duration = 3
		})
	end
end)
