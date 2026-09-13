scoreboard players set @s lifeReset 0

# Return totem of undying if Life Jam is disabled
execute if score mnc_settings mnc_lifeJam matches 0 run title @s actionbar ["Life Jam has been disabled!"]
execute if score mnc_settings mnc_lifeJam matches 0 run give @s totem_of_undying

# Return totem if Life Jam is unavailable because Max Lives is set to 1
execute unless score mnc_settings mnc_lifeJam matches 0 if score mnc_settings mnc_defaultLives matches 1 run title @s actionbar ["Life Jam has been disabled!"]
execute unless score mnc_settings mnc_lifeJam matches 0 if score mnc_settings mnc_defaultLives matches 1 run give @s totem_of_undying