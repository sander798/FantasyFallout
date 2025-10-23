package fantasyFallout

import "core:fmt"
import "core:log"
import rl "vendor:raylib"

TITLE :: "FantasyFallout"
VERSION :: "v0.0.1"
DATE :: "October 22nd, 2025"

debugMode := false

gameState :: enum {
    MAIN_MENU,
    PLAY,
}

main :: proc() {
    context.logger = log.create_console_logger()
    defer log.destroy_console_logger(context.logger)

    fmt.println("****", TITLE, "--", VERSION, "--", DATE, "****")

    rl.InitWindow(800, 600, TITLE)
    defer rl.CloseWindow()
    
    rl.SetTargetFPS(60)

    loadAssets()

    for !rl.WindowShouldClose() {
        update()
    }
}