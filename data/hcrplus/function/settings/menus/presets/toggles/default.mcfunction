function hcrplus:defaults

# Cancel active Auto Revive countdowns
scoreboard players reset @a[tag=autoRevive] reviveTimer
scoreboard players reset @a[tag=autoRevive] minute
scoreboard players reset @a[tag=autoRevive] second
tag @a[tag=autoRevive] remove autoRevive

scoreboard players set @a[scores={Lives=1..}] Lives 1

function hcrplus:settings/menus/lives/toggles/name_colors_off
function hcrplus:settings/menus/lives/toggles/tablist_off

function hcrplus:settings/menus/presets/page1_default