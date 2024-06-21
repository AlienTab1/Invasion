
### Invasion Game Overview

**Basic Idea:**
"Invasion" is a simple 2D space shooter game developed using the Godot Engine. The game is designed to provide an engaging experience where players control a spaceship to shoot down enemies and has to survive in defined time, aiming for the highest score.

### Conclusion

The "Invasion" game is a structured 2D space shooter built using the Godot Engine. It is organized into assets, scenes, and scripts, each playing a crucial role in the game's functionality. The game offers an engaging experience by challenging players to survive and achieve high scores while facing waves of enemies.

### Technical detail
**Game Structure:**
The game is structured into several key components, each managed by specific files and folders:

1. **Assets:**
   - **Audio:** Contains sound effects used in the game.
     - `assets/audio/explode.wav`
     - `assets/audio/hit.wav`
     - `assets/audio/sfx_laser2.wav`
   - **Font:** Includes the font used for text display.
     - `assets/font/Kenney Blocks.ttf`
   - **Textures:** Stores graphical assets for the game.
     - `assets/textures/bg.png`
     - `assets/textures/enemy_ship.png`
     - `assets/textures/enemy_ship_2.png`
     - `assets/textures/orb.png`
     - `assets/textures/player_ship.png`
     - `assets/textures/rocket.png`

2. **Scenes:**
   - **Enemy:** Manages enemy ship behavior and appearance.
     - `scenes/enemy.tscn`
   - **Enemy Spawner:** Handles the spawning of enemy ships.
     - `scenes/enemy_spawner.tscn`
   - **Game:** The main game scene where gameplay occurs.
     - `scenes/game.tscn`
   - **Game Over Screen:** Displays when the player loses the game.
     - `scenes/game_over_screen.tscn`
   - **HUD:** Manages the heads-up display for score and other game information.
     - `scenes/hud.tscn`
   - **Player:** Manages the player's spaceship behavior and appearance.
     - `scenes/player.tscn`
   - **Rocket:** Handles the behavior and appearance of rockets fired by the player.
     - `scenes/rocket.tscn`

3. **Scripts:**
   - **Enemy Script:** Controls the logic for enemy ships.
     - `scripts/enemy.gd`
   - **Enemy Spawner Script:** Controls the logic for spawning enemies.
     - `scripts/enemy_spawner.gd`
   - **Game Script:** Manages the main game logic.
     - `scripts/game.gd`
   - **Game Over Screen Script:** Manages the logic for the game over screen.
     - `scripts/game_over_screen.gd`
   - **HUD Script:** Controls the logic for the heads-up display.
     - `scripts/hud.gd`
   - **Player Script:** Manages the player's spaceship logic.
     - `scripts/player.gd`
   - **Rocket Script:** Controls the behavior of the rockets fired by the player.
     - `scripts/rocket.gd`

