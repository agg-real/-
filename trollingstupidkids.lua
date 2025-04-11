local chr = game.Players.LocalPlayer.Character
local stairs = workspace:FindFirstChild("Stairs")
for _,part in ipairs(stairs:GetChildren()) do
if part:IsA("BasePart") then
part.CanCollide = false
part.CFrame = chr:WaitForChild("HumanoidRootPart").CFrame
part.Size = Vector3.new(5,12,1.45)
  end
end
local noclip = true -- Gets if you want the noclip
char = game.Players.LocalPlayer.Character -- Gets your player
while true do -- Make sure someone is in game
if noclip == true then
for _,v in pairs(char:children()) do
pcall(function()
if v.className == "Part" then
v.CanCollide = false
end
end)
end
end
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,900000)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
