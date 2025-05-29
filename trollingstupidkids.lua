
local xyi = true
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Mobile%20Friendly%20Orion')))()
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HttpService = game:GetService("HttpService")

local Window = OrionLib:MakeWindow({Name = "Skill-issue obby hub", HidePremium = false, SaveConfig = true})
local Tab = Window:MakeTab({Name = "Главная", Icon = "rbxassetid://90323304631053"})
local ex = false
local co = false
local used = true
local sexxx = false
local first = true
Tab:AddButton({
	Name = "Работает только для Вредноблог обби! (Игра для отсталых) ",
	Callback = function()
  	end    
})

Tab:AddButton({
	Name = "Включить Infinite Yield",
	Callback = function()
OrionLib:MakeNotification({
	Name = "Реквариваем Infinite Yield",
	Content = "Working!",
	Image = "rbxassetid://18579698048",
	Time = 5
})
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})
local ez =Tab:AddToggle({
    Name = "Телепорт к леснице",
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
if chr:WaitForChild("HumanoidRootPart") then
for _,part in pairs(stairs:GetChildren()) do
if part:IsA("BasePart") then
part.CanCollide = false
part.CFrame = chr:FindFirstChild("HumanoidRootPart").CFrame
part.Size = Vector3.new(math.random(1,4),12,0.55)
  end
end
                end
            end
		end
end)
task.spawn(function()
task.wait(2)
OrionLib:MakeNotification({
	Name = "Made by gugugagas team",
	Content = "Working!",
	Image = "rbxassetid://18641615063",
	Time = 5
})
	end)

OrionLib:Init()
