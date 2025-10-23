package fantasyFallout

//import "core:fmt"
import rl "vendor:raylib"

player: Player : {
    {0, 0},
    10,
    10,
}

update :: proc() {
    

    render()
}

render :: proc() {
    rl.BeginDrawing()

    rl.ClearBackground(rl.BLACK)

    //rl.DrawTextEx(rl.GetFontDefault(), "Hello World!", {100, 100}, 20, 10, rl.RED)
    drawTile(1, {20, 20})

    if debugMode do rl.DrawFPS(0, 0)

    rl.EndDrawing()
}