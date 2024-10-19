local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Caguei foi na cueca sabia", HidePremium = false, SaveConfig = true, ConfigFolder = "AnlynxHub"})
local Tab = Window:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Section"
})
Tab:AddSlider({
	Name = "Speed",
	Min = 1,
	Max = 100,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "bananas",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
Tab:AddButton({
	Name = "Walk on Walls",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/begginerprogram/Orionlib/refs/heads/main/walk-on-walls.lua')))()
  	end    
})
Tab:AddButton({
	Name = "Hamster Ball",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/begginerprogram/Orionlib/refs/heads/main/hamster-ball.lua')))()
  	end    
})
Tab:AddButton({
	Name = "Fling FE (Non Spinning Working!!)",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/begginerprogram/Orionlib/refs/heads/main/Fling.lua')))()
  	end    
})
Tab:AddButton({
	Name = "ESP/Tracers",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/begginerprogram/Orionlib/refs/heads/main/esp.lua')))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "Other Games",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
	Name = "Dandy's World",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/begginerprogram/Orionlib/refs/heads/main/dandy.lua')))()
  	end    
})
Tab:AddButton({
	Name = "Fling Things and People",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/begginerprogram/Orionlib/refs/heads/main/esp.lua')))()
  	end    
})
Tab:AddButton({
	Name = "Natural Disaster Survival",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/begginerprogram/Orionlib/refs/heads/main/nds.lua')))()
  	end    
})
Tab:AddButton({
	Name = "Prison Life (Tiger Admin)",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/begginerprogram/Orionlib/refs/heads/main/tiger.lua')))()
  	end    
})
