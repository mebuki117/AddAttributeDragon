### spwan stray
execute as @e[tag=aad_i_icecle] at @s unless block ~ ~-1 ~ minecraft:air run summon stray ~ ~ ~ {HandItems:[{id:"bow",Count:1},{}],ArmorItems:[{},{},{},{id:"diamond_helmet",Count:1}],Tags:["aad_i_death_c"]}

### dummy entity
## kill
execute as @e[tag=aad_i_icecle] at @s unless block ~ ~-1 ~ minecraft:air run kill @s