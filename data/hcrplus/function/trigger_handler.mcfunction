# If you're reading this please know that implementing these triggers make me want to kill myself
# I'm not proud of this, but it's the only way to make clickable menus work anymore

# Main HCR+ Settings Menu
execute as @a[scores={_hcrplus_settings=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/main
execute as @a[scores={_hcrplus_settings=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={_hcrplus_settings=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={_hcrplus_settings=1..}] _hcrplus_settings 0

# Lives Settings Menu
execute as @a[scores={hcrplus_lives_page1=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/page1
execute as @a[scores={hcrplus_lives_page1=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_page1=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_page1=1..}] hcrplus_lives_page1 0
execute as @a[scores={hcrplus_lives_page2=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/page2
execute as @a[scores={hcrplus_lives_page2=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_page2=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_page2=1..}] hcrplus_lives_page2 0
execute as @a[scores={hcrplus_lives_page3=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/page3
execute as @a[scores={hcrplus_lives_page3=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_page3=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_page3=1..}] hcrplus_lives_page3 0
execute as @a[scores={hcrplus_lives_ar_on=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/auto_revive_on
execute as @a[scores={hcrplus_lives_ar_on=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_ar_on=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_ar_on=1..}] hcrplus_lives_ar_on 0
execute as @a[scores={hcrplus_lives_ar_off=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/auto_revive_off
execute as @a[scores={hcrplus_lives_ar_off=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_ar_off=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_ar_off=1..}] hcrplus_lives_ar_off 0
execute as @a[scores={hcrplus_lives_ls_on=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/lifesteal_on
execute as @a[scores={hcrplus_lives_ls_on=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_ls_on=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_ls_on=1..}] hcrplus_lives_ls_on 0
execute as @a[scores={hcrplus_lives_ls_off=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/lifesteal_off
execute as @a[scores={hcrplus_lives_ls_off=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_ls_off=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_ls_off=1..}] hcrplus_lives_ls_off 0
execute as @a[scores={hcrplus_lives_lives_1=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/lives_1
execute as @a[scores={hcrplus_lives_lives_1=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_lives_1=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_lives_1=1..}] hcrplus_lives_lives_1 0
execute as @a[scores={hcrplus_lives_lives_3=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/lives_3
execute as @a[scores={hcrplus_lives_lives_3=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_lives_3=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_lives_3=1..}] hcrplus_lives_lives_3 0
execute as @a[scores={hcrplus_lives_lives_5=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/lives_5
execute as @a[scores={hcrplus_lives_lives_5=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_lives_5=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_lives_5=1..}] hcrplus_lives_lives_5 0
execute as @a[scores={hcrplus_lives_nc_on=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/name_colors_on
execute as @a[scores={hcrplus_lives_nc_on=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_nc_on=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_nc_on=1..}] hcrplus_lives_nc_on 0
execute as @a[scores={hcrplus_lives_nc_off=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/name_colors_off
execute as @a[scores={hcrplus_lives_nc_off=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_nc_off=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_nc_off=1..}] hcrplus_lives_nc_off 0
execute as @a[scores={hcrplus_lives_ps_on=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/possession_on
execute as @a[scores={hcrplus_lives_ps_on=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_ps_on=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_ps_on=1..}] hcrplus_lives_ps_on 0
execute as @a[scores={hcrplus_lives_ps_off=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/possession_off
execute as @a[scores={hcrplus_lives_ps_off=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_ps_off=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_ps_off=1..}] hcrplus_lives_ps_off 0
execute as @a[scores={hcrplus_lives_rv_1=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/revive_1
execute as @a[scores={hcrplus_lives_rv_1=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_rv_1=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_rv_1=1..}] hcrplus_lives_rv_1 0
execute as @a[scores={hcrplus_lives_rv_half=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/revive_half
execute as @a[scores={hcrplus_lives_rv_half=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_rv_half=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_rv_half=1..}] hcrplus_lives_rv_half 0
execute as @a[scores={hcrplus_lives_rv_max=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/revive_max
execute as @a[scores={hcrplus_lives_rv_max=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_rv_max=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_rv_max=1..}] hcrplus_lives_rv_max 0
execute as @a[scores={hcrplus_lives_tab_on=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/tablist_on
execute as @a[scores={hcrplus_lives_tab_on=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_tab_on=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_tab_on=1..}] hcrplus_lives_tab_on 0
execute as @a[scores={hcrplus_lives_tab_off=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/tablist_off
execute as @a[scores={hcrplus_lives_tab_off=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_tab_off=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_tab_off=1..}] hcrplus_lives_tab_off 0
execute as @a[scores={hcrplus_lives_revive_timer_1m=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/revive_timer_1m
execute as @a[scores={hcrplus_lives_revive_timer_1m=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_revive_timer_1m=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_revive_timer_1m=1..}] hcrplus_lives_revive_timer_1m 0
execute as @a[scores={hcrplus_lives_revive_timer_5m=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/revive_timer_5m
execute as @a[scores={hcrplus_lives_revive_timer_5m=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_revive_timer_5m=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_revive_timer_5m=1..}] hcrplus_lives_revive_timer_5m 0
execute as @a[scores={hcrplus_lives_revive_timer_10m=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/revive_timer_10m
execute as @a[scores={hcrplus_lives_revive_timer_10m=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_revive_timer_10m=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_revive_timer_10m=1..}] hcrplus_lives_revive_timer_10m 0
execute as @a[scores={hcrplus_lives_revive_timer_1h=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/lives/toggles/revive_timer_1h
execute as @a[scores={hcrplus_lives_revive_timer_1h=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_lives_revive_timer_1h=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_lives_revive_timer_1h=1..}] hcrplus_lives_revive_timer_1h 0

# Items Settings Menu
execute as @a[scores={hcrplus_items_page1=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/items/page1
execute as @a[scores={hcrplus_items_page1=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_items_page1=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_items_page1=1..}] hcrplus_items_page1 0
execute as @a[scores={hcrplus_items_page2=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/items/page2
execute as @a[scores={hcrplus_items_page2=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_items_page2=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_items_page2=1..}] hcrplus_items_page2 0
execute as @a[scores={hcrplus_items_announce_revive_on=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/items/toggles/announce_revive_on
execute as @a[scores={hcrplus_items_announce_revive_on=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_items_announce_revive_on=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_items_announce_revive_on=1..}] hcrplus_items_announce_revive_on 0
execute as @a[scores={hcrplus_items_announce_revive_off=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/items/toggles/announce_revive_off
execute as @a[scores={hcrplus_items_announce_revive_off=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_items_announce_revive_off=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_items_announce_revive_off=1..}] hcrplus_items_announce_revive_off 0
execute as @a[scores={hcrplus_items_charm_debuffs_on=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/items/toggles/charm_debuffs_on
execute as @a[scores={hcrplus_items_charm_debuffs_on=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_items_charm_debuffs_on=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_items_charm_debuffs_on=1..}] hcrplus_items_charm_debuffs_on 0
execute as @a[scores={hcrplus_items_charm_debuffs_off=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/items/toggles/charm_debuffs_off
execute as @a[scores={hcrplus_items_charm_debuffs_off=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_items_charm_debuffs_off=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_items_charm_debuffs_off=1..}] hcrplus_items_charm_debuffs_off 0
execute as @a[scores={hcrplus_items_lifejam_on=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/items/toggles/life_jam_on
execute as @a[scores={hcrplus_items_lifejam_on=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_items_lifejam_on=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_items_lifejam_on=1..}] hcrplus_items_lifejam_on 0
execute as @a[scores={hcrplus_items_lifejam_off=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/items/toggles/life_jam_off
execute as @a[scores={hcrplus_items_lifejam_off=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_items_lifejam_off=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_items_lifejam_off=1..}] hcrplus_items_lifejam_off 0
execute as @a[scores={hcrplus_items_charm_on=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/items/toggles/soul_charm_on
execute as @a[scores={hcrplus_items_charm_on=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_items_charm_on=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_items_charm_on=1..}] hcrplus_items_charm_on 0
execute as @a[scores={hcrplus_items_charm_off=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/items/toggles/soul_charm_off
execute as @a[scores={hcrplus_items_charm_off=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_items_charm_off=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_items_charm_off=1..}] hcrplus_items_charm_off 0

# Presets Settings Menu
execute as @a[scores={hcrplus_presets_page1=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/presets/page1
execute as @a[scores={hcrplus_presets_page1=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_presets_page1=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_presets_page1=1..}] hcrplus_presets_page1 0
execute as @a[scores={hcrplus_presets_page1_casual=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/presets/page1_casual
execute as @a[scores={hcrplus_presets_page1_casual=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_presets_page1_casual=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_presets_page1_casual=1..}] hcrplus_presets_page1_casual 0
execute as @a[scores={hcrplus_presets_page1_default=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/presets/page1_default
execute as @a[scores={hcrplus_presets_page1_default=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_presets_page1_default=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_presets_page1_default=1..}] hcrplus_presets_page1_default 0
execute as @a[scores={hcrplus_presets_page1_lifesteal=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/presets/page1_lifesteal
execute as @a[scores={hcrplus_presets_page1_lifesteal=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_presets_page1_lifesteal=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_presets_page1_lifesteal=1..}] hcrplus_presets_page1_lifesteal 0
execute as @a[scores={hcrplus_presets_casual=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/presets/toggles/casual
execute as @a[scores={hcrplus_presets_casual=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_presets_casual=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_presets_casual=1..}] hcrplus_presets_casual 0
execute as @a[scores={hcrplus_presets_default=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/presets/toggles/default
execute as @a[scores={hcrplus_presets_default=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_presets_default=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_presets_default=1..}] hcrplus_presets_default 0
execute as @a[scores={hcrplus_presets_lifesteal=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/presets/toggles/lifesteal
execute as @a[scores={hcrplus_presets_lifesteal=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_presets_lifesteal=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_presets_lifesteal=1..}] hcrplus_presets_lifesteal 0

# Debug Settings Menu
execute as @a[scores={hcrplus_debug_page1=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/debug/page1
execute as @a[scores={hcrplus_debug_page1=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_debug_page1=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_debug_page1=1..}] hcrplus_debug_page1 0
execute as @a[scores={hcrplus_debug_give_charm=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/debug/toggles/give_charm
execute as @a[scores={hcrplus_debug_give_charm=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_debug_give_charm=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_debug_give_charm=1..}] hcrplus_debug_give_charm 0
execute as @a[scores={hcrplus_debug_give_jam=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/debug/toggles/give_jam
execute as @a[scores={hcrplus_debug_give_jam=1..}] if entity @s[tag=hcrplus_operator] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1
execute as @a[scores={hcrplus_debug_give_jam=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_debug_give_jam=1..}] hcrplus_debug_give_jam 0

# Difficulty Settings
execute as @a[scores={hcrplus_difficulty_page1=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/difficulty/page1
execute as @a[scores={hcrplus_difficulty_page1=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_difficulty_page1=1..}] hcrplus_difficulty_page1 0

execute as @a[scores={hcrplus_difficulty_respect=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/difficulty/toggles/respect
execute as @a[scores={hcrplus_difficulty_respect=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_difficulty_respect=1..}] hcrplus_difficulty_respect 0

execute as @a[scores={hcrplus_difficulty_easy=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/difficulty/toggles/easy
execute as @a[scores={hcrplus_difficulty_easy=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_difficulty_easy=1..}] hcrplus_difficulty_easy 0

execute as @a[scores={hcrplus_difficulty_normal=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/difficulty/toggles/normal
execute as @a[scores={hcrplus_difficulty_normal=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_difficulty_normal=1..}] hcrplus_difficulty_normal 0

execute as @a[scores={hcrplus_difficulty_hard=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/difficulty/toggles/hard
execute as @a[scores={hcrplus_difficulty_hard=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_difficulty_hard=1..}] hcrplus_difficulty_hard 0

# Spawn Settings
execute as @a[scores={hcrplus_spawn_page1=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/spawn/page1
execute as @a[scores={hcrplus_spawn_page1=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_spawn_page1=1..}] hcrplus_spawn_page1 0

# Ghost Spawn
execute as @a[scores={hcrplus_ghost_spawn_server=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/spawn/toggles/ghost_server
execute as @a[scores={hcrplus_ghost_spawn_server=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_ghost_spawn_server=1..}] hcrplus_ghost_spawn_server 0

execute as @a[scores={hcrplus_ghost_spawn_player=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/spawn/toggles/ghost_player
execute as @a[scores={hcrplus_ghost_spawn_player=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_ghost_spawn_player=1..}] hcrplus_ghost_spawn_player 0

execute as @a[scores={hcrplus_ghost_spawn_vanilla=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/spawn/toggles/ghost_vanilla
execute as @a[scores={hcrplus_ghost_spawn_vanilla=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_ghost_spawn_vanilla=1..}] hcrplus_ghost_spawn_vanilla 0

execute as @a[scores={hcrplus_ghost_spawn_death=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/spawn/toggles/ghost_death
execute as @a[scores={hcrplus_ghost_spawn_death=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_ghost_spawn_death=1..}] hcrplus_ghost_spawn_death 0

# Revive Spawn
execute as @a[scores={hcrplus_revive_spawn_vanilla=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/spawn/toggles/revive_vanilla
execute as @a[scores={hcrplus_revive_spawn_vanilla=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_revive_spawn_vanilla=1..}] hcrplus_revive_spawn_vanilla 0

execute as @a[scores={hcrplus_revive_spawn_server=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/spawn/toggles/revive_server
execute as @a[scores={hcrplus_revive_spawn_server=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_revive_spawn_server=1..}] hcrplus_revive_spawn_server 0

execute as @a[scores={hcrplus_revive_spawn_death=1..}] if entity @s[tag=hcrplus_operator] run function hcrplus:settings/menus/spawn/toggles/revive_death
execute as @a[scores={hcrplus_revive_spawn_death=1..}] if entity @s[tag=!hcrplus_operator] run function hcrplus:settings/deny
scoreboard players set @a[scores={hcrplus_revive_spawn_death=1..}] hcrplus_revive_spawn_death 0

# Enable all triggers
scoreboard players enable @a _hcrplus_settings
scoreboard players enable @a hcrplus_lives_page1
scoreboard players enable @a hcrplus_lives_page2
scoreboard players enable @a hcrplus_lives_page3
scoreboard players enable @a hcrplus_lives_ar_on
scoreboard players enable @a hcrplus_lives_ar_off
scoreboard players enable @a hcrplus_lives_ls_on
scoreboard players enable @a hcrplus_lives_ls_off
scoreboard players enable @a hcrplus_lives_lives_1
scoreboard players enable @a hcrplus_lives_lives_3
scoreboard players enable @a hcrplus_lives_lives_5
scoreboard players enable @a hcrplus_lives_nc_on
scoreboard players enable @a hcrplus_lives_nc_off
scoreboard players enable @a hcrplus_lives_ps_on
scoreboard players enable @a hcrplus_lives_ps_off
scoreboard players enable @a hcrplus_lives_rv_1
scoreboard players enable @a hcrplus_lives_rv_half
scoreboard players enable @a hcrplus_lives_rv_max
scoreboard players enable @a hcrplus_lives_tab_on
scoreboard players enable @a hcrplus_lives_tab_off
scoreboard players enable @a hcrplus_items_page1
scoreboard players enable @a hcrplus_items_page2
scoreboard players enable @a hcrplus_items_announce_revive_on
scoreboard players enable @a hcrplus_items_announce_revive_off
scoreboard players enable @a hcrplus_items_charm_debuffs_on
scoreboard players enable @a hcrplus_items_charm_debuffs_off
scoreboard players enable @a hcrplus_items_lifejam_on
scoreboard players enable @a hcrplus_items_lifejam_off
scoreboard players enable @a hcrplus_items_charm_on
scoreboard players enable @a hcrplus_items_charm_off
scoreboard players enable @a hcrplus_presets_page1
scoreboard players enable @a hcrplus_presets_page1_casual
scoreboard players enable @a hcrplus_presets_page1_default
scoreboard players enable @a hcrplus_presets_page1_lifesteal
scoreboard players enable @a hcrplus_presets_casual
scoreboard players enable @a hcrplus_presets_default
scoreboard players enable @a hcrplus_presets_lifesteal
scoreboard players enable @a hcrplus_debug_page1
scoreboard players enable @a hcrplus_debug_give_charm
scoreboard players enable @a hcrplus_debug_give_jam
scoreboard players enable @a hcrplus_lives_revive_timer_1m
scoreboard players enable @a hcrplus_lives_revive_timer_5m
scoreboard players enable @a hcrplus_lives_revive_timer_10m
scoreboard players enable @a hcrplus_lives_revive_timer_1h
scoreboard players enable @a hcrplus_difficulty_page1
scoreboard players enable @a hcrplus_difficulty_respect
scoreboard players enable @a hcrplus_difficulty_easy
scoreboard players enable @a hcrplus_difficulty_normal
scoreboard players enable @a hcrplus_difficulty_hard
scoreboard players enable @a hcrplus_spawn_page1
scoreboard players enable @a hcrplus_ghost_spawn_server
scoreboard players enable @a hcrplus_ghost_spawn_player
scoreboard players enable @a hcrplus_ghost_spawn_vanilla
scoreboard players enable @a hcrplus_ghost_spawn_death
scoreboard players enable @a hcrplus_revive_spawn_vanilla
scoreboard players enable @a hcrplus_revive_spawn_server
scoreboard players enable @a hcrplus_revive_spawn_death