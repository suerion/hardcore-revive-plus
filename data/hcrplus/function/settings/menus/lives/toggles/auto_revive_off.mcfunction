scoreboard players set mnc_settings mnc_autoRevive 0

# Cancel active Auto Revive countdowns
scoreboard players reset @a[tag=autoRevive] reviveTimer
scoreboard players reset @a[tag=autoRevive] minute
scoreboard players reset @a[tag=autoRevive] second
tag @a[tag=autoRevive] remove autoRevive

function hcrplus:settings/menus/lives/page3

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1