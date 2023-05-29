### get a balloon hp
execute as @e[type=minecraft:slime,tag=aad_i_balloon] store result score @s aad_i_balloon_hp run data get entity @s Health

### oparation hp
execute at @e[type=minecraft:snowball] run scoreboard players remove @e[type=minecraft:slime,tag=aad_i_balloon,distance=..2] aad_i_balloon_hp 1

### merge score
execute at @e[type=minecraft:snowball] store result entity @e[type=minecraft:slime,distance=..2,limit=1] Health float 1 run scoreboard players get @e[type=minecraft:slime,distance=..2,limit=1] aad_i_balloon_hp