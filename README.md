## Development Status

Hardcore Revive+ is currently being prepared for Minecraft 26.2 and a future mod-based rewrite.

The stable public release remains the datapack / datapack-mod version for Minecraft 26.1.2.

The standalone mod build is experimental and is not intended for public release yet. It is only used for development and testing while the 26.2 update and mod port are still in progress.

Please do not use the standalone mod build on production servers until it is marked as stable.

## Project Status

Hardcore Revive+ was originally created by **StapleTT**.

Since the original project is no longer actively maintained for newer Minecraft versions, this repository continues the development with the goal of preserving and expanding the project while keeping the original datapack concept intact.

The long-term goal is to support both the original datapack experience and an optional Fabric/Quilt mod that adds features and compatibility which are not possible with a datapack alone.

The original Discord server is still available for the existing community:

## Need help? Join our [Discord](https://discord.gg/2698cavvue).

For bug reports, feature requests, and development of this continuation, please use the GitHub Issues page:

https://github.com/suerion/hardcore-revive-plus/issues
## Key Features
- Once a player loses all of their lives, they become a ghost. Ghosts are spectators that can generate and load chunks and possess players to grant them buffs.
- You can revive another fallen player by crafting a **Soul Charm** and dropping it on the ground. Once a ghost touches a Soul Charm, they are revived with a set amount of lives.
- Players are able to regain lost lives by consuming a **Life Jam**. You can regain as many lives as you want, as long as you do not go over the maximum.
- When **Auto Revive** is enabled, ghosts can be revived automatically after 10 minutes.
- When **Lifesteal** is enabled, killing another player grants another life.
  
<details>
<summary>Soul Charm Recipe</summary>

![Soul Charm Recipe](https://cdn.modrinth.com/data/cached_images/8a35eab05eb6d3511d2355d980c573bac2e9ff67.png)

</details>

<details>
<summary>Life Jam Recipe</summary>

![Life Jam Recipe](https://cdn.modrinth.com/data/cached_images/04ed2fbff0f4b4a62489c944cc9ee6d945e26cf1.webp)

</details>

## Configuration
Hardcore Revive+ comes with an expansive and easily accessible settings menu that can be opened using `/trigger _hcrplus_settings`. You will automatically be prompted to configure your preferred settings upon creating your world.
### Lives
- **Max Lives** - The amount of lives each player receives. You can choose between 1, 3, or 5 lives.
- **Name Colors** - If enabled, players' names will be colored according to the amount of lives they have.
- **Lives in Tab List** - If enabled, the amount of lives each player has will be displayed in the tab list.
- **Lives on Revival** - The amount of lives each player receives after being revived. You can choose between 1 life, half of max lives, or max lives.
- **Possession** - When enabled, ghosts can spectate other players to grant them a selection of buffs.
- **Lifesteal** - When enabled, killing a player grants another life.
- **Auto Revive** - When enabled, ghosts will automatically be revived after 10 minutes.
- **Auto Revive Timer** - The amount of time in seconds before a ghost is automatically revived.

### Ghosts
- **Ghost Spawn Mode** - Choose where ghosts will appear after losing their final life:
    - **Server Spawn** - Respawn at the configured server spawn.
    - **Nearest Living Player** - Respawn near the closest living player.
    - **Vanilla Spawn** - Respawn at the player's bed or respawn anchor, otherwise the world spawn.
    - **Death Location** - Respawn at the location where the player died.

### Revive
- **Auto Revive Spawn Mode** - Choose where automatically revived players will respawn:
    - **Vanilla Spawn** - Respawn at the player's bed or respawn anchor, otherwise the world spawn.
    - **Server Spawn** - Respawn at the configured server spawn.
    - **Death Location** - Respawn at the location where the player died.

### World
- **Respect Server Difficulty** - When enabled, Hardcore Revive+ uses the server's current difficulty instead of enforcing its own behavior. This allows the datapack to integrate more naturally with servers that change difficulty dynamically.

### Items
- **Soul Charm** - When disabled, Soul Charms will no longer be craftable and split into their crafting recipe when dropped.
- **Life Jam** - When disabled, Life Jams will no longer be craftable and split into their crafting recipe when consumed.
- **Soul Charm Debuffs** - When enabled, crafting a Soul Charm will grant a selection of debuffs for 5 minutes, and being revived will grant debuffs for 1 minute.
- **Anounce Revives** - Sends a global message when a player is revived.

### Debug Menu
- **Give Soul Charm**
- **Give Life Jam**

## Incompatibilities
- Vanilla Hardcore mode
- Any "Unlock all recipes" data pack
- [Essential Mod](https://modrinth.com/mod/essential)
- [WorldGameRules](https://modrinth.com/mod/worldgamerules)

## Removal
Need to uninstall Hardcore Revive+? You can remove all features by executing the command `/function hcrplus:_uninstall` in-game, and then deleting Hardcore Revive+ from either your `datapacks` folder or your `mods` folder.
