### dummy entity
## spawn dummy entity
execute at @a[limit=1] run summon minecraft:armor_stand ~ 0 ~ {Marker:true,Small:true,Invisible:true,Tags:["aad_i_balloon_d"]}
## random tp dummy entity
execute at @a[limit=1] run spreadplayers 0 0 5 16 false @e[tag=aad_i_balloon_d]

### balloon dummy entity
## spawn dummy slime
execute at @e[tag=aad_i_balloon_d] run summon minecraft:slime ~ ~ ~ {Size:0,Silent:true,ActiveEffects:[{Id:25,Duration:2147483647,ShowParticles:0b}],Tags:["aad_i_balloon"]}
## spawn crystal head
execute at @e[tag=aad_i_balloon_d] run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,ArmorItems:[{},{},{},{id:"black_stained_glass",Count:1}],Tags:["aad_i_balloon"]}

### dummy entity
## kill
execute as @e[tag=aad_i_balloon_d] run kill @s