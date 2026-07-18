## Development Status

Hardcore Revive+ is currently being prepared for Minecraft 26.2 and a future mod-based rewrite.
The stable public release remains the datapack / datapack-mod version for Minecraft 26.1.2.
The standalone mod build is experimental and is not intended for public release yet. It is only used for development and testing while the 26.2 update and mod port are still in progress.
Please do not use the standalone mod build on production servers until it is marked as stable.

---

## Project Status

Hardcore Revive+ was originally created by **StapleTT**.
Since the original project is no longer actively maintained for newer Minecraft versions, this repository continues development with the goal of preserving and expanding the project while keeping the original datapack concept intact.
The long-term goal is to support both the original datapack experience and an optional Fabric/Quilt mod that provides features, compatibility, and optimizations that are not possible with a datapack alone.
The original Discord server remains available for the existing community.

## Need help? Join our [Discord](https://discord.gg/2698cavvue).

For bug reports, feature requests, and development of this continuation, please use the GitHub Issues page:

https://github.com/suerion/hardcore-revive-plus/issues

---

## Key Features

- Once a player loses all of their lives, they become a ghost. Ghosts are spectators that can generate and load chunks and possess players to grant them buffs.
- Revive another fallen player by crafting a **Soul Charm** and dropping it on the ground.
- Players can regain lost lives by consuming a **Life Jam**.
- **Auto Revive** can automatically revive ghosts after a configurable amount of time.
- **Lifesteal** allows players to gain an additional life by defeating another player.
- Configure where ghosts respawn after losing their final life:
    - Server Spawn
    - Nearest Living Player
    - Vanilla Spawn (Bed / Respawn Anchor)
    - Death Location
- Configure where automatically revived players respawn:
    - Vanilla Spawn
    - Server Spawn
    - Death Location
- Optionally respect the server's current difficulty instead of overriding gameplay behavior.

<details>
<summary>Soul Charm Recipe</summary>

![Soul Charm Recipe](https://cdn.modrinth.com/data/cached_images/8a35eab05eb6d3511d2355d980c573bac2e9ff67.png)

</details>

<details>
<summary>Life Jam Recipe</summary>

![Life Jam Recipe](https://cdn.modrinth.com/data/cached_images/04ed2fbff0f4b4a62489c944cc9ee6d945e26cf1.webp)

</details>

---

## Configuration

Hardcore Revive+ comes with an extensive in-game settings menu that can be opened using:

```mcfunction
/trigger _hcrplus_settings
```

New worlds will automatically prompt you to configure your preferred settings.

### Lives

- **Max Lives** – The maximum number of lives each player can have (1, 3 or 5).
- **Lives on Revival** – The number of lives restored after a successful revival.
- **Name Colors** – Color player names based on their remaining lives.
- **Lives in Tab List** – Display remaining lives in the player list.
- **Possession** – Allow ghosts to possess living players and grant temporary buffs.
- **Lifesteal** – Killing another player grants an additional life.
- **Auto Revive** – Automatically revive ghosts after a configurable amount of time.
- **Auto Revive Timer** – Configure the delay before an automatic revival.

### Ghosts

- **Ghost Spawn Mode** – Choose where ghosts appear after losing their final life.
    - **Server Spawn** – Respawn at the configured server spawn.
    - **Nearest Living Player** – Respawn near the closest living player.
    - **Vanilla Spawn** – Respawn at the player's bed or respawn anchor, otherwise the world spawn.
    - **Death Location** – Respawn where the player died.

### Revive

- **Auto Revive Spawn Mode** – Choose where automatically revived players respawn.
    - **Vanilla Spawn** – Bed or respawn anchor, otherwise the world spawn.
    - **Server Spawn** – Respawn at the configured server spawn.
    - **Death Location** – Respawn where the player died.

### World

- **Respect Server Difficulty** – Uses the server's current difficulty instead of overriding gameplay behavior.

### Items

- **Soul Charm** – Disable crafting of Soul Charms. Existing charms will split back into their crafting ingredients.
- **Life Jam** – Disable crafting of Life Jam. Existing items will split back into their crafting ingredients.
- **Soul Charm Debuffs** – Applies configurable debuffs after crafting a Soul Charm and after being revived.
- **Announce Revives** – Broadcast a global message whenever a player is revived.

### Debug Menu

- Give Soul Charm
- Give Life Jam

---

## Incompatibilities

- Vanilla Hardcore mode
- Any "Unlock all recipes" datapack
- [Essential Mod](https://modrinth.com/mod/essential)
- [WorldGameRules](https://modrinth.com/mod/worldgamerules)

---

## Removal
To completely remove Hardcore Revive+, execute:

```mcfunction
/function hcrplus:_uninstall
```
Afterwards, remove Hardcore Revive+ from either your `datapacks` folder or your `mods` folder.