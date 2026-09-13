scoreboard players set mnc_settings mnc_defaultLives 3
scoreboard players set mnc_settings mnc_reviveLifeCount 1
scoreboard players set mnc_settings mnc_nameColors 1
scoreboard players set mnc_settings mnc_tablist 1
scoreboard players set mnc_settings mnc_lifeSteal 1
scoreboard players set mnc_settings mnc_autoRevive 0

# Cancel active Auto Revive countdowns
scoreboard players reset @a[tag=autoRevive] reviveTimer
scoreboard players reset @a[tag=autoRevive] minute
scoreboard players reset @a[tag=autoRevive] second
tag @a[tag=autoRevive] remove autoRevive

scoreboard players set mnc_settings mnc_revival 1
scoreboard players set mnc_settings mnc_lifeJam 0
scoreboard players set mnc_settings mnc_soulCharmDebuffs 1

scoreboard players set @a[scores={Lives=1..}] Lives 3
scoreboard objectives setdisplay list Lives

function hcrplus:settings/menus/presets/page1_lifesteal