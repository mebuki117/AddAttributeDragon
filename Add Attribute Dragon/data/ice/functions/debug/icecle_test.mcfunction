#summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Small:1,Team:"aad_i_icecle"}

# place ice blocks
# main body
execute at @e[predicate=ice:icecle_crash/d_aromr_stand] run fill ~ ~ ~ ~ ~6 ~ minecraft:packed_ice replace minecraft:air
# we body
execute at @e[predicate=ice:icecle_crash/d_aromr_stand] run fill ~-1 ~2 ~ ~1 ~6 ~ minecraft:packed_ice replace minecraft:air
# ns body
execute at @e[predicate=ice:icecle_crash/d_aromr_stand] run fill ~ ~2 ~-1 ~ ~6 ~1 minecraft:packed_ice replace minecraft:air
# top body
execute at @e[predicate=ice:icecle_crash/d_aromr_stand] run fill ~-1 ~5 ~-1 ~1 ~6 ~1 minecraft:packed_ice replace minecraft:air

# replace blocks
execute at @e[predicate=ice:icecle_crash/d_aromr_stand] run fill ~-1 ~7 ~-1 ~1 ~10 ~1 minecraft:air replace minecraft:packed_ice

# under ground
execute as @e[predicate=ice:icecle_crash/d_aromr_stand] at @s unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~-1 ~

#execute at @e[predicate=ice:icecle_crash/d_aromr_stand]
