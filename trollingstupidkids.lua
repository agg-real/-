local chr = game.Players.LocalPlayer.Character
for _,part in ipairs(stairs:GetChildren()) do
if part:IsA("BasePart") then
part.CanCollide = false
part.CFrame = chr:WaitForChild("HumanoidRootPart")
part.Size = Vector3.new(5,12,1.45)
  end
end
