--[[
   https://discord.gg/2qVfTfmcVX
]]
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Anlynx Hub (DEPRECATED)", HidePremium = false, SaveConfig = true, ConfigFolder = "AnlynxHub"})
local Tab = Window:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Get Anlynx Hub V2!"
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
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/anlynxx/Orionlib/refs/heads/main/walk-on-walls.lua')))()
  	end    
})
Tab:AddButton({
	Name = "Hamster Ball",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/anlynxx/Orionlib/refs/heads/main/hamster-ball.lua')))()
  	end    
})
Tab:AddButton({
	Name = "Fling FE (Non Spinning Working!!)",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/anlynxx/Orionlib/refs/heads/main/Fling.lua')))()
  	end    
})
Tab:AddButton({
	Name = "ESP/Tracers",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/anlynxx/Orionlib/refs/heads/main/esp.lua')))()
  	end    
})
Tab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/anlynxx/Orionlib/refs/heads/main/yield.lua')))()
  	end    
})
Tab:AddButton({
	Name = "Anlynx Hub V2",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/anlynxx/Orionlib/refs/heads/main/MY-HUBS/AnlynxHubV2"))()
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
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/anlynxx/Orionlib/refs/heads/main/dandy.lua')))()
  	end    
})
Tab:AddButton({
	Name = "Fling Things and People",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/anlynxx/Orionlib/refs/heads/main/esp.lua')))()
  	end    
})
Tab:AddButton({
	Name = "Natural Disaster Survival",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/anlynxx/Orionlib/refs/heads/main/nds.lua')))()
  	end    
})
Tab:AddButton({
	Name = "Prison Life Admin",
	Callback = function()
      		loadstring(game:HttpGet(('https://raw.githubusercontent.com/anlynxx/Orionlib/refs/heads/main/prizzlife')))()
  	end    
})
Tab:AddButton({
	Name = "Anlynx Hub V2",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/anlynxx/Orionlib/refs/heads/main/MY-HUBS/AnlynxHubV2"))()
  	end    
})
