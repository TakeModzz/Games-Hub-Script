local ScreenZone = Instance.new("ScreenGui")
local Tween = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local Frame = Instance.new("Frame")
local corner = Instance.new("UICorner") 
local YesB = Instance.new("TextButton") 
local YesCorner = Instance.new("UICorner")
local NoCorner = Instance.new("UICorner") 
local NoB = Instance.new("TextButton") 
local TextLabel = Instance.new("TextLabel") 

ScreenZone.Name = "ScreenZone"
ScreenZone.Parent = CoreGui 

Frame.Size = UDim2.new(0, 0, 0, 0)  
Frame.AnchorPoint = Vector2.new(0.5, 0.5) 
Frame.Position = UDim2.new(0.5, 0, 0.5, 0) 
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0
Frame.BorderSizePixel = 0

corner.CornerRadius = UDim.new(0, 10)

Frame.Parent = UI
corner.Parent = Frame

Frame:TweenSize(UDim2.new(0, 260, 0, 250)) 

TextLabel.Parent = Frame 
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 10, 0, 50) 
TextLabel.TextScaled = true 
TextLabel.Size = UDim2.new(0, 250, 0, 40) 
TextLabel.Text = "Are you sure if you want to close Games Hub? "
TextLabel.TextColor3 = Color3.new(1, 1, 1) 


YesB.Name = "YesB"
YesB.Parent = Frame 
YesB.Font = Enum.Font.GothamBlack
YesB.BackgroundColor3 = Color3.new(0.203164, 0.738693, 0.0104997)
YesB.BorderColor3 = Color3.new(0.322435, 0.437186, 0.166965)
YesB.Position = UDim2.new(0, 25, 0, 170) 
YesB.Size = UDim2.new(0, 90, 0, 50)
YesB.Text = "Yes"
YesB.TextColor3 = Color3.new(0.929648, 0.929648, 0.929648)
YesB.TextSize = 20  
YesB.MouseButton1Click:Connect(function()  
YesB.BackgroundTransparency = i / 10  
YesB.TextTransparency = i / 10      
NoB.BackgroundTransparency = i / 10  
NoB.TextTransparency = i / 10      
TextLabel.TextTransparency = i / 10  
Frame.BackgroundTransparency = i / 10  
wait(1) 
local UICall = game.CoreGui:FindFirstChild("UICall")
local HubDestroyer = game.CoreGui:FindFirstChild("HubDestroyer")
    
    if UICall then
        UICall:Destroy()
    elseif HubDestroyer then
        HubDestroyer:Destroy()
    end
ScreenZone:Destroy() 
end)  

YesCorner.Name = "YesCorner"
YesCorner.Parent = YesB
YesCorner.CornerRadius = UDim.new(0, 10) 



NoB.Name = "NoB"
NoB.Parent = Frame 
NoB.Font = Enum.Font.GothamBlack 
NoB.BackgroundColor3 = Color3.new(0.78392, 0.16939, 0.16939)
NoB.Position = UDim2.new(0, 155, 0, 170)
NoB.Size = UDim2.new(0, 90, 0, 50)
NoB.Text = "No"
NoB.TextColor3 = Color3.new(0.929648, 0.929648, 0.929648)
NoB.TextSize = 20 
NoB.MouseButton1Click:Connect(function() 
Kavo:ToggleUI() 
ScreenZone:Destroy()
end) 

NoCorner.Name = "NoCorner"
NoCorner.Parent = NoB 
NoCorner.CornerRadius = UDim.new(0, 10) 
