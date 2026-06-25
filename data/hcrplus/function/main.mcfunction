# Gamerules
gamerule immediate_respawn false
gamerule spectators_generate_chunks true

# Destroy disabled Soul Charms
execute if score mnc_settings mnc_revival matches 0 at @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{Revive:1b}}},PickupDelay:0s}] run summon item ~ ~ ~ {Item:{id:"minecraft:totem_of_undying"}}
execute if score mnc_settings mnc_revival matches 0 at @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{Revive:1b}}},PickupDelay:0s}] run summon item ~ ~ ~ {Item:{id:"minecraft:redstone_block",count:4}}
execute if score mnc_settings mnc_revival matches 0 at @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{Revive:1b}}},PickupDelay:0s}] run summon item ~ ~ ~ {Item:{id:"minecraft:bone_block",count:2}}
execute if score mnc_settings mnc_revival matches 0 at @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{Revive:1b}}},PickupDelay:0s}] run summon item ~ ~ ~ {Item:{id:"minecraft:copper_block",count:2}}
execute if score mnc_settings mnc_revival matches 0 run kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{Revive:1b}}},PickupDelay:0s}]

# Revive
execute if score mnc_settings mnc_revival matches 1 run scoreboard players add mnc_settings reviveTimer 1
execute if score mnc_settings mnc_revival matches 1 if score mnc_settings reviveTimer matches 12.. run function hcrplus:lives/revive

# Detect deaths
execute as @a[scores={deaths=1..}] run function hcrplus:lives/death

# Keep ghosts in spectator after server restart or force-gamemode
execute as @a[scores={Lives=..0},gamemode=!spectator] run gamemode spectator @s

execute as @a[scores={Lives=1..,respawn=1},gamemode=spectator] run function hcrplus:lives/respawn

# Check for Life Jam uses
execute as @a[scores={lifeReset=1..}] if score mnc_settings mnc_defaultLives matches 1 run function hcrplus:items/life_reset_1
execute as @a[scores={lifeReset=1..}] if score mnc_settings mnc_defaultLives matches 3 run function hcrplus:items/life_reset_3
execute as @a[scores={lifeReset=1..}] if score mnc_settings mnc_defaultLives matches 5 run function hcrplus:items/life_reset_5

# Ghost particles
execute at @a[gamemode=spectator,scores={Lives=..0}] run particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~1.5 ~ 0.5 0.5 0.5 0 2 force

# Ghost proximity alert (actionbar one-time per proximity event)
function hcrplus:events/ghost_near

# Possess
execute if score mnc_settings mnc_possession matches 1 at @a[gamemode=spectator,scores={Lives=..0}] run tag @a[distance=..0.5,gamemode=survival] add Possessed
effect give @a[tag=Possessed] minecraft:strength 1 0 true
effect give @a[tag=Possessed] minecraft:speed 1 0 true
effect give @a[tag=Possessed] minecraft:resistance 1 0 true
effect give @a[tag=Possessed] minecraft:glowing 1 0 true
tag @a remove Possessed

# Fix scores
execute if score mnc_settings mnc_defaultLives matches 1 run scoreboard players set @a[tag=!nHrCheck] Lives 1
execute if score mnc_settings mnc_defaultLives matches 3 run scoreboard players set @a[tag=!nHrCheck] Lives 3
execute if score mnc_settings mnc_defaultLives matches 5 run scoreboard players set @a[tag=!nHrCheck] Lives 5

# Set team colors
execute if score mnc_settings mnc_nameColors matches 1 if score mnc_settings mnc_defaultLives matches 3 run function hcrplus:lives/team_colors_3
execute if score mnc_settings mnc_nameColors matches 1 if score mnc_settings mnc_defaultLives matches 5 run function hcrplus:lives/team_colors_5

# Set player teams
execute unless score mnc_settings mnc_defaultLives matches 1 run function hcrplus:lives/join_teams

# Set cooldown timer for ghost proximity alert
execute as @a[tag=!nHrCheck] unless score @s hcrplus_ghostCooldown matches 0.. run scoreboard players set @s hcrplus_ghostCooldown 0

# Set lives for new players
execute unless score mnc_settings mnc_openedSettings matches 1 as @a[tag=!nHrCheck] run function hcrplus:settings/join_prompt
tag @a add nHrCheck

# Assign persistent HCRPlus player ids
execute as @a[tag=nHrCheck] unless score @s hcrplus_player_id matches 1.. run function hcrplus:util/assign_player_id

# Auto Revive
execute if score mnc_settings mnc_autoRevive matches 1 as @a[scores={Lives=0},tag=!autoRevive,gamemode=spectator] run tag @s add autoRevive
execute as @a[tag=autoRevive] if score mnc_settings mnc_autoReviveTimer matches 1 run execute unless score @s reviveTimer matches 1.. run scoreboard players set @s reviveTimer 1200
execute as @a[tag=autoRevive] if score mnc_settings mnc_autoReviveTimer matches 2 run execute unless score @s reviveTimer matches 1.. run scoreboard players set @s reviveTimer 6000
execute as @a[tag=autoRevive] if score mnc_settings mnc_autoReviveTimer matches 3 run execute unless score @s reviveTimer matches 1.. run scoreboard players set @s reviveTimer 12000
execute as @a[tag=autoRevive] if score mnc_settings mnc_autoReviveTimer matches 4 run execute unless score @s reviveTimer matches 1.. run scoreboard players set @s reviveTimer 72000
function hcrplus:events/revive_timer

# Fix auto revive timer for players revived via soul charm
tag @a[scores={Lives=1..}] remove autoRevive
scoreboard players reset @a[scores={Lives=1..}] reviveTimer
scoreboard players reset @a[scores={Lives=1..}] minute
scoreboard players reset @a[scores={Lives=1..}] second

# Fix players migrating from old packs
execute as @a[tag=nHrCheck] run execute unless score @s Lives matches 0.. run execute unless score mnc_settings mnc_migrated matches 1 run function hcrplus:migrate/hcrplus
execute as @a[tag=nHrCheck] run execute unless score @s Lives matches 0.. run scoreboard players set @s Lives 1
execute as @a[tag=nHrCheck, scores={Lives=4}] unless score mnc_settings mnc_defaultLives matches 5 run scoreboard players set @s Lives 3
execute as @a[tag=!mncHealthFix, scores={Lives=4}] run execute unless score mnc_settings mnc_defaultLives matches 3 run attribute @s max_health base set 20
execute as @a[tag=!mncHealthFix, scores={Lives=4}] run execute unless score mnc_settings mnc_defaultLives matches 3 run tag @s add mncHealthFix
execute as @a[tag=!mncHealthFix, scores={Lives=1}] run attribute @s max_health base set 20
execute as @a[tag=!mncHealthFix, scores={Lives=1}] run tag @s add mncHealthFix

# Defaults
execute unless score mnc_settings mncDefaults matches 1 run function hcrplus:defaults
scoreboard players set mnc_settings mncDefaults 1
