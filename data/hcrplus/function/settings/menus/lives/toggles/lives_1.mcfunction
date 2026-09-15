scoreboard players set mnc_settings mnc_defaultLives 1
scoreboard players set @a[tag=!hcrplus_ghost] Lives 1

team remove 0
team remove 1
team remove 2
team remove 3
team remove 4
team remove 5

team add 0
team add 1
team add 2
team add 3
team add 4
team add 5

function hcrplus:settings/menus/lives/page1

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1