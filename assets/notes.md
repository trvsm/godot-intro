# Godot is a hierarchy of nodes
- If you want to spawn a lot of (coins, enemies) put them in a scene, spawn multiple
- Nodes inherit parent position, rotation & scale
- Duplicate a sprite of a child node may disappear on scale?

- Directional light: like sun
- Omni light: like candle
- Spotlight: cone; headlights, streetlight, torch

## bug?
duplicate a nested 2d node then scale, it disappears?


## vectors
- position in code
- global_position: position of the node in question in the script
- eg global_position.x = val
- var vec = Vector2(x, y); Vector3(x, y, z)
- multiply by delta to convert from change per frame to change per second
- delta is time diff between frames

# Coin Collector Game
- player that can move
- On collide with coin: destroy coin, scale player
