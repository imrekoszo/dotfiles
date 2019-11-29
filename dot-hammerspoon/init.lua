local mash = {
  split   = {"ctrl", "alt", "cmd"},
  corner  = {"ctrl", "alt", "shift"},
  focus   = {"ctrl", "alt"},
  screen  = {"shift", "cmd", "alt", "ctrl"}
}

-- Resize windows
local function adjust(x, y, w, h)
  return function()
    local win = hs.window.focusedWindow()
    if not win then return end

    local f = win:frame()
    local max = win:screen():frame()

    f.w = math.floor(max.w * w)
    f.h = math.floor(max.h * h)
    f.x = math.floor((max.w * x) + max.x)
    f.y = math.floor((max.h * y) + max.y)

    win:setFrame(f)
  end
end

-- halves

-- top
hs.hotkey.bind(mash.split, "K", adjust(0, 0, 1, 0.5))

-- right
hs.hotkey.bind(mash.split, "L", adjust(0.5, 0, 0.5, 1))

-- bottom
hs.hotkey.bind(mash.split, "J", adjust(0, 0.5, 1, 0.5))

-- left
hs.hotkey.bind(mash.split, "H", adjust(0, 0, 0.5, 1))


-- thirdish

-- top
hs.hotkey.bind(mash.split, "T", adjust(0, 0, 1, 0.31))

-- middle
hs.hotkey.bind(mash.split, "G", adjust(0, 0.31, 1, 0.42))

-- bottom
hs.hotkey.bind(mash.split, "B", adjust(0, 0.73, 1, 0.28))


-- corners

-- top left
hs.hotkey.bind(mash.corner, "J", adjust(0, 0, 0.5, 0.5))

-- top right
hs.hotkey.bind(mash.corner, "K", adjust(0.5, 0, 0.5, 0.5))

-- bottom right
hs.hotkey.bind(mash.corner, "L", adjust(0.5, 0.5, 0.5, 0.5))

-- bottom left
hs.hotkey.bind(mash.corner, "H", adjust(0, 0.5, 0.5, 0.5))

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "M", function()
  local win = hs.window.focusedWindow()
  win:maximize()
end)

hs.hotkey.bind(mash.screen, "H", function()
  local win = hs.window.focusedWindow()
  local nextScreen = win:screen():previous()
  win:moveToScreen(nextScreen)
end)

hs.hotkey.bind(mash.screen, "L", function()
  local win = hs.window.focusedWindow()
  local nextScreen = win:screen():next()
  win:moveToScreen(nextScreen)
end)
