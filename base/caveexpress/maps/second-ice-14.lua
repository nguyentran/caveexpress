function getName()
	return "Second Ice 14"
end

function onMapLoaded()
end

function initMap()
	-- get the current map context
	local map = Map.get()
	map:addTile("tile-rock-ice-big-01", 0, 0)
	map:addTile("tile-rock-slope-ice-right-02", 0, 2)
	map:addTile("tile-background-ice-04", 0, 3)
	map:addTile("tile-background-ice-01", 0, 4)
	map:addTile("tile-ground-ice-01", 0, 6)
	map:addTile("tile-rock-ice-big-01", 0, 7)
	map:addTile("tile-rock-ice-02", 0, 9)
	map:addTile("tile-rock-ice-01", 0, 10)
	map:addTile("tile-rock-ice-02", 0, 11)
	map:addTile("tile-background-ice-07", 1, 2)
	map:addTile("tile-background-ice-01", 1, 3)
	map:addTile("tile-background-ice-03", 1, 4)
	map:addTile("tile-background-ice-window-02", 1, 5)
	map:addTile("tile-ground-ice-04", 1, 6)
	map:addTile("tile-rock-ice-01", 1, 9)
	map:addTile("tile-rock-ice-02", 1, 10)
	map:addTile("tile-rock-ice-01", 1, 11)
	map:addTile("tile-rock-slope-ice-right-02", 2, 0)
	map:addTile("tile-background-ice-04", 2, 1)
	map:addTile("tile-background-ice-07", 2, 2)
	map:addTile("tile-background-ice-03", 2, 3)
	map:addTile("tile-background-ice-06", 2, 4)
	map:addTile("tile-background-ice-01", 2, 5)
	map:addTile("tile-ground-ice-03", 2, 6)
	map:addTile("tile-rock-ice-01", 2, 7)
	map:addTile("tile-rock-ice-02", 2, 8)
	map:addTile("tile-rock-ice-01", 2, 9)
	map:addTile("tile-rock-ice-big-01", 2, 10)
	map:addTile("tile-background-ice-03", 3, 0)
	map:addTile("tile-background-ice-04", 3, 1)
	map:addTile("tile-background-ice-01", 3, 2)
	map:addTile("tile-background-ice-01", 3, 3)
	map:addTile("tile-background-ice-06", 3, 4)
	map:addTile("tile-background-ice-06", 3, 5)
	map:addTile("tile-ground-ice-01", 3, 6)
	map:addTile("tile-rock-ice-big-01", 3, 7)
	map:addTile("tile-rock-ice-02", 3, 9)
	map:addTile("tile-background-ice-05", 4, 0)
	map:addTile("tile-background-ice-01", 4, 1)
	map:addTile("tile-background-ice-06", 4, 2)
	map:addTile("tile-ground-ice-05", 4, 3)
	map:addTile("tile-background-ice-05", 4, 4)
	map:addTile("tile-background-ice-07", 4, 5)
	map:addTile("tile-ground-ice-03", 4, 6)
	map:addTile("tile-rock-ice-big-01", 4, 9)
	map:addTile("tile-rock-ice-02", 4, 11)
	map:addTile("tile-background-ice-03", 5, 0)
	map:addTile("tile-background-ice-03", 5, 1)
	map:addTile("tile-background-ice-window-02", 5, 2)
	map:addTile("tile-ground-ice-05", 5, 3)
	map:addTile("tile-background-ice-05", 5, 4)
	map:addTile("tile-background-ice-05", 5, 5)
	map:addTile("tile-background-ice-01", 5, 6)
	map:addTile("tile-background-ice-04", 5, 7)
	map:addTile("tile-ground-ice-02", 5, 8)
	map:addTile("tile-rock-slope-ice-right-02", 5, 11)
	map:addTile("tile-rock-slope-ice-left-02", 6, 0)
	map:addTile("tile-background-ice-01", 6, 1)
	map:addTile("tile-ground-ledge-ice-left-01", 6, 3)
	map:addTile("tile-background-ice-05", 6, 4)
	map:addTile("tile-background-ice-03", 6, 5)
	map:addTile("tile-background-ice-07", 6, 6)
	map:addTile("tile-background-ice-05", 6, 7)
	map:addTile("tile-background-ice-06", 6, 8)
	map:addTile("tile-background-ice-04", 6, 9)
	map:addTile("tile-background-ice-03", 6, 10)
	map:addTile("tile-background-ice-02", 6, 11)
	map:addTile("bridge-wall-ice-left-01", 6, 11)
	map:addTile("tile-rock-ice-02", 7, 0)
	map:addTile("tile-rock-ice-01", 7, 1)
	map:addTile("tile-rock-ice-big-01", 7, 2)
	map:addTile("tile-rock-slope-ice-left-02", 7, 4)
	map:addTile("tile-background-ice-05", 7, 5)
	map:addTile("tile-background-ice-07", 7, 6)
	map:addTile("tile-background-ice-01", 7, 7)
	map:addTile("tile-background-ice-03", 7, 8)
	map:addTile("tile-background-ice-03", 7, 9)
	map:addTile("tile-background-ice-02", 7, 10)
	map:addTile("tile-background-ice-06", 7, 11)
	map:addTile("bridge-plank-ice-01", 7, 11)
	map:addTile("tile-rock-ice-big-01", 8, 0)
	map:addTile("tile-rock-ice-big-01", 8, 4)
	map:addTile("tile-rock-ice-01", 8, 6)
	map:addTile("tile-rock-ice-01", 8, 7)
	map:addTile("tile-rock-shim-ice-01", 8, 8)
	map:addTile("tile-background-ice-06", 8, 9)
	map:addTile("tile-background-ice-03", 8, 10)
	map:addTile("tile-background-ice-03", 8, 11)
	map:addTile("bridge-plank-ice-01", 8, 11)
	map:addTile("tile-rock-ice-02", 9, 2)
	map:addTile("tile-rock-ice-03", 9, 3)
	map:addTile("tile-rock-slope-ice-right-02", 9, 6)
	map:addTile("tile-background-ice-06", 9, 7)
	map:addTile("tile-background-ice-06", 9, 8)
	map:addTile("tile-background-ice-02", 9, 9)
	map:addTile("tile-background-ice-06", 9, 10)
	map:addTile("tile-background-ice-01", 9, 11)
	map:addTile("bridge-plank-ice-01", 9, 11)
	map:addTile("tile-rock-ice-01", 10, 0)
	map:addTile("tile-rock-slope-ice-right-02", 10, 1)
	map:addTile("tile-background-ice-04", 10, 2)
	map:addTile("tile-background-ice-01", 10, 3)
	map:addTile("tile-background-ice-big-01", 10, 4)
	map:addTile("tile-background-ice-06", 10, 6)
	map:addTile("tile-background-ice-06", 10, 7)
	map:addTile("tile-background-ice-01", 10, 8)
	map:addTile("tile-background-ice-02", 10, 9)
	map:addTile("tile-background-ice-06", 10, 10)
	map:addTile("tile-background-ice-06", 10, 11)
	map:addTile("bridge-wall-ice-right-01", 10, 11)
	map:addTile("tile-rock-ice-left-04", 11, 0)
	map:addTile("tile-background-ice-03", 11, 1)
	map:addTile("tile-background-ice-big-01", 11, 2)
	map:addTile("tile-background-ice-02", 11, 6)
	map:addTile("tile-background-ice-05", 11, 7)
	map:addTile("tile-rock-slope-ice-left-01", 11, 8)
	map:addTile("tile-rock-ice-big-01", 11, 9)
	map:addTile("tile-rock-ice-03", 11, 11)
	map:addTile("tile-background-ice-05", 12, 0)
	map:addTile("tile-background-ice-01", 12, 1)
	map:addTile("tile-background-ice-01", 12, 4)
	map:addTile("tile-ground-ice-02", 12, 5)
	map:addTile("tile-rock-ice-03", 12, 6)
	map:addTile("tile-rock-ice-02", 12, 7)
	map:addTile("tile-rock-ice-01", 12, 8)
	map:addTile("tile-rock-ice-02", 12, 11)
	map:addTile("tile-background-ice-03", 13, 0)
	map:addTile("tile-background-ice-01", 13, 1)
	map:addTile("tile-background-ice-02", 13, 2)
	map:addTile("tile-background-ice-03", 13, 3)
	map:addTile("tile-background-ice-01", 13, 4)
	map:addTile("tile-ground-ice-03", 13, 5)
	map:addTile("tile-rock-ice-01", 13, 6)
	map:addTile("tile-rock-ice-01", 13, 7)
	map:addTile("tile-rock-slope-ice-right-02", 13, 8)
	map:addTile("tile-background-ice-02", 13, 9)
	map:addTile("tile-background-ice-07", 13, 10)
	map:addTile("tile-packagetarget-ice-01-idle", 13, 11)
	map:addTile("tile-background-ice-01", 14, 0)
	map:addTile("tile-background-ice-window-02", 14, 1)
	map:addTile("tile-ground-ice-05", 14, 2)
	map:addTile("tile-background-ice-01", 14, 3)
	map:addTile("tile-background-ice-07", 14, 4)
	map:addTile("tile-background-ice-07", 14, 5)
	map:addTile("tile-background-ice-06", 14, 6)
	map:addTile("tile-background-ice-05", 14, 7)
	map:addTile("tile-background-ice-06", 14, 8)
	map:addTile("tile-background-ice-03", 14, 9)
	map:addTile("tile-background-ice-06", 14, 10)
	map:addTile("tile-ground-ice-03", 14, 11)
	map:addTile("tile-background-ice-01", 15, 0)
	map:addTile("tile-ground-ledge-ice-left-01", 15, 2)
	map:addTile("tile-background-ice-03", 15, 3)
	map:addTile("tile-background-ice-02", 15, 4)
	map:addTile("tile-background-ice-05", 15, 5)
	map:addTile("tile-background-ice-03", 15, 6)
	map:addTile("tile-background-ice-01", 15, 7)
	map:addTile("tile-background-ice-06", 15, 8)
	map:addTile("tile-background-ice-01", 15, 9)
	map:addTile("tile-background-ice-01", 15, 10)
	map:addTile("tile-ground-ice-04", 15, 11)

	map:addCave("tile-cave-ice-02", 0, 5, "none", 1000)
	map:addCave("tile-cave-ice-02", 6, 2, "none", 1000)
	map:addCave("tile-cave-ice-02", 15, 1, "none", 1000)

	map:addEmitter("tree", 1, 4, 1, 0, "")
	map:addEmitter("item-stone", 5, 7, 1, 0, "")
	map:addEmitter("tree", 12, 3, 1, 0, "")

	map:setSetting("width", "16")
	map:setSetting("height", "12")
	map:setSetting("fishnpc", "false")
	map:setSetting("flyingnpc", "false")
	map:setSetting("gravity", "9.81")
	map:setSetting("packagetransfercount", "3")
	map:addStartPosition("4", "2")
	map:setSetting("points", "100")
	map:setSetting("referencetime", "48")
	map:setSetting("theme", "ice")
	map:setSetting("waterchangespeed", "0")
	map:setSetting("waterfallingdelay", "7500")
	map:setSetting("waterheight", "0.6")
	map:setSetting("waterrisingdelay", "0")
	map:setSetting("wind", "0.0")
end
