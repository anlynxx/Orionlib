-- GUI Setup
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TitleBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local MinimizeButton = Instance.new("TextButton")
local UsernameBox = Instance.new("TextBox")
local ToggleButton = Instance.new("TextButton")

-- GUI Properties
ScreenGui.Name = "GetSuckedGUI"
ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false

-- Main Frame
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.Size = UDim2.new(0, 300, 0, 150)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -75)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.ClipsDescendants = true
local mainCorner = Instance.new("UICorner", MainFrame)
mainCorner.CornerRadius = UDim.new(0, 15)

-- Title Bar
TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TitleBar.Size = UDim2.new(1, 0, 0, 30)
local titleBarCorner = Instance.new("UICorner", TitleBar)
titleBarCorner.CornerRadius = UDim.new(0, 15)

-- Title Label
Title.Name = "Title"
Title.Parent = TitleBar
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, -60, 1, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "Get Sucked"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Position = UDim2.new(0, 10, 0, 0)

-- Close Button
CloseButton.Name = "CloseButton"
CloseButton.Parent = TitleBar
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Size = UDim2.new(0, 30, 1, 0)
CloseButton.Position = UDim2.new(1, -30, 0, 0)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 14
local closeButtonCorner = Instance.new("UICorner", CloseButton)
closeButtonCorner.CornerRadius = UDim.new(0, 15)

-- Minimize Button
MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = TitleBar
MinimizeButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
MinimizeButton.Size = UDim2.new(0, 30, 1, 0)
MinimizeButton.Position = UDim2.new(1, -60, 0, 0)
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize = 14
local minimizeButtonCorner = Instance.new("UICorner", MinimizeButton)
minimizeButtonCorner.CornerRadius = UDim.new(0, 15)

-- Username Input Box
UsernameBox.Name = "UsernameBox"
UsernameBox.Parent = MainFrame
UsernameBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
UsernameBox.Size = UDim2.new(0, 260, 0, 30)
UsernameBox.Position = UDim2.new(0.5, -130, 0.5, -20)
UsernameBox.Font = Enum.Font.Gotham
UsernameBox.PlaceholderText = "Target's Username"
UsernameBox.Text = ""
UsernameBox.TextColor3 = Color3.fromRGB(255, 255, 255)
UsernameBox.TextSize = 14
local usernameBoxCorner = Instance.new("UICorner", UsernameBox)
usernameBoxCorner.CornerRadius = UDim.new(0, 15)

-- Toggle Button
ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = MainFrame
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ToggleButton.Size = UDim2.new(0, 260, 0, 30)
ToggleButton.Position = UDim2.new(0.5, -130, 0.5, 20)
ToggleButton.Font = Enum.Font.GothamBold
ToggleButton.Text = "Start"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextSize = 14
local toggleButtonCorner = Instance.new("UICorner", ToggleButton)
toggleButtonCorner.CornerRadius = UDim.new(0, 15)

-- GUI Logic
local minimized = false
local running = false
local originalGravity
local attachmentLoop
local animTrack
local targetPlayer

MinimizeButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    MainFrame.Size = minimized and UDim2.new(0, 300, 0, 30) or UDim2.new(0, 300, 0, 150)
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

ToggleButton.MouseButton1Click:Connect(function()
    if not running then
        ToggleButton.Text = "Stop"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        running = true

        local victim = UsernameBox.Text:lower()

        -- Find target player by matching either username or display name
        for _, player in pairs(game.Players:GetPlayers()) do
            if string.find(player.Name:lower(), victim) or string.find(player.DisplayName:lower(), victim) then
                targetPlayer = player
                break
            end
        end

        if targetPlayer then
            local localPlayer = game.Players.LocalPlayer
            local humanoidRootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")
            local targetRootPart = targetPlayer.Character:FindFirstChild("HumanoidRootPart")

            if humanoidRootPart and targetRootPart then
                originalGravity = workspace.Gravity
                workspace.Gravity = 0

                while running and humanoidRootPart and targetRootPart and humanoidRootPart.Position.Y <= 44 do
                    wait()
                    humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 1.5, 0)
                end

                wait(1)

                -- Attach to the target player
                attachmentLoop = game:GetService("RunService").Stepped:Connect(function()
                    humanoidRootPart.CFrame = targetRootPart.CFrame * CFrame.new(0, 2.3, -1.1) * CFrame.Angles(0, math.pi, 0)
                    humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                end)

                wait(1)

                -- Play animation
                local animationId = "rbxassetid://5918726674" -- Replace with valid animation ID
                local animation = Instance.new('Animation')
                animation.AnimationId = animationId

                local humanoid = localPlayer.Character:FindFirstChild("Humanoid")
                if humanoid then
                    animTrack = humanoid:LoadAnimation(animation)
                    animTrack:Play()
                    animTrack:AdjustSpeed(1)
                end

            end
        end
    else
        ToggleButton.Text = "Start"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        running = false
        if originalGravity then
            workspace.Gravity = originalGravity
        end
        if attachmentLoop then
            attachmentLoop:Disconnect()
        end
        if animTrack then
            animTrack:Stop()
        end
    end
end)
