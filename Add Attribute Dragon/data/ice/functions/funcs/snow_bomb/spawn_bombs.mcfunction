### spawn bomb
execute at @e[type=minecraft:ender_dragon,limit=1] run summon minecraft:armor_stand ~ 0 ~ {Marker:true,Invisible:true,Small:true,HandItems:[{},{id:"snow_block",Count:1}],Team:"aad_i_bomb"}

### random_tp
schedule function ice:funcs/snow_bomb/random_tp 2t append

### increase snow bomb count
scoreboard players add add_sb_count aad_sb_data 1