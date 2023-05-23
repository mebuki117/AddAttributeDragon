#summon minecraft:armor_stand ~ ~-5 ~ {Marker:1b,Invisible:1b,Small:1b,HandItems:[{},{id:"snow_block",Count:1}],Team:"aad_i_bomb"}

##### team (aad_i_bomb) = armor_stand

### if close then summon a tnt
execute at @e[type=!minecraft:ender_dragon,predicate=!ice:dummy_teams] if entity @e[team=aad_i_bomb,distance=..1] run summon minecraft:tnt ~ ~ ~

### if close then give a damage
execute at @e[team=aad_i_bomb] run effect give @e[type=!minecraft:ender_dragon,predicate=!ice:dummy_teams,distance=..1] minecraft:instant_damage 1 1 true

### kill a bomb
execute as @e[type=!minecraft:ender_dragon,predicate=!ice:dummy_teams] at @s if entity @e[team=aad_i_bomb,distance=..1] run kill @e[team=aad_i_bomb,distance=..1]