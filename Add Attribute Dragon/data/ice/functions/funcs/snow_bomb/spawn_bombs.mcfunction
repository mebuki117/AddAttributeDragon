### spawn bomb
execute at @e[type=minecraft:ender_dragon,limit=1] run summon minecraft:armor_stand ~ 0 ~ {Marker:1b,Invisible:1b,Small:1b,HandItems:[{},{id:"snow_block",Count:1}],Team:"aad_i_bomb"}

### random_tp
schedule function ice:funcs/snow_bomb/random_tp 2t append
