local Library={Version="0.3.0", Options={}}
local function resolveIcon(value)
 if value==nil or value==false or value=="" then return "" end
 assert(type(value)=="string" or type(value)=="number","Icon must be an asset ID or asset URI")
 local asset=tostring(value)
 if asset:match("^%d+$") then return "rbxassetid://"..asset end
 return asset
end
function Library:CreateWindow(options)
options=options or {}
local cleanups={}
local windowOptions={}
local function onCleanup(fn) table.insert(cleanups,fn) end
local screen=Instance.new("ScreenGui")
screen.Name="ZeenUI"
screen.Enabled=true
screen.ResetOnSpawn=false
screen.DisplayOrder=0
screen.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
screen.ScreenInsets=Enum.ScreenInsets.CoreUISafeInsets
local root=Instance.new("Frame")
root.Name="Frame"
root.Size=UDim2.new(0,681,0,430)
root.Position=UDim2.new(0.4656893312931061,0,0.5088235139846802,0)
root.AnchorPoint=Vector2.new(0.5,0.5)
root.BackgroundColor3=Color3.new(0.0470588244497776,0.0470588244497776,0.0470588244497776)
root.BackgroundTransparency=0
root.BorderSizePixel=0
root.Visible=true
root.Active=true
root.ZIndex=1
root.ClipsDescendants=false
root.Rotation=0
root.Parent=screen
local rootCorner=Instance.new("UICorner")
rootCorner.Name="UICorner"
rootCorner.CornerRadius=UDim.new(0,8)
rootCorner.Parent=root
local rootShadow=Instance.new("UIShadow")
rootShadow.Name="UIShadow"
rootShadow.Enabled=true
rootShadow.ZIndex=-1
rootShadow.BlurRadius=UDim.new(0,20)
rootShadow.Offset=UDim2.new(0,0,0,0)
rootShadow.ShowBehindParent=true
rootShadow.Color=Color3.new(0,0,0)
rootShadow.Transparency=0.5
rootShadow.Parent=root
local rootGradient=Instance.new("UIGradient")
rootGradient.Name="UIGradient"
rootGradient.Enabled=false
rootGradient.Scale=1
rootGradient.Offset=Vector2.new(0,0)
rootGradient.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.03529411926865578,0,0.05098039284348488)),ColorSequenceKeypoint.new(1,Color3.new(0.06666667014360428,0.06666667014360428,0.06666667014360428))})
rootGradient.Rotation=78
rootGradient.Parent=root
local windowTitle=Instance.new("TextLabel")
windowTitle.Name="TextLabel"
windowTitle.Size=UDim2.new(0,120,0,29)
windowTitle.Position=UDim2.new(0.008810572326183319,0,0.020930232480168343,0)
windowTitle.AnchorPoint=Vector2.new(0,0)
windowTitle.BackgroundColor3=Color3.new(1,1,1)
windowTitle.BackgroundTransparency=1
windowTitle.BorderSizePixel=0
windowTitle.Visible=true
windowTitle.Active=false
windowTitle.ZIndex=1
windowTitle.ClipsDescendants=false
windowTitle.Text="Zeen Hub"
windowTitle.TextSize=25
windowTitle.FontFace=Font.new("rbxasset://fonts/families/Roboto.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
windowTitle.TextColor3=Color3.new(1,1,1)
windowTitle.TextTransparency=0
windowTitle.TextStrokeTransparency=1
windowTitle.TextXAlignment=Enum.TextXAlignment.Center
windowTitle.TextYAlignment=Enum.TextYAlignment.Center
windowTitle.Rotation=0
windowTitle.Parent=root
local windowSubtitle=Instance.new("TextLabel")
windowSubtitle.Name="TextLabel"
windowSubtitle.Size=UDim2.new(0,128,0,37)
windowSubtitle.Position=UDim2.new(-0.002936857519671321,0,0.055813953280448914,0)
windowSubtitle.AnchorPoint=Vector2.new(0,0)
windowSubtitle.BackgroundColor3=Color3.new(1,1,1)
windowSubtitle.BackgroundTransparency=1
windowSubtitle.BorderSizePixel=0
windowSubtitle.Visible=true
windowSubtitle.Active=false
windowSubtitle.ZIndex=1
windowSubtitle.ClipsDescendants=false
windowSubtitle.Text="Description"
windowSubtitle.TextSize=19
windowSubtitle.FontFace=Font.new("rbxasset://fonts/families/Roboto.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
windowSubtitle.TextColor3=Color3.new(1,1,1)
windowSubtitle.TextTransparency=0.6200000047683716
windowSubtitle.TextStrokeTransparency=1
windowSubtitle.TextXAlignment=Enum.TextXAlignment.Center
windowSubtitle.TextYAlignment=Enum.TextYAlignment.Center
windowSubtitle.Rotation=0
windowSubtitle.Parent=root
local openingScale=Instance.new("UIScale")
openingScale.Name="OpeningScale"
openingScale.Scale=1
openingScale.Parent=root
local firstControl=Instance.new("TextButton")
firstControl.Name="Frame"
firstControl.Size=UDim2.new(0,12,0,21)
firstControl.Position=UDim2.new(0.9676945805549622,0,0.03953488543629646,0)
firstControl.AnchorPoint=Vector2.new(0,0)
firstControl.BackgroundColor3=Color3.new(1,1,1)
firstControl.BackgroundTransparency=0
firstControl.BorderSizePixel=0
firstControl.Visible=true
firstControl.Active=false
firstControl.ZIndex=1
firstControl.ClipsDescendants=false
firstControl.Rotation=0
firstControl.Name="Minimize"; firstControl.Text=""; firstControl.AutoButtonColor=false
firstControl.Parent=root
local firstCorner=Instance.new("UICorner")
firstCorner.Name="UICorner"
firstCorner.CornerRadius=UDim.new(0,8)
firstCorner.Parent=firstControl
local firstGradient=Instance.new("UIGradient")
firstGradient.Name="UIGradient"
firstGradient.Enabled=true
firstGradient.Scale=1
firstGradient.Offset=Vector2.new(0,0)
firstGradient.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.5686274766921997,0.5686274766921997,0.5686274766921997)),ColorSequenceKeypoint.new(1,Color3.new(0.7921568751335144,0.7921568751335144,0.7921568751335144))})
firstGradient.Rotation=0
firstGradient.Parent=firstControl
local secondControl=Instance.new("TextButton")
secondControl.Name="Frame"
secondControl.Size=UDim2.new(0,12,0,21)
secondControl.Position=UDim2.new(0.9412628412246704,0,0.03953488543629646,0)
secondControl.AnchorPoint=Vector2.new(0,0)
secondControl.BackgroundColor3=Color3.new(1,1,1)
secondControl.BackgroundTransparency=0
secondControl.BorderSizePixel=0
secondControl.Visible=true
secondControl.Active=false
secondControl.ZIndex=1
secondControl.ClipsDescendants=false
secondControl.Rotation=0
secondControl.Name="Minimize"; secondControl.Text=""; secondControl.AutoButtonColor=false
secondControl.Parent=root
local secondCorner=Instance.new("UICorner")
secondCorner.Name="UICorner"
secondCorner.CornerRadius=UDim.new(0,8)
secondCorner.Parent=secondControl
local secondGradient=Instance.new("UIGradient")
secondGradient.Name="UIGradient"
secondGradient.Enabled=true
secondGradient.Scale=1
secondGradient.Offset=Vector2.new(0,0)
secondGradient.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.5686274766921997,0.5686274766921997,0.5686274766921997)),ColorSequenceKeypoint.new(1,Color3.new(0.7921568751335144,0.7921568751335144,0.7921568751335144))})
secondGradient.Rotation=0
secondGradient.Parent=secondControl
local thirdControl=Instance.new("TextButton")
thirdControl.Name="Frame"
thirdControl.Size=UDim2.new(0,12,0,21)
thirdControl.Position=UDim2.new(0.9148311018943787,0,0.03953488543629646,0)
thirdControl.AnchorPoint=Vector2.new(0,0)
thirdControl.BackgroundColor3=Color3.new(1,1,1)
thirdControl.BackgroundTransparency=0
thirdControl.BorderSizePixel=0
thirdControl.Visible=true
thirdControl.Active=false
thirdControl.ZIndex=1
thirdControl.ClipsDescendants=false
thirdControl.Rotation=0
thirdControl.Name="Minimize"; thirdControl.Text=""; thirdControl.AutoButtonColor=false
thirdControl.Parent=root
local thirdCorner=Instance.new("UICorner")
thirdCorner.Name="UICorner"
thirdCorner.CornerRadius=UDim.new(0,8)
thirdCorner.Parent=thirdControl
local thirdGradient=Instance.new("UIGradient")
thirdGradient.Name="UIGradient"
thirdGradient.Enabled=true
thirdGradient.Scale=1
thirdGradient.Offset=Vector2.new(0,0)
thirdGradient.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.5686274766921997,0.5686274766921997,0.5686274766921997)),ColorSequenceKeypoint.new(1,Color3.new(0.7921568751335144,0.7921568751335144,0.7921568751335144))})
thirdGradient.Rotation=0
thirdGradient.Parent=thirdControl
local restoreBar=Instance.new("TextButton")
restoreBar.Name="RestoreSidebar"
restoreBar.Size=UDim2.new(0,8,0,100)
restoreBar.Position=UDim2.new(0,3,0.5,0)
restoreBar.AnchorPoint=Vector2.new(0,0.5)
restoreBar.BackgroundColor3=Color3.new(0.13725490868091583,0.13725490868091583,0.13725490868091583)
restoreBar.BackgroundTransparency=0.800000011920929
restoreBar.BorderSizePixel=0
restoreBar.Visible=false
restoreBar.Active=true
restoreBar.ZIndex=1
restoreBar.ClipsDescendants=false
restoreBar.Text=""
restoreBar.TextSize=8
restoreBar.FontFace=Font.new("rbxasset://fonts/families/LegacyArial.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
restoreBar.TextColor3=Color3.new(0.10588236153125763,0.16470588743686676,0.20784315466880798)
restoreBar.TextTransparency=0.800000011920929
restoreBar.TextStrokeTransparency=1
restoreBar.TextXAlignment=Enum.TextXAlignment.Center
restoreBar.TextYAlignment=Enum.TextYAlignment.Center
restoreBar.Rotation=0
restoreBar.Parent=screen
local restoreCorner=Instance.new("UICorner")
restoreCorner.Name="UICorner"
restoreCorner.CornerRadius=UDim.new(1,0)
restoreCorner.Parent=restoreBar
local gui=screen
gui.Name="ScreenGui"
gui.Parent=game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerGui")

local controls = {}
for _, child in ipairs(gui.Frame:GetChildren()) do
 if child:IsA("TextButton") then table.insert(controls, child) end
end
table.sort(controls, function(a,b) return a.Position.X.Scale < b.Position.X.Scale end)
local names = {"Green", "Minimize", "Close"}
for i, child in ipairs(controls) do child.Name = names[i] end
for _, button in ipairs(controls) do
 button.Active = true
 button.Interactable = true
 button.ZIndex = 20
end
gui.Frame.Size=UDim2.new(0,681,0,430)
gui.Frame.Position=UDim2.new(0.49376168847084045,0,0.5,0)
gui.Frame.AnchorPoint=Vector2.new(0.5,0.5)
gui.Frame.BackgroundColor3=Color3.new(0.0470588244497776,0.0470588244497776,0.0470588244497776)
gui.Frame.BackgroundTransparency=0
for _,label in ipairs(gui.Frame:GetChildren()) do if label:IsA("TextLabel") and label.Text=="Zeen Hub" then
label.Position=UDim2.new(0.008810572326183319,0,0.020930232480168343,0)
label.Size=UDim2.new(0,120,0,29)
label.TextSize=25
label.FontFace=Font.new("rbxasset://fonts/families/Roboto.json",Enum.FontWeight.Medium,Enum.FontStyle.Normal)
label.TextColor3=Color3.new(1,1,1)
label.TextTransparency=0
label.TextXAlignment=Enum.TextXAlignment.Center
label.TextYAlignment=Enum.TextYAlignment.Center
end end
for _,label in ipairs(gui.Frame:GetChildren()) do if label:IsA("TextLabel") and label.Text=="Description" then
label.Position=UDim2.new(-0.010279001668095589,0,0.041000012308359146,0)
label.Size=UDim2.new(0,133,0,47)
label.TextSize=19
label.FontFace=Font.new("rbxasset://fonts/families/Roboto.json",Enum.FontWeight.Medium,Enum.FontStyle.Normal)
label.TextColor3=Color3.new(1,1,1)
label.TextTransparency=0.6200000047683716
label.TextXAlignment=Enum.TextXAlignment.Center
label.TextYAlignment=Enum.TextYAlignment.Center
end end
gui.Frame.Green.Size=UDim2.new(0,16,0,17)
gui.Frame.Green.Position=UDim2.new(0.890999972820282,0,0.04100000113248825,0)
gui.Frame.Green.AnchorPoint=Vector2.new(0,0)
gui.Frame.Green.BackgroundColor3=Color3.new(1,1,1)
gui.Frame.Green.BackgroundTransparency=0
gui.Frame.Green.UICorner.CornerRadius=UDim.new(0,8)
gui.Frame.Green.UIGradient.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.5686274766921997,0.5686274766921997,0.5686274766921997)),ColorSequenceKeypoint.new(1,Color3.new(0.7921568751335144,0.7921568751335144,0.7921568751335144))})
gui.Frame.Green.UIGradient.Rotation=0
gui.Frame.Green.UIGradient.Enabled=true
gui.Frame.Green.UIGradient.Offset=Vector2.new(0,0)
gui.Frame.Minimize.Size=UDim2.new(0,16,0,17)
gui.Frame.Minimize.Position=UDim2.new(0.9240000247955322,0,0.04100000113248825,0)
gui.Frame.Minimize.AnchorPoint=Vector2.new(0,0)
gui.Frame.Minimize.BackgroundColor3=Color3.new(1,1,1)
gui.Frame.Minimize.BackgroundTransparency=0
gui.Frame.Minimize.UICorner.CornerRadius=UDim.new(0,8)
gui.Frame.Minimize.UIGradient.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.5686274766921997,0.5686274766921997,0.5686274766921997)),ColorSequenceKeypoint.new(1,Color3.new(0.7921568751335144,0.7921568751335144,0.7921568751335144))})
gui.Frame.Minimize.UIGradient.Rotation=0
gui.Frame.Minimize.UIGradient.Enabled=true
gui.Frame.Minimize.UIGradient.Offset=Vector2.new(0,0)
gui.Frame.Close.Size=UDim2.new(0,16,0,17)
gui.Frame.Close.Position=UDim2.new(0.9559999704360962,0,0.04100000113248825,0)
gui.Frame.Close.AnchorPoint=Vector2.new(0,0)
gui.Frame.Close.BackgroundColor3=Color3.new(1,1,1)
gui.Frame.Close.BackgroundTransparency=0
gui.Frame.Close.UICorner.CornerRadius=UDim.new(0,8)
gui.Frame.Close.UIGradient.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(0.5686274766921997,0.5686274766921997,0.5686274766921997)),ColorSequenceKeypoint.new(1,Color3.new(0.7921568751335144,0.7921568751335144,0.7921568751335144))})
gui.Frame.Close.UIGradient.Rotation=0
gui.Frame.Close.UIGradient.Enabled=true
gui.Frame.Close.UIGradient.Offset=Vector2.new(0,0)
local frame=gui:WaitForChild("Frame")
for _,button in ipairs(controls) do
 button.Size=UDim2.fromOffset(13,14)
 local p=button.Position
 button.Position=UDim2.new(p.X.Scale,p.X.Offset+1.5,p.Y.Scale,p.Y.Offset+1.5)
 button.UICorner.CornerRadius=UDim.new(1,0)
end
for i,button in ipairs(controls) do
 button.Position=UDim2.new(1,-(32+(3-i)*18),0,19)
end
gui.RestoreSidebar.Size=UDim2.fromOffset(13,176)
gui.RestoreSidebar.Position=UDim2.new(0.003898939350619912,3,0.48676469922065737,0)
gui.RestoreSidebar.BackgroundColor3=Color3.new(1,1,1)
gui.RestoreSidebar.BackgroundTransparency=0.8
frame.Size=options.Size or frame.Size
frame.Position=options.Position or frame.Position
for _,label in ipairs(frame:GetChildren()) do
 if label:IsA("TextLabel") and label.Text=="Zeen Hub" then label.Text=options.Title or "Zeen Hub"
 elseif label:IsA("TextLabel") and label.Text=="Description" then label.Text=options.SubTitle or options.Description or "Description" end
end
local UIS=game:GetService("UserInputService")
local TS=game:GetService("TweenService")
local scale=frame:WaitForChild("OpeningScale")
local bar=gui:WaitForChild("RestoreSidebar")
local connections={}
local windowActions: {[string]: () -> ()}={}
local tweens={}
local alive=true
local function connect(signal,fn)
 local c=signal:Connect(fn)
 table.insert(connections,c)
 return c
end
local dragging,start,position,inputHeld
connect(frame.InputBegan,function(input)
 if input.UserInputType~=Enum.UserInputType.MouseButton1 and input.UserInputType~=Enum.UserInputType.Touch then return end
 if input.Position.Y>frame.AbsolutePosition.Y+70 then return end
 for _,button in ipairs(controls) do
  local p,s=button.AbsolutePosition,button.AbsoluteSize
  if input.Position.X>=p.X and input.Position.X<=p.X+s.X and input.Position.Y>=p.Y and input.Position.Y<=p.Y+s.Y then return end
 end
 dragging=true
 start=input.Position
 position=frame.Position
 inputHeld=input
end)
connect(UIS.InputChanged,function(input)
 if not dragging then return end
 if input~=inputHeld and input.UserInputType~=Enum.UserInputType.MouseMovement then return end
 local d=input.Position-start
 local size=gui.AbsoluteSize; local half=frame.AbsoluteSize/2
 local x=position.X.Scale*size.X+position.X.Offset+d.X
 local y=position.Y.Scale*size.Y+position.Y.Offset+d.Y
 frame.Position=UDim2.fromOffset(math.clamp(x,half.X+8,math.max(half.X+8,size.X-half.X-8)),math.clamp(y,half.Y+8,math.max(half.Y+8,size.Y-half.Y-8)))
end)
connect(UIS.InputEnded,function(input) if input==inputHeld then dragging=false end end)
local originals={}
for _,label in ipairs(frame:GetChildren()) do if label:IsA("TextLabel") and label.Text==(options.Title or "Zeen Hub") then label.Position=UDim2.new(0.41116005182266235,0,0.011627906933426857,6); label.Size=UDim2.fromOffset(120,29) end end
for _,label in ipairs(frame:GetChildren()) do if label:IsA("TextLabel") and label.Text==(options.SubTitle or options.Description or "Description") then label.Position=UDim2.new(0.40234947204589844,0,0.054953500628471375,6); label.Size=UDim2.fromOffset(133,28) end end
local logo=Instance.new("ImageLabel")
logo.Name="Logo"; logo.Image=resolveIcon(options.Icon==nil and "89606039691079" or options.Icon); logo.BackgroundTransparency=1
logo.Position=UDim2.fromScale(-0.005999997723847628,-0.020930232480168343); logo.Size=UDim2.fromOffset(78,79); logo.Parent=frame
local tabIcons={}
local tabPages={}
local tabTweens={}
local selectedTab=0
local tabPositions={}
local tabHandles={}
local componentHandles={}
local viewportOverride
local preferredSize=frame.Size
local rail=Instance.new("ScrollingFrame")
rail.Name="TabRail"; rail.BackgroundTransparency=1; rail.BorderSizePixel=0; rail.ScrollBarThickness=0
rail.Position=UDim2.fromOffset(0,70); rail.Size=UDim2.new(0,68,1,-82)
rail.CanvasSize=UDim2.new(); rail.Parent=frame
local function viewport()
 return viewportOverride or gui.AbsoluteSize
end
local function clampWindow()
 local size=viewport(); local half=frame.AbsoluteSize/2
 local center=Vector2.new(frame.Position.X.Scale*size.X+frame.Position.X.Offset,frame.Position.Y.Scale*size.Y+frame.Position.Y.Offset)
 frame.Position=UDim2.fromOffset(math.clamp(center.X,half.X+8,math.max(half.X+8,size.X-half.X-8)),math.clamp(center.Y,half.Y+8,math.max(half.Y+8,size.Y-half.Y-8)))
end
local function layoutResponsive()
 if not alive then return end
 local size=viewport()
 if size.X<1 or size.Y<1 then return end
 local width=math.min(preferredSize.X.Offset+preferredSize.X.Scale*size.X,size.X-24)
 local height=math.min(preferredSize.Y.Offset+preferredSize.Y.Scale*size.Y,size.Y-24)
 frame.Size=UDim2.fromOffset(math.max(240,width),math.max(180,height))
 local compact=width<570
 gui:SetAttribute("CompactLayout",compact)
 for _,tab in ipairs(tabHandles) do
  local page=tab.Page
  page.ScrollingEnabled=compact
  local left,right=tab.Left,tab.Right
  if compact then
   local lh=left.UIListLayout.AbsoluteContentSize.Y+16
   local rh=right.UIListLayout.AbsoluteContentSize.Y+16
   left.Position=UDim2.new(); left.Size=UDim2.new(1,0,0,lh)
   right.Position=UDim2.fromOffset(0,lh+10); right.Size=UDim2.new(1,0,0,rh)
   left.ScrollingEnabled=false; right.ScrollingEnabled=false
   page.CanvasSize=UDim2.fromOffset(0,lh+rh+10)
  else
   left.Position=UDim2.new(); right.Position=UDim2.new(.5,6,0,0)
   left.Size=UDim2.new(.5,-6,1,0); right.Size=left.Size
   left.ScrollingEnabled=true; right.ScrollingEnabled=true; page.CanvasSize=UDim2.new()
  end
  page.Divider.Visible=not compact
 end
 rail.CanvasSize=UDim2.fromOffset(0,#tabHandles*48+8)
 clampWindow()
end
connect(gui:GetPropertyChangedSignal("AbsoluteSize"),layoutResponsive)

local function selectTab(index, instant)
 if not tabIcons[index] then return end
 selectedTab=index
 for i,icon in ipairs(tabIcons) do
  if tabTweens[i] then tabTweens[i]:Cancel() end
  local opacity=i==index and 0 or 0.6
  local selected=i==index
  local targetSize=selected and UDim2.fromOffset(38,38) or UDim2.fromOffset(32,34)
  local glow=icon:FindFirstChild("SelectedGlow")
  if glow then
   for _,layer in ipairs(glow:GetChildren()) do
    local target=selected and layer:GetAttribute("GlowTransparency") or 1
    originals[layer].ImageTransparency=target
    if instant then layer.ImageTransparency=target else TS:Create(layer,TweenInfo.new(0.18),{ImageTransparency=target}):Play() end
   end
  end
  if instant then
   icon.Size=targetSize
  else
   TS:Create(icon,TweenInfo.new(0.18,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size=targetSize}):Play()
  end
  if originals and originals[icon] then originals[icon].ImageTransparency=opacity end
  if instant then icon.ImageTransparency=opacity else
   tabTweens[i]=TS:Create(icon,TweenInfo.new(0.18,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{ImageTransparency=opacity})
   tabTweens[i]:Play()
  end
  tabPages[i].Visible=i==index
 end
 gui:SetAttribute("SelectedTab",index)
end
local function addTab(options)
 options=options or {}
 local index=#tabIcons+1
 local icon=Instance.new("ImageButton")
 icon.Name="Tab"..index
 icon.Image=resolveIcon(options.Icon==nil and "111598016394173" or options.Icon)
 icon.BackgroundTransparency=1
 icon.AutoButtonColor=false
 icon.Active=true
 icon.AnchorPoint=Vector2.new(0.5,0.5)
 icon.Position=UDim2.fromOffset(34,24+(index-1)*48)
 icon.Size=UDim2.fromOffset(32,34)
 local glow=Instance.new("Frame")
 glow.Name="SelectedGlow"; glow.BackgroundTransparency=1; glow.Size=UDim2.fromScale(1,1); glow.ZIndex=icon.ZIndex; glow.Parent=icon
 for ring=1,2 do
  for step=0,7 do
   local angle=step*math.pi/4
   local layer=Instance.new("ImageLabel")
   layer.Name="GlowLayer"; layer.BackgroundTransparency=1; layer.Image=icon.Image
   layer.ImageColor3=Color3.new(1,1,1); layer.ImageTransparency=1; layer.Size=UDim2.fromScale(1,1)
   layer.Position=UDim2.fromOffset(math.cos(angle)*ring*1.5,math.sin(angle)*ring*1.5)
   layer.ZIndex=icon.ZIndex; layer:SetAttribute("GlowTransparency",ring==1 and 0.96 or 0.98); layer.Parent=glow
   originals[layer]={BackgroundTransparency=1,ImageTransparency=1}
  end
 end
 connect(icon:GetPropertyChangedSignal("Image"),function()
  for _,layer in ipairs(glow:GetChildren()) do layer.Image=icon.Image end
 end)
 icon.Parent=rail
 tabIcons[index]=icon
 tabPositions[index]=icon.Position
 local page=Instance.new("ScrollingFrame")
 page.BorderSizePixel=0; page.ScrollBarThickness=2; page.CanvasSize=UDim2.new(); page.ScrollingEnabled=false
 page.Name=options.Title or ("TabPage"..index)
 page.BackgroundTransparency=1
 page.Position=UDim2.fromOffset(78,76)
 page.Size=UDim2.new(1,-94,1,-92)
 page.Visible=false
 page.Parent=frame
 local columns={}
 for side=1,2 do
  local column=Instance.new("ScrollingFrame")
  column.Name=side==1 and "Left" or "Right"
  column.Position=UDim2.new(side==1 and 0 or 0.5,side==1 and 0 or 6,0,0)
  column.Size=UDim2.new(0.5,-6,1,0)
  column.BackgroundTransparency=1
  column.BorderSizePixel=0
  column.ScrollBarThickness=2
  column.CanvasSize=UDim2.new()
  column.AutomaticCanvasSize=Enum.AutomaticSize.Y
  column.Parent=page
  local padding=Instance.new("UIPadding")
  padding.PaddingTop=UDim.new(0,6)
  padding.PaddingLeft=UDim.new(0,4)
  padding.PaddingRight=UDim.new(0,4)
  padding.PaddingBottom=UDim.new(0,8)
  padding.Parent=column
  local layout=Instance.new("UIListLayout")
  layout.Padding=UDim.new(0,10)
  layout.SortOrder=Enum.SortOrder.LayoutOrder
  layout.Parent=column
  columns[column.Name]=column
 end
 tabPages[index]=page
 local tab={Title=options.Title or ("Tab "..index),Icon=icon,Page=page,Index=index}
 tab.Left=columns.Left
 tab.Right=columns.Right
 local divider=Instance.new("Frame")
 divider.Name="Divider"
 divider.Position=UDim2.new(0.5,0,0,4)
 divider.Size=UDim2.new(0,1,1,-8)
 divider.BackgroundColor3=Color3.fromRGB(35,35,35)
 divider.BackgroundTransparency=0.93
 divider.BorderSizePixel=0
 divider.Parent=page
 originals[divider]={BackgroundTransparency=0.93}
 function tab:AddToggle(id, config)
  if type(id) == "table" then config = id; id = nil end
  config = config or {}
  local row = Instance.new("TextButton")
  row.Name = id or "Toggle"
  row.Text = ""
  row.AutoButtonColor = false
  row.Active = true
  row.BackgroundColor3 = Color3.fromRGB(11,11,11)
  row.BackgroundTransparency = 0.18
  row.BorderSizePixel = 0
  row.Size = UDim2.new(1, 0, 0, 60)
  row.Parent = columns[config.Side or "Left"] or columns.Left
  local boxCorner=Instance.new("UICorner")
  boxCorner.CornerRadius=UDim.new(0,8)
  boxCorner.Parent=row
  local elevation=Instance.new("UIShadow")
  elevation.Color=Color3.fromRGB(72,72,72)
  elevation.Transparency=0.82
  elevation.BlurRadius=UDim.new(0,8)
  elevation.Offset=UDim2.fromOffset(0,2)
  elevation.Parent=row
  local outline=Instance.new("UIStroke")
  outline.Color=Color3.fromRGB(72,72,72)
  outline.Transparency=0.9
  outline.Thickness=1
  outline.Parent=row
  local title = Instance.new("TextLabel")
  title.Name = "Title"
  title.Text = config.Title or "Toggle"
  title.Font = Enum.Font.Roboto
  title.TextSize = 19
  title.TextColor3 = Color3.fromRGB(225, 225, 225)
  title.TextXAlignment = Enum.TextXAlignment.Left
  title.BackgroundTransparency = 1
  title.Position = UDim2.fromOffset(12,9)
  title.Size = UDim2.new(1, -72, 0, 22)
  title.TextTruncate = Enum.TextTruncate.AtEnd
  title.Parent = row
  local description=Instance.new("TextLabel")
  description.Name="Description"
  description.Text=config.Description or ""
  description.Font=Enum.Font.Roboto
  description.TextSize=16
  description.TextColor3=Color3.fromRGB(115,115,115)
  description.TextXAlignment=Enum.TextXAlignment.Left
  description.BackgroundTransparency=1
  description.Position=UDim2.fromOffset(12,29)
  description.Size=UDim2.new(1,-72,0,20)
  description.TextWrapped=true
  description.Parent=row
  local track = Instance.new("Frame")
  track.Name = "Track"
  track.AnchorPoint = Vector2.new(1, 0.5)
  track.Position = UDim2.new(1, -10, 0.5, 0)
  track.Size = UDim2.fromOffset(42, 24)
  track.BorderSizePixel = 0
  track.Parent = row
  local corner = Instance.new("UICorner")
  corner.CornerRadius = UDim.new(0, 12)
  corner.Parent = track
  local knob = Instance.new("Frame")
  knob.Name = "Knob"
  knob.Size = UDim2.fromOffset(18, 18)
  knob.Position = UDim2.fromOffset(3, 3)
  knob.BackgroundColor3 = Color3.new(1, 1, 1)
  knob.BorderSizePixel = 0
  knob.ZIndex = 3
  knob.Parent = track
  local knobCorner = Instance.new("UICorner")
  knobCorner.CornerRadius = UDim.new(1, 0)
  knobCorner.Parent = knob
  local shadow = Instance.new("UIShadow")
  shadow.Color = Color3.new(0, 0, 0)
  shadow.Transparency = 0.8
  shadow.BlurRadius = UDim.new(0, 5)
  shadow.Offset = UDim2.fromOffset(0, 2)
  shadow.Parent = knob
  local toggle = {Value = config.Default == true, Instance = row}
  local listeners = {}
  local toggleTweens = {}
  local function render(instant)
   for _, tween in ipairs(toggleTweens) do tween:Cancel() end
   toggleTweens = {}
   local color = toggle.Value and Color3.fromRGB(45, 45, 45) or Color3.fromRGB(18, 18, 18)
   local position = UDim2.fromOffset(toggle.Value and 21 or 3, 3)
   if instant then track.BackgroundColor3 = color; knob.Position = position; return end
   local info = TweenInfo.new(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
   local a = TS:Create(track, info, {BackgroundColor3 = color})
   local b = TS:Create(knob, info, {Position = position})
   toggleTweens = {a, b}
   a:Play()
   b:Play()
  end
  function toggle:SetValue(value,silent)
   if not alive then return end
   value = value == true
   if self.Value == value then return end
   self.Value = value
   render(false)
   if not silent then
    if config.Callback then config.Callback(value) end
    for _, callback in ipairs(listeners) do callback(value) end
   end
  end
  function toggle:OnChanged(callback) table.insert(listeners, callback); return self end
  function toggle:GetValue() return self.Value end
  connect(row.Activated, function() toggle:SetValue(not toggle.Value) end)
  onCleanup(function()
   for _, tween in ipairs(toggleTweens) do tween:Cancel() end
  end)
  originals[row] = {BackgroundTransparency = 0.18, TextTransparency = 0}
  originals[elevation] = {Transparency = 0.82}
  originals[outline] = {Transparency = 0.9}
  originals[description] = {BackgroundTransparency = 1, TextTransparency = 0, TextStrokeTransparency = 1}
  originals[title] = {BackgroundTransparency = 1, TextTransparency = 0, TextStrokeTransparency = 1}
  originals[track] = {BackgroundTransparency = 0}
  originals[knob] = {BackgroundTransparency = 0}
  originals[shadow] = {Transparency = 0.8}
  render(true)
  if id then Library.Options[id] = toggle end
  return toggle
 end
 function tab:AddButton(config)
  config=config or {}
  local row=Instance.new("TextButton")
  row.Name="Button"
  row.Text=""
  row.AutoButtonColor=false
  row.Active=true
  row.BorderSizePixel=0
  row.BackgroundColor3=Color3.fromRGB(11,11,11)
  row.BackgroundTransparency=0.18
  row.Size=UDim2.new(1,0,0,60)
  row.Parent=columns[config.Side or "Left"] or columns.Left
  local corner=Instance.new("UICorner")
  corner.CornerRadius=UDim.new(0,8)
  corner.Parent=row
  local shadow=Instance.new("UIShadow")
  shadow.Color=Color3.fromRGB(72,72,72)
  shadow.Transparency=0.82
  shadow.BlurRadius=UDim.new(0,8)
  shadow.Offset=UDim2.fromOffset(0,2)
  shadow.Parent=row
  local stroke=Instance.new("UIStroke")
  stroke.Color=Color3.fromRGB(72,72,72)
  stroke.Transparency=0.9
  stroke.Parent=row
  local title=Instance.new("TextLabel")
  title.Name="Title"
  title.Text=config.Title or "Button"
  title.Font=Enum.Font.Roboto
  title.TextSize=19
  title.TextColor3=Color3.fromRGB(225,225,225)
  title.TextXAlignment=Enum.TextXAlignment.Left
  title.BackgroundTransparency=1
  title.Position=UDim2.fromOffset(12,9)
  title.Size=UDim2.new(1,-48,0,22)
  title.Parent=row
  local description=Instance.new("TextLabel")
  description.Name="Description"
  description.Text=config.Description or ""
  description.Font=Enum.Font.Roboto
  description.TextSize=16
  description.TextColor3=Color3.fromRGB(115,115,115)
  description.TextXAlignment=Enum.TextXAlignment.Left
  description.BackgroundTransparency=1
  description.Position=UDim2.fromOffset(12,29)
  description.Size=UDim2.new(1,-48,0,20)
  description.TextTruncate=Enum.TextTruncate.AtEnd
  description.Parent=row
  local arrow=Instance.new("TextLabel")
  arrow.Name="Action"
  arrow.Text="›"
  arrow.Font=Enum.Font.Roboto
  arrow.TextSize=24
  arrow.TextColor3=Color3.fromRGB(140,140,140)
  arrow.BackgroundTransparency=1
  arrow.Position=UDim2.new(1,-34,0,0)
  arrow.Size=UDim2.new(0,24,1,0)
  arrow.Parent=row
  local hoverTween
  local function shade(color)
   if hoverTween then hoverTween:Cancel() end
   hoverTween=TS:Create(row,TweenInfo.new(0.15,Enum.EasingStyle.Sine),{BackgroundColor3=color})
   hoverTween:Play()
  end
  connect(row.MouseEnter,function() shade(Color3.fromRGB(20,20,20)) end)
  connect(row.MouseLeave,function() shade(Color3.fromRGB(11,11,11)) end)
  connect(row.MouseButton1Down,function() shade(Color3.fromRGB(7,7,7)) end)
  connect(row.MouseButton1Up,function() shade(Color3.fromRGB(20,20,20)) end)
  connect(row.Activated,function() if config.Callback then config.Callback() end end)
  onCleanup(function() if hoverTween then hoverTween:Cancel() end end)
  originals[row]={BackgroundTransparency=0.18,TextTransparency=0}
  originals[shadow]={Transparency=0.82}
  originals[stroke]={Transparency=0.9}
  for _,label in ipairs({title,description,arrow}) do originals[label]={BackgroundTransparency=1,TextTransparency=0,TextStrokeTransparency=1} end
  return {Instance=row}
 end
 function tab:AddSlider(id,config)
  if type(id)=="table" then config=id; id=nil end
  config=config or {}
  local minimum=config.Min or 0
  local maximum=config.Max or 100
  assert(maximum>minimum,"Slider Max must be greater than Min")
  local digits=config.Rounding or 0
  local factor=10^digits
  local row=Instance.new("Frame")
  row.Name=id or "Slider"
  row.Size=UDim2.new(1,0,0,60)
  row.BackgroundColor3=Color3.fromRGB(11,11,11)
  row.BackgroundTransparency=0.18
  row.BorderSizePixel=0
  row.Parent=columns[config.Side or "Left"] or columns.Left
  local corner=Instance.new("UICorner"); corner.CornerRadius=UDim.new(0,8); corner.Parent=row
  local shadow=Instance.new("UIShadow"); shadow.Color=Color3.fromRGB(72,72,72); shadow.Transparency=0.82; shadow.BlurRadius=UDim.new(0,8); shadow.Offset=UDim2.fromOffset(0,2); shadow.Parent=row
  local stroke=Instance.new("UIStroke"); stroke.Color=Color3.fromRGB(72,72,72); stroke.Transparency=0.9; stroke.Parent=row
  local title=Instance.new("TextLabel")
  title.Name="Title"; title.Text=config.Title or "Slider"; title.Font=Enum.Font.Roboto; title.TextSize=19
  title.TextColor3=Color3.fromRGB(225,225,225); title.BackgroundTransparency=1; title.TextXAlignment=Enum.TextXAlignment.Left
  title.Position=UDim2.fromOffset(12,10); title.Size=UDim2.new(0.45,-12,0,22); title.TextTruncate=Enum.TextTruncate.AtEnd; title.Parent=row
  local description=title:Clone()
  description.Name="Description"; description.Text=config.Description or ""; description.TextSize=16
  description.TextColor3=Color3.fromRGB(115,115,115); description.Position=UDim2.fromOffset(12,29); description.Size=UDim2.new(0.45,-12,0,18); description.Parent=row
  local input=Instance.new("TextBox")
  input.Name="Value"; input.Size=UDim2.fromOffset(42,26); input.AnchorPoint=Vector2.new(1,0.5)
  input.Position=UDim2.new(1,-10,0.5,0); input.BackgroundTransparency=1; input.BorderSizePixel=0
  input.TextColor3=Color3.fromRGB(200,200,200); input.Font=Enum.Font.Roboto; input.TextSize=15; input.ClearTextOnFocus=false; input.Parent=row
  local hit=Instance.new("TextButton")
  hit.Name="SliderTrack"; hit.Text=""; hit.AutoButtonColor=false; hit.BackgroundTransparency=1; hit.Active=true
  hit.Position=UDim2.new(0.55,6,0.5,-22); hit.Size=UDim2.new(0.45,-68,0,44); hit.Parent=row
  local track=Instance.new("Frame")
  track.Name="Track"; track.Size=UDim2.new(1,0,0,8); track.Position=UDim2.new(0,0,0.5,-4); track.BackgroundColor3=Color3.fromRGB(35,35,35); track.BorderSizePixel=0; track.Parent=hit
  local round=Instance.new("UICorner"); round.CornerRadius=UDim.new(1,0); round.Parent=track
  local fill=track:Clone(); fill.Name="Fill"; fill.Position=UDim2.new(); fill.BackgroundColor3=Color3.fromRGB(190,190,190); fill.Parent=track
  local knob=Instance.new("Frame")
  knob.Name="Knob"; knob.AnchorPoint=Vector2.new(0.5,0.5); knob.Size=UDim2.fromOffset(14,14); knob.BackgroundColor3=Color3.fromRGB(235,235,235); knob.BorderSizePixel=0; knob.Parent=track
  local knobCorner=Instance.new("UICorner"); knobCorner.CornerRadius=UDim.new(1,0); knobCorner.Parent=knob
  local slider={Value=minimum,Instance=row}
  local listeners={}
  local sliderDragging=false
  local touch
  local function render()
   local fraction=(slider.Value-minimum)/(maximum-minimum)
   fill.Size=UDim2.new(fraction,0,1,0)
   knob.Position=UDim2.new(fraction,0,0.5,0)
   input.Text=tostring(slider.Value)
  end
  function slider:SetValue(value,silent)
   if not alive then return end
   value=tonumber(value)
   if not value or value~=value then render(); return end
   value=math.clamp(math.floor(value*factor+0.5)/factor,minimum,maximum)
   local changed=self.Value~=value
   self.Value=value; render()
   if changed and not silent then
    if config.Callback then config.Callback(value) end
    for _,callback in ipairs(listeners) do callback(value) end
   end
  end
  function slider:OnChanged(callback) table.insert(listeners,callback); return self end
  function slider:GetValue() return self.Value end
  function slider:SetRange(low,high)
   assert(type(low)=="number" and type(high)=="number" and low==low and high==high and high>low,"Invalid slider range")
   minimum=low; maximum=high; self:SetValue(self.Value); render(); return self
  end
  function slider:SetRounding(value)
   digits=math.clamp(math.floor(tonumber(value) or 0),0,6); factor=10^digits; self:SetValue(self.Value); return self
  end
  local function move(x)
   if track.AbsoluteSize.X<=0 then return end
   slider:SetValue(minimum+math.clamp((x-track.AbsolutePosition.X)/track.AbsoluteSize.X,0,1)*(maximum-minimum))
  end
  connect(hit.InputBegan,function(inputObject)
   if inputObject.UserInputType~=Enum.UserInputType.MouseButton1 and inputObject.UserInputType~=Enum.UserInputType.Touch then return end
   if row:GetAttribute("Disabled") then return end
   sliderDragging=true; row.Parent.ScrollingEnabled=false; page.ScrollingEnabled=false; touch=inputObject; move(inputObject.Position.X)
  end)
  connect(UIS.InputChanged,function(inputObject)
   if sliderDragging and not row:GetAttribute("Disabled") and (inputObject==touch or inputObject.UserInputType==Enum.UserInputType.MouseMovement) then move(inputObject.Position.X) end
  end)
  connect(UIS.InputEnded,function(inputObject) if inputObject==touch then sliderDragging=false; if row.Parent then row.Parent.ScrollingEnabled=not gui:GetAttribute("CompactLayout"); page.ScrollingEnabled=gui:GetAttribute("CompactLayout")==true end end end)
  connect(input.FocusLost,function() slider:SetValue(input.Text) end)
  for _,object in ipairs(row:GetDescendants()) do
   local properties={}
   if object:IsA("GuiObject") then properties.BackgroundTransparency=object.BackgroundTransparency end
   if object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then properties.TextTransparency=object.TextTransparency; properties.TextStrokeTransparency=object.TextStrokeTransparency end
   if object:IsA("UIStroke") or object.ClassName=="UIShadow" then properties.Transparency=object.Transparency end
   if next(properties) then originals[object]=properties end
  end
  originals[row]={BackgroundTransparency=0.18}
  slider:SetValue(config.Default or minimum,true)
  if id then Library.Options[id]=slider end
  return slider
 end
 function tab:AddDropdown(id, config)
  if type(id)=="table" then config=id; id=nil end
  config=config or {}
  local multi=config.Multi==true
  local dropdown={Value=multi and {} or nil,Values={},Destroyed=false}
  local listeners={}
  local open=false
  local row=Instance.new("Frame")
  row.Name=id or "Dropdown"; row.Size=UDim2.new(1,0,0,60)
  row.BackgroundColor3=Color3.fromRGB(11,11,11); row.BackgroundTransparency=0.18
  row.BorderSizePixel=0; row.Parent=columns[config.Side or "Left"] or columns.Left
  dropdown.Instance=row
  local corner=Instance.new("UICorner"); corner.CornerRadius=UDim.new(0,8); corner.Parent=row
  local shadow=Instance.new("UIShadow"); shadow.Color=Color3.fromRGB(72,72,72); shadow.Transparency=0.82; shadow.BlurRadius=UDim.new(0,8); shadow.Offset=UDim2.fromOffset(0,2); shadow.Parent=row
  local title=Instance.new("TextLabel")
  title.Name="Title"; title.Text=config.Title or "Dropdown"; title.Font=Enum.Font.Roboto; title.TextSize=19
  title.TextColor3=Color3.fromRGB(225,225,225); title.BackgroundTransparency=1; title.TextXAlignment=Enum.TextXAlignment.Left
  title.Position=UDim2.fromOffset(12,9); title.Size=UDim2.new(0.48,-12,0,22); title.TextTruncate=Enum.TextTruncate.AtEnd; title.Parent=row
  local desc=title:Clone(); desc.Name="Description"; desc.Text=config.Description or ""; desc.TextSize=16
  desc.TextColor3=Color3.fromRGB(115,115,115); desc.Position=UDim2.fromOffset(12,29); desc.Size=UDim2.new(0.48,-12,0,20); desc.Parent=row
  local selector=Instance.new("TextButton")
  selector.Name="Selection"; selector.Text="Select"; selector.Font=Enum.Font.Roboto; selector.TextSize=14
  selector.TextColor3=Color3.fromRGB(190,190,190); selector.BackgroundTransparency=1; selector.AutoButtonColor=false
  selector.Position=UDim2.new(0.48,4,0,10); selector.Size=UDim2.new(0.52,-30,0,40)
  selector.TextTruncate=Enum.TextTruncate.AtEnd; selector.Parent=row
  selector.Size=UDim2.new(0.52,-14,0,40)
  selector.Active=false
  selector.Interactable=false
  local header=Instance.new("TextButton")
  header.Name="HeaderHitArea"
  header.Text=""
  header.BackgroundTransparency=1
  header.AutoButtonColor=false
  header.Active=true
  header.Size=UDim2.new(1,0,0,60)
  header.ZIndex=10
  header.Parent=row
  local panel=Instance.new("Frame")
  panel.Name="Options"; panel.BackgroundTransparency=1; panel.Position=UDim2.fromOffset(10,62); panel.Size=UDim2.new(1,-20,0,150); panel.Visible=false; panel.Parent=row
  local search=Instance.new("TextBox")
  search.Name="Search"; search.PlaceholderText="Search options"; search.Text=""; search.ClearTextOnFocus=false
  search.Font=Enum.Font.Roboto; search.TextSize=14; search.TextColor3=Color3.fromRGB(200,200,200)
  search.BackgroundTransparency=1; search.Size=UDim2.new(1,0,0,28); search.Parent=panel
  local list=Instance.new("ScrollingFrame")
  list.Name="List"; list.BackgroundTransparency=1; list.BorderSizePixel=0; list.ScrollBarThickness=2
  list.Position=UDim2.fromOffset(0,30); list.Size=UDim2.new(1,0,1,-30)
  list.CanvasSize=UDim2.new(); list.AutomaticCanvasSize=Enum.AutomaticSize.Y; list.Parent=panel
  local layout=Instance.new("UIListLayout"); layout.Padding=UDim.new(0,3); layout.Parent=list
  row.ClipsDescendants=true
  local optionRows={}
  local openTweens={}
  local openVersion=0
  local selectionTween
  local function fadeText(object,target)
   local tween=TS:Create(object,TweenInfo.new(0.18,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextTransparency=target})
   table.insert(openTweens,tween)
   tween:Play()
  end
  local function snapshot(value)
   if type(value)~="table" then return value end
   local copy={}; for key,v in pairs(value) do copy[key]=v end; return copy
  end
  local function equal(a,b)
   if type(a)~="table" or type(b)~="table" then return a==b end
   for k,v in pairs(a) do if b[k]~=v then return false end end
   for k,v in pairs(b) do if a[k]~=v then return false end end
   return true
  end
  local function selected(value) return multi and dropdown.Value[value]==true or (not multi and dropdown.Value==value) end
  local function render()
   local names={}
   for _,value in ipairs(dropdown.Values) do if selected(value) then table.insert(names,tostring(value)) end end
   selector.Text=#names>0 and table.concat(names,", ") or (config.Placeholder or "Select")
   for _,item in ipairs(optionRows) do
    item.Button.Text="  "..tostring(item.Value)
    if item.Tween then item.Tween:Cancel() end
    local isSelected=selected(item.Value)
    local background=isSelected and 0.72 or 1
    if originals[item.Button] then originals[item.Button].BackgroundTransparency=background end
    item.Tween=TS:Create(item.Button,TweenInfo.new(0.18,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{
     TextColor3=isSelected and Color3.fromRGB(235,235,235) or Color3.fromRGB(135,135,135),
     BackgroundTransparency=background,
    })
    item.Tween:Play()
   end
  end
  function dropdown:SetValue(value,silent)
   if self.Destroyed or not alive then return end
   local nextValue
   if multi then
    nextValue={}
    if type(value)=="table" then
     for _,option in ipairs(self.Values) do
      if value[option]==true or table.find(value,option) then nextValue[option]=true end
     end
    end
   elseif table.find(self.Values,value) then nextValue=value end
   local changed=not equal(self.Value,nextValue)
   self.Value=nextValue; render()
   if changed and not silent then
    if selectionTween then selectionTween:Cancel() end
    selector.TextColor3=Color3.fromRGB(245,245,245)
    selectionTween=TS:Create(selector,TweenInfo.new(0.25),{TextColor3=Color3.fromRGB(190,190,190)})
    selectionTween:Play()
   end
   if changed and not silent then
    if config.Callback then config.Callback(snapshot(self.Value)) end
    for _,callback in ipairs(listeners) do callback(snapshot(self.Value)) end
   end
  end
  function dropdown:GetValue() return snapshot(self.Value) end
  function dropdown:OnChanged(callback) table.insert(listeners,callback); return self end
  local function setOpen(value)
   if dropdown.Destroyed or not alive or open==value then return end
   open=value
   openVersion=openVersion+1
   local version=openVersion
   for _,tween in ipairs(openTweens) do tween:Cancel() end
   openTweens={}
   panel.Visible=true
   if value then
    search.TextTransparency=1
    for _,item in ipairs(optionRows) do item.Button.TextTransparency=1 end
   end
   fadeText(search,value and 0 or 1)
   for _,item in ipairs(optionRows) do fadeText(item.Button,value and 0 or 1) end
   local tween=TS:Create(row,TweenInfo.new(0.24,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Size=UDim2.new(1,0,0,value and 222 or 60)})
   table.insert(openTweens,tween)
   local connection
   connection=connect(tween.Completed,function(status)
    connection:Disconnect()
    if status==Enum.PlaybackState.Completed and version==openVersion and alive then panel.Visible=value end
   end)
   tween:Play()
  end
  local function rebuild()
   for _,item in ipairs(optionRows) do
    item.Connection:Disconnect(); if item.Tween then item.Tween:Cancel() end; originals[item.Button]=nil; item.Button:Destroy()
   end
   optionRows={}
   local query=string.lower(search.Text)
   for _,value in ipairs(dropdown.Values) do
    if string.find(string.lower(tostring(value)),query,1,true) then
     local button=Instance.new("TextButton")
     button.Font=Enum.Font.Roboto; button.TextSize=14; button.TextXAlignment=Enum.TextXAlignment.Left
     button.BackgroundTransparency=1; button.AutoButtonColor=false; button.Size=UDim2.new(1,-4,0,UIS.TouchEnabled and 44 or 26); button.Parent=list
     button.BackgroundColor3=Color3.fromRGB(40,40,40)
     button.BorderSizePixel=0
     local optionCorner=Instance.new("UICorner")
     optionCorner.CornerRadius=UDim.new(0,5)
     optionCorner.Parent=button
     local connection=button.Activated:Connect(function()
      if dropdown.Destroyed or row:GetAttribute("Disabled") then return end
      if multi then local nextValue=dropdown:GetValue(); nextValue[value]=not nextValue[value]; dropdown:SetValue(nextValue)
      else dropdown:SetValue(value); setOpen(false) end
     end)
     originals[button]={BackgroundTransparency=1,TextTransparency=0,TextStrokeTransparency=1}
     table.insert(optionRows,{Button=button,Value=value,Connection=connection})
    end
   end
   render()
  end
  function dropdown:SetValues(values)
   assert(type(values)=="table","Dropdown values must be a list")
   local cleaned={}
   for _,value in ipairs(values) do
    assert(type(value)=="string" or type(value)=="number","Options must be strings or numbers")
    if not table.find(cleaned,value) then table.insert(cleaned,value) end
   end
   local same=#cleaned==#self.Values
   if same then for i,value in ipairs(cleaned) do if self.Values[i]~=value then same=false; break end end end
   if same then render(); return self end
   self.Values=cleaned
   self:SetValue(self.Value)
   rebuild()
   return self
  end
  dropdown.SetOptions=dropdown.SetValues
  function dropdown:Refresh()
   if self.Destroyed or not alive then return false end
   if type(config.OptionsProvider)~="function" then return true end
   local ok,values=pcall(config.OptionsProvider)
   if not ok or type(values)~="table" then
    self.LastError=tostring(values); return false
   end
   self.LastError=nil; self:SetValues(values); return true
  end
  function dropdown:SetOpen(value) setOpen(value==true) end
  connect(header.Activated,function() setOpen(not open) end)
  connect(search:GetPropertyChangedSignal("Text"),rebuild)
  onCleanup(function()
   dropdown.Destroyed=true
   openVersion=openVersion+1
   for _,tween in ipairs(openTweens) do tween:Cancel() end
   if selectionTween then selectionTween:Cancel() end
   for _,item in ipairs(optionRows) do item.Connection:Disconnect(); if item.Tween then item.Tween:Cancel() end end
  end)
  for _,object in ipairs(row:GetDescendants()) do
   local properties={}
   if object:IsA("GuiObject") then properties.BackgroundTransparency=object.BackgroundTransparency end
   if object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then properties.TextTransparency=object.TextTransparency; properties.TextStrokeTransparency=object.TextStrokeTransparency end
   if object.ClassName=="UIShadow" then properties.Transparency=object.Transparency end
   if next(properties) then originals[object]=properties end
  end
  originals[row]={BackgroundTransparency=0.18}
  dropdown:SetValues(config.Values or config.Options or {})
  dropdown:Refresh()
  local default=config.Default
  if not multi and type(default)=="number" and dropdown.Values[default] then default=dropdown.Values[default] end
  dropdown:SetValue(default,true)
  local function autoRefresh()
   task.delay(math.max(0.5,config.RefreshInterval or 3),function()
    if not alive or dropdown.Destroyed then return end
    dropdown:Refresh()
    autoRefresh()
   end)
  end
  if config.AutoReload and type(config.OptionsProvider)=="function" then autoRefresh() end
  if id then Library.Options[id]=dropdown end
  return dropdown
 end
 function tab:AddInput(id,config)
  if type(id)=="table" then config=id; id=nil end
  config=config or {}
  local row=Instance.new("Frame")
  row.Name=id or "Input"; row.Size=UDim2.new(1,0,0,60)
  row.BackgroundColor3=Color3.fromRGB(11,11,11); row.BackgroundTransparency=0.18; row.BorderSizePixel=0
  row.Parent=columns[config.Side or "Left"] or columns.Left
  local corner=Instance.new("UICorner"); corner.CornerRadius=UDim.new(0,8); corner.Parent=row
  local shadow=Instance.new("UIShadow"); shadow.Color=Color3.fromRGB(72,72,72); shadow.Transparency=0.82; shadow.BlurRadius=UDim.new(0,8); shadow.Offset=UDim2.fromOffset(0,2); shadow.Parent=row
  local outline=Instance.new("UIStroke"); outline.Color=Color3.fromRGB(72,72,72); outline.Transparency=0.9; outline.Parent=row
  local title=Instance.new("TextLabel")
  title.Name="Title"; title.Text=config.Title or "Input"; title.Font=Enum.Font.Roboto; title.TextSize=19
  title.TextColor3=Color3.fromRGB(225,225,225); title.BackgroundTransparency=1; title.TextXAlignment=Enum.TextXAlignment.Left
  title.Position=UDim2.fromOffset(12,9); title.Size=UDim2.new(0.48,-12,0,22); title.TextTruncate=Enum.TextTruncate.AtEnd; title.Parent=row
  local description=title:Clone()
  description.Name="Description"; description.Text=config.Description or ""; description.TextSize=16
  description.TextColor3=Color3.fromRGB(115,115,115); description.Position=UDim2.fromOffset(12,29); description.Size=UDim2.new(0.48,-12,0,20); description.Parent=row
  local box=Instance.new("TextBox")
  box.Name="TextBox"; box.BackgroundTransparency=1; box.ClearTextOnFocus=false
  box.Font=Enum.Font.Roboto; box.TextSize=15; box.TextColor3=Color3.fromRGB(205,205,205)
  box.PlaceholderColor3=Color3.fromRGB(95,95,95); box.PlaceholderText=config.Placeholder or "Type here"
  box.Position=UDim2.new(0.48,8,0,12); box.Size=UDim2.new(0.52,-20,0,36)
  box.TextXAlignment=Enum.TextXAlignment.Center; box.TextTruncate=Enum.TextTruncate.AtEnd
  box.Text=tostring(config.Default or ""); box.Parent=row
  local control={Value=box.Text,Instance=row}
  local listeners={}
  local changing=false
  local focusTween
  local lastEmitted=control.Value
  local function emit()
   if control.Value==lastEmitted then return end
   lastEmitted=control.Value
   if config.Callback then config.Callback(control.Value) end
   for _,callback in ipairs(listeners) do callback(control.Value) end
  end
  local function valid(text)
   if config.Numeric and text~="" and tonumber(text)==nil then return false end
   return not config.MaxLength or #text<=config.MaxLength
  end
  function control:SetValue(value,silent)
   if not alive then return false end
   value=tostring(value or "")
   if not valid(value) then return false end
   changing=true; self.Value=value; box.Text=value; changing=false
   if silent then lastEmitted=value else emit() end
   return true
  end
  function control:GetValue() return self.Value end
  function control:OnChanged(callback) table.insert(listeners,callback); return self end
  local function focus(active)
   if focusTween then focusTween:Cancel() end
   focusTween=TS:Create(outline,TweenInfo.new(0.18),{Transparency=active and 0.5 or 0.9})
   originals[outline].Transparency=active and 0.5 or 0.9
   focusTween:Play()
  end
  connect(box.Focused,function() focus(true) end)
  connect(box.FocusLost,function() focus(false); if config.Finished then emit() end end)
  connect(box:GetPropertyChangedSignal("Text"),function()
   if changing then return end
   if config.MaxLength and #box.Text>config.MaxLength then changing=true; box.Text=string.sub(box.Text,1,config.MaxLength); changing=false end
   if not config.Numeric then
    control.Value=box.Text
    if not config.Finished then emit() end
   elseif tonumber(box.Text) or box.Text=="" then
    control.Value=box.Text
    if not config.Finished then emit() end
   end
  end)
  connect(box.FocusLost,function()
   if config.Numeric and not valid(box.Text) then changing=true; box.Text=control.Value; changing=false end
  end)
  onCleanup(function() if focusTween then focusTween:Cancel() end end)
  for _,object in ipairs(row:GetDescendants()) do
   local props={}
   if object:IsA("GuiObject") then props.BackgroundTransparency=object.BackgroundTransparency end
   if object:IsA("TextLabel") or object:IsA("TextBox") then props.TextTransparency=object.TextTransparency; props.TextStrokeTransparency=object.TextStrokeTransparency end
   if object:IsA("UIStroke") or object.ClassName=="UIShadow" then props.Transparency=object.Transparency end
   if next(props) then originals[object]=props end
  end
  originals[row]={BackgroundTransparency=0.18}
  if id then Library.Options[id]=control end
  return control
 end

 tab.Components={}
 for _,methodName in ipairs({"AddToggle","AddButton","AddSlider","AddDropdown","AddInput"}) do
  local factory=tab[methodName]
  tab[methodName]=function(self,id,config)
   local key=type(id)=="string" and id or nil
   local settings=type(id)=="table" and id or config or {}
   settings=table.clone(settings)
   local firstConnection=#connections+1
   local firstCleanup=#cleanups+1
   local control=methodName=="AddButton" and factory(self,settings) or factory(self,key,settings)
   local row=control.Instance
   local lastConnection=#connections
   local lastCleanup=#cleanups
   if settings.Callback then assert(type(settings.Callback)=="function","Callback must be a function") end
   control.Type=string.sub(methodName,4); control.Id=key; control.Enabled=true; control.Destroyed=false
   function control:SetTitle(value) local label=row:FindFirstChild("Title"); if label then label.Text=tostring(value) end; return self end
   function control:SetDescription(value) local label=row:FindFirstChild("Description"); if label then label.Text=tostring(value) end; return self end
   function control:SetVisible(value) row.Visible=value==true; layoutResponsive(); return self end
   function control:SetCallback(callback) assert(callback==nil or type(callback)=="function","Callback must be a function"); settings.Callback=callback; return self end
   function control:SetEnabled(value)
    self.Enabled=value==true; row:SetAttribute("Disabled",not self.Enabled)
    local objects=row:GetDescendants(); table.insert(objects,row)
    for _,object in ipairs(objects) do
     if object:IsA("GuiButton") then object.Interactable=self.Enabled end
     if object:IsA("TextBox") then object.TextEditable=self.Enabled; if not self.Enabled then object:ReleaseFocus() end end
    end
    return self
   end
   function control:SetSide(side) assert(side=="Left" or side=="Right","Invalid side"); row.Parent=columns[side]; layoutResponsive(); return self end
   function control:SetOrder(order) row.LayoutOrder=order; return self end
   function control:Destroy()
    if self.Destroyed then return end
    self.Destroyed=true
    for i=firstConnection,lastConnection do connections[i]:Disconnect() end
    for i=firstCleanup,lastCleanup do pcall(cleanups[i]) end
    local objects=row:GetDescendants(); table.insert(objects,row)
    for _,object in ipairs(objects) do originals[object]=nil end
    if key and Library.Options[key]==self then Library.Options[key]=nil end
    if key and windowOptions[key]==self then windowOptions[key]=nil end
    row:Destroy(); layoutResponsive()
   end
   if methodName=="AddButton" then
    function control:Fire(...) if not self.Destroyed and self.Enabled and settings.Callback then settings.Callback(...) end; return self end
   end
   if methodName=="AddInput" then
    function control:SetPlaceholder(value) row.TextBox.PlaceholderText=tostring(value); return self end
    function control:Focus() if self.Enabled and not self.Destroyed then row.TextBox:CaptureFocus() end; return self end
    function control:ReleaseFocus() row.TextBox:ReleaseFocus(); return self end
   end
   if methodName=="AddDropdown" then
    function control:GetOptions() return table.clone(self.Values) end
    function control:Open() if self.Enabled then self:SetOpen(true) end; return self end
    function control:Close() self:SetOpen(false); return self end
   end
   if control.SetValue then
    local setValue=control.SetValue
    control.SetValue=function(self,...) if self.Destroyed then return false end; return setValue(self,...) end
   end
   if control.OnChanged then
    local subscribe=control.OnChanged
    function control:ConnectChanged(callback)
     assert(type(callback)=="function","Callback must be a function")
     local connection={Connected=true}
     function connection:Disconnect() self.Connected=false end
     subscribe(self,function(...) if connection.Connected and not self.Destroyed then callback(...) end end)
     return connection
    end
   end
   table.insert(tab.Components,control); table.insert(componentHandles,control)
   if key then Library.Options[key]=control; windowOptions[key]=control end
   if settings.Enabled==false then control:SetEnabled(false) end
   if settings.Visible==false then control:SetVisible(false) end
   layoutResponsive()
   return control
  end
 end
 function tab:SetTitle(value) self.Title=tostring(value); self.Page.Name=self.Title; return self end
 function tab:SetIcon(value) self.Icon.Image=resolveIcon(value); return self end
 for _,column in pairs(columns) do connect(column.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"),layoutResponsive) end

 function tab:Select() selectTab(index,false) end
 connect(icon.Activated,function() tab:Select() end)
 originals[icon]={BackgroundTransparency=1,ImageTransparency=index==1 and 0 or 0.6}
 originals[page]={BackgroundTransparency=1}
 tabHandles[index]=tab
 if index==1 then selectTab(1,true) else icon.ImageTransparency=0.6 end
 return tab
end

local objects=frame:GetDescendants()
table.insert(objects,frame)
for _,obj in ipairs(objects) do
 local p={}
 if obj:IsA("GuiObject") then p.BackgroundTransparency=obj.BackgroundTransparency end
 if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then p.TextTransparency=obj.TextTransparency; p.TextStrokeTransparency=obj.TextStrokeTransparency end
 if obj:IsA("ImageLabel") or obj:IsA("ImageButton") then p.ImageTransparency=obj.ImageTransparency end
 if obj.ClassName=="UIShadow" then p.Transparency=obj.Transparency end
 if next(p) then originals[obj]=p end
end
local state="open"
local version=0
local tabRevealVersion = 0
local tabRevealTweens = {}

for i,icon in ipairs(tabIcons) do tabPositions[i] = icon.Position end
local function revealTabs()
 tabRevealVersion = tabRevealVersion + 1
 local id = tabRevealVersion
 for _,t in ipairs(tabRevealTweens) do t:Cancel() end
 tabRevealTweens = {}
 for i,icon in ipairs(tabIcons) do
  icon.ImageTransparency = 1
  local p = tabPositions[i]
  icon.Position = UDim2.new(p.X.Scale,p.X.Offset - 6,p.Y.Scale,p.Y.Offset)
  task.delay((i - 1) * 0.045, function()
   if not alive or id ~= tabRevealVersion then return end
   local t = TS:Create(icon,TweenInfo.new(0.22,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{
    Position = tabPositions[i], ImageTransparency = i == selectedTab and 0 or 0.6
   })
   table.insert(tabRevealTweens,t)
   t:Play()
  end)
 end
end
onCleanup(function()
 tabRevealVersion = tabRevealVersion + 1
 for _,t in ipairs(tabRevealTweens) do t:Cancel() end
end)
local function animate(open,complete)
 version=version+1
 local id=version
 for _,t in ipairs(tweens) do t:Cancel() end
 tweens={}
 local info=TweenInfo.new(open and 0.28 or 0.2,Enum.EasingStyle.Sine,open and Enum.EasingDirection.Out or Enum.EasingDirection.In)
 for obj,properties in pairs(originals) do
 local goal={}
 for p,v in pairs(properties) do
  if not (open and obj:IsA("ImageButton") and p=="ImageTransparency") then goal[p]=open and v or 1 end
 end
 local t=TS:Create(obj,info,goal)
 table.insert(tweens,t)
 t:Play()
 end
 local t=TS:Create(scale,info,{Scale=open and 1 or 0.96})
 table.insert(tweens,t)
 if complete then
 local c
 c=connect(t.Completed,function(status)
 c:Disconnect()
 if alive and id==version and status==Enum.PlaybackState.Completed then complete() end
 end)
 end
 t:Play()
 if open then revealTabs() else
  tabRevealVersion = tabRevealVersion + 1
  for _,revealTween in ipairs(tabRevealTweens) do revealTween:Cancel() end
 end
end
connect(frame.Minimize.Activated,function()
 if state~="open" then return end
 state="minimizing"
 dragging=false
 animate(false,function() state="minimized"; frame.Visible=false; bar.Visible=true end)
end)
connect(bar.Activated,function()
 if state~="minimized" then return end
 state="open"
 bar.Visible=false
 frame.Visible=true
 animate(true)
end)
connect(frame.Close.Activated,function()
 if state=="closed" then return end
 state="closed"
 dragging=false
 bar.Visible=false
 animate(false,function() gui.Enabled=false end)
end)
connect(frame.Green.Activated,function()
 if state~="open" then return end
 state="restarting"; dragging=false
 animate(false,function()
  if not alive then return end
  frame.Visible=true
  selectTab(selectedTab,true)
  state="open"
  animate(true)
 end)
end)
onCleanup(function()
 for _,t in pairs(tabTweens) do t:Cancel() end
end)
connect(bar.MouseEnter,function() bar.BackgroundTransparency=0.5 end)
connect(bar.MouseLeave,function() bar.BackgroundTransparency=0.8 end)
connect(gui.Destroying,function()
 alive=false
 for _,cleanup in ipairs(cleanups) do pcall(cleanup) end
 version=version+1
 for _,t in ipairs(tweens) do t:Cancel() end
 for _,c in ipairs(connections) do c:Disconnect() end
end)
if UIS.TouchEnabled then
 for buttonIndex,button in ipairs(controls) do
  local target=Instance.new("TextButton")
  target.Name=button.Name.."TouchTarget"; target.Text=""; target.BackgroundTransparency=1; target.Size=UDim2.fromOffset(44,44)
  target.AnchorPoint=Vector2.new(.5,.5); target.Position=UDim2.new(1,-(30+(3-buttonIndex)*46),0,26); target.ZIndex=20; target.Parent=frame
  button.Position=UDim2.new(target.Position.X.Scale,target.Position.X.Offset-6.5,0,19)
  connect(target.Activated,function()
   if button.Name=="Close" then windowActions.Close() elseif button.Name=="Minimize" then windowActions.Minimize() else windowActions.Restart() end
  end)
 end
 bar.Size=UDim2.fromOffset(28,176)
end
local window={Gui=gui,Frame=frame,Tabs=tabHandles,Options=windowOptions}
local loaderVersion=0
local loaderOverlay
local loaderTweens={}
local function cancelLoader()
 loaderVersion+=1
 for _,tween in ipairs(loaderTweens) do tween:Cancel() end
 loaderTweens={}
 if loaderOverlay then loaderOverlay:Destroy(); loaderOverlay=nil end
end
onCleanup(cancelLoader)
local resizable=options.Resizable~=false
local minimumSize=options.MinSize or Vector2.new(320,240)
local resizeInput,resizeStart,resizeSize,resizePosition
local resizeHandle=Instance.new("TextButton")
resizeHandle.Name="ResizeHandle"; resizeHandle.Text=""; resizeHandle.BackgroundTransparency=1
resizeHandle.AutoButtonColor=false; resizeHandle.AnchorPoint=Vector2.new(1,1)
resizeHandle.Position=UDim2.fromScale(1,1); resizeHandle.Size=UDim2.fromOffset(UIS.TouchEnabled and 44 or 28,UIS.TouchEnabled and 44 or 28)
resizeHandle.ZIndex=30; resizeHandle.Visible=resizable; resizeHandle.Parent=frame
for i=1,2 do
 local mark=Instance.new("Frame")
 mark.Name="Grip"; mark.BorderSizePixel=0; mark.BackgroundColor3=Color3.fromRGB(105,105,105)
 mark.BackgroundTransparency=0.4; mark.AnchorPoint=Vector2.new(.5,.5)
 mark.Size=UDim2.fromOffset(i==1 and 10 or 5,1); mark.Rotation=-45
 mark.Position=UDim2.new(1,-(i==1 and 10 or 7),1,-(i==1 and 10 or 7)); mark.ZIndex=31; mark.Parent=resizeHandle
 originals[mark]={BackgroundTransparency=0.4}
end
local function resizeTo(value,topLeft)
 local screenSize=viewport()
 local maxWidth=math.max(1,screenSize.X-24)
 local maxHeight=math.max(1,screenSize.Y-24)
 local width=math.clamp(value.X,math.min(minimumSize.X,maxWidth),maxWidth)
 local height=math.clamp(value.Y,math.min(minimumSize.Y,maxHeight),maxHeight)
 preferredSize=UDim2.fromOffset(width,height)
 if topLeft then frame.Position=UDim2.fromOffset(topLeft.X+width/2,topLeft.Y+height/2) end
 layoutResponsive()
end
connect(resizeHandle.InputBegan,function(input)
 if not resizable or state~="open" then return end
 if input.UserInputType~=Enum.UserInputType.MouseButton1 and input.UserInputType~=Enum.UserInputType.Touch then return end
 dragging=false; resizeInput=input; resizeStart=input.Position; resizeSize=frame.AbsoluteSize
 local center=Vector2.new(frame.Position.X.Scale*viewport().X+frame.Position.X.Offset,frame.Position.Y.Scale*viewport().Y+frame.Position.Y.Offset)
 resizePosition=center-resizeSize/2
end)
connect(UIS.InputChanged,function(input)
 if not resizeInput then return end
 if state~="open" or not resizable then resizeInput=nil; return end
 if input~=resizeInput and not (resizeInput.UserInputType==Enum.UserInputType.MouseButton1 and input.UserInputType==Enum.UserInputType.MouseMovement) then return end
 local delta=input.Position-resizeStart
 resizeTo(resizeSize+Vector2.new(delta.X,delta.Y),resizePosition)
end)
connect(UIS.InputEnded,function(input) if input==resizeInput then resizeInput=nil end end)
connect(UIS.WindowFocusReleased,function() resizeInput=nil; dragging=false end)
function window:SetResizable(value)
 resizable=value==true; resizeHandle.Visible=resizable
 if not resizable then resizeInput=nil end
 return self
end
function window:Resize(width,height)
 assert(type(width)=="number" and type(height)=="number" and width==width and height==height,"Invalid window size")
 resizeTo(Vector2.new(width,height)); return self
end
function window:SetIcon(value) logo.Image=resolveIcon(value); return self end
function window:AddTab(config)
 local tab=addTab(config)
 task.defer(function() if alive and state=="open" then revealTabs() end end)
 return tab
end
function window:SelectTab(index) selectTab(index,false) end
function window:Minimize()
 if not alive or state~="open" then return end
 state="minimizing"; dragging=false
 animate(false,function() state="minimized"; frame.Visible=false; bar.Visible=true end)
end
function window:Open()
 if not alive then return end
 cancelLoader()
 gui.Enabled=true
 state="open"; frame.Visible=true; bar.Visible=false; animate(true)
end
function window:Close()
 if not alive then return end
 cancelLoader()
 state="closed"; dragging=false; bar.Visible=false
 animate(false,function() gui.Enabled=false end)
end
function window:Restart()
 if not alive or state~="open" then return end
 state="restarting"; dragging=false
 animate(false,function() state="open"; animate(true) end)
end
function window:GetState() return state end
function window:GetComponent(id) return windowOptions[id] end
function window:SetSize(value) preferredSize=value; layoutResponsive(); return self end
function window:SetViewportSize(value) viewportOverride=value; layoutResponsive(); return self end
function window:Destroy() if alive then for _,control in ipairs(componentHandles) do control:Destroy() end; gui:Destroy() end end
windowActions.Close=function() window:Close() end
windowActions.Minimize=function() window:Minimize() end
windowActions.Restart=function() window:Restart() end
layoutResponsive()
frame.Visible=true
bar.Visible=false
scale.Scale=0.96
for obj,properties in pairs(originals) do for p in pairs(properties) do obj[p]=1 end end
if options.Loader~=false then
 state="loading"; frame.Visible=false
 loaderOverlay=Instance.new("CanvasGroup")
 loaderOverlay.Name="Loader"; loaderOverlay.AnchorPoint=Vector2.new(.5,.5)
 loaderOverlay.Position=UDim2.new(.5,0,.5,10); loaderOverlay.GroupTransparency=1
 loaderOverlay.BackgroundTransparency=1
 loaderOverlay.BorderSizePixel=0; loaderOverlay.Active=true; loaderOverlay.ZIndex=100; loaderOverlay.Parent=gui
 local loaderCorner=Instance.new("UICorner"); loaderCorner.CornerRadius=UDim.new(0,10); loaderCorner.Parent=loaderOverlay
 local function sizeLoader()
  if not loaderOverlay then return end
  local available=viewport()
  local width=math.min(tonumber(options.LoaderWidth) or 600,available.X-40,(available.Y-40)*1672/941)
  loaderOverlay.Size=UDim2.fromOffset(math.max(1,width),math.max(1,width)*941/1672)
 end
 sizeLoader(); connect(gui:GetPropertyChangedSignal("AbsoluteSize"),sizeLoader)
 local artwork=Instance.new("ImageLabel")
 artwork.Name="Artwork"; artwork.BackgroundTransparency=1
 artwork.Image=resolveIcon(options.LoaderImage or "78878978342422")
 artwork.ImageTransparency=0; artwork.ScaleType=Enum.ScaleType.Fit
 artwork.AnchorPoint=Vector2.new(.5,.5); artwork.Position=UDim2.fromScale(.5,.5)
 artwork.Size=UDim2.fromScale(1,1); artwork.ZIndex=101; artwork.Parent=loaderOverlay
 local ratio=Instance.new("UIAspectRatioConstraint")
 ratio.AspectRatio=1672/941; ratio.AspectType=Enum.AspectType.FitWithinMaxSize; ratio.Parent=artwork
 local artworkScale=Instance.new("UIScale"); artworkScale.Scale=.965; artworkScale.Parent=loaderOverlay
 local track=Instance.new("Frame")
 track.Name="LoadingBar"; track.AnchorPoint=Vector2.new(.5,1); track.Position=UDim2.new(.5,0,1,-16)
 track.Size=UDim2.new(.88,0,0,4); track.BackgroundColor3=Color3.fromRGB(70,70,70)
 track.BackgroundTransparency=.55; track.BorderSizePixel=0; track.ZIndex=102; track.ClipsDescendants=true; track.Parent=loaderOverlay
 local trackCorner=Instance.new("UICorner"); trackCorner.CornerRadius=UDim.new(1,0); trackCorner.Parent=track
 local fill=Instance.new("Frame")
 fill.Name="Progress"; fill.Size=UDim2.new(0,0,1,0); fill.BackgroundColor3=Color3.fromRGB(225,225,225)
 fill.BorderSizePixel=0; fill.ZIndex=103; fill.Parent=track
 local fillCorner=Instance.new("UICorner"); fillCorner.CornerRadius=UDim.new(1,0); fillCorner.Parent=fill
 local id=loaderVersion
 local function current() return alive and id==loaderVersion and state=="loading" end
 local function tween(object,duration,goal)
  local animation=TS:Create(object,TweenInfo.new(duration,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),goal)
  table.insert(loaderTweens,animation); animation:Play()
 end
 task.spawn(function()
  task.spawn(function() pcall(function() local provider=game:GetService("ContentProvider") :: any; provider:PreloadAsync({artwork}) end) end)
  local deadline=os.clock()+5
  tween(loaderOverlay,.4,{GroupTransparency=0,Position=UDim2.fromScale(.5,.5)})
  tween(artworkScale,.55,{Scale=1})
  local duration=math.clamp(tonumber(options.LoaderDuration) or 1.6,.6,30)
  tween(fill,duration+.45,{Size=UDim2.new(.88,0,1,0)})
  task.wait(duration+.45)
  while current() and not artwork.IsLoaded and os.clock()<deadline do task.wait(.05) end
  if not current() then return end
  tween(fill,.25,{Size=UDim2.new(1,0,1,0)})
  task.wait(.4)
  if not current() then return end
  tween(loaderOverlay,.35,{GroupTransparency=1,Position=UDim2.new(.5,0,.5,-6)})
  tween(artworkScale,.35,{Scale=.985})
  task.wait(.35)
  if not current() then return end
  cancelLoader(); state="open"; frame.Visible=true; animate(true)
 end)
else
 animate(true)
end
return window
end
return Library
