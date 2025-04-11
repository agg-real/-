local chr = game.Players.LocalPlayer.Character
local stairs = workspace:FindFirstChild("Stairs")
for _,part in ipairs(stairs:GetChildren()) do
if part:IsA("BasePart") then
part.CanCollide = false
part.CFrame = chr:WaitForChild("HumanoidRootPart").CFrame
part.Size = Vector3.new(5,12,1.45)
  end
end
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,129990)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local noclip = true
game:GetService("RunService").RenderStepped:Connect(function()
   if noclip then
    game.Players.LocalPlayer.Character.Humanoid:SetState(11)
   end
end
