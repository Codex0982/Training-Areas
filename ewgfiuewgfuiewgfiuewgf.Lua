local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local player = game.Players.LocalPlayer

-- Premium Check
local premiumIds = "https://raw.githubusercontent.com/gxslighted/erv-database/refs/heads/main/premiumids.lua"
local premiumIdsScript = loadstring(game:HttpGet(premiumIds))()
local function checkPremium()
    local player = game.Players.LocalPlayer
    local playerID = player.UserId
    for _, id in ipairs(premiumIdsScript) do
        if playerID == id then
            return true
        end
    end
    return false
end

local premium = checkPremium()

-- Library UI
local Library = {}
function Library:CreateWindow(Title, Icon)
	
	if game.CoreGui:FindFirstChild("Echo") then
		game.CoreGui:FindFirstChild("Echo"):Destroy()
	end

	local Echo = Instance.new("ScreenGui")
	local main_1 = Instance.new("Frame")
	local UICorner_1 = Instance.new("UICorner")
	local topbar_1 = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local topbar_ext_1 = Instance.new("Frame")
	local topbar_ext_2 = Instance.new("Frame")
	local topbar_line_1 = Instance.new("Frame")
	local topbar_tablogo_1 = Instance.new("ImageLabel")
	local topbar_tabtitle_1 = Instance.new("TextLabel")
	local UIPadding_1 = Instance.new("UIPadding")
	local topbar_closeimage_1 = Instance.new("ImageButton")
	local topbar_pinimage_1 = Instance.new("ImageButton")
	local topbar_minimizeimage_1 = Instance.new("ImageButton")
	local tabbar_1 = Instance.new("Frame")
	local tabbar_ext_1 = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local tabbar_top_1 = Instance.new("Frame")
	local tabbar_logo_1 = Instance.new("ImageLabel")
	local tabbar_title_1 = Instance.new("TextLabel")
	local UIPadding_2 = Instance.new("UIPadding")
	local tabbar_line_1 = Instance.new("Frame")
	local tabsholder_1 = Instance.new("Frame")
	local tabs_1 = Instance.new("ScrollingFrame")
	local UIListLayout_1 = Instance.new("UIListLayout")
	local UIStroke_1 = Instance.new("UIStroke")
	local elementsholder_1 = Instance.new("Frame")
	
	Echo.Name = "Echo"
	Echo.Parent = game.CoreGui
	Echo.Enabled = true

	main_1.Name = "main"
	main_1.Parent = Echo
	main_1.AnchorPoint = Vector2.new(0.5, 0.5)
	main_1.BackgroundColor3 = Color3.fromRGB(29,37,39)
	main_1.BorderColor3 = Color3.fromRGB(0,0,0)
	main_1.BorderSizePixel = 0
	main_1.Position = UDim2.new(0.5,0,2.5,0)
	main_1.Size = UDim2.new(0, 568,0, 286)
	main_1.Visible = true

	UICorner_1.Parent = main_1

	topbar_1.Name = "topbar"
	topbar_1.Parent = main_1
	topbar_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	topbar_1.BorderColor3 = Color3.fromRGB(0,0,0)
	topbar_1.BorderSizePixel = 0
	topbar_1.Position = UDim2.new(0.228873238, 0,0, 0)
	topbar_1.Size = UDim2.new(0, 438,0, 35)

	UICorner_2.Parent = topbar_1

	topbar_ext_1.Name = "topbar_ext"
	topbar_ext_1.Parent = topbar_1
	topbar_ext_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	topbar_ext_1.BorderColor3 = Color3.fromRGB(0,0,0)
	topbar_ext_1.BorderSizePixel = 0
	topbar_ext_1.Position = UDim2.new(-0.00228310493, 0,0, 0)
	topbar_ext_1.Size = UDim2.new(0, 15,0, 35)

	topbar_ext_2.Name = "topbar_ext"
	topbar_ext_2.Parent = topbar_1
	topbar_ext_2.BackgroundColor3 = Color3.fromRGB(38,50,53)
	topbar_ext_2.BorderColor3 = Color3.fromRGB(0,0,0)
	topbar_ext_2.BorderSizePixel = 0
	topbar_ext_2.Position = UDim2.new(0, 0,0.571428597, 0)
	topbar_ext_2.Size = UDim2.new(0, 438,0, 15)

	topbar_line_1.Name = "topbar_line"
	topbar_line_1.Parent = topbar_1
	topbar_line_1.BackgroundColor3 = Color3.fromRGB(100,175,175)
	topbar_line_1.BackgroundTransparency = 0.800000011920929
	topbar_line_1.BorderColor3 = Color3.fromRGB(0,0,0)
	topbar_line_1.BorderSizePixel = 0
	topbar_line_1.Position = UDim2.new(0, -1,1, 0)
	topbar_line_1.Size = UDim2.new(0, 440,0, 1)

	topbar_tablogo_1.Name = "topbar_tablogo"
	topbar_tablogo_1.Parent = topbar_1
	topbar_tablogo_1.AnchorPoint = Vector2.new(0, 0.5)
	topbar_tablogo_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	topbar_tablogo_1.BackgroundTransparency = 1
	topbar_tablogo_1.BorderColor3 = Color3.fromRGB(0,0,0)
	topbar_tablogo_1.BorderSizePixel = 0
	topbar_tablogo_1.Position = UDim2.new(0, 10,0.5, 0)
	topbar_tablogo_1.Size = UDim2.new(0, 14,0, 14)
	topbar_tablogo_1.Image = "rbxassetid://"
	topbar_tablogo_1.ImageColor3 = Color3.fromRGB(100,175,175)

	topbar_tabtitle_1.Name = "topbar_tabtitle"
	topbar_tabtitle_1.Parent = topbar_1
	topbar_tabtitle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	topbar_tabtitle_1.BackgroundTransparency = 1
	topbar_tabtitle_1.BorderColor3 = Color3.fromRGB(0,0,0)
	topbar_tabtitle_1.BorderSizePixel = 0
	topbar_tabtitle_1.Size = UDim2.new(0, 201,0, 35)
	topbar_tabtitle_1.Font = Enum.Font.GothamBold
	topbar_tabtitle_1.Text = ""
	topbar_tabtitle_1.TextColor3 = Color3.fromRGB(255,255,255)
	topbar_tabtitle_1.TextSize = 12
	topbar_tabtitle_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_1.Parent = topbar_tabtitle_1
	UIPadding_1.PaddingLeft = UDim.new(0,31)
	UIPadding_1.PaddingTop = UDim.new(0,3)

	topbar_closeimage_1.Name = "topbar_closeimage"
	topbar_closeimage_1.Parent = topbar_1
	topbar_closeimage_1.Active = true
	topbar_closeimage_1.AnchorPoint = Vector2.new(0, 0.5)
	topbar_closeimage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	topbar_closeimage_1.BackgroundTransparency = 1
	topbar_closeimage_1.BorderColor3 = Color3.fromRGB(0,0,0)
	topbar_closeimage_1.BorderSizePixel = 0
	topbar_closeimage_1.Position = UDim2.new(0.939999998, 0,0.5, 0)
	topbar_closeimage_1.Size = UDim2.new(0, 15,0, 15)
	topbar_closeimage_1.Image = "rbxassetid://95594349516151"
	topbar_closeimage_1.ImageColor3 = Color3.fromRGB(100,175,175)
	
	topbar_pinimage_1.Name = "topbar_pinimage"
	topbar_pinimage_1.Parent = topbar_1
	topbar_pinimage_1.Active = true
	topbar_pinimage_1.AnchorPoint = Vector2.new(0, 0.5)
	topbar_pinimage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	topbar_pinimage_1.BackgroundTransparency = 1
	topbar_pinimage_1.BorderColor3 = Color3.fromRGB(0,0,0)
	topbar_pinimage_1.BorderSizePixel = 0
	topbar_pinimage_1.Position = UDim2.new(0.819999993, 0,0.5, 0)
	topbar_pinimage_1.Size = UDim2.new(0, 15,0, 15)
	topbar_pinimage_1.Image = "rbxassetid://98574876846322"
	topbar_pinimage_1.ImageColor3 = Color3.fromRGB(100,175,175)

	topbar_minimizeimage_1.Name = "topbar_minimizeimage"
	topbar_minimizeimage_1.Parent = topbar_1
	topbar_minimizeimage_1.Active = true
	topbar_minimizeimage_1.AnchorPoint = Vector2.new(0, 0.5)
	topbar_minimizeimage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	topbar_minimizeimage_1.BackgroundTransparency = 1
	topbar_minimizeimage_1.BorderColor3 = Color3.fromRGB(0,0,0)
	topbar_minimizeimage_1.BorderSizePixel = 0
	topbar_minimizeimage_1.Position = UDim2.new(0.879999995, 0,0.5, 0)
	topbar_minimizeimage_1.Size = UDim2.new(0, 15,0, 15)
	topbar_minimizeimage_1.Image = "rbxassetid://87179754926767"
	topbar_minimizeimage_1.ImageColor3 = Color3.fromRGB(100,175,175)
	
	tabbar_1.Name = "tabbar"
	tabbar_1.Parent = main_1
	tabbar_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	tabbar_1.BorderColor3 = Color3.fromRGB(0,0,0)
	tabbar_1.BorderSizePixel = 0
	tabbar_1.Size = UDim2.new(0, 129,0, 286)

	tabbar_ext_1.Name = "tabbar_ext"
	tabbar_ext_1.Parent = tabbar_1
	tabbar_ext_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	tabbar_ext_1.BorderColor3 = Color3.fromRGB(0,0,0)
	tabbar_ext_1.BorderSizePixel = 0
	tabbar_ext_1.Position = UDim2.new(0.857541144, 0,0, 0)
	tabbar_ext_1.Size = UDim2.new(0, 18,0, 286)

	UICorner_3.Parent = tabbar_1

	tabbar_top_1.Name = "tabbar_top"
	tabbar_top_1.Parent = tabbar_1
	tabbar_top_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	tabbar_top_1.BackgroundTransparency = 1
	tabbar_top_1.BorderColor3 = Color3.fromRGB(0,0,0)
	tabbar_top_1.BorderSizePixel = 0
	tabbar_top_1.Position = UDim2.new(0, 0,0, 2)
	tabbar_top_1.Size = UDim2.new(0, 128,0, 35)

	tabbar_logo_1.Name = "tabbar_logo"
	tabbar_logo_1.Parent = tabbar_top_1
	tabbar_logo_1.AnchorPoint = Vector2.new(0, 0.5)
	tabbar_logo_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	tabbar_logo_1.BackgroundTransparency = 1
	tabbar_logo_1.BorderColor3 = Color3.fromRGB(0,0,0)
	tabbar_logo_1.BorderSizePixel = 0
	tabbar_logo_1.Position = UDim2.new(0, 8,0.5, 0)
	tabbar_logo_1.Size = UDim2.new(0, 19,0, 19)
	tabbar_logo_1.Image = "rbxassetid://128575501543687"
	tabbar_logo_1.ImageColor3 = Color3.fromRGB(100,175,175)

	tabbar_title_1.Name = "tabbar_title"
	tabbar_title_1.Parent = tabbar_top_1
	tabbar_title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	tabbar_title_1.BackgroundTransparency = 1
	tabbar_title_1.BorderColor3 = Color3.fromRGB(0,0,0)
	tabbar_title_1.BorderSizePixel = 0
	tabbar_title_1.Size = UDim2.new(0, 128,0, 35)
	tabbar_title_1.Font = Enum.Font.GothamBold
	tabbar_title_1.Text = "EchoUI"
	tabbar_title_1.TextColor3 = Color3.fromRGB(255,255,255)
	tabbar_title_1.TextSize = 16
	tabbar_title_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_2.Parent = tabbar_title_1
	UIPadding_2.PaddingLeft = UDim.new(0,32)
	UIPadding_2.PaddingTop = UDim.new(0,3)

	tabbar_line_1.Name = "tabbar_line"
	tabbar_line_1.Parent = tabbar_1
	tabbar_line_1.BackgroundColor3 = Color3.fromRGB(100,175,175)
	tabbar_line_1.BackgroundTransparency = 0.800000011920929
	tabbar_line_1.BorderColor3 = Color3.fromRGB(0,0,0)
	tabbar_line_1.BorderSizePixel = 0
	tabbar_line_1.Position = UDim2.new(0.99000001, 0,0, 0)
	tabbar_line_1.Size = UDim2.new(0, 1,0, 286)

	tabsholder_1.Name = "tabsholder"
	tabsholder_1.Parent = tabbar_1
	tabsholder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	tabsholder_1.BackgroundTransparency = 1
	tabsholder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	tabsholder_1.BorderSizePixel = 0
	tabsholder_1.Position = UDim2.new(0, 0,0.157342657, 0)
	tabsholder_1.Size = UDim2.new(0, 127,0, 234)

	tabs_1.Name = "tabs"
	tabs_1.Parent = tabsholder_1
	tabs_1.Active = true
	tabs_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	tabs_1.BackgroundTransparency = 1
	tabs_1.BorderColor3 = Color3.fromRGB(0,0,0)
	tabs_1.BorderSizePixel = 0
	tabs_1.Size = UDim2.new(0, 127,0, 234)
	tabs_1.ClipsDescendants = true
	tabs_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
	tabs_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
	tabs_1.CanvasPosition = Vector2.new(0, 0)
	tabs_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
	tabs_1.ElasticBehavior = Enum.ElasticBehavior.Never
	tabs_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
	tabs_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	tabs_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
	tabs_1.ScrollBarImageTransparency = 1
	tabs_1.ScrollBarThickness = 1
	tabs_1.ScrollingDirection = Enum.ScrollingDirection.Y
	tabs_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
	tabs_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
	tabs_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

	UIListLayout_1.Parent = tabs_1
	UIListLayout_1.Padding = UDim.new(0,7)
	UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
	
	UIStroke_1.Parent = main_1
	UIStroke_1.Color = Color3.fromRGB(100,175,175)
	UIStroke_1.Thickness = 1
	UIStroke_1.Transparency = 0.8

	elementsholder_1.Name = "elementsholder"
	elementsholder_1.Parent = main_1
	elementsholder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	elementsholder_1.BackgroundTransparency = 1
	elementsholder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	elementsholder_1.BorderSizePixel = 0
	elementsholder_1.Position = UDim2.new(0.236000001, 0,0.144999996, 0)
	elementsholder_1.Size = UDim2.new(0, 430,0, 240)

	local gui = main_1

	local dragging
	local dragInput
	local dragStart
	local startPos

	function Lerp(a, b, m)
		return a + (b - a) * m
	end

	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (9)
	
	function Update(dt)
		if not (startPos) then return end
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end

		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X)
		local yGoal = (startPos.Y.Offset - delta.Y)
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	runService.Heartbeat:Connect(Update)
	
	local main_external_1 = Instance.new("Frame")
	local UICorner_9 = Instance.new("UICorner")
	local UIStroke_6 = Instance.new("UIStroke")
	local external_topbar_1 = Instance.new("Frame")
	local UICorner_10 = Instance.new("UICorner")
	local external_line_1 = Instance.new("Frame")
	local external_topbarlogo_1 = Instance.new("ImageLabel")
	local external_topbartitle_1 = Instance.new("TextLabel")
	local UIPadding_24 = Instance.new("UIPadding")
	local external_closeimage_1 = Instance.new("ImageButton")
	local external_topbarext_1 = Instance.new("Frame")
	local infoframe_1 = Instance.new("Frame")
	local UIStroke_7 = Instance.new("UIStroke")
	local UICorner_11 = Instance.new("UICorner")
	local infoscroll_1 = Instance.new("ScrollingFrame")
	local UIPadding_25 = Instance.new("UIPadding")
	local UIListLayout_6 = Instance.new("UIListLayout")
	
	main_external_1.Name = "main_external"
	main_external_1.Parent = main_1
	main_external_1.BackgroundColor3 = Color3.fromRGB(29,37,39)
	main_external_1.BorderColor3 = Color3.fromRGB(0,0,0)
	main_external_1.BorderSizePixel = 0
	main_external_1.Position = UDim2.new(1.01, 0,0, 0)
	main_external_1.Size = UDim2.new(0, 181,0, 286)
	main_external_1.Visible = false
	
	UICorner_9.Parent = main_external_1

	UIStroke_6.Parent = main_external_1
	UIStroke_6.Color = Color3.fromRGB(100,175,175)
	UIStroke_6.Thickness = 1
	UIStroke_6.Transparency = 0.8

	external_topbar_1.Name = "external_topbar"
	external_topbar_1.Parent = main_external_1
	external_topbar_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	external_topbar_1.BorderColor3 = Color3.fromRGB(0,0,0)
	external_topbar_1.BorderSizePixel = 0
	external_topbar_1.Size = UDim2.new(0, 181,0, 35)

	UICorner_10.Parent = external_topbar_1

	external_line_1.Name = "external_line"
	external_line_1.Parent = external_topbar_1
	external_line_1.BackgroundColor3 = Color3.fromRGB(100,175,175)
	external_line_1.BackgroundTransparency = 0.800000011920929
	external_line_1.BorderColor3 = Color3.fromRGB(0,0,0)
	external_line_1.BorderSizePixel = 0
	external_line_1.Position = UDim2.new(0, -1,1, 0)
	external_line_1.Size = UDim2.new(0, 181,0, 1)

	external_topbarlogo_1.Name = "external_topbarlogo"
	external_topbarlogo_1.Parent = external_topbar_1
	external_topbarlogo_1.AnchorPoint = Vector2.new(0, 0.5)
	external_topbarlogo_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	external_topbarlogo_1.BackgroundTransparency = 1
	external_topbarlogo_1.BorderColor3 = Color3.fromRGB(0,0,0)
	external_topbarlogo_1.BorderSizePixel = 0
	external_topbarlogo_1.Position = UDim2.new(0, 10,0.5, 0)
	external_topbarlogo_1.Size = UDim2.new(0, 16,0, 16)
	external_topbarlogo_1.Image = "rbxassetid://88768064388346"
	external_topbarlogo_1.ImageColor3 = Color3.fromRGB(100,175,175)

	external_topbartitle_1.Name = "external_topbartitle"
	external_topbartitle_1.Parent = external_topbar_1
	external_topbartitle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	external_topbartitle_1.BackgroundTransparency = 1
	external_topbartitle_1.BorderColor3 = Color3.fromRGB(0,0,0)
	external_topbartitle_1.BorderSizePixel = 0
	external_topbartitle_1.Size = UDim2.new(0, 181,0, 35)
	external_topbartitle_1.Font = Enum.Font.GothamBold
	external_topbartitle_1.Text = "Release Notes"
	external_topbartitle_1.TextColor3 = Color3.fromRGB(255,255,255)
	external_topbartitle_1.TextSize = 12
	external_topbartitle_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_24.Parent = external_topbartitle_1
	UIPadding_24.PaddingLeft = UDim.new(0,31)
	UIPadding_24.PaddingTop = UDim.new(0,3)

	external_closeimage_1.Name = "external_closeimage"
	external_closeimage_1.Parent = external_topbar_1
	external_closeimage_1.Active = true
	external_closeimage_1.AnchorPoint = Vector2.new(0, 0.5)
	external_closeimage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	external_closeimage_1.BackgroundTransparency = 1
	external_closeimage_1.BorderColor3 = Color3.fromRGB(0,0,0)
	external_closeimage_1.BorderSizePixel = 0
	external_closeimage_1.Position = UDim2.new(0.873701751, 0,0.5, 0)
	external_closeimage_1.Size = UDim2.new(0, 15,0, 15)
	external_closeimage_1.Image = "rbxassetid://95594349516151"
	external_closeimage_1.ImageColor3 = Color3.fromRGB(100,175,175)
	
	external_closeimage_1.MouseButton1Click:Connect(function()
		main_external_1.Visible = false
	end)

	external_topbarext_1.Name = "external_topbarext"
	external_topbarext_1.Parent = external_topbar_1
	external_topbarext_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	external_topbarext_1.BorderColor3 = Color3.fromRGB(0,0,0)
	external_topbarext_1.BorderSizePixel = 0
	external_topbarext_1.Position = UDim2.new(0, 0,0.828571439, 0)
	external_topbarext_1.Size = UDim2.new(0, 181,0, 6)

	infoframe_1.Name = "infoframe"
	infoframe_1.Parent = main_external_1
	infoframe_1.AnchorPoint = Vector2.new(0.5, 0)
	infoframe_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	infoframe_1.BorderColor3 = Color3.fromRGB(0,0,0)
	infoframe_1.BorderSizePixel = 0
	infoframe_1.Position = UDim2.new(0.5, 0,0.15, 0)
	infoframe_1.Size = UDim2.new(0, 167,0, 234)

	UIStroke_7.Parent = infoframe_1
	UIStroke_7.Color = Color3.fromRGB(100,175,175)
	UIStroke_7.Thickness = 1
	UIStroke_7.Transparency = 0.8

	UICorner_11.Parent = infoframe_1
	UICorner_11.CornerRadius = UDim.new(0,4)

	infoscroll_1.Name = "infoscroll"
	infoscroll_1.Parent = infoframe_1
	infoscroll_1.Active = true
	infoscroll_1.AnchorPoint = Vector2.new(0.5, 0.5)
	infoscroll_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	infoscroll_1.BackgroundTransparency = 1
	infoscroll_1.BorderColor3 = Color3.fromRGB(0,0,0)
	infoscroll_1.BorderSizePixel = 0
	infoscroll_1.Position = UDim2.new(0.5, 0,0.5, 0)
	infoscroll_1.Size = UDim2.new(0, 167,0, 221)
	infoscroll_1.ClipsDescendants = true
	infoscroll_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
	infoscroll_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
	infoscroll_1.CanvasPosition = Vector2.new(0, 0)
	infoscroll_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
	infoscroll_1.ElasticBehavior = Enum.ElasticBehavior.Never
	infoscroll_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
	infoscroll_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	infoscroll_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
	infoscroll_1.ScrollBarImageTransparency = 1
	infoscroll_1.ScrollBarThickness = 1
	infoscroll_1.ScrollingDirection = Enum.ScrollingDirection.Y
	infoscroll_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
	infoscroll_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
	infoscroll_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

	UIPadding_25.Parent = infoscroll_1
	UIPadding_25.PaddingBottom = UDim.new(0,1)
	UIPadding_25.PaddingLeft = UDim.new(0,6)
	UIPadding_25.PaddingTop = UDim.new(0,1)

	UIListLayout_6.Parent = infoscroll_1
	UIListLayout_6.Padding = UDim.new(0,9)
	UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
	
	local external_gui = main_external_1

	local draggingExt
	local dragInputExt
	local dragStartExt
	local startPosExt

	function Lerp(a, b, m)
		return a + (b - a) * m
	end

	local lastMousePosExt
	local lastGoalPosExt
	local DRAG_SPEED = (9)

	function Update(dt)
		if not (startPosExt) then return end
		if not (draggingExt) and (lastGoalPosExt) then
			external_gui.Position = UDim2.new(startPosExt.X.Scale, Lerp(external_gui.Position.X.Offset, lastGoalPosExt.X.Offset, dt * DRAG_SPEED), startPosExt.Y.Scale, Lerp(external_gui.Position.Y.Offset, lastGoalPosExt.Y.Offset, dt * DRAG_SPEED))
			return 
		end

		local delta = (lastMousePosExt - UserInputService:GetMouseLocation())
		local xGoal = (startPosExt.X.Offset - delta.X)
		local yGoal = (startPosExt.Y.Offset - delta.Y)
		lastGoalPosExt = UDim2.new(startPosExt.X.Scale, xGoal, startPosExt.Y.Scale, yGoal)
		external_gui.Position = UDim2.new(startPosExt.X.Scale, Lerp(external_gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPosExt.Y.Scale, Lerp(external_gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end

	external_gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			draggingExt = true
			dragStartExt = input.Position
			startPosExt = external_gui.Position
			lastMousePosExt = UserInputService:GetMouseLocation()

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					draggingExt = false
				end
			end)
		end
	end)

	external_gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInputExt = input
		end
	end)

	runService.Heartbeat:Connect(Update)
	
	topbar_pinimage_1.MouseButton1Click:Connect(function()
		if main_external_1.Visible then
			return
		end
		
		main_external_1.Position = UDim2.new(1.01, 0, 0, 0)
		main_external_1.Visible = true

		draggingExt = false
		lastGoalPosExt = nil
		startPosExt = nil
	end)
	
	-- echo-v1.0.1-mru
	local echo_v1_0_1_mru = {
		infoholder_18 = Instance.new("Frame"),
		B_infoversiondescription_18 = Instance.new("TextLabel"),
		UIPadding_268 = Instance.new("UIPadding"),
		A_infoversiontitle_18 = Instance.new("TextLabel"),
		UIPadding_278 = Instance.new("UIPadding"),
		UIListLayout_78 = Instance.new("UIListLayout"),
	}

	echo_v1_0_1_mru.infoholder_18.Name = "infoholder"
	echo_v1_0_1_mru.infoholder_18.Parent = infoscroll_1
	echo_v1_0_1_mru.infoholder_18.AutomaticSize = Enum.AutomaticSize.Y
	echo_v1_0_1_mru.infoholder_18.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v1_0_1_mru.infoholder_18.BackgroundTransparency = 1
	echo_v1_0_1_mru.infoholder_18.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v1_0_1_mru.infoholder_18.BorderSizePixel = 0
	echo_v1_0_1_mru.infoholder_18.Size = UDim2.new(0, 157,0, 30)

	echo_v1_0_1_mru.B_infoversiondescription_18.Name = "B_infoversiondescription"
	echo_v1_0_1_mru.B_infoversiondescription_18.Parent = echo_v1_0_1_mru.infoholder_18
	echo_v1_0_1_mru.B_infoversiondescription_18.AutomaticSize = Enum.AutomaticSize.Y
	echo_v1_0_1_mru.B_infoversiondescription_18.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v1_0_1_mru.B_infoversiondescription_18.BackgroundTransparency = 1
	echo_v1_0_1_mru.B_infoversiondescription_18.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v1_0_1_mru.B_infoversiondescription_18.BorderSizePixel = 0
	echo_v1_0_1_mru.B_infoversiondescription_18.Size = UDim2.new(0, 149,0, 12)
	echo_v1_0_1_mru.B_infoversiondescription_18.Font = Enum.Font.GothamBold
	echo_v1_0_1_mru.B_infoversiondescription_18.Text = "This is a major script update. Alot of features have been reworked, lots of bugs are fixed, and many new features have been added!"
	echo_v1_0_1_mru.B_infoversiondescription_18.TextColor3 = Color3.fromRGB(100,175,175)
	echo_v1_0_1_mru.B_infoversiondescription_18.TextSize = 10
	echo_v1_0_1_mru.B_infoversiondescription_18.TextWrapped = true
	echo_v1_0_1_mru.B_infoversiondescription_18.TextXAlignment = Enum.TextXAlignment.Left
	echo_v1_0_1_mru.B_infoversiondescription_18.TextYAlignment = Enum.TextYAlignment.Top

	echo_v1_0_1_mru.UIPadding_268.Parent = echo_v1_0_1_mru.B_infoversiondescription_18
	echo_v1_0_1_mru.UIPadding_268.PaddingLeft = UDim.new(0,3)
			
	echo_v1_0_1_mru.A_infoversiontitle_18.Name = "A_infoversiontitle"
	echo_v1_0_1_mru.A_infoversiontitle_18.Parent = echo_v1_0_1_mru.infoholder_18
	echo_v1_0_1_mru.A_infoversiontitle_18.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v1_0_1_mru.A_infoversiontitle_18.BackgroundTransparency = 1
	echo_v1_0_1_mru.A_infoversiontitle_18.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v1_0_1_mru.A_infoversiontitle_18.BorderSizePixel = 0
	echo_v1_0_1_mru.A_infoversiontitle_18.Size = UDim2.new(0, 149,0, 17)
	echo_v1_0_1_mru.A_infoversiontitle_18.Font = Enum.Font.GothamBold
	echo_v1_0_1_mru.A_infoversiontitle_18.Text = "echo-v1.0.1-mru"
	echo_v1_0_1_mru.A_infoversiontitle_18.TextColor3 = Color3.fromRGB(255,255,255)
	echo_v1_0_1_mru.A_infoversiontitle_18.TextSize = 12
	echo_v1_0_1_mru.A_infoversiontitle_18.TextXAlignment = Enum.TextXAlignment.Left
	echo_v1_0_1_mru.A_infoversiontitle_18.TextYAlignment = Enum.TextYAlignment.Top

	echo_v1_0_1_mru.UIPadding_278.Parent = echo_v1_0_1_mru.A_infoversiontitle_18
	echo_v1_0_1_mru.UIPadding_278.PaddingLeft = UDim.new(0,3)
	echo_v1_0_1_mru.UIPadding_278.PaddingTop = UDim.new(0,4)
			
	echo_v1_0_1_mru.UIListLayout_78.Parent = echo_v1_0_1_mru.infoholder_18
	echo_v1_0_1_mru.UIListLayout_78.SortOrder = Enum.SortOrder.Name

	-- echo-v0.2.2-mu
	local echo_v0_2_2_mu = {
		infoholder_17 = Instance.new("Frame"),
		B_infoversiondescription_17 = Instance.new("TextLabel"),
		UIPadding_267 = Instance.new("UIPadding"),
		A_infoversiontitle_17 = Instance.new("TextLabel"),
		UIPadding_277 = Instance.new("UIPadding"),
		UIListLayout_77 = Instance.new("UIListLayout"),
	}

	echo_v0_2_2_mu.infoholder_17.Name = "infoholder"
	echo_v0_2_2_mu.infoholder_17.Parent = infoscroll_1
	echo_v0_2_2_mu.infoholder_17.AutomaticSize = Enum.AutomaticSize.Y
	echo_v0_2_2_mu.infoholder_17.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_2_2_mu.infoholder_17.BackgroundTransparency = 1
	echo_v0_2_2_mu.infoholder_17.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_2_2_mu.infoholder_17.BorderSizePixel = 0
	echo_v0_2_2_mu.infoholder_17.Size = UDim2.new(0, 157, 0, 30)

	echo_v0_2_2_mu.B_infoversiondescription_17.Name = "B_infoversiondescription"
	echo_v0_2_2_mu.B_infoversiondescription_17.Parent = echo_v0_2_2_mu.infoholder_17
	echo_v0_2_2_mu.B_infoversiondescription_17.AutomaticSize = Enum.AutomaticSize.Y
	echo_v0_2_2_mu.B_infoversiondescription_17.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_2_2_mu.B_infoversiondescription_17.BackgroundTransparency = 1
	echo_v0_2_2_mu.B_infoversiondescription_17.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_2_2_mu.B_infoversiondescription_17.BorderSizePixel = 0
	echo_v0_2_2_mu.B_infoversiondescription_17.Size = UDim2.new(0, 149, 0, 12)
	echo_v0_2_2_mu.B_infoversiondescription_17.Font = Enum.Font.GothamBold
	echo_v0_2_2_mu.B_infoversiondescription_17.Text = "This update includes a better ping optimization stability for the game, and features some general bug fixes for better performance"
	echo_v0_2_2_mu.B_infoversiondescription_17.TextColor3 = Color3.fromRGB(100,175,175)
	echo_v0_2_2_mu.B_infoversiondescription_17.TextSize = 10
	echo_v0_2_2_mu.B_infoversiondescription_17.TextWrapped = true
	echo_v0_2_2_mu.B_infoversiondescription_17.TextXAlignment = Enum.TextXAlignment.Left
	echo_v0_2_2_mu.B_infoversiondescription_17.TextYAlignment = Enum.TextYAlignment.Top

	echo_v0_2_2_mu.UIPadding_267.Parent = echo_v0_2_2_mu.B_infoversiondescription_17
	echo_v0_2_2_mu.UIPadding_267.PaddingLeft = UDim.new(0,3)

	echo_v0_2_2_mu.A_infoversiontitle_17.Name = "A_infoversiontitle"
	echo_v0_2_2_mu.A_infoversiontitle_17.Parent = echo_v0_2_2_mu.infoholder_17
	echo_v0_2_2_mu.A_infoversiontitle_17.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_2_2_mu.A_infoversiontitle_17.BackgroundTransparency = 1
	echo_v0_2_2_mu.A_infoversiontitle_17.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_2_2_mu.A_infoversiontitle_17.BorderSizePixel = 0
	echo_v0_2_2_mu.A_infoversiontitle_17.Size = UDim2.new(0, 149, 0, 17)
	echo_v0_2_2_mu.A_infoversiontitle_17.Font = Enum.Font.GothamBold
	echo_v0_2_2_mu.A_infoversiontitle_17.Text = "echo-v0.2.2-mu"
	echo_v0_2_2_mu.A_infoversiontitle_17.TextColor3 = Color3.fromRGB(255,255,255)
	echo_v0_2_2_mu.A_infoversiontitle_17.TextSize = 12
	echo_v0_2_2_mu.A_infoversiontitle_17.TextXAlignment = Enum.TextXAlignment.Left
	echo_v0_2_2_mu.A_infoversiontitle_17.TextYAlignment = Enum.TextYAlignment.Top

	echo_v0_2_2_mu.UIPadding_277.Parent = echo_v0_2_2_mu.A_infoversiontitle_17
	echo_v0_2_2_mu.UIPadding_277.PaddingLeft = UDim.new(0,3)
	echo_v0_2_2_mu.UIPadding_277.PaddingTop = UDim.new(0,4)

	echo_v0_2_2_mu.UIListLayout_77.Parent = echo_v0_2_2_mu.infoholder_17
	echo_v0_2_2_mu.UIListLayout_77.SortOrder = Enum.SortOrder.Name
	
	-- echo-v0.2.1-mu
	local echo_v0_2_1_mu = {
		infoholder_16 = Instance.new("Frame"),
		B_infoversiondescription_16 = Instance.new("TextLabel"),
		UIPadding_266 = Instance.new("UIPadding"),
		A_infoversiontitle_16 = Instance.new("TextLabel"),
		UIPadding_276 = Instance.new("UIPadding"),
		UIListLayout_76 = Instance.new("UIListLayout"),
	}

	echo_v0_2_1_mu.infoholder_16.Name = "infoholder"
	echo_v0_2_1_mu.infoholder_16.Parent = infoscroll_1
	echo_v0_2_1_mu.infoholder_16.AutomaticSize = Enum.AutomaticSize.Y
	echo_v0_2_1_mu.infoholder_16.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_2_1_mu.infoholder_16.BackgroundTransparency = 1
	echo_v0_2_1_mu.infoholder_16.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_2_1_mu.infoholder_16.BorderSizePixel = 0
	echo_v0_2_1_mu.infoholder_16.Size = UDim2.new(0, 157, 0, 30)

	echo_v0_2_1_mu.B_infoversiondescription_16.Name = "B_infoversiondescription"
	echo_v0_2_1_mu.B_infoversiondescription_16.Parent = echo_v0_2_1_mu.infoholder_16
	echo_v0_2_1_mu.B_infoversiondescription_16.AutomaticSize = Enum.AutomaticSize.Y
	echo_v0_2_1_mu.B_infoversiondescription_16.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_2_1_mu.B_infoversiondescription_16.BackgroundTransparency = 1
	echo_v0_2_1_mu.B_infoversiondescription_16.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_2_1_mu.B_infoversiondescription_16.BorderSizePixel = 0
	echo_v0_2_1_mu.B_infoversiondescription_16.Size = UDim2.new(0, 149, 0, 12)
	echo_v0_2_1_mu.B_infoversiondescription_16.Font = Enum.Font.GothamBold
	echo_v0_2_1_mu.B_infoversiondescription_16.Text = "This update features a fancy loading UI with a dynamically updating status, and some improvements and bug fixes in the script"
	echo_v0_2_1_mu.B_infoversiondescription_16.TextColor3 = Color3.fromRGB(100,175,175)
	echo_v0_2_1_mu.B_infoversiondescription_16.TextSize = 10
	echo_v0_2_1_mu.B_infoversiondescription_16.TextWrapped = true
	echo_v0_2_1_mu.B_infoversiondescription_16.TextXAlignment = Enum.TextXAlignment.Left
	echo_v0_2_1_mu.B_infoversiondescription_16.TextYAlignment = Enum.TextYAlignment.Top

	echo_v0_2_1_mu.UIPadding_266.Parent = echo_v0_2_1_mu.B_infoversiondescription_16
	echo_v0_2_1_mu.UIPadding_266.PaddingLeft = UDim.new(0,3)

	echo_v0_2_1_mu.A_infoversiontitle_16.Name = "A_infoversiontitle"
	echo_v0_2_1_mu.A_infoversiontitle_16.Parent = echo_v0_2_1_mu.infoholder_16
	echo_v0_2_1_mu.A_infoversiontitle_16.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_2_1_mu.A_infoversiontitle_16.BackgroundTransparency = 1
	echo_v0_2_1_mu.A_infoversiontitle_16.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_2_1_mu.A_infoversiontitle_16.BorderSizePixel = 0
	echo_v0_2_1_mu.A_infoversiontitle_16.Size = UDim2.new(0, 149, 0, 17)
	echo_v0_2_1_mu.A_infoversiontitle_16.Font = Enum.Font.GothamBold
	echo_v0_2_1_mu.A_infoversiontitle_16.Text = "echo-v0.2.1-mu"
	echo_v0_2_1_mu.A_infoversiontitle_16.TextColor3 = Color3.fromRGB(255,255,255)
	echo_v0_2_1_mu.A_infoversiontitle_16.TextSize = 12
	echo_v0_2_1_mu.A_infoversiontitle_16.TextXAlignment = Enum.TextXAlignment.Left
	echo_v0_2_1_mu.A_infoversiontitle_16.TextYAlignment = Enum.TextYAlignment.Top

	echo_v0_2_1_mu.UIPadding_276.Parent = echo_v0_2_1_mu.A_infoversiontitle_16
	echo_v0_2_1_mu.UIPadding_276.PaddingLeft = UDim.new(0,3)
	echo_v0_2_1_mu.UIPadding_276.PaddingTop = UDim.new(0,4)

	echo_v0_2_1_mu.UIListLayout_76.Parent = echo_v0_2_1_mu.infoholder_16
	echo_v0_2_1_mu.UIListLayout_76.SortOrder = Enum.SortOrder.Name


	-- echo-v0.2.0-mu
	local echo_v0_2_0_mu = {
		infoholder_15 = Instance.new("Frame"),
		B_infoversiondescription_15 = Instance.new("TextLabel"),
		UIPadding_265 = Instance.new("UIPadding"),
		A_infoversiontitle_15 = Instance.new("TextLabel"),
		UIPadding_275 = Instance.new("UIPadding"),
		UIListLayout_75 = Instance.new("UIListLayout"),
	}

	echo_v0_2_0_mu.infoholder_15.Name = "infoholder"
	echo_v0_2_0_mu.infoholder_15.Parent = infoscroll_1
	echo_v0_2_0_mu.infoholder_15.AutomaticSize = Enum.AutomaticSize.Y
	echo_v0_2_0_mu.infoholder_15.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_2_0_mu.infoholder_15.BackgroundTransparency = 1
	echo_v0_2_0_mu.infoholder_15.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_2_0_mu.infoholder_15.BorderSizePixel = 0
	echo_v0_2_0_mu.infoholder_15.Size = UDim2.new(0, 157, 0, 30)

	echo_v0_2_0_mu.B_infoversiondescription_15.Name = "B_infoversiondescription"
	echo_v0_2_0_mu.B_infoversiondescription_15.Parent = echo_v0_2_0_mu.infoholder_15
	echo_v0_2_0_mu.B_infoversiondescription_15.AutomaticSize = Enum.AutomaticSize.Y
	echo_v0_2_0_mu.B_infoversiondescription_15.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_2_0_mu.B_infoversiondescription_15.BackgroundTransparency = 1
	echo_v0_2_0_mu.B_infoversiondescription_15.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_2_0_mu.B_infoversiondescription_15.BorderSizePixel = 0
	echo_v0_2_0_mu.B_infoversiondescription_15.Size = UDim2.new(0, 149, 0, 12)
	echo_v0_2_0_mu.B_infoversiondescription_15.Font = Enum.Font.GothamBold
	echo_v0_2_0_mu.B_infoversiondescription_15.Text = "This update features a small UI rework, expanded features, and the introduction of a premium option for a more dynamic and refined experience."
	echo_v0_2_0_mu.B_infoversiondescription_15.TextColor3 = Color3.fromRGB(100,175,175)
	echo_v0_2_0_mu.B_infoversiondescription_15.TextSize = 10
	echo_v0_2_0_mu.B_infoversiondescription_15.TextWrapped = true
	echo_v0_2_0_mu.B_infoversiondescription_15.TextXAlignment = Enum.TextXAlignment.Left
	echo_v0_2_0_mu.B_infoversiondescription_15.TextYAlignment = Enum.TextYAlignment.Top

	echo_v0_2_0_mu.UIPadding_265.Parent = echo_v0_2_0_mu.B_infoversiondescription_15
	echo_v0_2_0_mu.UIPadding_265.PaddingLeft = UDim.new(0,3)

	echo_v0_2_0_mu.A_infoversiontitle_15.Name = "A_infoversiontitle"
	echo_v0_2_0_mu.A_infoversiontitle_15.Parent = echo_v0_2_0_mu.infoholder_15
	echo_v0_2_0_mu.A_infoversiontitle_15.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_2_0_mu.A_infoversiontitle_15.BackgroundTransparency = 1
	echo_v0_2_0_mu.A_infoversiontitle_15.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_2_0_mu.A_infoversiontitle_15.BorderSizePixel = 0
	echo_v0_2_0_mu.A_infoversiontitle_15.Size = UDim2.new(0, 149, 0, 17)
	echo_v0_2_0_mu.A_infoversiontitle_15.Font = Enum.Font.GothamBold
	echo_v0_2_0_mu.A_infoversiontitle_15.Text = "echo-v0.2.0-mu"
	echo_v0_2_0_mu.A_infoversiontitle_15.TextColor3 = Color3.fromRGB(255,255,255)
	echo_v0_2_0_mu.A_infoversiontitle_15.TextSize = 12
	echo_v0_2_0_mu.A_infoversiontitle_15.TextXAlignment = Enum.TextXAlignment.Left
	echo_v0_2_0_mu.A_infoversiontitle_15.TextYAlignment = Enum.TextYAlignment.Top

	echo_v0_2_0_mu.UIPadding_275.Parent = echo_v0_2_0_mu.A_infoversiontitle_15
	echo_v0_2_0_mu.UIPadding_275.PaddingLeft = UDim.new(0,3)
	echo_v0_2_0_mu.UIPadding_275.PaddingTop = UDim.new(0,4)

	echo_v0_2_0_mu.UIListLayout_75.Parent = echo_v0_2_0_mu.infoholder_15
	echo_v0_2_0_mu.UIListLayout_75.SortOrder = Enum.SortOrder.Name

	-- echo-v0.1.1-patch
	local echo_v0_1_1_patch = {
		infoholder_14 = Instance.new("Frame"),
		B_infoversiondescription_14 = Instance.new("TextLabel"),
		UIPadding_264 = Instance.new("UIPadding"),
		A_infoversiontitle_14 = Instance.new("TextLabel"),
		UIPadding_274 = Instance.new("UIPadding"),
		UIListLayout_74 = Instance.new("UIListLayout"),
	}

	echo_v0_1_1_patch.infoholder_14.Name = "infoholder"
	echo_v0_1_1_patch.infoholder_14.Parent = infoscroll_1
	echo_v0_1_1_patch.infoholder_14.AutomaticSize = Enum.AutomaticSize.Y
	echo_v0_1_1_patch.infoholder_14.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_1_1_patch.infoholder_14.BackgroundTransparency = 1
	echo_v0_1_1_patch.infoholder_14.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_1_1_patch.infoholder_14.BorderSizePixel = 0
	echo_v0_1_1_patch.infoholder_14.Size = UDim2.new(0, 157, 0, 30)

	echo_v0_1_1_patch.B_infoversiondescription_14.Name = "B_infoversiondescription"
	echo_v0_1_1_patch.B_infoversiondescription_14.Parent = echo_v0_1_1_patch.infoholder_14
	echo_v0_1_1_patch.B_infoversiondescription_14.AutomaticSize = Enum.AutomaticSize.Y
	echo_v0_1_1_patch.B_infoversiondescription_14.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_1_1_patch.B_infoversiondescription_14.BackgroundTransparency = 1
	echo_v0_1_1_patch.B_infoversiondescription_14.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_1_1_patch.B_infoversiondescription_14.BorderSizePixel = 0
	echo_v0_1_1_patch.B_infoversiondescription_14.Size = UDim2.new(0, 149, 0, 12)
	echo_v0_1_1_patch.B_infoversiondescription_14.Font = Enum.Font.GothamBold
	echo_v0_1_1_patch.B_infoversiondescription_14.Text = "This update adds new features, introduces more improvements, and includes essential bug fixes for an even smoother and more engaging experience."
	echo_v0_1_1_patch.B_infoversiondescription_14.TextColor3 = Color3.fromRGB(100,175,175)
	echo_v0_1_1_patch.B_infoversiondescription_14.TextSize = 10
	echo_v0_1_1_patch.B_infoversiondescription_14.TextWrapped = true
	echo_v0_1_1_patch.B_infoversiondescription_14.TextXAlignment = Enum.TextXAlignment.Left
	echo_v0_1_1_patch.B_infoversiondescription_14.TextYAlignment = Enum.TextYAlignment.Top

	echo_v0_1_1_patch.UIPadding_264.Parent = echo_v0_1_1_patch.B_infoversiondescription_14
	echo_v0_1_1_patch.UIPadding_264.PaddingLeft = UDim.new(0,3)

	echo_v0_1_1_patch.A_infoversiontitle_14.Name = "A_infoversiontitle"
	echo_v0_1_1_patch.A_infoversiontitle_14.Parent = echo_v0_1_1_patch.infoholder_14
	echo_v0_1_1_patch.A_infoversiontitle_14.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_1_1_patch.A_infoversiontitle_14.BackgroundTransparency = 1
	echo_v0_1_1_patch.A_infoversiontitle_14.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_1_1_patch.A_infoversiontitle_14.BorderSizePixel = 0
	echo_v0_1_1_patch.A_infoversiontitle_14.Size = UDim2.new(0, 149, 0, 17)
	echo_v0_1_1_patch.A_infoversiontitle_14.Font = Enum.Font.GothamBold
	echo_v0_1_1_patch.A_infoversiontitle_14.Text = "echo-v0.1.1-patch"
	echo_v0_1_1_patch.A_infoversiontitle_14.TextColor3 = Color3.fromRGB(255,255,255)
	echo_v0_1_1_patch.A_infoversiontitle_14.TextSize = 12
	echo_v0_1_1_patch.A_infoversiontitle_14.TextXAlignment = Enum.TextXAlignment.Left
	echo_v0_1_1_patch.A_infoversiontitle_14.TextYAlignment = Enum.TextYAlignment.Top

	echo_v0_1_1_patch.UIPadding_274.Parent = echo_v0_1_1_patch.A_infoversiontitle_14
	echo_v0_1_1_patch.UIPadding_274.PaddingLeft = UDim.new(0,3)
	echo_v0_1_1_patch.UIPadding_274.PaddingTop = UDim.new(0,4)

	echo_v0_1_1_patch.UIListLayout_74.Parent = echo_v0_1_1_patch.infoholder_14
	echo_v0_1_1_patch.UIListLayout_74.SortOrder = Enum.SortOrder.Name

	-- echo-v0.1.0-init
	local echo_v0_1_0_init = {
		infoholder_13 = Instance.new("Frame"),
		B_infoversiondescription_13 = Instance.new("TextLabel"),
		UIPadding_263 = Instance.new("UIPadding"),
		A_infoversiontitle_13 = Instance.new("TextLabel"),
		UIPadding_273 = Instance.new("UIPadding"),
		UIListLayout_73 = Instance.new("UIListLayout"),
	}

	echo_v0_1_0_init.infoholder_13.Name = "infoholder"
	echo_v0_1_0_init.infoholder_13.Parent = infoscroll_1
	echo_v0_1_0_init.infoholder_13.AutomaticSize = Enum.AutomaticSize.Y
	echo_v0_1_0_init.infoholder_13.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_1_0_init.infoholder_13.BackgroundTransparency = 1
	echo_v0_1_0_init.infoholder_13.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_1_0_init.infoholder_13.BorderSizePixel = 0
	echo_v0_1_0_init.infoholder_13.Size = UDim2.new(0, 157, 0, 30)

	echo_v0_1_0_init.B_infoversiondescription_13.Name = "B_infoversiondescription"
	echo_v0_1_0_init.B_infoversiondescription_13.Parent = echo_v0_1_0_init.infoholder_13
	echo_v0_1_0_init.B_infoversiondescription_13.AutomaticSize = Enum.AutomaticSize.Y
	echo_v0_1_0_init.B_infoversiondescription_13.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_1_0_init.B_infoversiondescription_13.BackgroundTransparency = 1
	echo_v0_1_0_init.B_infoversiondescription_13.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_1_0_init.B_infoversiondescription_13.BorderSizePixel = 0
	echo_v0_1_0_init.B_infoversiondescription_13.Size = UDim2.new(0, 149, 0, 12)
	echo_v0_1_0_init.B_infoversiondescription_13.Font = Enum.Font.GothamBold
	echo_v0_1_0_init.B_infoversiondescription_13.Text = "This update introduces the first (fully) scripted game, with essential bug fixes and optimizations for a smoother experience."
	echo_v0_1_0_init.B_infoversiondescription_13.TextColor3 = Color3.fromRGB(100,175,175)
	echo_v0_1_0_init.B_infoversiondescription_13.TextSize = 10
	echo_v0_1_0_init.B_infoversiondescription_13.TextWrapped = true
	echo_v0_1_0_init.B_infoversiondescription_13.TextXAlignment = Enum.TextXAlignment.Left
	echo_v0_1_0_init.B_infoversiondescription_13.TextYAlignment = Enum.TextYAlignment.Top

	echo_v0_1_0_init.UIPadding_263.Parent = echo_v0_1_0_init.B_infoversiondescription_13
	echo_v0_1_0_init.UIPadding_263.PaddingLeft = UDim.new(0,3)

	echo_v0_1_0_init.A_infoversiontitle_13.Name = "A_infoversiontitle"
	echo_v0_1_0_init.A_infoversiontitle_13.Parent = echo_v0_1_0_init.infoholder_13
	echo_v0_1_0_init.A_infoversiontitle_13.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_1_0_init.A_infoversiontitle_13.BackgroundTransparency = 1
	echo_v0_1_0_init.A_infoversiontitle_13.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_1_0_init.A_infoversiontitle_13.BorderSizePixel = 0
	echo_v0_1_0_init.A_infoversiontitle_13.Size = UDim2.new(0, 149, 0, 17)
	echo_v0_1_0_init.A_infoversiontitle_13.Font = Enum.Font.GothamBold
	echo_v0_1_0_init.A_infoversiontitle_13.Text = "echo-v0.1.0-init"
	echo_v0_1_0_init.A_infoversiontitle_13.TextColor3 = Color3.fromRGB(255,255,255)
	echo_v0_1_0_init.A_infoversiontitle_13.TextSize = 12
	echo_v0_1_0_init.A_infoversiontitle_13.TextXAlignment = Enum.TextXAlignment.Left
	echo_v0_1_0_init.A_infoversiontitle_13.TextYAlignment = Enum.TextYAlignment.Top

	echo_v0_1_0_init.UIPadding_273.Parent = echo_v0_1_0_init.A_infoversiontitle_13
	echo_v0_1_0_init.UIPadding_273.PaddingLeft = UDim.new(0,3)
	echo_v0_1_0_init.UIPadding_273.PaddingTop = UDim.new(0,4)

	echo_v0_1_0_init.UIListLayout_73.Parent = echo_v0_1_0_init.infoholder_13
	echo_v0_1_0_init.UIListLayout_73.SortOrder = Enum.SortOrder.Name

	-- echo-v0.0.1-patch
	local echo_v0_0_1_patch = {
		infoholder_12 = Instance.new("Frame"),
		B_infoversiondescription_12 = Instance.new("TextLabel"),
		UIPadding_262 = Instance.new("UIPadding"),
		A_infoversiontitle_12 = Instance.new("TextLabel"),
		UIPadding_272 = Instance.new("UIPadding"),
		UIListLayout_72 = Instance.new("UIListLayout"),
	}

	echo_v0_0_1_patch.infoholder_12.Name = "infoholder"
	echo_v0_0_1_patch.infoholder_12.Parent = infoscroll_1
	echo_v0_0_1_patch.infoholder_12.AutomaticSize = Enum.AutomaticSize.Y
	echo_v0_0_1_patch.infoholder_12.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_0_1_patch.infoholder_12.BackgroundTransparency = 1
	echo_v0_0_1_patch.infoholder_12.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_0_1_patch.infoholder_12.BorderSizePixel = 0
	echo_v0_0_1_patch.infoholder_12.Size = UDim2.new(0, 157, 0, 30)

	echo_v0_0_1_patch.B_infoversiondescription_12.Name = "B_infoversiondescription"
	echo_v0_0_1_patch.B_infoversiondescription_12.Parent = echo_v0_0_1_patch.infoholder_12
	echo_v0_0_1_patch.B_infoversiondescription_12.AutomaticSize = Enum.AutomaticSize.Y
	echo_v0_0_1_patch.B_infoversiondescription_12.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_0_1_patch.B_infoversiondescription_12.BackgroundTransparency = 1
	echo_v0_0_1_patch.B_infoversiondescription_12.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_0_1_patch.B_infoversiondescription_12.BorderSizePixel = 0
	echo_v0_0_1_patch.B_infoversiondescription_12.Size = UDim2.new(0, 149, 0, 12)
	echo_v0_0_1_patch.B_infoversiondescription_12.Font = Enum.Font.GothamBold
	echo_v0_0_1_patch.B_infoversiondescription_12.Text = "A minor update addressing UI inconsistencies and general bug fixes. This patch ensures a smoother user experience while maintaining EchoUI's sleek design."
	echo_v0_0_1_patch.B_infoversiondescription_12.TextColor3 = Color3.fromRGB(100,175,175)
	echo_v0_0_1_patch.B_infoversiondescription_12.TextSize = 10
	echo_v0_0_1_patch.B_infoversiondescription_12.TextWrapped = true
	echo_v0_0_1_patch.B_infoversiondescription_12.TextXAlignment = Enum.TextXAlignment.Left
	echo_v0_0_1_patch.B_infoversiondescription_12.TextYAlignment = Enum.TextYAlignment.Top

	echo_v0_0_1_patch.UIPadding_262.Parent = echo_v0_0_1_patch.B_infoversiondescription_12
	echo_v0_0_1_patch.UIPadding_262.PaddingLeft = UDim.new(0,3)

	echo_v0_0_1_patch.A_infoversiontitle_12.Name = "A_infoversiontitle"
	echo_v0_0_1_patch.A_infoversiontitle_12.Parent = echo_v0_0_1_patch.infoholder_12
	echo_v0_0_1_patch.A_infoversiontitle_12.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_0_1_patch.A_infoversiontitle_12.BackgroundTransparency = 1
	echo_v0_0_1_patch.A_infoversiontitle_12.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_0_1_patch.A_infoversiontitle_12.BorderSizePixel = 0
	echo_v0_0_1_patch.A_infoversiontitle_12.Size = UDim2.new(0, 149, 0, 17)
	echo_v0_0_1_patch.A_infoversiontitle_12.Font = Enum.Font.GothamBold
	echo_v0_0_1_patch.A_infoversiontitle_12.Text = "echo-v0.0.1-patch"
	echo_v0_0_1_patch.A_infoversiontitle_12.TextColor3 = Color3.fromRGB(255,255,255)
	echo_v0_0_1_patch.A_infoversiontitle_12.TextSize = 12
	echo_v0_0_1_patch.A_infoversiontitle_12.TextXAlignment = Enum.TextXAlignment.Left
	echo_v0_0_1_patch.A_infoversiontitle_12.TextYAlignment = Enum.TextYAlignment.Top

	echo_v0_0_1_patch.UIPadding_272.Parent = echo_v0_0_1_patch.A_infoversiontitle_12
	echo_v0_0_1_patch.UIPadding_272.PaddingLeft = UDim.new(0,3)
	echo_v0_0_1_patch.UIPadding_272.PaddingTop = UDim.new(0,4)

	echo_v0_0_1_patch.UIListLayout_72.Parent = echo_v0_0_1_patch.infoholder_12
	echo_v0_0_1_patch.UIListLayout_72.SortOrder = Enum.SortOrder.Name

	-- echo-v0.0.1-beta
	local echo_v0_0_1_beta = {
		infoholder_1 = Instance.new("Frame"),
		B_infoversiondescription_1 = Instance.new("TextLabel"),
		UIPadding_26 = Instance.new("UIPadding"),
		A_infoversiontitle_1 = Instance.new("TextLabel"),
		UIPadding_27 = Instance.new("UIPadding"),
		UIListLayout_7 = Instance.new("UIListLayout"),
	}

	echo_v0_0_1_beta.infoholder_1.Name = "infoholder"
	echo_v0_0_1_beta.infoholder_1.Parent = infoscroll_1
	echo_v0_0_1_beta.infoholder_1.AutomaticSize = Enum.AutomaticSize.Y
	echo_v0_0_1_beta.infoholder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_0_1_beta.infoholder_1.BackgroundTransparency = 1
	echo_v0_0_1_beta.infoholder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_0_1_beta.infoholder_1.BorderSizePixel = 0
	echo_v0_0_1_beta.infoholder_1.Size = UDim2.new(0, 157, 0, 30)

	echo_v0_0_1_beta.B_infoversiondescription_1.Name = "B_infoversiondescription"
	echo_v0_0_1_beta.B_infoversiondescription_1.Parent = echo_v0_0_1_beta.infoholder_1
	echo_v0_0_1_beta.B_infoversiondescription_1.AutomaticSize = Enum.AutomaticSize.Y
	echo_v0_0_1_beta.B_infoversiondescription_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_0_1_beta.B_infoversiondescription_1.BackgroundTransparency = 1
	echo_v0_0_1_beta.B_infoversiondescription_1.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_0_1_beta.B_infoversiondescription_1.BorderSizePixel = 0
	echo_v0_0_1_beta.B_infoversiondescription_1.Size = UDim2.new(0, 149, 0, 12)
	echo_v0_0_1_beta.B_infoversiondescription_1.Font = Enum.Font.GothamBold
	echo_v0_0_1_beta.B_infoversiondescription_1.Text = "The first beta release of EchoUI, featuring core functionalities and a sleek UI. More improvements and bug fixes to come!"
	echo_v0_0_1_beta.B_infoversiondescription_1.TextColor3 = Color3.fromRGB(100,175,175)
	echo_v0_0_1_beta.B_infoversiondescription_1.TextSize = 10
	echo_v0_0_1_beta.B_infoversiondescription_1.TextWrapped = true
	echo_v0_0_1_beta.B_infoversiondescription_1.TextXAlignment = Enum.TextXAlignment.Left
	echo_v0_0_1_beta.B_infoversiondescription_1.TextYAlignment = Enum.TextYAlignment.Top

	echo_v0_0_1_beta.UIPadding_26.Parent = echo_v0_0_1_beta.B_infoversiondescription_1
	echo_v0_0_1_beta.UIPadding_26.PaddingLeft = UDim.new(0,3)

	echo_v0_0_1_beta.A_infoversiontitle_1.Name = "A_infoversiontitle"
	echo_v0_0_1_beta.A_infoversiontitle_1.Parent = echo_v0_0_1_beta.infoholder_1
	echo_v0_0_1_beta.A_infoversiontitle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	echo_v0_0_1_beta.A_infoversiontitle_1.BackgroundTransparency = 1
	echo_v0_0_1_beta.A_infoversiontitle_1.BorderColor3 = Color3.fromRGB(0,0,0)
	echo_v0_0_1_beta.A_infoversiontitle_1.BorderSizePixel = 0
	echo_v0_0_1_beta.A_infoversiontitle_1.Size = UDim2.new(0, 149, 0, 17)
	echo_v0_0_1_beta.A_infoversiontitle_1.Font = Enum.Font.GothamBold
	echo_v0_0_1_beta.A_infoversiontitle_1.Text = "echo-v0.0.1-beta"
	echo_v0_0_1_beta.A_infoversiontitle_1.TextColor3 = Color3.fromRGB(255,255,255)
	echo_v0_0_1_beta.A_infoversiontitle_1.TextSize = 12
	echo_v0_0_1_beta.A_infoversiontitle_1.TextXAlignment = Enum.TextXAlignment.Left
	echo_v0_0_1_beta.A_infoversiontitle_1.TextYAlignment = Enum.TextYAlignment.Top

	echo_v0_0_1_beta.UIPadding_27.Parent = echo_v0_0_1_beta.A_infoversiontitle_1
	echo_v0_0_1_beta.UIPadding_27.PaddingLeft = UDim.new(0,3)
	echo_v0_0_1_beta.UIPadding_27.PaddingTop = UDim.new(0,4)

	echo_v0_0_1_beta.UIListLayout_7.Parent = echo_v0_0_1_beta.infoholder_1
	echo_v0_0_1_beta.UIListLayout_7.SortOrder = Enum.SortOrder.Name

	local uitoggleholder_1 = Instance.new("Frame")
	local uitoggle_1 = Instance.new("ImageButton")
	local UICorner_12 = Instance.new("UICorner")
	local UIStroke_8 = Instance.new("UIStroke")

	uitoggleholder_1.Name = "uitoggleholder"
	uitoggleholder_1.Parent = Echo
	uitoggleholder_1.AnchorPoint = Vector2.new(0.5, 0.5)
	uitoggleholder_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	uitoggleholder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	uitoggleholder_1.BorderSizePixel = 0
	uitoggleholder_1.Position = UDim2.new(0.5, 0,-0.3, 0)
	uitoggleholder_1.Size = UDim2.new(0, 35,0, 35)

	uitoggle_1.Name = "uitoggle"
	uitoggle_1.Parent = uitoggleholder_1
	uitoggle_1.Active = true
	uitoggle_1.AnchorPoint = Vector2.new(0.5, 0.5)
	uitoggle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	uitoggle_1.BackgroundTransparency = 1
	uitoggle_1.BorderColor3 = Color3.fromRGB(0,0,0)
	uitoggle_1.BorderSizePixel = 0
	uitoggle_1.Position = UDim2.new(0.5, 0,0.5, 0)
	uitoggle_1.Size = UDim2.new(0, 20,0, 20)
	uitoggle_1.Image = "rbxassetid://128575501543687"
	uitoggle_1.ImageColor3 = Color3.fromRGB(100,175,175)

	UICorner_12.Parent = uitoggleholder_1
	UICorner_12.CornerRadius = UDim.new(0,6)

	UIStroke_8.Parent = uitoggleholder_1
	UIStroke_8.Color = Color3.fromRGB(100,175,175)
	UIStroke_8.Thickness = 1
	UIStroke_8.Transparency = 0.8
	
	uitoggle_1.MouseButton1Click:Connect(function()
		local tweenInfo = TweenInfo.new(
			0.6,
			Enum.EasingStyle.Back,
			Enum.EasingDirection.Out
		)

		local goal = { Position = UDim2.new(0.5, 0, 0.5, 0) }

		local tween = TweenService:Create(main_1, tweenInfo, goal)

		tween:Play()

		dragging = false
		lastGoalPos = nil
		startPos = nil
		
		local tweenInfo2 = TweenInfo.new(
			0.6,
			Enum.EasingStyle.Back,
			Enum.EasingDirection.Out
		)

		local goal2 = { Position = UDim2.new(0.5, 0,-0.3, 0) }

		local tween2 = TweenService:Create(uitoggleholder_1, tweenInfo2, goal2)
		
		tween2:Play()
	end)

	topbar_closeimage_1.MouseButton1Click:Connect(function()
		local tweenInfo = TweenInfo.new(
			0.6,
			Enum.EasingStyle.Back,
			Enum.EasingDirection.Out
		)

		local goal = { Position = UDim2.new(0.5, 0, 2.5, 0) }

		local tween = TweenService:Create(main_1, tweenInfo, goal)
		
		tween:Play()

		dragging = false
		lastGoalPos = nil
		startPos = nil

		wait(1.5)
		
		game.CoreGui:FindFirstChild("Echo"):Destroy()
	end)
	
	
	
	
	topbar_minimizeimage_1.MouseButton1Click:Connect(function()
		local tweenInfo = TweenInfo.new(
			0.6,
			Enum.EasingStyle.Back,
			Enum.EasingDirection.Out
		)

		local goal = { Position = UDim2.new(0.5, 0, 2.5, 0) }

		local tween = TweenService:Create(main_1, tweenInfo, goal)
		
		tween:Play()

		dragging = false
		lastGoalPos = nil
		startPos = nil
		
		local tweenInfo2 = TweenInfo.new(
			0.6,
			Enum.EasingStyle.Back,
			Enum.EasingDirection.Out
		)

		local goal2 = { Position = UDim2.new(0.5, 0,0.007, 0) }

		local tween2 = TweenService:Create(uitoggleholder_1, tweenInfo2, goal2)

		tween2:Play()
	end)
	
	wait(1.5)
	
	local tweenInfoUIToggle = TweenInfo.new(
		0.6,
		Enum.EasingStyle.Back,
		Enum.EasingDirection.Out
	)
	local goaluitoggle = { Position = UDim2.new(0.5, 0,0.007, 0) }
	local tweenuitoggle = TweenService:Create(uitoggleholder_1, tweenInfoUIToggle, goaluitoggle)
	tweenuitoggle:Play()
	
	local tabframe_4 = Instance.new("Frame")
	local tabimage_4 = Instance.new("ImageLabel")
	local tabtext_4 = Instance.new("TextButton")
	local UIPadding_6 = Instance.new("UIPadding")
	local tabindicator_4 = Instance.new("ImageLabel")
	local home_1 = Instance.new("Frame")
	local playerinfo_1 = Instance.new("Frame")
	local UICorner_9 = Instance.new("UICorner")
	local UIStroke_6 = Instance.new("UIStroke")
	local message_one_1 = Instance.new("TextLabel")
	local UIPadding_25 = Instance.new("UIPadding")
	local message_two_1 = Instance.new("TextLabel")
	local UIPadding_26 = Instance.new("UIPadding")
	local message_three_1 = Instance.new("TextLabel")
	local UIPadding_27 = Instance.new("UIPadding")
	local message_four_1 = Instance.new("TextLabel")
	local UIPadding_28 = Instance.new("UIPadding")
	local profileframe_1 = Instance.new("Frame")
	local UICorner_10 = Instance.new("UICorner")
	local UIStroke_7 = Instance.new("UIStroke")
	local profileimage_1 = Instance.new("ImageLabel")
	local UICorner_11 = Instance.new("UICorner")
	local playersettings_1 = Instance.new("Frame")
	local UICorner_12 = Instance.new("UICorner")
	local playerwalkspeed_1 = Instance.new("Frame")
	local walkspeedtitle_1 = Instance.new("TextLabel")
	local UIPadding_29 = Instance.new("UIPadding")
	local playerwalkspeedholder_1 = Instance.new("Frame")
	local UIStroke_8 = Instance.new("UIStroke")
	local UICorner_13 = Instance.new("UICorner")
	local playerwalkspeedbutton_1 = Instance.new("TextButton")
	local playerwalkspeedinner_1 = Instance.new("Frame")
	local UICorner_14 = Instance.new("UICorner")
	local walkspeedamount_1 = Instance.new("TextLabel")
	local UIPadding_30 = Instance.new("UIPadding")
	local walkspeedimage_1 = Instance.new("ImageLabel")
	local UIStroke_9 = Instance.new("UIStroke")
	local UIListLayout_6 = Instance.new("UIListLayout")
	local playerjumppower_1 = Instance.new("Frame")
	local jumppowertitle_1 = Instance.new("TextLabel")
	local UIPadding_31 = Instance.new("UIPadding")
	local playerjumppowerholder_1 = Instance.new("Frame")
	local UIStroke_10 = Instance.new("UIStroke")
	local UICorner_15 = Instance.new("UICorner")
	local playerjumppowerbutton_1 = Instance.new("TextButton")
	local playerjumppowerinner_1 = Instance.new("Frame")
	local UICorner_16 = Instance.new("UICorner")
	local jumppoweramount_1 = Instance.new("TextLabel")
	local UIPadding_32 = Instance.new("UIPadding")
	local jumppowerimage_1 = Instance.new("ImageLabel")
	local playergravity_1 = Instance.new("Frame")
	local gravitytitle_1 = Instance.new("TextLabel")
	local UIPadding_33 = Instance.new("UIPadding")
	local playergravityholder_1 = Instance.new("Frame")
	local UIStroke_11 = Instance.new("UIStroke")
	local UICorner_17 = Instance.new("UICorner")
	local playergravitybutton_1 = Instance.new("TextButton")
	local playergravityinner_1 = Instance.new("Frame")
	local UICorner_18 = Instance.new("UICorner")
	local gravityamount_1 = Instance.new("TextLabel")
	local UIPadding_34 = Instance.new("UIPadding")
	local gravityimage_1 = Instance.new("ImageLabel")
	local UIPadding_35 = Instance.new("UIPadding")
	local miscellaneous_1 = Instance.new("Frame")
	local UICorner_19 = Instance.new("UICorner")
	local UIStroke_12 = Instance.new("UIStroke")
	local miscinfo_1 = Instance.new("TextLabel")
	local UIPadding_36 = Instance.new("UIPadding")
	local discordframe_1 = Instance.new("Frame")
	local UICorner_20 = Instance.new("UICorner")
	local UIStroke_13 = Instance.new("UIStroke")
	local discordbutton_1 = Instance.new("ImageButton")
	local githubframe_1 = Instance.new("Frame")
	local UICorner_21 = Instance.new("UICorner")
	local UIStroke_14 = Instance.new("UIStroke")
	local githubbutton_1 = Instance.new("ImageButton")
	local youtubeframe_1 = Instance.new("Frame")
	local UICorner_22 = Instance.new("UICorner")
	local UIStroke_15 = Instance.new("UIStroke")
	local youtubebutton_1 = Instance.new("ImageButton")

	tabframe_4.Name = "tabframe"
	tabframe_4.Parent = tabs_1
	tabframe_4.BackgroundColor3 = Color3.fromRGB(255,255,255)
	tabframe_4.BackgroundTransparency = 1
	tabframe_4.BorderColor3 = Color3.fromRGB(0,0,0)
	tabframe_4.BorderSizePixel = 0
	tabframe_4.LayoutOrder = -1
	tabframe_4.Size = UDim2.new(0, 127,0, 19)

	tabimage_4.Name = "tabimage"
	tabimage_4.Parent = tabframe_4
	tabimage_4.AnchorPoint = Vector2.new(0, 0.5)
	tabimage_4.BackgroundColor3 = Color3.fromRGB(255,255,255)
	tabimage_4.BackgroundTransparency = 1
	tabimage_4.BorderColor3 = Color3.fromRGB(0,0,0)
	tabimage_4.BorderSizePixel = 0
	tabimage_4.Position = UDim2.new(0, 21,0.5, 0)
	tabimage_4.Size = UDim2.new(0, 12,0, 12)
	tabimage_4.Image = "rbxassetid://82103535118938"
	tabimage_4.ImageColor3 = Color3.fromRGB(100,175,175)

	tabtext_4.Name = "tabtext"
	tabtext_4.Parent = tabframe_4
	tabtext_4.BackgroundColor3 = Color3.fromRGB(255,255,255)
	tabtext_4.BackgroundTransparency = 1
	tabtext_4.BorderColor3 = Color3.fromRGB(0,0,0)
	tabtext_4.BorderSizePixel = 0
	tabtext_4.Size = UDim2.new(0, 127,0, 19)
	tabtext_4.Font = Enum.Font.GothamBold
	tabtext_4.Text = "Overview"
	tabtext_4.TextColor3 = Color3.fromRGB(255,255,255)
	tabtext_4.TextSize = 11
	tabtext_4.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_6.Parent = tabtext_4
	UIPadding_6.PaddingLeft = UDim.new(0,38)

	tabindicator_4.Name = "tabindicator"
	tabindicator_4.Parent = tabframe_4
	tabindicator_4.AnchorPoint = Vector2.new(0, 0.5)
	tabindicator_4.BackgroundColor3 = Color3.fromRGB(255,255,255)
	tabindicator_4.BackgroundTransparency = 1
	tabindicator_4.BorderColor3 = Color3.fromRGB(0,0,0)
	tabindicator_4.BorderSizePixel = 0
	tabindicator_4.Position = UDim2.new(0, 7,0.5, 0)
	tabindicator_4.Rotation = -90
	tabindicator_4.Size = UDim2.new(0, 10,0, 10)
	tabindicator_4.Image = "rbxassetid://87661321742619"
	tabindicator_4.ImageColor3 = Color3.fromRGB(100,175,175)

	home_1.Name = "home"
	home_1.Parent = elementsholder_1
	home_1.AnchorPoint = Vector2.new(0.5, 0.5)
	home_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	home_1.BackgroundTransparency = 1
	home_1.BorderColor3 = Color3.fromRGB(0,0,0)
	home_1.BorderSizePixel = 0
	home_1.Position = UDim2.new(0.496, 0,0.495, 0)
	home_1.Size = UDim2.new(0, 423,0, 234)

	playerinfo_1.Name = "playerinfo"
	playerinfo_1.Parent = home_1
	playerinfo_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	playerinfo_1.BorderColor3 = Color3.fromRGB(0,0,0)
	playerinfo_1.BorderSizePixel = 0
	playerinfo_1.Size = UDim2.new(0, 291,0, 96)

	UICorner_9.Parent = playerinfo_1
	UICorner_9.CornerRadius = UDim.new(0,4)

	UIStroke_6.Parent = playerinfo_1
	UIStroke_6.Color = Color3.fromRGB(100,175,175)
	UIStroke_6.Thickness = 1
	UIStroke_6.Transparency = 0.8

	message_one_1.Name = "message_one"
	message_one_1.Parent = playerinfo_1
	message_one_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	message_one_1.BackgroundTransparency = 1
	message_one_1.BorderColor3 = Color3.fromRGB(0,0,0)
	message_one_1.BorderSizePixel = 0
	message_one_1.Position = UDim2.new(0, 0,0.00552082062, 0)
	message_one_1.Size = UDim2.new(0, 291,0, 30)
	message_one_1.Font = Enum.Font.GothamBold
	message_one_1.RichText = true
	message_one_1.Text = string.format('<font color="rgb(255, 255, 255)">Welcome, </font><font color="rgb(100, 175, 175)">%s</font><font color="rgb(100, 175, 175)">!</font>', game.Players.LocalPlayer.DisplayName)
	message_one_1.TextColor3 = Color3.fromRGB(255,255,255)
	message_one_1.TextSize = 16
	message_one_1.TextXAlignment = Enum.TextXAlignment.Left
	message_one_1.TextYAlignment = Enum.TextYAlignment.Top

	UIPadding_25.Parent = message_one_1
	UIPadding_25.PaddingLeft = UDim.new(0,10)
	UIPadding_25.PaddingTop = UDim.new(0,10)

	message_two_1.Name = "message_two"
	message_two_1.Parent = playerinfo_1
	message_two_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	message_two_1.BackgroundTransparency = 1
	message_two_1.BorderColor3 = Color3.fromRGB(0,0,0)
	message_two_1.BorderSizePixel = 0
	message_two_1.Position = UDim2.new(0, 0,0.469000012, 0)
	message_two_1.Size = UDim2.new(0, 291,0, 33)
	message_two_1.Font = Enum.Font.GothamBold
	message_two_1.RichText = true
	message_two_1.Text = string.format('<font color="rgb(100, 175, 175)">User: </font><font color="rgb(255, 255, 255)">%s</font>', game.Players.LocalPlayer.Name)
	message_two_1.TextColor3 = Color3.fromRGB(100,175,175)
	message_two_1.TextSize = 13
	message_two_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_26.Parent = message_two_1
	UIPadding_26.PaddingLeft = UDim.new(0,72)

	message_three_1.Name = "message_three"
	message_three_1.Parent = playerinfo_1
	message_three_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	message_three_1.BackgroundTransparency = 1
	message_three_1.BorderColor3 = Color3.fromRGB(0,0,0)
	message_three_1.BorderSizePixel = 0
	message_three_1.Position = UDim2.new(0, 0,0.270999998, 0)
	message_three_1.Size = UDim2.new(0, 291,0, 33)
	message_three_1.Font = Enum.Font.GothamBold
	message_three_1.RichText = true
	message_three_1.Text = string.format('<font color="rgb(100, 175, 175)">ID: </font><font color="rgb(255, 255, 255)">%s</font>', game.Players.LocalPlayer.UserId)
	message_three_1.TextColor3 = Color3.fromRGB(100,175,175)
	message_three_1.TextSize = 13
	message_three_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_27.Parent = message_three_1
	UIPadding_27.PaddingLeft = UDim.new(0,72)

	message_four_1.Name = "message_four"
	message_four_1.Parent = playerinfo_1
	message_four_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	message_four_1.BackgroundTransparency = 1
	message_four_1.BorderColor3 = Color3.fromRGB(0,0,0)
	message_four_1.BorderSizePixel = 0
	message_four_1.Position = UDim2.new(0, 0,0.666665733, 0)
	message_four_1.Size = UDim2.new(0, 291,0, 33)
	message_four_1.Font = Enum.Font.GothamBold
	message_four_1.RichText = true
	message_four_1.Text = '<font color="rgb(100, 175, 175)">Premium: </font><font color="rgb(255, 255, 255)">Inactive</font>'
	message_four_1.TextColor3 = Color3.fromRGB(100,175,175)
	message_four_1.TextSize = 13
	message_four_1.TextXAlignment = Enum.TextXAlignment.Left

	if premium then
		message_four_1.Text = '<font color="rgb(100, 175, 175)">Premium: </font><font color="rgb(255, 255, 255)">Active</font>'
	else
		message_four_1.Text = '<font color="rgb(100, 175, 175)">Premium: </font><font color="rgb(255, 255, 255)">Inactive</font>'
	end

	UIPadding_28.Parent = message_four_1
	UIPadding_28.PaddingLeft = UDim.new(0,72)

	profileframe_1.Name = "profileframe"
	profileframe_1.Parent = playerinfo_1
	profileframe_1.BackgroundColor3 = Color3.fromRGB(29,37,39)
	profileframe_1.BorderColor3 = Color3.fromRGB(0,0,0)
	profileframe_1.BorderSizePixel = 0
	profileframe_1.Position = UDim2.new(0.0299999993, 0,0.349999994, 0)
	profileframe_1.Size = UDim2.new(0, 55,0, 55)

	UICorner_10.Parent = profileframe_1
	UICorner_10.CornerRadius = UDim.new(0,4)

	UIStroke_7.Parent = profileframe_1
	UIStroke_7.Color = Color3.fromRGB(100,175,175)
	UIStroke_7.Thickness = 1
	UIStroke_7.Transparency = 0.8

	profileimage_1.Name = "profileimage"
	profileimage_1.Parent = profileframe_1
	profileimage_1.AnchorPoint = Vector2.new(0.5, 0.5)
	profileimage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	profileimage_1.BackgroundTransparency = 1
	profileimage_1.BorderColor3 = Color3.fromRGB(0,0,0)
	profileimage_1.BorderSizePixel = 0
	profileimage_1.Position = UDim2.new(0.5, 0,0.5, 0)
	profileimage_1.Size = UDim2.new(0, 55,0, 55)
	profileimage_1.Image = game:GetService("Players"):GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)

	UICorner_11.Parent = profileimage_1
	UICorner_11.CornerRadius = UDim.new(0,4)

	playersettings_1.Name = "playersettings"
	playersettings_1.Parent = home_1
	playersettings_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	playersettings_1.BorderColor3 = Color3.fromRGB(0,0,0)
	playersettings_1.BorderSizePixel = 0
	playersettings_1.Position = UDim2.new(0, 0,0.440170825, 0)
	playersettings_1.Size = UDim2.new(0, 291,0, 131)

	UICorner_12.Parent = playersettings_1
	UICorner_12.CornerRadius = UDim.new(0,4)

	playerwalkspeed_1.Name = "playerwalkspeed"
	playerwalkspeed_1.Parent = playersettings_1
	playerwalkspeed_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	playerwalkspeed_1.BackgroundTransparency = 1
	playerwalkspeed_1.BorderColor3 = Color3.fromRGB(0,0,0)
	playerwalkspeed_1.BorderSizePixel = 0
	playerwalkspeed_1.Size = UDim2.new(0, 291,0, 40)

	walkspeedtitle_1.Name = "walkspeedtitle"
	walkspeedtitle_1.Parent = playerwalkspeed_1
	walkspeedtitle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	walkspeedtitle_1.BackgroundTransparency = 1
	walkspeedtitle_1.BorderColor3 = Color3.fromRGB(0,0,0)
	walkspeedtitle_1.BorderSizePixel = 0
	walkspeedtitle_1.Size = UDim2.new(0, 221,0, 23)
	walkspeedtitle_1.Font = Enum.Font.GothamBold
	walkspeedtitle_1.Text = "Adjust Walk Speed"
	walkspeedtitle_1.TextColor3 = Color3.fromRGB(255,255,255)
	walkspeedtitle_1.TextSize = 12
	walkspeedtitle_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_29.Parent = walkspeedtitle_1
	UIPadding_29.PaddingLeft = UDim.new(0,26)
	UIPadding_29.PaddingTop = UDim.new(0,2)

	playerwalkspeedholder_1.Name = "playerwalkspeedholder"
	playerwalkspeedholder_1.Parent = playerwalkspeed_1
	playerwalkspeedholder_1.BackgroundColor3 = Color3.fromRGB(29,37,39)
	playerwalkspeedholder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	playerwalkspeedholder_1.BorderSizePixel = 0
	playerwalkspeedholder_1.Position = UDim2.new(0.0299999993, 0,0.600000024, 0)
	playerwalkspeedholder_1.Size = UDim2.new(0, 275,0, 7)

	UIStroke_8.Parent = playerwalkspeedholder_1
	UIStroke_8.Color = Color3.fromRGB(100,175,175)
	UIStroke_8.Thickness = 1
	UIStroke_8.Transparency = 0.8

	UICorner_13.Parent = playerwalkspeedholder_1
	UICorner_13.CornerRadius = UDim.new(0,4)

	playerwalkspeedbutton_1.Name = "playerwalkspeedbutton"
	playerwalkspeedbutton_1.Parent = playerwalkspeedholder_1
	playerwalkspeedbutton_1.Active = true
	playerwalkspeedbutton_1.AnchorPoint = Vector2.new(0.5, 0.5)
	playerwalkspeedbutton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	playerwalkspeedbutton_1.BackgroundTransparency = 1
	playerwalkspeedbutton_1.BorderColor3 = Color3.fromRGB(0,0,0)
	playerwalkspeedbutton_1.BorderSizePixel = 0
	playerwalkspeedbutton_1.Position = UDim2.new(0.5, 0,0.5, 0)
	playerwalkspeedbutton_1.Size = UDim2.new(0, 275,0, 7)
	playerwalkspeedbutton_1.Font = Enum.Font.SourceSans
	playerwalkspeedbutton_1.Text = ""
	playerwalkspeedbutton_1.TextSize = 14

	playerwalkspeedinner_1.Name = "playerwalkspeedinner"
	playerwalkspeedinner_1.Parent = playerwalkspeedbutton_1
	playerwalkspeedinner_1.BackgroundColor3 = Color3.fromRGB(100,175,175)
	playerwalkspeedinner_1.BorderColor3 = Color3.fromRGB(0,0,0)
	playerwalkspeedinner_1.BorderSizePixel = 0
	playerwalkspeedinner_1.Size = UDim2.new(0, 0,0, 7)

	UICorner_14.Parent = playerwalkspeedinner_1
	UICorner_14.CornerRadius = UDim.new(0,4)

	walkspeedamount_1.Name = "walkspeedamount"
	walkspeedamount_1.Parent = playerwalkspeed_1
	walkspeedamount_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	walkspeedamount_1.BackgroundTransparency = 1
	walkspeedamount_1.BorderColor3 = Color3.fromRGB(0,0,0)
	walkspeedamount_1.BorderSizePixel = 0
	walkspeedamount_1.Position = UDim2.new(0.760522366, 0,0, 0)
	walkspeedamount_1.Size = UDim2.new(0, 69,0, 23)
	walkspeedamount_1.Font = Enum.Font.GothamBold
	walkspeedamount_1.Text = "0"
	walkspeedamount_1.TextColor3 = Color3.fromRGB(100,175,175)
	walkspeedamount_1.TextSize = 12
	walkspeedamount_1.TextXAlignment = Enum.TextXAlignment.Right

	UIPadding_30.Parent = walkspeedamount_1
	UIPadding_30.PaddingRight = UDim.new(0,9)
	UIPadding_30.PaddingTop = UDim.new(0,2)

	walkspeedimage_1.Name = "walkspeedimage"
	walkspeedimage_1.Parent = playerwalkspeed_1
	walkspeedimage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	walkspeedimage_1.BackgroundTransparency = 1
	walkspeedimage_1.BorderColor3 = Color3.fromRGB(0,0,0)
	walkspeedimage_1.BorderSizePixel = 0
	walkspeedimage_1.Position = UDim2.new(0.0270000007, 0,0.127000004, 0)
	walkspeedimage_1.Size = UDim2.new(0, 13,0, 13)
	walkspeedimage_1.Image = "rbxassetid://111541538168189"
	walkspeedimage_1.ImageColor3 = Color3.fromRGB(100,175,175)

	local isDragging = false
	playerwalkspeedbutton_1.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			isDragging = true
		end
	end)

	game:GetService("UserInputService").InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			isDragging = false
		end
	end)

	game:GetService("RunService").RenderStepped:Connect(function()
		if isDragging then
			local mousePosition = game:GetService("UserInputService"):GetMouseLocation()
			local sliderPosition = playerwalkspeedbutton_1.AbsolutePosition
			local sliderWidth = playerwalkspeedbutton_1.AbsoluteSize.X
			local fillWidth = math.clamp(mousePosition.X - sliderPosition.X, 0, sliderWidth)
			playerwalkspeedinner_1.Size = UDim2.new(0, fillWidth, 1, 0)
			local value = fillWidth / sliderWidth
			local displayValue = 0 + (250 - 0) * value
			walkspeedamount_1.Text = tostring(math.floor(displayValue + 0.5))
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = math.floor(displayValue + 0.5)
		end
	end)

	UIStroke_9.Parent = playersettings_1
	UIStroke_9.Color = Color3.fromRGB(100,175,175)
	UIStroke_9.Thickness = 1
	UIStroke_9.Transparency = 0.8
	
	UIListLayout_6.Parent = playersettings_1
	UIListLayout_6.Padding = UDim.new(0,4)
	UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder

	playerjumppower_1.Name = "playerjumppower"
	playerjumppower_1.Parent = playersettings_1
	playerjumppower_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	playerjumppower_1.BackgroundTransparency = 1
	playerjumppower_1.BorderColor3 = Color3.fromRGB(0,0,0)
	playerjumppower_1.BorderSizePixel = 0
	playerjumppower_1.Size = UDim2.new(0, 291,0, 40)

	jumppowertitle_1.Name = "jumppowertitle"
	jumppowertitle_1.Parent = playerjumppower_1
	jumppowertitle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	jumppowertitle_1.BackgroundTransparency = 1
	jumppowertitle_1.BorderColor3 = Color3.fromRGB(0,0,0)
	jumppowertitle_1.BorderSizePixel = 0
	jumppowertitle_1.Size = UDim2.new(0, 221,0, 23)
	jumppowertitle_1.Font = Enum.Font.GothamBold
	jumppowertitle_1.Text = "Adjust Jump Power"
	jumppowertitle_1.TextColor3 = Color3.fromRGB(255,255,255)
	jumppowertitle_1.TextSize = 12
	jumppowertitle_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_31.Parent = jumppowertitle_1
	UIPadding_31.PaddingLeft = UDim.new(0,26)
	UIPadding_31.PaddingTop = UDim.new(0,2)

	playerjumppowerholder_1.Name = "playerjumppowerholder"
	playerjumppowerholder_1.Parent = playerjumppower_1
	playerjumppowerholder_1.BackgroundColor3 = Color3.fromRGB(29,37,39)
	playerjumppowerholder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	playerjumppowerholder_1.BorderSizePixel = 0
	playerjumppowerholder_1.Position = UDim2.new(0.0299999993, 0,0.600000024, 0)
	playerjumppowerholder_1.Size = UDim2.new(0, 275,0, 7)

	UIStroke_10.Parent = playerjumppowerholder_1
	UIStroke_10.Color = Color3.fromRGB(100,175,175)
	UIStroke_10.Thickness = 1
	UIStroke_10.Transparency = 0.8

	UICorner_15.Parent = playerjumppowerholder_1
	UICorner_15.CornerRadius = UDim.new(0,4)

	playerjumppowerbutton_1.Name = "playerjumppowerbutton"
	playerjumppowerbutton_1.Parent = playerjumppowerholder_1
	playerjumppowerbutton_1.Active = true
	playerjumppowerbutton_1.AnchorPoint = Vector2.new(0.5, 0.5)
	playerjumppowerbutton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	playerjumppowerbutton_1.BackgroundTransparency = 1
	playerjumppowerbutton_1.BorderColor3 = Color3.fromRGB(0,0,0)
	playerjumppowerbutton_1.BorderSizePixel = 0
	playerjumppowerbutton_1.Position = UDim2.new(0.5, 0,0.5, 0)
	playerjumppowerbutton_1.Size = UDim2.new(0, 275,0, 7)
	playerjumppowerbutton_1.Font = Enum.Font.SourceSans
	playerjumppowerbutton_1.Text = ""
	playerjumppowerbutton_1.TextSize = 14

	playerjumppowerinner_1.Name = "playerjumppowerinner"
	playerjumppowerinner_1.Parent = playerjumppowerbutton_1
	playerjumppowerinner_1.BackgroundColor3 = Color3.fromRGB(100,175,175)
	playerjumppowerinner_1.BorderColor3 = Color3.fromRGB(0,0,0)
	playerjumppowerinner_1.BorderSizePixel = 0
	playerjumppowerinner_1.Size = UDim2.new(0, 0,0, 7)

	UICorner_16.Parent = playerjumppowerinner_1
	UICorner_16.CornerRadius = UDim.new(0,4)

	jumppoweramount_1.Name = "jumppoweramount"
	jumppoweramount_1.Parent = playerjumppower_1
	jumppoweramount_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	jumppoweramount_1.BackgroundTransparency = 1
	jumppoweramount_1.BorderColor3 = Color3.fromRGB(0,0,0)
	jumppoweramount_1.BorderSizePixel = 0
	jumppoweramount_1.Position = UDim2.new(0.760522366, 0,0, 0)
	jumppoweramount_1.Size = UDim2.new(0, 69,0, 23)
	jumppoweramount_1.Font = Enum.Font.GothamBold
	jumppoweramount_1.Text = "0"
	jumppoweramount_1.TextColor3 = Color3.fromRGB(100,175,175)
	jumppoweramount_1.TextSize = 12
	jumppoweramount_1.TextXAlignment = Enum.TextXAlignment.Right

	UIPadding_32.Parent = jumppoweramount_1
	UIPadding_32.PaddingRight = UDim.new(0,9)
	UIPadding_32.PaddingTop = UDim.new(0,2)

	jumppowerimage_1.Name = "jumppowerimage"
	jumppowerimage_1.Parent = playerjumppower_1
	jumppowerimage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	jumppowerimage_1.BackgroundTransparency = 1
	jumppowerimage_1.BorderColor3 = Color3.fromRGB(0,0,0)
	jumppowerimage_1.BorderSizePixel = 0
	jumppowerimage_1.Position = UDim2.new(0.0270000007, 0,0.127000004, 0)
	jumppowerimage_1.Size = UDim2.new(0, 13,0, 13)
	jumppowerimage_1.Image = "rbxassetid://118112241978378"
	jumppowerimage_1.ImageColor3 = Color3.fromRGB(100,175,175)

	local isDragging = false
	playerjumppowerbutton_1.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			isDragging = true
		end
	end)

	game:GetService("UserInputService").InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			isDragging = false
		end
	end)

	game:GetService("RunService").RenderStepped:Connect(function()
		if isDragging then
			local mousePosition = game:GetService("UserInputService"):GetMouseLocation()
			local sliderPosition = playerjumppowerbutton_1.AbsolutePosition
			local sliderWidth = playerjumppowerbutton_1.AbsoluteSize.X
			local fillWidth = math.clamp(mousePosition.X - sliderPosition.X, 0, sliderWidth)
			playerjumppowerinner_1.Size = UDim2.new(0, fillWidth, 1, 0)
			local value = fillWidth / sliderWidth
			local displayValue = 0 + (150 - 0) * value
			jumppoweramount_1.Text = tostring(math.floor(displayValue + 0.5))
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = math.floor(displayValue + 0.5)
		end
	end)
	
	playergravity_1.Name = "playergravity"
	playergravity_1.Parent = playersettings_1
	playergravity_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	playergravity_1.BackgroundTransparency = 1
	playergravity_1.BorderColor3 = Color3.fromRGB(0,0,0)
	playergravity_1.BorderSizePixel = 0
	playergravity_1.Size = UDim2.new(0, 291,0, 40)

	gravitytitle_1.Name = "gravitytitle"
	gravitytitle_1.Parent = playergravity_1
	gravitytitle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	gravitytitle_1.BackgroundTransparency = 1
	gravitytitle_1.BorderColor3 = Color3.fromRGB(0,0,0)
	gravitytitle_1.BorderSizePixel = 0
	gravitytitle_1.Size = UDim2.new(0, 221,0, 23)
	gravitytitle_1.Font = Enum.Font.GothamBold
	gravitytitle_1.Text = "Adjust Gravity"
	gravitytitle_1.TextColor3 = Color3.fromRGB(255,255,255)
	gravitytitle_1.TextSize = 12
	gravitytitle_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_33.Parent = gravitytitle_1
	UIPadding_33.PaddingLeft = UDim.new(0,26)
	UIPadding_33.PaddingTop = UDim.new(0,2)

	playergravityholder_1.Name = "playergravityholder"
	playergravityholder_1.Parent = playergravity_1
	playergravityholder_1.BackgroundColor3 = Color3.fromRGB(29,37,39)
	playergravityholder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	playergravityholder_1.BorderSizePixel = 0
	playergravityholder_1.Position = UDim2.new(0.0299999993, 0,0.600000024, 0)
	playergravityholder_1.Size = UDim2.new(0, 275,0, 7)

	UIStroke_11.Parent = playergravityholder_1
	UIStroke_11.Color = Color3.fromRGB(100,175,175)
	UIStroke_11.Thickness = 1
	UIStroke_11.Transparency = 0.8
	
	UICorner_17.Parent = playergravityholder_1
	UICorner_17.CornerRadius = UDim.new(0,4)

	playergravitybutton_1.Name = "playergravitybutton"
	playergravitybutton_1.Parent = playergravityholder_1
	playergravitybutton_1.Active = true
	playergravitybutton_1.AnchorPoint = Vector2.new(0.5, 0.5)
	playergravitybutton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	playergravitybutton_1.BackgroundTransparency = 1
	playergravitybutton_1.BorderColor3 = Color3.fromRGB(0,0,0)
	playergravitybutton_1.BorderSizePixel = 0
	playergravitybutton_1.Position = UDim2.new(0.5, 0,0.5, 0)
	playergravitybutton_1.Size = UDim2.new(0, 275,0, 7)
	playergravitybutton_1.Font = Enum.Font.SourceSans
	playergravitybutton_1.Text = ""
	playergravitybutton_1.TextSize = 14

	playergravityinner_1.Name = "playergravityinner"
	playergravityinner_1.Parent = playergravitybutton_1
	playergravityinner_1.BackgroundColor3 = Color3.fromRGB(100,175,175)
	playergravityinner_1.BorderColor3 = Color3.fromRGB(0,0,0)
	playergravityinner_1.BorderSizePixel = 0
	playergravityinner_1.Size = UDim2.new(0, 0,0, 7)

	UICorner_18.Parent = playergravityinner_1
	UICorner_18.CornerRadius = UDim.new(0,4)

	gravityamount_1.Name = "gravityamount"
	gravityamount_1.Parent = playergravity_1
	gravityamount_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	gravityamount_1.BackgroundTransparency = 1
	gravityamount_1.BorderColor3 = Color3.fromRGB(0,0,0)
	gravityamount_1.BorderSizePixel = 0
	gravityamount_1.Position = UDim2.new(0.760522366, 0,0, 0)
	gravityamount_1.Size = UDim2.new(0, 69,0, 23)
	gravityamount_1.Font = Enum.Font.GothamBold
	gravityamount_1.Text = "0"
	gravityamount_1.TextColor3 = Color3.fromRGB(100,175,175)
	gravityamount_1.TextSize = 12
	gravityamount_1.TextXAlignment = Enum.TextXAlignment.Right

	UIPadding_34.Parent = gravityamount_1
	UIPadding_34.PaddingRight = UDim.new(0,9)
	UIPadding_34.PaddingTop = UDim.new(0,2)

	gravityimage_1.Name = "gravityimage"
	gravityimage_1.Parent = playergravity_1
	gravityimage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	gravityimage_1.BackgroundTransparency = 1
	gravityimage_1.BorderColor3 = Color3.fromRGB(0,0,0)
	gravityimage_1.BorderSizePixel = 0
	gravityimage_1.Position = UDim2.new(0.0270000007, 0,0.127000004, 0)
	gravityimage_1.Size = UDim2.new(0, 13,0, 13)
	gravityimage_1.Image = "rbxassetid://112060840141692"
	gravityimage_1.ImageColor3 = Color3.fromRGB(100,175,175)

	local isDragging = false
	playergravitybutton_1.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			isDragging = true
		end
	end)

	game:GetService("UserInputService").InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			isDragging = false
		end
	end)

	game:GetService("RunService").RenderStepped:Connect(function()
		if isDragging then
			local mousePosition = game:GetService("UserInputService"):GetMouseLocation()
			local sliderPosition = playergravitybutton_1.AbsolutePosition
			local sliderWidth = playergravitybutton_1.AbsoluteSize.X
			local fillWidth = math.clamp(mousePosition.X - sliderPosition.X, 0, sliderWidth)
			playergravityinner_1.Size = UDim2.new(0, fillWidth, 1, 0)
			local value = fillWidth / sliderWidth
			local displayValue = 0 + (350 - 0) * value
			gravityamount_1.Text = tostring(math.floor(displayValue + 0.5))
			workspace.Gravity = math.floor(displayValue + 0.5)
		end
	end)

	UIPadding_35.Parent = playersettings_1
	UIPadding_35.PaddingTop = UDim.new(0,4)

	miscellaneous_1.Name = "miscellaneous"
	miscellaneous_1.Parent = home_1
	miscellaneous_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	miscellaneous_1.BorderColor3 = Color3.fromRGB(0,0,0)
	miscellaneous_1.BorderSizePixel = 0
	miscellaneous_1.Position = UDim2.new(0.703999996, 0,2.60834014e-07, 0)
	miscellaneous_1.Size = UDim2.new(0, 126,0, 192)

	UICorner_19.Parent = miscellaneous_1
	UICorner_19.CornerRadius = UDim.new(0,4)

	UIStroke_12.Parent = miscellaneous_1
	UIStroke_12.Color = Color3.fromRGB(100,175,175)
	UIStroke_12.Thickness = 1
	UIStroke_12.Transparency = 0.8

	miscinfo_1.Name = "miscinfo"
	miscinfo_1.Parent = miscellaneous_1
	miscinfo_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	miscinfo_1.BackgroundTransparency = 1
	miscinfo_1.BorderColor3 = Color3.fromRGB(0,0,0)
	miscinfo_1.BorderSizePixel = 0
	miscinfo_1.Position = UDim2.new(0, 0,4.76837158e-07, 0)
	miscinfo_1.Size = UDim2.new(0, 126,0, 192)
	miscinfo_1.Font = Enum.Font.GothamBold
	miscinfo_1.RichText = true
	miscinfo_1.Text = "Welcome to EchoUI!\n\nExplore the features we offer to enhance your exploiting experience. If you have any questions or need assistance, feel free to reach out.\n\nThank you for choosing EchoUI!"
	miscinfo_1.TextColor3 = Color3.fromRGB(255,255,255)
	miscinfo_1.TextSize = 12
	miscinfo_1.TextWrapped = true
	miscinfo_1.TextXAlignment = Enum.TextXAlignment.Left
	miscinfo_1.TextYAlignment = Enum.TextYAlignment.Top

	UIPadding_36.Parent = miscinfo_1
	UIPadding_36.PaddingLeft = UDim.new(0,7)
	UIPadding_36.PaddingRight = UDim.new(0,7)
	UIPadding_36.PaddingTop = UDim.new(0,6)

	discordframe_1.Name = "discordframe"
	discordframe_1.Parent = home_1
	discordframe_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	discordframe_1.BorderColor3 = Color3.fromRGB(0,0,0)
	discordframe_1.BorderSizePixel = 0
	discordframe_1.Position = UDim2.new(0.703999996, 0,0.850427747, 0)
	discordframe_1.Size = UDim2.new(0, 38,0, 35)

	UICorner_20.Parent = discordframe_1
	UICorner_20.CornerRadius = UDim.new(0,4)

	UIStroke_13.Parent = discordframe_1
	UIStroke_13.Color = Color3.fromRGB(100,175,175)
	UIStroke_13.Thickness = 1
	UIStroke_13.Transparency = 0.8

	discordbutton_1.Name = "discordbutton"
	discordbutton_1.Parent = discordframe_1
	discordbutton_1.Active = true
	discordbutton_1.AnchorPoint = Vector2.new(0.5, 0.5)
	discordbutton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	discordbutton_1.BackgroundTransparency = 1
	discordbutton_1.BorderColor3 = Color3.fromRGB(0,0,0)
	discordbutton_1.BorderSizePixel = 0
	discordbutton_1.Position = UDim2.new(0.5, 0,0.5, 0)
	discordbutton_1.Size = UDim2.new(0, 25,0, 25)
	discordbutton_1.Image = "rbxassetid://136704674291484"
	discordbutton_1.ImageColor3 = Color3.fromRGB(100,175,175)

	discordbutton_1.MouseButton1Click:Connect(function()
		local textToImageTween = TweenService:Create(
			discordbutton_1, 
			TweenInfo.new(0.1), 
			{ImageColor3 = Color3.fromRGB(78, 136, 136)}
		)
		textToImageTween:Play()

		textToImageTween.Completed:Connect(function()
			local imageToTextTween = TweenService:Create(
				discordbutton_1, 
				TweenInfo.new(0.2), 
				{ImageColor3 = Color3.fromRGB(100,175,175)}
			)
			imageToTextTween:Play()
		end)
		setclipboard("https://discord.gg/ERV")
	end)

	githubframe_1.Name = "githubframe"
	githubframe_1.Parent = home_1
	githubframe_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	githubframe_1.BorderColor3 = Color3.fromRGB(0,0,0)
	githubframe_1.BorderSizePixel = 0
	githubframe_1.Position = UDim2.new(0.808, 0,0.850000024, 0)
	githubframe_1.Size = UDim2.new(0, 38,0, 35)

	UICorner_21.Parent = githubframe_1
	UICorner_21.CornerRadius = UDim.new(0,4)

	UIStroke_14.Parent = githubframe_1
	UIStroke_14.Color = Color3.fromRGB(100,175,175)
	UIStroke_14.Thickness = 1
	UIStroke_14.Transparency = 0.8

	githubbutton_1.Name = "githubbutton"
	githubbutton_1.Parent = githubframe_1
	githubbutton_1.Active = true
	githubbutton_1.AnchorPoint = Vector2.new(0.5, 0.5)
	githubbutton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	githubbutton_1.BackgroundTransparency = 1
	githubbutton_1.BorderColor3 = Color3.fromRGB(0,0,0)
	githubbutton_1.BorderSizePixel = 0
	githubbutton_1.Position = UDim2.new(0.5, 0,0.5, 0)
	githubbutton_1.Size = UDim2.new(0, 25,0, 25)
	githubbutton_1.Image = "rbxassetid://95584678068739"
	githubbutton_1.ImageColor3 = Color3.fromRGB(100,175,175)

	githubbutton_1.MouseButton1Click:Connect(function()
		local textToImageTween = TweenService:Create(
			githubbutton_1, 
			TweenInfo.new(0.1), 
			{ImageColor3 = Color3.fromRGB(78, 136, 136)}
		)
		textToImageTween:Play()

		textToImageTween.Completed:Connect(function()
			local imageToTextTween = TweenService:Create(
				githubbutton_1, 
				TweenInfo.new(0.2), 
				{ImageColor3 = Color3.fromRGB(100,175,175)}
			)
			imageToTextTween:Play()
		end)
		setclipboard("https://www.roblox.com/communities/35486597")
	end)
	
	youtubeframe_1.Name = "youtubeframe"
	youtubeframe_1.Parent = home_1
	youtubeframe_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
	youtubeframe_1.BorderColor3 = Color3.fromRGB(0,0,0)
	youtubeframe_1.BorderSizePixel = 0
	youtubeframe_1.Position = UDim2.new(0.912, 0,0.850000024, 0)
	youtubeframe_1.Size = UDim2.new(0, 38,0, 35)

	UICorner_22.Parent = youtubeframe_1
	UICorner_22.CornerRadius = UDim.new(0,4)

	UIStroke_15.Parent = youtubeframe_1
	UIStroke_15.Color = Color3.fromRGB(100,175,175)
	UIStroke_15.Thickness = 1
	UIStroke_15.Transparency = 0.8

	youtubebutton_1.Name = "youtubebutton"
	youtubebutton_1.Parent = youtubeframe_1
	youtubebutton_1.Active = true
	youtubebutton_1.AnchorPoint = Vector2.new(0.5, 0.5)
	youtubebutton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	youtubebutton_1.BackgroundTransparency = 1
	youtubebutton_1.BorderColor3 = Color3.fromRGB(0,0,0)
	youtubebutton_1.BorderSizePixel = 0
	youtubebutton_1.Position = UDim2.new(0.5, 0,0.5, 0)
	youtubebutton_1.Size = UDim2.new(0, 25,0, 25)
	youtubebutton_1.Image = "rbxassetid://135137307038819"
	youtubebutton_1.ImageColor3 = Color3.fromRGB(100,175,175)
	
	youtubebutton_1.MouseButton1Click:Connect(function()
		local textToImageTween = TweenService:Create(
			youtubebutton_1, 
			TweenInfo.new(0.1), 
			{ImageColor3 = Color3.fromRGB(78, 136, 136)}
		)
		textToImageTween:Play()

		textToImageTween.Completed:Connect(function()
			local imageToTextTween = TweenService:Create(
				youtubebutton_1, 
				TweenInfo.new(0.2), 
				{ImageColor3 = Color3.fromRGB(100,175,175)}
			)
			imageToTextTween:Play()
		end)
		setclipboard("https://ervcommunity.com")
	end)
	
	local Tabs = {}
	local first = true
	local currentTab = nil
	local currentTabIndicator = nil 
	function Tabs:AddTab(Title, Icon)
		
		local tabframe_1 = Instance.new("Frame")
		local tabimage_1 = Instance.new("ImageLabel")
		local tabtext_1 = Instance.new("TextButton")
		local UIPadding_3 = Instance.new("UIPadding")
		local tabindicator_1 = Instance.new("ImageLabel")
		local elements_1 = Instance.new("Frame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local UIPadding_23 = Instance.new("UIPadding")
		
		tabframe_1.Name = "tabframe"
		tabframe_1.Parent = tabs_1
		tabframe_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		tabframe_1.BackgroundTransparency = 1
		tabframe_1.BorderColor3 = Color3.fromRGB(0,0,0)
		tabframe_1.BorderSizePixel = 0
		tabframe_1.Size = UDim2.new(0, 127,0, 19)

		tabimage_1.Name = "tabimage"
		tabimage_1.Parent = tabframe_1
		tabimage_1.AnchorPoint = Vector2.new(0, 0.5)
		tabimage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		tabimage_1.BackgroundTransparency = 1
		tabimage_1.BorderColor3 = Color3.fromRGB(0,0,0)
		tabimage_1.BorderSizePixel = 0
		tabimage_1.Position = UDim2.new(0, 21,0.5, 0)
		tabimage_1.Size = UDim2.new(0, 12,0, 12)
		tabimage_1.Image = "rbxassetid://"..Icon
		tabimage_1.ImageColor3 = Color3.fromRGB(100,175,175)

		tabtext_1.Name = "tabtext"
		tabtext_1.Parent = tabframe_1
		tabtext_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		tabtext_1.BackgroundTransparency = 1
		tabtext_1.BorderColor3 = Color3.fromRGB(0,0,0)
		tabtext_1.BorderSizePixel = 0
		tabtext_1.Size = UDim2.new(0, 127,0, 19)
		tabtext_1.Font = Enum.Font.GothamBold
		tabtext_1.Text = Title
		tabtext_1.TextColor3 = Color3.fromRGB(255,255,255)
		tabtext_1.TextSize = 11
		tabtext_1.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding_3.Parent = tabtext_1
		UIPadding_3.PaddingLeft = UDim.new(0,38)

		tabindicator_1.Name = "tabindicator"
		tabindicator_1.Parent = tabframe_1
		tabindicator_1.AnchorPoint = Vector2.new(0, 0.5)
		tabindicator_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		tabindicator_1.BackgroundTransparency = 1
		tabindicator_1.BorderColor3 = Color3.fromRGB(0,0,0)
		tabindicator_1.BorderSizePixel = 0
		tabindicator_1.Position = UDim2.new(0, 7,0.5, 0)
		tabindicator_1.Rotation = -90
		tabindicator_1.Size = UDim2.new(0, 10,0, 10)
		tabindicator_1.Image = "rbxassetid://87661321742619"
		tabindicator_1.ImageColor3 = Color3.fromRGB(100,175,175)
		tabindicator_1.ImageTransparency = 1

		elements_1.Name = "elements"
		elements_1.Parent = elementsholder_1
		elements_1.AnchorPoint = Vector2.new(0.5, 0.5)
		elements_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		elements_1.BackgroundTransparency = 1
		elements_1.BorderColor3 = Color3.fromRGB(0,0,0)
		elements_1.BorderSizePixel = 0
		elements_1.Position = UDim2.new(0.5, 0,0.5, 0)
		elements_1.Size = UDim2.new(0, 430,0, 240)

		UIListLayout_2.Parent = elements_1
		UIListLayout_2.Padding = UDim.new(0,8)
		UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		
		UIPadding_23.Parent = elements_1
		UIPadding_23.PaddingLeft = UDim.new(0,2)
		UIPadding_23.PaddingTop = UDim.new(0,2)
		
		if first then
			first = false
			elements_1.Visible = false
			home_1.Visible = true
			currentTab = tabtext_4
			currentTabIndicator = tabindicator_4
			tabindicator_4.ImageTransparency = 0
			topbar_tablogo_1.Image = tabimage_4.Image
			topbar_tabtitle_1.Text = tabtext_4.Text
		else
			elements_1.Visible = false
			home_1.Visible = true
		end
		
		tabtext_4.MouseButton1Click:Connect(function()
			if currentTab == tabtext_4 then
				return
			end

			if currentTabIndicator then
				local deactivateTween = TweenService:Create(
					currentTabIndicator, 
					TweenInfo.new(0.3), 
					{ImageTransparency = 1}
				)
				deactivateTween:Play()
			end

			local activateTween = TweenService:Create(
				tabindicator_4, 
				TweenInfo.new(0.3), 
				{ImageTransparency = 0}
			)
			activateTween:Play()

			currentTab = tabtext_4
			currentTabIndicator = tabindicator_4

			topbar_tablogo_1.Image = tabimage_4.Image
			topbar_tabtitle_1.Text = tabtext_4.Text

			for i, v in next, elementsholder_1:GetChildren() do
				v.Visible = false
			end

			elements_1.Visible = false
			home_1.Visible = true
		end)
		
		tabtext_1.MouseButton1Click:Connect(function()
			if currentTab == tabtext_1 then
				return
			end

			if currentTabIndicator then
				local deactivateTween = TweenService:Create(
					currentTabIndicator, 
					TweenInfo.new(0.3), 
					{ImageTransparency = 1}
				)
				deactivateTween:Play()
			end

			local activateTween = TweenService:Create(
				tabindicator_1, 
				TweenInfo.new(0.3), 
				{ImageTransparency = 0}
			)
			activateTween:Play()

			currentTab = tabtext_1
			currentTabIndicator = tabindicator_1

			topbar_tablogo_1.Image = tabimage_1.Image
			topbar_tabtitle_1.Text = tabtext_1.Text

			for i, v in next, elementsholder_1:GetChildren() do
				v.Visible = false
			end

			home_1.Visible = false
			elements_1.Visible = true
		end)
		
		local Sections = {}
		function Sections:AddSection()
			
			local section_1 = Instance.new("Frame")
			local UIStroke_2 = Instance.new("UIStroke")
			local UICorner_4 = Instance.new("UICorner")
			local items_1 = Instance.new("ScrollingFrame")
			local UIPadding_8 = Instance.new("UIPadding")
			local UIListLayout_3 = Instance.new("UIListLayout")
			
			section_1.Name = "section"
			section_1.Parent = elements_1
			section_1.BackgroundColor3 = Color3.fromRGB(38,50,53)
			section_1.BorderColor3 = Color3.fromRGB(0,0,0)
			section_1.BorderSizePixel = 0
			section_1.Size = UDim2.new(0, 208,0, 234)

			UIStroke_2.Parent = section_1
			UIStroke_2.Color = Color3.fromRGB(100,175,175)
			UIStroke_2.Thickness = 1
			UIStroke_2.Transparency = 0.8

			UICorner_4.Parent = section_1
			UICorner_4.CornerRadius = UDim.new(0,4)

			items_1.Name = "items"
			items_1.Parent = section_1
			items_1.Active = true
			items_1.AnchorPoint = Vector2.new(0.5, 0.5)
			items_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			items_1.BackgroundTransparency = 1
			items_1.BorderColor3 = Color3.fromRGB(0,0,0)
			items_1.BorderSizePixel = 0
			items_1.Position = UDim2.new(0.5, 0,0.5, 0)
			items_1.Size = UDim2.new(0, 202,0, 225)
			items_1.ClipsDescendants = true
			items_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
			items_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
			items_1.CanvasPosition = Vector2.new(0, 0)
			items_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
			items_1.ElasticBehavior = Enum.ElasticBehavior.Never
			items_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
			items_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
			items_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
			items_1.ScrollBarImageTransparency = 1
			items_1.ScrollBarThickness = 1
			items_1.ScrollingDirection = Enum.ScrollingDirection.Y
			items_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
			items_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
			items_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right
			
			UIPadding_8.Parent = items_1
			UIPadding_8.PaddingBottom = UDim.new(0,2)
			UIPadding_8.PaddingLeft = UDim.new(0,2)
			UIPadding_8.PaddingTop = UDim.new(0,1)
			
			UIListLayout_3.Parent = items_1
			UIListLayout_3.Padding = UDim.new(0,4)
			UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
			
			local Elements = {}
			function Elements:CreateSection(Title, Description)
				local sectionframe_1 = Instance.new("Frame")
				local sectiontitle_1 = Instance.new("TextLabel")
				local UIPadding_6 = Instance.new("UIPadding")
				local sectiondescription_1 = Instance.new("TextLabel")
				local UIPadding_7 = Instance.new("UIPadding")
				
				sectionframe_1.Name = "sectionframe"
				sectionframe_1.Parent = items_1
				sectionframe_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				sectionframe_1.BackgroundTransparency = 1
				sectionframe_1.BorderColor3 = Color3.fromRGB(0,0,0)
				sectionframe_1.BorderSizePixel = 0
				sectionframe_1.Position = UDim2.new(0, 0,-4.10550371e-07, 0)
				sectionframe_1.Size = UDim2.new(0, 198,0, 30)

				sectiontitle_1.Name = "sectiontitle"
				sectiontitle_1.Parent = sectionframe_1
				sectiontitle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				sectiontitle_1.BackgroundTransparency = 1
				sectiontitle_1.BorderColor3 = Color3.fromRGB(0,0,0)
				sectiontitle_1.BorderSizePixel = 0
				sectiontitle_1.Size = UDim2.new(0, 198,0, 30)
				sectiontitle_1.Font = Enum.Font.GothamBold
				sectiontitle_1.Text = Title
				sectiontitle_1.TextColor3 = Color3.fromRGB(255,255,255)
				sectiontitle_1.TextSize = 12
				sectiontitle_1.TextXAlignment = Enum.TextXAlignment.Left
				sectiontitle_1.TextYAlignment = Enum.TextYAlignment.Top

				UIPadding_6.Parent = sectiontitle_1
				UIPadding_6.PaddingLeft = UDim.new(0,3)
				UIPadding_6.PaddingTop = UDim.new(0,4)

				sectiondescription_1.Name = "sectiondescription"
				sectiondescription_1.Parent = sectionframe_1
				sectiondescription_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				sectiondescription_1.BackgroundTransparency = 1
				sectiondescription_1.BorderColor3 = Color3.fromRGB(0,0,0)
				sectiondescription_1.BorderSizePixel = 0
				sectiondescription_1.Size = UDim2.new(0, 198,0, 30)
				sectiondescription_1.Font = Enum.Font.GothamBold
				sectiondescription_1.Text = Description
				sectiondescription_1.TextColor3 = Color3.fromRGB(100,175,175)
				sectiondescription_1.TextSize = 10
				sectiondescription_1.TextXAlignment = Enum.TextXAlignment.Left
				sectiondescription_1.TextYAlignment = Enum.TextYAlignment.Top

				UIPadding_7.Parent = sectiondescription_1
				UIPadding_7.PaddingLeft = UDim.new(0,3)
				UIPadding_7.PaddingTop = UDim.new(0,17)
			end
			function Elements:CreateLabel(Title)
				local labelframe_1 = Instance.new("Frame")
				local labeltext_1 = Instance.new("TextLabel")
				
				labelframe_1.Name = "labelframe"
				labelframe_1.Parent = items_1
				labelframe_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				labelframe_1.BackgroundTransparency = 1
				labelframe_1.BorderColor3 = Color3.fromRGB(0,0,0)
				labelframe_1.BorderSizePixel = 0
				labelframe_1.Position = UDim2.new(0, 0,0.134528741, 0)
				labelframe_1.Size = UDim2.new(0, 198,0, 15)

				labeltext_1.Name = "labeltext"
				labeltext_1.Parent = labelframe_1
				labeltext_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				labeltext_1.BackgroundTransparency = 1
				labeltext_1.BorderColor3 = Color3.fromRGB(0,0,0)
				labeltext_1.BorderSizePixel = 0
				labeltext_1.Size = UDim2.new(0, 198,0, 15)
				labeltext_1.Font = Enum.Font.GothamBold
				labeltext_1.Text = Title
				labeltext_1.TextColor3 = Color3.fromRGB(100,175,175)
				labeltext_1.TextSize = 10
			end
			function Elements:CreateDynamicLabel(Title)
				local labelframe_12 = Instance.new("Frame")
				local labeltext_12 = Instance.new("TextLabel")
				
				labelframe_12.Name = "labelframe"
				labelframe_12.Parent = items_1
				labelframe_12.BackgroundColor3 = Color3.fromRGB(255,255,255)
				labelframe_12.BackgroundTransparency = 1
				labelframe_12.BorderColor3 = Color3.fromRGB(0,0,0)
				labelframe_12.BorderSizePixel = 0
				labelframe_12.Position = UDim2.new(0, 0, 0.134528741, 0)
				labelframe_12.Size = UDim2.new(0, 198, 0, 15)

				labeltext_12.Name = "labeltext"
				labeltext_12.Parent = labelframe_12
				labeltext_12.BackgroundColor3 = Color3.fromRGB(255,255,255)
				labeltext_12.BackgroundTransparency = 1
				labeltext_12.BorderColor3 = Color3.fromRGB(0,0,0)
				labeltext_12.BorderSizePixel = 0
				labeltext_12.Size = UDim2.new(0, 198, 0, 15)
				labeltext_12.Font = Enum.Font.GothamBold
				labeltext_12.Text = Title
				labeltext_12.TextColor3 = Color3.fromRGB(100,175,175)
				labeltext_12.TextSize = 10

				local dynamicLabel = {}
				dynamicLabel.SetText = function(newText)
					labeltext_12.Text = newText
				end
			
				return dynamicLabel
			end			
			function Elements:CreateButton(Title, Callback)
				local buttonframe_1 = Instance.new("Frame")
				local buttontext_1 = Instance.new("TextButton")
				local UIPadding_12 = Instance.new("UIPadding")
				local buttonimage_1 = Instance.new("ImageLabel")
				
				buttonframe_1.Name = "buttonframe"
				buttonframe_1.Parent = items_1
				buttonframe_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				buttonframe_1.BackgroundTransparency = 1
				buttonframe_1.BorderColor3 = Color3.fromRGB(0,0,0)
				buttonframe_1.BorderSizePixel = 0
				buttonframe_1.Position = UDim2.new(0, 0,0.134528741, 0)
				buttonframe_1.Size = UDim2.new(0, 198,0, 20)

				buttontext_1.Name = "buttontext"
				buttontext_1.Parent = buttonframe_1
				buttontext_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				buttontext_1.BackgroundTransparency = 1
				buttontext_1.BorderColor3 = Color3.fromRGB(0,0,0)
				buttontext_1.BorderSizePixel = 0
				buttontext_1.Size = UDim2.new(0, 198,0, 20)
				buttontext_1.Font = Enum.Font.GothamBold
				buttontext_1.Text = Title
				buttontext_1.TextColor3 = Color3.fromRGB(255,255,255)
				buttontext_1.TextSize = 11
				buttontext_1.TextXAlignment = Enum.TextXAlignment.Left

				UIPadding_12.Parent = buttontext_1
				UIPadding_12.PaddingBottom = UDim.new(0,1)
				UIPadding_12.PaddingLeft = UDim.new(0,25)

				buttonimage_1.Name = "buttonimage"
				buttonimage_1.Parent = buttonframe_1
				buttonimage_1.AnchorPoint = Vector2.new(0, 0.5)
				buttonimage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				buttonimage_1.BackgroundTransparency = 1
				buttonimage_1.BorderColor3 = Color3.fromRGB(0,0,0)
				buttonimage_1.BorderSizePixel = 0
				buttonimage_1.Position = UDim2.new(0, 4,0.5, 0)
				buttonimage_1.Size = UDim2.new(0, 14,0, 14)
				buttonimage_1.Image = "rbxassetid://118334484403274"
				buttonimage_1.ImageColor3 = Color3.fromRGB(100,175,175)
				
				buttontext_1.MouseButton1Click:Connect(function()
					local textToImageTween = TweenService:Create(
						buttontext_1, 
						TweenInfo.new(0.1), 
						{TextColor3 = buttonimage_1.ImageColor3}
					)
					textToImageTween:Play()

					textToImageTween.Completed:Connect(function()
						local imageToTextTween = TweenService:Create(
							buttontext_1, 
							TweenInfo.new(0.2), 
							{TextColor3 = Color3.fromRGB(255,255,255)}
						)
						imageToTextTween:Play()
					end)
					
					Callback()
				end)
			end
			function Elements:CreateToggle(Title, Callback)
				Callback = Callback or function() end
				
				local toggled = false
				local debounce = false
				
				local toggleframe_1 = Instance.new("Frame")
				local togglerholder_1 = Instance.new("Frame")
				local UICorner_5 = Instance.new("UICorner")
				local UIStroke_3 = Instance.new("UIStroke")
				local toggler_1 = Instance.new("TextButton")
				local toggletext_1 = Instance.new("TextLabel")
				local UIPadding_9 = Instance.new("UIPadding")
				
				toggleframe_1.Name = "toggleframe"
				toggleframe_1.Parent = items_1
				toggleframe_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				toggleframe_1.BackgroundTransparency = 1
				toggleframe_1.BorderColor3 = Color3.fromRGB(0,0,0)
				toggleframe_1.BorderSizePixel = 0
				toggleframe_1.Position = UDim2.new(0, 0,0.134528741, 0)
				toggleframe_1.Size = UDim2.new(0, 198,0, 20)

				togglerholder_1.Name = "togglerholder"
				togglerholder_1.Parent = toggleframe_1
				togglerholder_1.AnchorPoint = Vector2.new(0, 0.5)
				togglerholder_1.BackgroundColor3 = Color3.fromRGB(29,37,39)
				togglerholder_1.BorderColor3 = Color3.fromRGB(0,0,0)
				togglerholder_1.BorderSizePixel = 0
				togglerholder_1.Position = UDim2.new(0, 4,0.5, 0)
				togglerholder_1.Size = UDim2.new(0, 13,0, 13)

				UICorner_5.Parent = togglerholder_1
				UICorner_5.CornerRadius = UDim.new(0,4)

				UIStroke_3.Parent = togglerholder_1
				UIStroke_3.Color = Color3.fromRGB(100,175,175)
				UIStroke_3.Thickness = 1
				UIStroke_3.Transparency = 0.8

				toggler_1.Name = "toggler"
				toggler_1.Parent = togglerholder_1
				toggler_1.Active = true
				toggler_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				toggler_1.BackgroundTransparency = 1
				toggler_1.BorderColor3 = Color3.fromRGB(0,0,0)
				toggler_1.BorderSizePixel = 0
				toggler_1.Size = UDim2.new(0, 13,0, 13)
				toggler_1.Font = Enum.Font.SourceSans
				toggler_1.Text = ""
				toggler_1.TextSize = 14

				toggletext_1.Name = "toggletext"
				toggletext_1.Parent = toggleframe_1
				toggletext_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				toggletext_1.BackgroundTransparency = 1
				toggletext_1.BorderColor3 = Color3.fromRGB(0,0,0)
				toggletext_1.BorderSizePixel = 0
				toggletext_1.Size = UDim2.new(0, 198,0, 20)
				toggletext_1.Font = Enum.Font.GothamBold
				toggletext_1.Text = Title
				toggletext_1.TextColor3 = Color3.fromRGB(255,255,255)
				toggletext_1.TextSize = 11
				toggletext_1.TextXAlignment = Enum.TextXAlignment.Left

				UIPadding_9.Parent = toggletext_1
				UIPadding_9.PaddingBottom = UDim.new(0,2)
				UIPadding_9.PaddingLeft = UDim.new(0,25)
				
				toggler_1.MouseButton1Click:Connect(function()
					if debounce == false then
						if toggled == false then
							debounce = true
							local onTween = TweenService:Create(
								togglerholder_1, 
								TweenInfo.new(0.2),
								{BackgroundColor3 = Color3.fromRGB(100, 175, 175)}
							)
							onTween:Play()
							debounce = false
							toggled = true
							pcall(Callback, toggled)
						elseif toggled == true then
							debounce = true
							local offTween = TweenService:Create(
								togglerholder_1, 
								TweenInfo.new(0.2),
								{BackgroundColor3 = Color3.fromRGB(29, 37, 39)}
							)
							offTween:Play()
							debounce = false
							toggled = false
							pcall(Callback, toggled)
						end
					end
				end)
			end
			function Elements:CreateSlider(Title, min, max, Callback)
				local sliderframe_1 = Instance.new("Frame")
				local slidertext_1 = Instance.new("TextLabel")
				local UIPadding_13 = Instance.new("UIPadding")
				local sliderholder_1 = Instance.new("Frame")
				local UICorner_7 = Instance.new("UICorner")
				local UIStroke_5 = Instance.new("UIStroke")
				local sliderbutton_1 = Instance.new("TextButton")
				local sliderinner_1 = Instance.new("Frame")
				local UICorner_8 = Instance.new("UICorner")
				local slidervalue_1 = Instance.new("TextLabel")
				local UIPadding_14 = Instance.new("UIPadding")
				local sliderimage_1 = Instance.new("ImageLabel")
				
				sliderframe_1.Name = "sliderframe"
				sliderframe_1.Parent = items_1
				sliderframe_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				sliderframe_1.BackgroundTransparency = 1
				sliderframe_1.BorderColor3 = Color3.fromRGB(0,0,0)
				sliderframe_1.BorderSizePixel = 0
				sliderframe_1.Position = UDim2.new(0, 0,0.134528741, 0)
				sliderframe_1.Size = UDim2.new(0, 198,0, 20)

				slidertext_1.Name = "slidertext"
				slidertext_1.Parent = sliderframe_1
				slidertext_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				slidertext_1.BackgroundTransparency = 1
				slidertext_1.BorderColor3 = Color3.fromRGB(0,0,0)
				slidertext_1.BorderSizePixel = 0
				slidertext_1.Size = UDim2.new(0, 100,0, 20)
				slidertext_1.Font = Enum.Font.GothamBold
				slidertext_1.Text = Title
				slidertext_1.TextColor3 = Color3.fromRGB(255,255,255)
				slidertext_1.TextSize = 11
				slidertext_1.TextXAlignment = Enum.TextXAlignment.Left

				UIPadding_13.Parent = slidertext_1
				UIPadding_13.PaddingBottom = UDim.new(0,1)
				UIPadding_13.PaddingLeft = UDim.new(0,25)

				sliderholder_1.Name = "sliderholder"
				sliderholder_1.Parent = sliderframe_1
				sliderholder_1.AnchorPoint = Vector2.new(0, 0.5)
				sliderholder_1.BackgroundColor3 = Color3.fromRGB(29,37,39)
				sliderholder_1.BorderColor3 = Color3.fromRGB(0,0,0)
				sliderholder_1.BorderSizePixel = 0
				sliderholder_1.Position = UDim2.new(0.680000007, 0,0.5, 0)
				sliderholder_1.Size = UDim2.new(0, 60,0, 4)

				UICorner_7.Parent = sliderholder_1
				UICorner_7.CornerRadius = UDim.new(0,2)

				UIStroke_5.Parent = sliderholder_1
				UIStroke_5.Color = Color3.fromRGB(100,175,175)
				UIStroke_5.Thickness = 1
				UIStroke_5.Transparency = 0.8

				sliderbutton_1.Name = "sliderbutton"
				sliderbutton_1.Parent = sliderholder_1
				sliderbutton_1.Active = true
				sliderbutton_1.AnchorPoint = Vector2.new(0.5, 0.5)
				sliderbutton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				sliderbutton_1.BackgroundTransparency = 1
				sliderbutton_1.BorderColor3 = Color3.fromRGB(0,0,0)
				sliderbutton_1.BorderSizePixel = 0
				sliderbutton_1.Position = UDim2.new(0.5, 0,0.5, 0)
				sliderbutton_1.Size = UDim2.new(0, 60,0, 4)
				sliderbutton_1.Font = Enum.Font.SourceSans
				sliderbutton_1.Text = ""
				sliderbutton_1.TextSize = 14

				sliderinner_1.Name = "sliderinner"
				sliderinner_1.Parent = sliderbutton_1
				sliderinner_1.BackgroundColor3 = Color3.fromRGB(100,175,175)
				sliderinner_1.BorderColor3 = Color3.fromRGB(0,0,0)
				sliderinner_1.BorderSizePixel = 0
				sliderinner_1.Size = UDim2.new(0, 0,0, 4)

				UICorner_8.Parent = sliderinner_1
				UICorner_8.CornerRadius = UDim.new(0,2)

				slidervalue_1.Name = "slidervalue"
				slidervalue_1.Parent = sliderframe_1
				slidervalue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				slidervalue_1.BackgroundTransparency = 1
				slidervalue_1.BorderColor3 = Color3.fromRGB(0,0,0)
				slidervalue_1.BorderSizePixel = 0
				slidervalue_1.Position = UDim2.new(0.50505048, 0,0, 0)
				slidervalue_1.Size = UDim2.new(0, 34,0, 20)
				slidervalue_1.Font = Enum.Font.GothamBold
				slidervalue_1.Text = "0"
				slidervalue_1.TextColor3 = Color3.fromRGB(100,175,175)
				slidervalue_1.TextSize = 11
				slidervalue_1.TextXAlignment = Enum.TextXAlignment.Right

				UIPadding_14.Parent = slidervalue_1
				UIPadding_14.PaddingBottom = UDim.new(0,2)
				UIPadding_14.PaddingRight = UDim.new(0,5)

				sliderimage_1.Name = "sliderimage"
				sliderimage_1.Parent = sliderframe_1
				sliderimage_1.AnchorPoint = Vector2.new(0, 0.5)
				sliderimage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				sliderimage_1.BackgroundTransparency = 1
				sliderimage_1.BorderColor3 = Color3.fromRGB(0,0,0)
				sliderimage_1.BorderSizePixel = 0
				sliderimage_1.Position = UDim2.new(0, 4,0.5, 0)
				sliderimage_1.Size = UDim2.new(0, 14,0, 14)
				sliderimage_1.Image = "rbxassetid://117604451304270"
				sliderimage_1.ImageColor3 = Color3.fromRGB(100,175,175)
				
				local isDragging = false
				sliderbutton_1.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
						isDragging = true
					end
				end)

				game:GetService("UserInputService").InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
						isDragging = false
					end
				end)

				game:GetService("RunService").RenderStepped:Connect(function()
					if isDragging then
						local mousePosition = game:GetService("UserInputService"):GetMouseLocation()
						local sliderPosition = sliderbutton_1.AbsolutePosition
						local sliderWidth = sliderbutton_1.AbsoluteSize.X
						local fillWidth = math.clamp(mousePosition.X - sliderPosition.X, 0, sliderWidth)
						sliderinner_1.Size = UDim2.new(0, fillWidth, 1, 0)
						local value = fillWidth / sliderWidth
						local displayValue = min + (max - min) * value
						slidervalue_1.Text = tostring(math.floor(displayValue + 0.5))
						Callback(math.floor(displayValue + 0.5))
					end
				end)
			end
			function Elements:CreateBox(Title, Callback)
				local boxframe_1 = Instance.new("Frame")
				local boximage_1 = Instance.new("ImageLabel")
				local boxtext_1 = Instance.new("TextLabel")
				local UIPadding_15 = Instance.new("UIPadding")
				local box_1 = Instance.new("TextBox")
				local UIPadding_16 = Instance.new("UIPadding")
				
				boxframe_1.Name = "boxframe"
				boxframe_1.Parent = items_1
				boxframe_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				boxframe_1.BackgroundTransparency = 1
				boxframe_1.BorderColor3 = Color3.fromRGB(0,0,0)
				boxframe_1.BorderSizePixel = 0
				boxframe_1.Position = UDim2.new(0, 0,0.134528741, 0)
				boxframe_1.Size = UDim2.new(0, 198,0, 20)

				boximage_1.Name = "boximage"
				boximage_1.Parent = boxframe_1
				boximage_1.AnchorPoint = Vector2.new(0, 0.5)
				boximage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				boximage_1.BackgroundTransparency = 1
				boximage_1.BorderColor3 = Color3.fromRGB(0,0,0)
				boximage_1.BorderSizePixel = 0
				boximage_1.Position = UDim2.new(0, 4,0.5, 0)
				boximage_1.Size = UDim2.new(0, 14,0, 14)
				boximage_1.Image = "rbxassetid://98485588244442"
				boximage_1.ImageColor3 = Color3.fromRGB(100,175,175)

				boxtext_1.Name = "boxtext"
				boxtext_1.Parent = boxframe_1
				boxtext_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				boxtext_1.BackgroundTransparency = 1
				boxtext_1.BorderColor3 = Color3.fromRGB(0,0,0)
				boxtext_1.BorderSizePixel = 0
				boxtext_1.Size = UDim2.new(0, 134,0, 20)
				boxtext_1.Font = Enum.Font.GothamBold
				boxtext_1.Text = Title
				boxtext_1.TextColor3 = Color3.fromRGB(255,255,255)
				boxtext_1.TextSize = 11
				boxtext_1.TextXAlignment = Enum.TextXAlignment.Left

				UIPadding_15.Parent = boxtext_1
				UIPadding_15.PaddingBottom = UDim.new(0,1)
				UIPadding_15.PaddingLeft = UDim.new(0,25)

				box_1.Name = "box"
				box_1.Parent = boxframe_1
				box_1.Active = true
				box_1.AnchorPoint = Vector2.new(0, 0.5)
				box_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				box_1.BackgroundTransparency = 1
				box_1.BorderColor3 = Color3.fromRGB(0,0,0)
				box_1.BorderSizePixel = 0
				box_1.CursorPosition = -1
				box_1.Position = UDim2.new(0.680000067, 0,0.5, 0)
				box_1.Size = UDim2.new(0, 60,0, 15)
				box_1.ClipsDescendants = true
				box_1.Font = Enum.Font.GothamBold
				box_1.PlaceholderColor3 = Color3.fromRGB(100,175,175)
				box_1.PlaceholderText = "..."
				box_1.Text = ""
				box_1.TextColor3 = Color3.fromRGB(100,175,175)
				box_1.TextSize = 11
				box_1.TextXAlignment = Enum.TextXAlignment.Right

				UIPadding_16.Parent = box_1
				UIPadding_16.PaddingBottom = UDim.new(0,1)
				UIPadding_16.PaddingLeft = UDim.new(0,1)
				
				box_1.FocusLost:Connect(function()
					Callback(box_1.Text)
				end)
			end
			function Elements:CreateDropdown(Title, options, Callback)
				local dropdownframe_1 = Instance.new("Frame")
				local A_dropdownholder_1 = Instance.new("Frame")
				local dropdownimage_1 = Instance.new("ImageButton")
				local selectedoptiontext_1 = Instance.new("TextLabel")
				local UIPadding_17 = Instance.new("UIPadding")
				local dropdowntext_1 = Instance.new("TextLabel")
				local UIPadding_18 = Instance.new("UIPadding")
				local UIListLayout_4 = Instance.new("UIListLayout")
				local B_dropdownholder_1 = Instance.new("Frame")
				local options_1 = Instance.new("Frame")
				local UIListLayout_5 = Instance.new("UIListLayout")
				local UIPadding_19 = Instance.new("UIPadding")
				
				dropdownframe_1.Name = "dropdownframe"
				dropdownframe_1.Parent = items_1
				dropdownframe_1.AutomaticSize = Enum.AutomaticSize.Y
				dropdownframe_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				dropdownframe_1.BackgroundTransparency = 1
				dropdownframe_1.BorderColor3 = Color3.fromRGB(0,0,0)
				dropdownframe_1.BorderSizePixel = 0
				dropdownframe_1.Position = UDim2.new(0, 0,0.134528741, 0)
				dropdownframe_1.Size = UDim2.new(0, 198,0, 20)

				A_dropdownholder_1.Name = "A_dropdownholder"
				A_dropdownholder_1.Parent = dropdownframe_1
				A_dropdownholder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				A_dropdownholder_1.BackgroundTransparency = 1
				A_dropdownholder_1.BorderColor3 = Color3.fromRGB(0,0,0)
				A_dropdownholder_1.BorderSizePixel = 0
				A_dropdownholder_1.Size = UDim2.new(0, 198,0, 20)

				dropdownimage_1.Name = "dropdownimage"
				dropdownimage_1.Parent = A_dropdownholder_1
				dropdownimage_1.AnchorPoint = Vector2.new(0, 0.5)
				dropdownimage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				dropdownimage_1.BackgroundTransparency = 1
				dropdownimage_1.BorderColor3 = Color3.fromRGB(0,0,0)
				dropdownimage_1.BorderSizePixel = 0
				dropdownimage_1.Position = UDim2.new(0, 4,0.5, 0)
				dropdownimage_1.Size = UDim2.new(0, 14,0, 14)
				dropdownimage_1.Image = "rbxassetid://79413058249356"
				dropdownimage_1.ImageColor3 = Color3.fromRGB(100,175,175)
				dropdownimage_1.Rotation = -90

				selectedoptiontext_1.Name = "selectedoptiontext"
				selectedoptiontext_1.Parent = A_dropdownholder_1
				selectedoptiontext_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				selectedoptiontext_1.BackgroundTransparency = 1
				selectedoptiontext_1.BorderColor3 = Color3.fromRGB(0,0,0)
				selectedoptiontext_1.BorderSizePixel = 0
				selectedoptiontext_1.Position = UDim2.new(0.677, 0,0, 0)
				selectedoptiontext_1.Size = UDim2.new(0, 60,0, 20)
				selectedoptiontext_1.ClipsDescendants = true
				selectedoptiontext_1.Font = Enum.Font.GothamBold
				selectedoptiontext_1.Text = "None"
				selectedoptiontext_1.TextColor3 = Color3.fromRGB(100,175,175)
				selectedoptiontext_1.TextSize = 11
				selectedoptiontext_1.TextXAlignment = Enum.TextXAlignment.Right

				UIPadding_17.Parent = selectedoptiontext_1
				UIPadding_17.PaddingBottom = UDim.new(0,1)

				dropdowntext_1.Name = "dropdowntext"
				dropdowntext_1.Parent = A_dropdownholder_1
				dropdowntext_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				dropdowntext_1.BackgroundTransparency = 1
				dropdowntext_1.BorderColor3 = Color3.fromRGB(0,0,0)
				dropdowntext_1.BorderSizePixel = 0
				dropdowntext_1.Size = UDim2.new(0, 128,0, 20)
				dropdowntext_1.Font = Enum.Font.GothamBold
				dropdowntext_1.Text = Title
				dropdowntext_1.TextColor3 = Color3.fromRGB(255,255,255)
				dropdowntext_1.TextSize = 11
				dropdowntext_1.TextXAlignment = Enum.TextXAlignment.Left

				UIPadding_18.Parent = dropdowntext_1
				UIPadding_18.PaddingBottom = UDim.new(0,1)
				UIPadding_18.PaddingLeft = UDim.new(0,25)

				UIListLayout_4.Parent = dropdownframe_1
				UIListLayout_4.SortOrder = Enum.SortOrder.Name

				B_dropdownholder_1.Name = "B_dropdownholder"
				B_dropdownholder_1.Parent = dropdownframe_1
				B_dropdownholder_1.AutomaticSize = Enum.AutomaticSize.Y
				B_dropdownholder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
				B_dropdownholder_1.BackgroundTransparency = 1
				B_dropdownholder_1.BorderColor3 = Color3.fromRGB(0,0,0)
				B_dropdownholder_1.BorderSizePixel = 0
				B_dropdownholder_1.Size = UDim2.new(0, 198,0, 20)
				B_dropdownholder_1.Visible = false
				
				options_1.Name = "options"
				options_1.Parent = B_dropdownholder_1
				options_1.Active = true
				options_1.AutomaticSize = Enum.AutomaticSize.Y
				options_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				options_1.BackgroundTransparency = 1
				options_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
				options_1.BorderSizePixel = 0
				options_1.Size = UDim2.new(0, 198, 0, 20)
				options_1.ClipsDescendants = false

				UIListLayout_5.Parent = options_1
				UIListLayout_5.Padding = UDim.new(0,6)
				UIListLayout_5.SortOrder = Enum.SortOrder.Name

				UIPadding_19.Parent = options_1
				UIPadding_19.PaddingBottom = UDim.new(0,2)
				UIPadding_19.PaddingLeft = UDim.new(0,6)
				UIPadding_19.PaddingTop = UDim.new(0,2)
				
				local isDropdownOpen = false

				local function ToggleDropdown()
					isDropdownOpen = not isDropdownOpen
					local targetSize = isDropdownOpen and UDim2.new(0, 198,0, 40) or UDim2.new(0, 198,0, 20)
					local targetRotation = isDropdownOpen and 0 or -90
					local sizeTweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
					local sizeTween = TweenService:Create(dropdownframe_1, sizeTweenInfo, { Size = targetSize })
					local rotationTweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
					local rotationTween = TweenService:Create(dropdownimage_1, rotationTweenInfo, { Rotation = targetRotation })
					if isDropdownOpen then
						sizeTween:Play()
						rotationTween:Play()
						sizeTween.Completed:Wait()
						B_dropdownholder_1.Visible = true
					else
						B_dropdownholder_1.Visible = false
						sizeTween:Play()
						rotationTween:Play()
					end
				end

				dropdownimage_1.MouseButton1Click:Connect(ToggleDropdown)

				for i, optionText in ipairs(options) do
					local optionholder_1 = Instance.new("Frame")
					local optionbutton_1 = Instance.new("TextButton")
					local UIPadding_20 = Instance.new("UIPadding")
					local optionimage_1 = Instance.new("ImageLabel")
					
					optionholder_1.Name = "optionholder"
					optionholder_1.Parent = options_1
					optionholder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					optionholder_1.BackgroundTransparency = 1
					optionholder_1.BorderColor3 = Color3.fromRGB(0,0,0)
					optionholder_1.BorderSizePixel = 0
					optionholder_1.Size = UDim2.new(0, 185,0, 12)

					optionbutton_1.Name = "optionbutton"
					optionbutton_1.Parent = optionholder_1
					optionbutton_1.Active = true
					optionbutton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					optionbutton_1.BackgroundTransparency = 1
					optionbutton_1.BorderColor3 = Color3.fromRGB(0,0,0)
					optionbutton_1.BorderSizePixel = 0
					optionbutton_1.Size = UDim2.new(0, 185,0, 12)
					optionbutton_1.Font = Enum.Font.GothamBold
					optionbutton_1.Text = optionText
					optionbutton_1.TextColor3 = Color3.fromRGB(255,255,255)
					optionbutton_1.TextSize = 10
					optionbutton_1.TextXAlignment = Enum.TextXAlignment.Left

					UIPadding_20.Parent = optionbutton_1
					UIPadding_20.PaddingLeft = UDim.new(0,35)

					optionimage_1.Name = "optionimage"
					optionimage_1.Parent = optionholder_1
					optionimage_1.AnchorPoint = Vector2.new(0, 0.5)
					optionimage_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
					optionimage_1.BackgroundTransparency = 1
					optionimage_1.BorderColor3 = Color3.fromRGB(0,0,0)
					optionimage_1.BorderSizePixel = 0
					optionimage_1.Position = UDim2.new(0, 19,0.5, 0)
					optionimage_1.Size = UDim2.new(0, 11,0, 11)
					optionimage_1.Image = "rbxassetid://97931137895346"
					optionimage_1.ImageColor3 = Color3.fromRGB(100,175,175)
					
					optionbutton_1.MouseButton1Click:Connect(function()
						selectedoptiontext_1.Text = optionText
						Callback(optionText)
						ToggleDropdown()
					end)
				end
			end
			return Elements
		end
		return Sections
	end
	return Tabs
end
return Library

-- Made by gxslighted/Gaslighter [previously known as: sxdistic.as.fvck/sxdisticasf, coder382, SPEEDDEVIL, WhackyCode, ThatGlitches, Cerbiale, Cyrvux, Anonymice 2885]
