scoreboard players set @s lifeReset 0

# Return totem of undying if Life Jam is disabled
execute if score mnc_settings mnc_lifeJam matches 0 run title @s actionbar ["Life Jam has been disabled!"]
execute if score mnc_settings mnc_lifeJam matches 0 run give @s totem_of_undying

# Mark successful Life Jam use
execute if score mnc_settings mnc_lifeJam matches 1 run tag @s add lifeJam

# Check if player has max lives
execute as @s[scores={Lives=3..}] if score mnc_settings mnc_lifeJam matches 1 run give @s totem_of_undying
execute as @s[scores={Lives=3..}] if score mnc_settings mnc_lifeJam matches 1 run title @s actionbar "You have reached the maximum amount of lives!"
execute as @s[scores={Lives=3..}] if score mnc_settings mnc_lifeJam matches 1 run tag @s remove lifeJam

# Add life
execute as @s[scores={Lives=..2}] if score mnc_settings mnc_lifeJam matches 1 run title @s actionbar "You have received another life!"
execute as @s[scores={Lives=..2}] if score mnc_settings mnc_lifeJam matches 1 run scoreboard players add @s Lives 1

# Life Jam effect
execute if score mnc_settings mnc_lifeJam matches 1 run effect give @s minecraft:absorption 480 1 false

# Particle effect
execute as @a[tag=lifeJam] at @s run particle minecraft:heart ~ ~1 ~ 0.5 1 0.5 0.05 20 force @a
tag @a[tag=lifeJam] remove lifeJam