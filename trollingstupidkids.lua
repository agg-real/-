print("funny")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HttpService = game:GetService("HttpService")

local Window = OrionLib:MakeWindow({Name = "Skill-issue obby hub", HidePremium = false, SaveConfig = true})
local Tab = Window:MakeTab({Name = "Главная", Icon = "rbxassetid://89991291117147"})
local ex = false

local ez =Tab:AddToggle({
    Name = "Включить функцию",
    Default = ex,
    Callback = function(value)
        ex = value
    end
})

task.spawn(function()
    while task.wait() do
if ex then
 local chr = game.Players.LocalPlayer.Character
local stairs = workspace:FindFirstChild("Stairs")
for _,part in pairs(stairs:GetChildren()) do
if part:IsA("BasePart") then
part.CanCollide = false
part.CFrame = chr:WaitForChild("HumanoidRootPart").CFrame
part.Size = Vector3.new(math.random(0,4),12,0.55)
  end
end
            end
        end
end)

OrionLib:Init()
