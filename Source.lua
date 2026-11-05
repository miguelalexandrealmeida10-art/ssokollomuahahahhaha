-- LocalScript
-- StarterPlayer > StarterPlayerScripts

local Players = game:GetService("Players")
local SoundService = game:GetService("SoundService")
local Lighting = game:GetService("Lighting")

local player = Players.LocalPlayer

-- Céu vermelho
Lighting.ClockTime = 0
Lighting.Ambient = Color3.fromRGB(255, 0, 0)
Lighting.OutdoorAmbient = Color3.fromRGB(255, 0, 0)

local color = Instance.new("ColorCorrectionEffect")
color.Name = "RedAtmosphere"
color.TintColor = Color3.fromRGB(255, 0, 0)
color.Parent = Lighting

-- Música inicial
local sound1 = Instance.new("Sound")
sound1.SoundId = "rbxassetid://80414763866694"
sound1.PlaybackSpeed = 0.08
sound1.Volume = 10
sound1.Looped = false
sound1.Parent = SoundService
sound1:Play()

-- Interface
local gui = Instance.new("ScreenGui")
gui.Name = "BanTimer"
gui.IgnoreGuiInset = true
gui.Parent = player:WaitForChild("PlayerGui")

local timer = Instance.new("TextLabel")
timer.Size = UDim2.new(0, 300, 0, 100)
timer.Position = UDim2.new(0.5, -150, 0.5, -50)
timer.BackgroundTransparency = 1
timer.TextColor3 = Color3.fromRGB(0, 0, 0)
timer.TextStrokeTransparency = 0
timer.TextScaled = true
timer.Font = Enum.Font.Code
timer.Parent = gui

-- Timer de 30 segundos
for i = 30, 0, -1 do
    timer.Text = tostring(i)
    task.wait(1)
end

-- Parar música inicial
sound1:Stop()
sound1:Destroy()

-- Música de banimento
local sound2 = Instance.new("Sound")
sound2.SoundId = "rbxassetid://13019938277"
sound2.PlaybackSpeed = 1
sound2.Volume = 10
sound2.Parent = SoundService
sound2:Play()

timer.Text = "IWILLHACKUOURACCOUNT"

task.wait(0.01)

-- Expulsar somente o próprio jogador
player:Kick("IWILLHACKUOURACCOUNT")
