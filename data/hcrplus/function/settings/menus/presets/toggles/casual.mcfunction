scoreboard players set mnc_settings mnc_defaultLives 3
scoreboard players set mnc_settings mnc_nameColors 1
scoreboard players set mnc_settings mnc_tablist 1
scoreboard players set mnc_settings mnc_reviveLifeCount 3
scoreboard players set mnc_settings mnc_autoRevive 1

scoreboard players set mnc_settings mnc_lifeSteal 0
scoreboard players set mnc_settings mnc_revival 0
scoreboard players set mnc_settings mnc_lifeJam 1
scoreboard players set mnc_settings mnc_soulCharmDebuffs 0

scoreboard players set @a[scores={Lives=1..}] Lives 3
scoreboard objectives setdisplay list Lives

function hcrplus:settings/menus/presets/page1_casual