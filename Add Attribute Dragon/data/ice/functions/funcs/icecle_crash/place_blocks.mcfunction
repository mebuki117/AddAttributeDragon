# place ice blocks
# main body
execute at @e[type=minecraft:armor_stand,team=aad_i_icecle] run fill ~ ~ ~ ~ ~6 ~ minecraft:packed_ice replace minecraft:air
# we body
execute at @e[type=minecraft:armor_stand,team=aad_i_icecle] run fill ~-1 ~2 ~ ~1 ~6 ~ minecraft:packed_ice replace minecraft:air
# ns body
execute at @e[type=minecraft:armor_stand,team=aad_i_icecle] run fill ~ ~2 ~-1 ~ ~6 ~1 minecraft:packed_ice replace minecraft:air
# top body
execute at @e[type=minecraft:armor_stand,team=aad_i_icecle] run fill ~-1 ~5 ~-1 ~1 ~6 ~1 minecraft:packed_ice replace minecraft:air