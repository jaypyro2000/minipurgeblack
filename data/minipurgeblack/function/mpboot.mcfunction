data remove storage minipurgeblack:variables bunkers
data modify storage minipurgeblack:variables bunkers append value "minipurgeblack:bunker1"

scoreboard players set #nine blackvariables 1
scoreboard players set #ten blackvariables 2
scoreboard players operation #bunker_count blackvariables = #player_count blackvariables
scoreboard players operation #bunker_count blackvariables += #nine blackvariables
scoreboard players operation #bunker_count blackvariables /= #ten blackvariables

execute store result storage minipurgeblack:variables bunker_count int 1 run scoreboard players get #bunker_count blackvariables

execute run function minipurgeblack:build_bunkers with storage minipurgeblack:variables