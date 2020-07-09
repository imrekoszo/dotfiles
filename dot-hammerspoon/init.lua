--
-- based on
-- https://github.com/gabealmer/dotfiles/blob/724d709615f8eb6c3ec50ad0d39c7937e1be6379/hammerspoon/init.lua
--

local mash = {
  split   = {"ctrl", "alt", "cmd"},
  corner  = {"ctrl", "alt", "shift"},
  --focus   = {"ctrl", "cmd"},
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

--
-- focus
--

-- north
--hs.hotkey.bind(mash.focus, "K", function()
--  hs.window.focusedWindow():focusWindowNorth(hs.window.orderedWindows())
--end)

-- east
--hs.hotkey.bind(mash.focus, "L", function()
--  hs.window.focusedWindow():focusWindowEast(hs.window.orderedWindows())
--end)

-- south
--hs.hotkey.bind(mash.focus, "J", function()
--  hs.window.focusedWindow():focusWindowSouth(hs.window.orderedWindows())
--end)

-- west
--hs.hotkey.bind(mash.focus, "H", function()
--  hs.window.focusedWindow():focusWindowWest(hs.window.orderedWindows())
--end)


--
-- halves
--

-- top
hs.hotkey.bind(mash.split, "K", adjust(0, 0, 1, 0.5))

-- right
hs.hotkey.bind(mash.split, "L", adjust(0.5, 0, 0.5, 1))

-- bottom
hs.hotkey.bind(mash.split, "J", adjust(0, 0.5, 1, 0.5))

-- left
hs.hotkey.bind(mash.split, "H", adjust(0, 0, 0.5, 1))


--
-- thirdish
--

-- top
hs.hotkey.bind(mash.split, "T", adjust(0, 0, 1, 0.31))

-- top-middle
hs.hotkey.bind(mash.split, "F", adjust(0, 0, 1, 0.73))

-- middle
hs.hotkey.bind(mash.split, "G", adjust(0, 0.31, 1, 0.42))

-- middle-bottom
hs.hotkey.bind(mash.split, "V", adjust(0, 0.31, 1, 0.69))

-- bottom
hs.hotkey.bind(mash.split, "B", adjust(0, 0.73, 1, 0.27))

--
-- corners
--

-- top left
hs.hotkey.bind(mash.corner, "J", adjust(0, 0, 0.5, 0.5))

-- top right
hs.hotkey.bind(mash.corner, "K", adjust(0.5, 0, 0.5, 0.5))

-- bottom right
hs.hotkey.bind(mash.corner, "L", adjust(0.5, 0.5, 0.5, 0.5))

-- bottom left
hs.hotkey.bind(mash.corner, "H", adjust(0, 0.5, 0.5, 0.5))


--
-- reading
--

-- leftish
hs.hotkey.bind(mash.split, "U", adjust(0.1, 0, 0.65, 1))


--
-- reload config
--
hs.hotkey.bind(mash.split, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")


--
-- maximize
--
hs.hotkey.bind(mash.split, "M", function()
  local win = hs.window.focusedWindow()
  win:maximize()
end)


--
-- move to screen
--

-- previous
hs.hotkey.bind(mash.screen, "H", function()
  local win = hs.window.focusedWindow()
  local nextScreen = win:screen():previous()
  win:moveToScreen(nextScreen)
end)

-- next
hs.hotkey.bind(mash.screen, "L", function()
  local win = hs.window.focusedWindow()
  local nextScreen = win:screen():next()
  win:moveToScreen(nextScreen)
end)
