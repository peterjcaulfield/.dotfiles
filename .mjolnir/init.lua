--todo  
-- default gridsize
-- close apps
-- layouts

local application = require "mjolnir.application" 
local hotkey = require "mjolnir.hotkey" 
local window = require "mjolnir.window"
local fnutils = require "mjolnir.fnutils"
local grid = require "mjolnir.bg.grid"

local mash = {"alt", "cmd"}
local mashshift = {"alt", "cmd", "shift"}

-- change default grid dimensions (needs to have diff defaults depending on screen res eventually)
grid.GRIDHEIGHT = 4
grid.GRIDWIDTH = 9


hotkey.bind(mash, "R", function() mjolnir.reload(); mjolnir.openconsole() end)

hotkey.bind(mash, ';', function() grid.snap(window.focusedwindow()) end)
hotkey.bind(mash, "'", function() fnutils.map(window.visiblewindows(), grid.snap) end)

hotkey.bind(mash, '=', function() grid.adjustwidth( 1) end)
hotkey.bind(mash, '-', function() grid.adjustwidth(-1) end)

hotkey.bind(mashshift, 'H', function() window.focusedwindow():focuswindow_west() end)
hotkey.bind(mashshift, 'L', function() window.focusedwindow():focuswindow_east() end)
hotkey.bind(mashshift, 'K', function() window.focusedwindow():focuswindow_north() end)
hotkey.bind(mashshift, 'J', function() window.focusedwindow():focuswindow_south() end)

hotkey.bind(mash, 'M', grid.maximize_window)

hotkey.bind(mash, 'N', grid.pushwindow_nextscreen)
--hotkey.bind(mash, 'P', grid.pushwindow_prevscreen)

hotkey.bind(mash, 'J', grid.pushwindow_down)
hotkey.bind(mash, 'K', grid.pushwindow_up)
hotkey.bind(mash, 'H', grid.pushwindow_left)
hotkey.bind(mash, 'L', grid.pushwindow_right)

hotkey.bind(mash, 'U', grid.resizewindow_thinner)
hotkey.bind(mash, 'I', grid.resizewindow_taller)
hotkey.bind(mash, 'O', grid.resizewindow_shorter)
hotkey.bind(mash, 'P', grid.resizewindow_wider)
