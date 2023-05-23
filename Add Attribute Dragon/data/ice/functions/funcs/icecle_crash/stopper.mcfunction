### delete ice blocks
execute as @e[team=aad_i_icecle] at @s unless block ~ ~-1 ~ minecraft:air run fill ~-1 ~ ~-1 ~1 ~10 ~1 minecraft:air replace minecraft:packed_ice

### utils
## particle
execute as @e[team=aad_i_icecle] at @s unless block ~ ~-1 ~ minecraft:air run particle minecraft:explosion ~ ~2 ~ 1.5 3 1.5 0 10

### spwan stray
execute as @e[team=aad_i_icecle] at @s unless block ~ ~-1 ~ minecraft:air run summon stray ~ ~ ~ {HandItems:[{id:"bow",Count:1},{}],ArmorItems:[{},{},{},{id:"diamond_helmet",Count:1}],Tags:["aad_i_death_c"]}

### dummy entity
## kill
execute as @e[team=aad_i_icecle] at @s unless block ~ ~-1 ~ minecraft:air run kill @s