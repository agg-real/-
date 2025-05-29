local xyi = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua'))()
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HttpService = game:GetService("HttpService")


local Window = Rayfield:CreateWindow({
   Name = "Rayfield Example Window",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Skill-issue obby hub",
   LoadingSubtitle = "Gugugaga team",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "=", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
   },
   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "https://discord.gg/YqMJRHK5Mg", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Gugugaga team",
      Subtitle = "Key System",
FileName = "Key",
      Note = "Join to our discord server!", -- Use this to tell the user how to get a key
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"GUGUGAGA9572645FHKRT376528"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local Tab = Window:CreateTab("Tab Example", 0) -- Title, Image


local Button = Tab:CreateButton({
   Name = "Require infinite yield",
   Callback = function()
Rayfield:Notify({
   Title = "Successfully",
   Content = "   ",
   Duration = 5,
   Image = 4483362458,
})
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
   end,
})
local ex = false
local co = false
local used = true
local sexxx = false
local first = true
local Toggle = Tab:CreateToggle({
   Name = "Телепортировать лестницу к себе",
   CurrentValue = false,
   Flag = "xd", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
ex = Value
   end,
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
Rayfield:Notify({
   Title = "Join to Gugugaga team",
   Content = "Join to Gugugaga team",
   Duration = 2.5,
   Image = 4483362458,
})
	end)
Rayfield:LoadConfiguration()
