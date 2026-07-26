## Development Status

Hardcore Revive+ is now community maintained.

The latest stable release is **v1.11.6** for **Minecraft 26.1.2 (1.21.11)** and is available as both a traditional datapack and a datapack packaged inside a mod.

A standalone **Fabric Mod Port** is currently in active development. This is a long-term project that is only available on GitHub for development and testing and has **not** been released publicly yet.

---

## Project Status

Hardcore Revive+ was originally created by **StapleTT**.

With the author's permission, development continues to keep Hardcore Revive+ compatible with newer Minecraft versions while preserving the original gameplay experience.

The long-term goal is to continue supporting the original datapack while also developing an optional standalone Fabric mod that can provide features, compatibility, and optimizations that are not possible with a datapack alone.

The original Discord server remains available for the existing community.

---

## Need help? Join our [Discord](https://discord.gg/2698cavvue).

Are you tired of standard Minecraft death mechanics? Maybe dying over and over again just to respawn is too easy, or playing Hardcore mode with one life is too difficult. Hardcore Revive+ solves this problem by adding a highly configurable lives system to your Minecraft world that fits all scenarios.

---

## Key Features

- Once a player loses all of their lives, they become a ghost. Ghosts are spectators that can generate and load chunks and possess players to grant them buffs.
- You can revive another fallen player by crafting a **Soul Charm** and dropping it on the ground. Once a ghost touches a Soul Charm, they are revived with a configurable amount of lives.
- Players are able to regain lost lives by consuming a **Life Jam**.
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
- Configure how Hardcore Revive+ interacts with the world's difficulty.
- Dedicated server spawn marker independent from the vanilla world spawn.
- Vanilla deaths and respawns are tracked so that normal Minecraft respawn mechanics continue to work correctly when players lose their final life or are revived.
- Works as both a traditional datapack and a datapack packaged inside a mod.

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

Hardcore Revive+ comes with an extensive and easily accessible in-game settings menu that can be opened using:

```mcfunction
/trigger _hcrplus_settings
```

You will automatically be prompted to configure your preferred settings when creating a new world.

### Lives

- **Max Lives** - The amount of lives each player receives. Choose between 1, 3, or 5 lives.
- **Lives on Revival** - Configure how many lives a player receives after being revived.
- **Name Colors** - Color player names based on their remaining lives.
- **Lives in Tab List** - Display remaining lives in the player list.
- **Possession** - Allow ghosts to spectate living players and grant temporary buffs.
- **Lifesteal** - Killing another player grants an additional life.
- **Auto Revive** - Automatically revive ghosts after a configurable amount of time.
- **Auto Revive Timer** - Configure the delay before an automatic revival.

### Ghosts

- **Ghost Spawn Mode** - Choose where ghosts respawn after losing their final life.
  - **Server Spawn**
  - **Nearest Living Player**
  - **Vanilla Spawn**
  - **Death Location**

### Revive

- **Auto Revive Spawn Mode** - Choose where automatically revived players respawn.
  - **Vanilla Spawn**
  - **Server Spawn**
  - **Death Location**
- Hardcore Revive+ processes and tracks the player's vanilla death and respawn when their final life is lost. This ensures that vanilla mechanics such as beds, respawn anchors, death positions, and other respawn-related systems continue to work correctly.

### World

- **Difficulty Mode** - Configure how Hardcore Revive+ interacts with the world's difficulty.
- **Respect Server Difficulty** - Uses the world's current difficulty.
- **Easy Difficulty**
- **Normal Difficulty**
- **Hard Difficulty**

### Items

- **Soul Charm** - When disabled, Soul Charms are no longer craftable and split back into their crafting ingredients when dropped.
- **Life Jam** - When disabled, Life Jams are no longer craftable and split back into their crafting ingredients when consumed.
- **Soul Charm Debuffs** - Applies configurable debuffs after crafting a Soul Charm and after being revived.
- **Announce Revives** - Broadcasts a global message whenever a player is revived.

### Debug Menu

- **Give Soul Charm**
- **Give Life Jam**

---

## Compatibility

### Gravestone Mods

Hardcore Revive+ processes a vanilla player death when the player loses their final life and becomes a ghost. Because of this, gravestone mods may create a gravestone during the transition into the ghost state.

A dedicated **HCRPlus Compatibility** mod is currently in development. It prevents supported gravestone mods from creating a gravestone when a player loses their final life and becomes a ghost.

The compatibility mod does not restore, transfer, or otherwise modify the player's inventory. Its only purpose is to prevent the gravestone from being created during the final-life death handled by Hardcore Revive+.

The compatibility mod has **not yet been officially released**. Its GitHub repository is currently private while the first development builds are being prepared and tested.

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