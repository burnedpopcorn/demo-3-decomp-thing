ini_open("playerData_" + global.savefile + ".ini")
levelrank = ini_read_string("Ranks", string(levelsign), "none")
ini_close()
if (levelrank == "none")
    visible = false
else
    visible = true
if (levelrank == "p")
    image_index = 0
if (levelrank == "s+")
    image_index = 1
if (levelrank == "s")
    image_index = 2
if (levelrank == "a")
    image_index = 3
if (levelrank == "b")
    image_index = 4
if (levelrank == "c")
    image_index = 5
if (levelrank == "d")
    image_index = 6