-- RUAN MODSZ | FULL MENU (BASE PROFISSIONAL)

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local UIS = game:GetService("UserInputService")

-- ===== CONFIG =====
local KEY_CORRETA = "RUANMODSZVIP"

-- ===== GUI =====
local gui = Instance.new("ScreenGui", CoreGui)
gui.Name = "RUANMODSZ_GUI"
gui.ResetOnSpawn = false

-- ================= KEY SYSTEM =================
local keyFrame = Instance.new("Frame", gui)
keyFrame.Size = UDim2.new(0,300,0,170)
keyFrame.Position = UDim2.new(0.5,-150,0.5,-85)
keyFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
Instance.new("UICorner", keyFrame).CornerRadius = UDim.new(0,12)

local keyTitle = Instance.new("TextLabel", keyFrame)
keyTitle.Size = UDim2.new(1,0,0,40)
keyTitle.Text = "RUAN MODSZ - KEY"
keyTitle.BackgroundTransparency = 1
keyTitle.TextColor3 = Color3.new(1,1,1)
keyTitle.Font = Enum.Font.GothamBold
keyTitle.TextSize = 16

local keyBox = Instance.new("TextBox", keyFrame)
keyBox.Size = UDim2.new(0.9,0,0,35)
keyBox.Position = UDim2.new(0.05,0,0.4,0)
keyBox.PlaceholderText = "Digite a key"
keyBox.Text = ""
keyBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
keyBox.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", keyBox).CornerRadius = UDim.new(0,8)

local keyBtn = Instance.new("TextButton", keyFrame)
keyBtn.Size = UDim2.new(0.9,0,0,35)
keyBtn.Position = UDim2.new(0.05,0,0.7,0)
keyBtn.Text = "CONFIRMAR"
keyBtn.BackgroundColor3 = Color3.fromRGB(0,170,0)
keyBtn.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", keyBtn).CornerRadius = UDim.new(0,8)

-- ================= BOTÃO FLUTUANTE =================
local openBtn = Instance.new("TextButton", gui)
openBtn.Size = UDim2.new(0,120,0,40)
openBtn.Position = UDim2.new(0,20,0.5,0)
openBtn.Text = "RUAN MODSZ"
openBtn.Visible = false
openBtn.BackgroundColor3 = Color3.fromRGB(0,170,0)
openBtn.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", openBtn).CornerRadius = UDim.new(0,10)

-- ================= MENU =================
local menu = Instance.new("Frame", gui)
menu.Size = UDim2.new(0,380,0,320)
menu.Position = UDim2.new(0.5,-190,0.5,-160)
menu.BackgroundColor3 = Color3.fromRGB(30,30,30)
menu.Visible = false
Instance.new("UICorner", menu).CornerRadius = UDim.new(0,14)

local title = Instance.new("TextLabel", menu)
title.Size = UDim2.new(1,0,0,40)
title.Text = "RUAN MODSZ"
title.BackgroundTransparency = 1
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 18

-- ================= FUNÇÃO TOGGLE =================
local function criarToggle(texto, posY, callback)
	local btn = Instance.new("TextButton", menu)
	btn.Size = UDim2.new(0.9,0,0,35)
	btn.Position = UDim2.new(0.05,0,0,posY)
	btn.Text = texto.." [OFF]"
	btn.BackgroundColor3 = Color3.fromRGB(45,45,45)
	btn.TextColor3 = Color3.new(1,1,1)
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0,8)

	local ativo = false
	btn.MouseButton1Click:Connect(function()
		ativo = not ativo
		btn.Text = texto.." ["..(ativo and "ON" or "OFF").."]"
		callback(ativo)
	end)
end

-- ================= MAIN =================
criarToggle("Go to Celestial", 0.15, function(v) print("Celestial:",v) end)
criarToggle("Go to Base", 0.27, function(v) print("Base:",v) end)
criarToggle("God Mode (1-2 Wave)", 0.39, function(v) print("God:",v) end)
criarToggle("Infinite Jump", 0.51, function(v) print("Jump:",v) end)
criarToggle("Speed ++", 0.63, function(v) print("Speed:",v) end)
criarToggle("Fly", 0.75, function(v) print("Fly:",v) end)

-- ================= MORE =================
criarToggle("Collect Money", 0.15, function(v) print("Money:",v) end)
criarToggle("Auto Grab 1 Click", 0.27, function(v) print("Grab:",v) end)
criarToggle("Auto Rebirth", 0.39, function(v) print("Rebirth:",v) end)
criarToggle("Anti-AFK", 0.51, function(v) print("AFK:",v) end)
criarToggle("Dupe Brainrot (VISIBLE)", 0.63, function(v) print("Dupe:",v) end)

-- ================= CONTROLES =================
openBtn.MouseButton1Click:Connect(function()
	menu.Visible = not menu.Visible
end)

keyBtn.MouseButton1Click:Connect(function()
	if keyBox.Text == KEY_CORRETA then
		keyFrame:Destroy()
		openBtn.Visible = true
	else
		keyBox.Text = ""
		keyBox.PlaceholderText = "KEY INCORRETA!"
	end
end)
