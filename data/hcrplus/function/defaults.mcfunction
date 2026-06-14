###############################################################################
# HARDCORE REVIVE+ DEFAULT SETTINGS - CHANGE THESE BEFORE CREATING YOUR WORLD #
###############################################################################

# Enable Life Jam (1 = Enabled, 0 = Disabled)
scoreboard players set mnc_settings mnc_lifeJam 1

# Enable Soul Charm (1 = Enabled, 0 = Disabled)
scoreboard players set mnc_settings mnc_revival 1

# Enable Soul Charm Debuffs (1 = Enabled, 0 = Disabled)
scoreboard players set mnc_settings mnc_soulCharmDebuffs 1

# Announce Revives (1 = Enabled, 0 = Disabled)
scoreboard players set mnc_settings mnc_announceRevive 1

# Enable Possession (1 = Enabled, 0 = Disabled)
scoreboard players set mnc_settings mnc_possession 1

# Enable Name Colors (1 = Enabled, 0 = Disabled)
scoreboard players set mnc_settings mnc_nameColors 0

# Enable Lives in Tab List (1 = Enabled, 0 = Disabled)
scoreboard players set mnc_settings mnc_tablist 0
execute if score mnc_settings mnc_tablist matches 1 run scoreboard objectives setdisplay list Lives

# Set default lives (PICK 1, 3, OR 5, OR ELSE LIVES MAY BREAK)
scoreboard players set mnc_settings mnc_defaultLives 1

# Set lives upon revival (1 = 1 life, 2 = Half of Max Lives, 3 = Max Lives)
scoreboard players set mnc_settings mnc_reviveLifeCount 1

# Enable Lifesteal (1 = Enabled, 0 = Disabled)
scoreboard players set mnc_settings mnc_lifeSteal 0

# Enable Auto Revive (1 = Enabled, 0 = Disabled)
scoreboard players set mnc_settings mnc_autoRevive 0

# Auto Revive Timer (1 = 1 minute, 2 = 5 minutes, 3 = 10 minutes, 4 = 1 hour)
scoreboard players set mnc_settings mnc_autoReviveTimer 3

# Difficulty Mode
# 0 = Respect server/world difficulty
# 1 = Force Easy
# 2 = Force Normal
# 3 = Force Hard
scoreboard players set hcrplus_settings hcrplus_difficulty_mode 0
