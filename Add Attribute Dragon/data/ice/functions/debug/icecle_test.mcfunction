#summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Small:1,Team:"aad_i_icecle"}


### random spwan
execute at @a if predicate ice:icecle_crash/chance if entity @e[type=minecraft:ender_dragon,distance=..96] run summon minecraft:armor_stand ~ 130 ~ {Invisible:1b,Small:1,Team:"aad_i_icecle"}


### i hate collisionrule
execute as @e[predicate=ice:icecle_crash/d_aromr_stand] at @s if entity @e[type=minecraft:ender_dragon,distance=..10] run fill ~-1 ~ ~-1 ~1 ~10 ~1 minecraft:air replace minecraft:packed_ice
execute as @e[predicate=ice:icecle_crash/d_aromr_stand] at @s if entity @e[type=minecraft:ender_dragon,distance=..10] run kill @s


### main
## place ice blocks
# main body
execute at @e[predicate=ice:icecle_crash/d_aromr_stand] run fill ~ ~ ~ ~ ~6 ~ minecraft:packed_ice replace minecraft:air
# we body
execute at @e[predicate=ice:icecle_crash/d_aromr_stand] run fill ~-1 ~2 ~ ~1 ~6 ~ minecraft:packed_ice replace minecraft:air
# ns body
execute at @e[predicate=ice:icecle_crash/d_aromr_stand] run fill ~ ~2 ~-1 ~ ~6 ~1 minecraft:packed_ice replace minecraft:air
# top body
execute at @e[predicate=ice:icecle_crash/d_aromr_stand] run fill ~-1 ~5 ~-1 ~1 ~6 ~1 minecraft:packed_ice replace minecraft:air


### delete ice blocks
execute at @e[predicate=ice:icecle_crash/d_aromr_stand] run fill ~-1 ~7 ~-1 ~1 ~10 ~1 minecraft:air replace minecraft:packed_ice


### fall down stopper
execute as @e[predicate=ice:icecle_crash/d_aromr_stand] at @s unless block ~ ~-1 ~ minecraft:air run schedule function ice:funcs/icecle_crash/stopper 3t append


### utils
## damage
execute at @e[predicate=ice:icecle_crash/d_aromr_stand] run effect give @e[distance=..3] minecraft:instant_damage 1 1 true

## stray death count
scoreboard players add @e[type=minecraft:stray,tag=aad_i_death_c] aad_death_count 1
# death
execute as @e[type=minecraft:stray,scores={aad_death_count=1200},tag=aad_i_death_c] run kill @s
