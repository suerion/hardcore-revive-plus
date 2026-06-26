# Auto Revive Spawn Mode
# 0 = Vanilla Spawn
# 1 = Server Spawn
# 2 = Death Location

# Vanilla Spawn
# Do not change spawnpoint. Minecraft keeps Bed / Respawn Anchor, otherwise Server Spawn.

# Server Spawn
execute if score hcrplus_settings hcrplus_revive_spawn_mode matches 1 at @e[type=minecraft:marker,tag=hcrplus_server_spawn,limit=1] run tp @s ~ ~ ~

# Death Location
tag @s add hcrplus_reviving_player
tag @e[type=minecraft:marker,tag=hcrplus_death_location] remove hcrplus_death_location_match
execute if score hcrplus_settings hcrplus_revive_spawn_mode matches 2 as @e[type=minecraft:marker,tag=hcrplus_death_location] if score @s hcrplus_player_id = @a[tag=hcrplus_reviving_player,limit=1] hcrplus_player_id run tag @s add hcrplus_death_location_match
execute if score hcrplus_settings hcrplus_revive_spawn_mode matches 2 at @e[type=minecraft:marker,tag=hcrplus_death_location_match,limit=1] run tp @a[tag=hcrplus_reviving_player,limit=1] ~ ~ ~
tag @s remove hcrplus_reviving_player

function hcrplus:util/remove_death_marker

gamemode survival @s

# Set lives
execute if score mnc_settings mnc_defaultLives matches 1 run scoreboard players set @s Lives 1
execute if score mnc_settings mnc_defaultLives matches 3 if score mnc_settings mnc_reviveLifeCount matches 1 run scoreboard players set @s Lives 1
execute if score mnc_settings mnc_defaultLives matches 3 if score mnc_settings mnc_reviveLifeCount matches 2 run scoreboard players set @s Lives 2
execute if score mnc_settings mnc_defaultLives matches 3 if score mnc_settings mnc_reviveLifeCount matches 3 run scoreboard players set @s Lives 3
execute if score mnc_settings mnc_defaultLives matches 5 if score mnc_settings mnc_reviveLifeCount matches 1 run scoreboard players set @s Lives 1
execute if score mnc_settings mnc_defaultLives matches 5 if score mnc_settings mnc_reviveLifeCount matches 2 run scoreboard players set @s Lives 3
execute if score mnc_settings mnc_defaultLives matches 5 if score mnc_settings mnc_reviveLifeCount matches 3 run scoreboard players set @s Lives 5

# Apply debuffs
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 run effect give @s minecraft:slowness 60 1 true
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 run effect give @s minecraft:weakness 60 1 true
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 run effect give @s minecraft:glowing 60 1 true
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 run effect give @s minecraft:hunger 60 1 true
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 run effect give @s minecraft:mining_fatigue 60 1 true
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 run effect give @s minecraft:poison 2 0 true

# Reset revive timer and announce revive
tag @s remove autoRevive
scoreboard players reset @s reviveTimer
scoreboard players reset @s minute
scoreboard players reset @s second
title @s actionbar {"text":"You have been revived!", "color":"white"}
execute if score mnc_settings mnc_announceRevive matches 1 run tellraw @a [{"selector":"@s"},{"text":" has returned from the afterlife!","color":"green"}]

# Particle effects
execute as @s at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 1 0.5 0.05 75 force @a
execute as @s at @s run particle minecraft:soul ~ ~1 ~ 0.5 1 0.5 0.05 75 force @a

playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 10 1
effect give @s minecraft:blindness 1 5