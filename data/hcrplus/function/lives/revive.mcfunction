# Check for players touching revive item
execute at @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{Revive:1b}}},PickupDelay:0s}] run tag @p[distance=..2,gamemode=spectator] add Revive
execute at @a[tag=Revive] run kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{Revive:1b}}}},limit=1,distance=..5]
execute as @a[tag=Revive] at @s run gamemode survival @s

# Apply debuffs upon revive
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 run execute at @a[tag=Revive] run effect give @p minecraft:slowness 60 1 true
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 run execute at @a[tag=Revive] run effect give @p minecraft:weakness 60 1 true
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 run execute at @a[tag=Revive] run effect give @p minecraft:glowing 60 1 true
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 run execute at @a[tag=Revive] run effect give @p minecraft:hunger 60 1 true
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 run execute at @a[tag=Revive] run effect give @p minecraft:mining_fatigue 60 1 true
execute if score mnc_settings mnc_soulCharmDebuffs matches 1 run execute at @a[tag=Revive] run effect give @p minecraft:poison 2 0 true

# Set lives
execute if score mnc_settings mnc_defaultLives matches 1 at @a[tag=Revive] run scoreboard players set @p Lives 1
execute if score mnc_settings mnc_defaultLives matches 3 at @a[tag=Revive] if score mnc_settings mnc_reviveLifeCount matches 1 run scoreboard players set @p Lives 1
execute if score mnc_settings mnc_defaultLives matches 3 at @a[tag=Revive] if score mnc_settings mnc_reviveLifeCount matches 2 run scoreboard players set @p Lives 2
execute if score mnc_settings mnc_defaultLives matches 3 at @a[tag=Revive] if score mnc_settings mnc_reviveLifeCount matches 3 run scoreboard players set @p Lives 3
execute if score mnc_settings mnc_defaultLives matches 5 at @a[tag=Revive] if score mnc_settings mnc_reviveLifeCount matches 1 run scoreboard players set @p Lives 1
execute if score mnc_settings mnc_defaultLives matches 5 at @a[tag=Revive] if score mnc_settings mnc_reviveLifeCount matches 2 run scoreboard players set @p Lives 3
execute if score mnc_settings mnc_defaultLives matches 5 at @a[tag=Revive] if score mnc_settings mnc_reviveLifeCount matches 3 run scoreboard players set @p Lives 5

# Revive effects
execute as @a[tag=Revive] run effect give @s minecraft:blindness 1 5
execute as @a[tag=Revive] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 10 1

# Particle effects
execute as @a[tag=Revive] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 1 0.5 0.05 75 force @a
execute as @a[tag=Revive] at @s run particle minecraft:soul ~ ~1 ~ 0.5 1 0.5 0.05 75 force @a

# Announce revive in chat
execute if score mnc_settings mnc_announceRevive matches 1 as @a[tag=Revive] run tellraw @a [{"selector":"@s"},{"text":" has returned from the afterlife!","color":"green"}]

execute as @a[tag=Revive] run tag @s remove Revive