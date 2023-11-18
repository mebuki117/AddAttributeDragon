#summon minecraft:armor_stand ~ ~-5 ~ {Marker:true,Invisible:true,Small:true,HandItems:[{},{id:"snow_block",Count:1}],Team:"aad_i_bomb"}

##### team (aad_i_bomb) = armor_stand

### if close then summon a tnt
execute at @e[type=!minecraft:player,type=!minecraft:ender_dragon,predicate=!ice:dummy_teams] if entity @e[team=aad_i_bomb,distance=..1] run summon minecraft:tnt ~ ~ ~
execute at @e[gamemode=!creative,gamemode=!spectator,type=!minecraft:ender_dragon,predicate=!ice:dummy_teams] if entity @e[team=aad_i_bomb,distance=..1] run summon minecraft:tnt ~ ~ ~

### kill a bomb
execute as @e[type=!minecraft:player,type=!minecraft:ender_dragon,predicate=!ice:dummy_teams] at @s if entity @e[team=aad_i_bomb,distance=..1] run kill @e[team=aad_i_bomb,distance=..1]
execute as @e[gamemode=!creative,gamemode=!spectator,type=!minecraft:ender_dragon,predicate=!ice:dummy_teams] at @s if entity @e[team=aad_i_bomb,distance=..1] run kill @e[team=aad_i_bomb,distance=..1]