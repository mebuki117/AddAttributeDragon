### scoreboard create
## dragon data
scoreboard objectives add aad_d_data dummy

## entity dummy
scoreboard objectives add aad_dummy_e dummy

## death count 
scoreboard objectives add aad_death_count dummy

## dragon phase tick count
scoreboard objectives add aad_phase_count dummy

## dragon health split
scoreboard players set dragonhealth_20 aad_d_data 20
scoreboard players set dragonhealth_30 aad_d_data 30
scoreboard players set dragonhealth_50 aad_d_data 50
scoreboard players set dragonhealth_100 aad_d_data 100
scoreboard players set dragonhealth_120 aad_d_data 120

## snow bomb count
scoreboard objectives add aad_sb_data dummy
scoreboard players set add_sb_count aad_sb_data 0

## balloon hp
scoreboard objectives add aad_i_balloon_hp dummy