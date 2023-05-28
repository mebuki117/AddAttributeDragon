### random tp
execute at @e[type=minecraft:ender_dragon,limit=1] run spreadplayers ~ ~ 5 80 false @e[team=aad_i_bomb,tag=!aad_i_bomb_tp]

### if feet is snow then tp
execute as @e[team=aad_i_bomb,tag=!aad_i_bomb_tp] at @s if block ~ ~-1 ~ minecraft:snow run tp @s ~ ~-1 ~

### give a teleported marker
execute as @e[team=aad_i_bomb,tag=!aad_i_bomb_tp] run tag @s add aad_i_bomb_tp