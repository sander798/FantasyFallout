package fantasyFallout

import rl "vendor:raylib"
//import "core:fmt"

tileMap : rl.Texture2D
tiles : [64]rl.Rectangle

loadAssets :: proc() {
    loadImages()
    //loadMaps()
}

loadImages :: proc() {
    tileMap = rl.LoadTexture("./assets/graphics/urizen_onebit_tileset__v2d0.png")

    tiles[0] = rl.Rectangle {1 + (13 * 17), 1, 12, 12,}//Blank space
    tiles[1] = rl.Rectangle {1 + (0 * 17), 1 + (2 * 13), 12, 12,}//Stone wall
}

loadMaps :: proc() {
    
}

drawTile :: proc(tileID: int, pos: [2]f32) {
    rl.DrawTexturePro(tileMap, tiles[tileID], {pos.x, pos.y, 48, 48}, {0, 0}, 0, rl.WHITE)
}