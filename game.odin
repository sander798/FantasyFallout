package blockDungeons3

import "core:fmt"
import "core:log"
import rl "vendor:raylib"

TITLE :: "Block Dungeons 3"
VERSION :: "v0.0.1"
DATE :: "September 3rd, 2025"

main :: proc() {
    context.logger = log.create_console_logger()
    defer log.destroy_console_logger(context.logger)

    fmt.println("****", TITLE, "--", VERSION, "--", DATE, "****")

    rl.InitWindow(800, 600, TITLE)
    defer rl.CloseWindow()

    rl.SetTargetFPS(60)

    for !rl.WindowShouldClose() {
        rl.BeginDrawing()

        rl.ClearBackground(rl.BLACK)

        rl.EndDrawing()
    }
}