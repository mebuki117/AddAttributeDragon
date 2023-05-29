### replace item (bucket to water_bucket)
## weapon
execute as @a[nbt={SelectedItem:{id:"minecraft:water_bucket",Count:1b}}] at @s if entity @e[type=minecraft:ender_dragon,distance=..32,limit=1] run replaceitem entity @s weapon minecraft:bucket{display:{Name:'[{"text":"凍った水入りバケツ"}]'},CustomModelData:1,aad_i_bucket:1}
## weapon.offhand
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:water_bucket",Count:1b}]}] at @s if entity @e[type=minecraft:ender_dragon,distance=..32,limit=1] run replaceitem entity @s weapon.offhand minecraft:bucket{display:{Name:'[{"text":"凍った水入りバケツ"}]'},CustomModelData:1,aad_i_bucket:1}

### replace item (water_bucket to bucket)
## weapon
execute as @a[nbt={SelectedItem:{id:"minecraft:bucket",Count:1b,tag:{aad_i_bucket:1}}}] at @s if entity @e[type=minecraft:ender_dragon,distance=32.001..,limit=1] run replaceitem entity @s weapon minecraft:water_bucket
## weapon.offhand
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bucket",Count:1b,tag:{aad_i_bucket:1}}]}] at @s if entity @e[type=minecraft:ender_dragon,distance=32.001..,limit=1] run replaceitem entity @s weapon.offhand minecraft:water_bucket