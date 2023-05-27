### random tp
execute at @e[type=minecraft:ender_dragon,limit=1] run spreadplayers ~ ~ 5 80 false @e[tag=!test,team=aad_i_bomb]

### if feet is snow then tp
execute as @e[tag=!test,team=aad_i_bomb] at @s if block ~ ~-1 ~ minecraft:snow run tp @s ~ ~-1 ~

### give a teleported marker
execute as @e[team=aad_i_bomb,tag=!test] run tag @s add test