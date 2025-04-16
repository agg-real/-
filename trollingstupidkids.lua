local xyi = true
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
local co = false
local used = true
local sexxx = false
local first = true
Tab:AddButton({
	Name = "Включить Infinite Yield",
	Callback = function()
OrionLib:MakeNotification({
	Name = "Реквариваем Infinite Yield",
	Content = "Working!",
	Image = "rbxassetid://0",
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
local xui =Tab:AddButton({
    Name = "Писать мат(Работает 10 секунд)",
    Callback = function(value)
local Message = "ez" 
local Unicode = " "
Message = Message .. Unicode:rep(200 - #Message)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SayMessageRequest = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)

if SayMessageRequest then
    for i = 0, 1 do
        SayMessageRequest:FireServer(Message, "All")
    end
end
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
part.Size = Vector3.new(math.random(0,4),12,0.55)
  end
end
                end
            end
		end
end)
task.spawn(function()
task.wait(5)
OrionLib:MakeNotification({
	Name = "Made by gugugagas team",
	Content = "Working!",
	Image = "rbxassetid://0",
	Time = 5
})
	end)

OrionLib:Init()
