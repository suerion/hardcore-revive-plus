recipe take @s hcrplus:life_jam

advancement revoke @s only hcrplus:life_jam

# Return items if Life Jam is disabled or unavailable with 1 max life
execute if score mnc_settings mnc_lifeJam matches 0 run title @s actionbar ["Life Jam has been disabled!"]
execute if score mnc_settings mnc_lifeJam matches 0 run give @s totem_of_undying
execute if score mnc_settings mnc_lifeJam matches 0 run give @s experience_bottle
execute if score mnc_settings mnc_lifeJam matches 0 run give @s redstone_block 2
execute if score mnc_settings mnc_lifeJam matches 0 run give @s bone_block
execute if score mnc_settings mnc_lifeJam matches 0 run clear @s honey_bottle[enchantments={"minecraft:mending":1}] 1

execute unless score mnc_settings mnc_lifeJam matches 0 if score mnc_settings mnc_defaultLives matches 1 run title @s actionbar ["Life Jam is unavailable while Max Lives is set to 1!"]
execute unless score mnc_settings mnc_lifeJam matches 0 if score mnc_settings mnc_defaultLives matches 1 run give @s totem_of_undying
execute unless score mnc_settings mnc_lifeJam matches 0 if score mnc_settings mnc_defaultLives matches 1 run give @s experience_bottle
execute unless score mnc_settings mnc_lifeJam matches 0 if score mnc_settings mnc_defaultLives matches 1 run give @s redstone_block 2
execute unless score mnc_settings mnc_lifeJam matches 0 if score mnc_settings mnc_defaultLives matches 1 run give @s bone_block
execute unless score mnc_settings mnc_lifeJam matches 0 if score mnc_settings mnc_defaultLives matches 1 run clear @s honey_bottle[enchantments={"minecraft:mending":1}] 1