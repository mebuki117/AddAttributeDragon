# delete ice blocks
execute at @e[type=minecraft:armor_stand,team=aad_i_icecle] run fill ~-1 ~7 ~-1 ~1 ~10 ~1 minecraft:air replace minecraft:packed_ice

# under ground
execute as @e[type=minecraft:armor_stand,team=aad_i_icecle] at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~-1 ~