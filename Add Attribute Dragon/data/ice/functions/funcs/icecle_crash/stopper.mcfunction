### delete ice blocks
execute align xz at @e[team=aad_i_icecle] run fill ~-1 ~ ~-1 ~1 ~10 ~1 minecraft:air replace minecraft:packed_ice

### utils
## particle
execute at @e[team=aad_i_icecle] run particle minecraft:explosion ~ ~2 ~ 1.5 3 1.5 0 10

### spwan stray
execute at @e[team=aad_i_icecle] run summon stray ~ ~ ~ {HandItems:[{id:"bow",Count:1},{}],ArmorItems:[{},{},{},{id:"diamond_helmet",Count:1}],Tags:["aad_i_death_c"]}

### dummy entity
## kill
execute as @e[team=aad_i_icecle] run kill @s