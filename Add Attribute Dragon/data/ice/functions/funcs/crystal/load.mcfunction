kill @e[tag=aad_i_crystal]

execute at @e[type=minecraft:end_crystal] if block ~ ~-1 ~ minecraft:bedrock run summon minecraft:armor_stand ~ ~-1 ~ {Marker:true,Invisible:true,Small:true,Tags:["aad_i_crystal"]}