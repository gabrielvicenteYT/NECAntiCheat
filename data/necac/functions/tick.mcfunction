execute as @a at @s run scoreboard players operation @s spmove += @s jesuswalk1
execute as @a at @s run scoreboard players operation @s spmove += @s jesuswalk2
execute as @a at @s run scoreboard players add @s necstick 1
execute as @a[scores={necstick=20..}] at @s run scoreboard players add @s necseconds 1
execute as @a[scores={necstick=20..}] at @s run scoreboard players set @s necstick 0
execute as @a[scores={necseconds=60..}] at @s run scoreboard players add @s necminutes 1
execute as @a[scores={necseconds=60..}] at @s run scoreboard players set @s necseconds 0
execute as @a[scores={necminutes=60..}] at @s run scoreboard players add @s nechours 1
execute as @a[scores={necminutes=60..}] at @s run scoreboard players set @s necminutes 0
execute as @a[scores={nechours=24..}] at @s run scoreboard players add @s necdays 1
execute as @a[scores={nechours=24..}] at @s run scoreboard players set @s nechours 0
execute as @a[tag=audit] store result score tick gametickk run time query gametime
execute as @a[tag=audit] run tellraw @a[tag=admin] {"text":""}
execute as @a[tag=audit] run scoreboard players operation @s realratio = @s minestone
execute as @a[tag=audit] run scoreboard players operation @s realratio /= @s ore
execute as @a[tag=audit] run tellraw @a[tag=admin] {"text":""}
execute as @a[tag=audit] run tellraw @a[tag=admin] {"text":""}
execute as @a[tag=audit] run tellraw @a[tag=admin] {"text":""}
execute as @a[tag=audit] run tellraw @a[tag=admin] {"text":""}
execute as @a[tag=audit] run tellraw @a[tag=admin] ["",{"text":"NEC AntiCheat audit of ","color":"dark_red"},{"selector":"@s","color":"gold"},{"text":"","color":"red"}]
execute as @a[tag=audit] run tellraw @a[tag=admin] {"text":"-----------------------------------"}
execute as @a[tag=audit] run tellraw @a[tag=admin] ["",{"text":"Recorded Time: ","color":"blue"},{"score":{"name":"@s","objective":"necdays"},"color":"gold"},{"text":"d ","color":"gold"},{"score":{"name":"@s","objective":"nechours"},"color":"gold"},{"text":"h ","color":"gold"},{"score":{"name":"@s","objective":"necminutes"},"color":"gold"},{"text":"m ","color":"gold"},{"score":{"name":"@s","objective":"necseconds"},"color":"gold"},{"text":"s","color":"gold"}]
execute as @a[tag=audit] run tellraw @a[tag=admin] ["",{"text":"KillAura flags: ","color":"red"},{"score":{"name":"@s","objective":"killaura"},"color":"gold"}]
execute as @a[tag=audit] run tellraw @a[tag=admin] ["",{"text":"Fly flags: ","color":"red"},{"score":{"name":"@s","objective":"fly"},"color":"gold"}]
execute as @a[tag=audit] run tellraw @a[tag=admin] ["",{"text":"Speed/Timer flags: ","color":"red"},{"score":{"name":"@s","objective":"speed"},"color":"gold"}]
execute as @a[tag=audit] run tellraw @a[tag=admin] ["",{"text":"Jesus flags: ","color":"red"},{"score":{"name":"@s","objective":"jesus"},"color":"gold"}]
execute as @a[tag=audit] run tellraw @a[tag=admin] ["",{"text":"Ore/Stone Ratio: ","color":"red"},{"score":{"name":"@s","objective":"ore"},"color":"gold"},{"text":"/","color":"gold"},{"score":{"name":"@s","objective":"minestone"},"color":"gold"},{"text":" (Finds 1 ore every ~","color":"gold"},{"score":{"name":"@s","objective":"realratio"},"color":"gold"},{"text":" blocks)","color":"gold"}]
execute as @a[tag=audit] run tellraw @a[tag=admin] {"text":"-----------------------------------"}
execute as @a[tag=audit] run tellraw @a[tag=admin] ["",{"text":"Audit Generated on Server Tick #","color":"gray"},{"score":{"name":"tick","objective":"gametickk"},"color":"gray"}]

execute as @a[scores={jesuswalk1=1..}] at @s if block ~1 ~-1 ~ water if block ~ ~-1 ~ water if block ~-1 ~-1 ~ water if block ~1 ~-1 ~1 water if block ~ ~-1 ~1 water if block ~-1 ~-1 ~1 water if block ~1 ~-1 ~-1 water if block ~ ~-1 ~-1 water if block ~-1 ~-1 ~-1 water run scoreboard players add @s jesusflags 1
execute as @a[scores={jesuswalk2=1..}] at @s if block ~1 ~-1 ~ water if block ~ ~-1 ~ water if block ~-1 ~-1 ~ water if block ~1 ~-1 ~1 water if block ~ ~-1 ~1 water if block ~-1 ~-1 ~1 water if block ~1 ~-1 ~-1 water if block ~ ~-1 ~-1 water if block ~-1 ~-1 ~-1 water run scoreboard players add @s jesusflags 1
execute as @a at @s run scoreboard players set @s jesuswalk1 0
execute as @a at @s run scoreboard players set @s jesuswalk2 0
execute as @a[scores={ylevel=64..}] at @s run scoreboard players set @s minestone1 0
execute as @a[scores={ylevel=64..}] at @s run scoreboard players set @s minestone2 0
execute as @a[scores={ylevel=64..}] at @s run scoreboard players set @s minestone3 0
execute as @a[scores={ylevel=64..}] at @s run scoreboard players set @s minestone4 0
execute as @a[scores={ylevel=64..}] at @s run scoreboard players set @s minestone5 0
execute as @a[scores={ylevel=64..}] at @s run scoreboard players set @s minestone6 0
execute as @a[scores={ylevel=64..}] at @s run scoreboard players set @s minestone7 0
execute as @a[scores={ylevel=30..}] at @s run scoreboard players set @s minerack 0

execute as @a[scores={mineiron=1..}] at @s run scoreboard players add @s xrayiron 1
execute as @a[scores={mineiron=1..}] at @s run scoreboard players operation @s xrayironstone += @s minestone1
execute as @a[scores={mineiron=1..}] at @s if score @s minestone1 <= xray_threshold acsettings unless score @s minestone1 matches 0 if score announceores acsettings matches 1 run tellraw @a[tag=admin] ["",{"text":"[NEC AntiCheat] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" found ","color":"yellow"},{"text":"","color":"yellow"},{"text":"iron ore after mining ","color":"yellow"},{"score":{"name":"@s ","objective":"minestone1"},"color":"yellow"},{"text":" blocks from the previous node!","color":"yellow"}]
execute as @a[scores={mineiron=1..}] at @s run scoreboard players set @s minestone1 0
execute as @a[scores={mineiron=1..}] at @s run scoreboard players add @s ore 1
execute as @a[scores={mineiron=1..}] at @s run scoreboard players set @s mineiron 0

execute as @a[scores={minegold=1..}] at @s run scoreboard players add @s xraygold 1
execute as @a[scores={minegold=1..}] at @s run scoreboard players operation @s xraygoldstone += @s minestone2
execute as @a[scores={minegold=1..}] at @s if score @s minestone2 <= xray_threshold acsettings unless score @s minestone2 matches 0 if score announceores acsettings matches 1 run tellraw @a[tag=admin] ["",{"text":"[NEC AntiCheat] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" found ","color":"yellow"},{"text":"","color":"yellow"},{"text":"gold ore after mining ","color":"yellow"},{"score":{"name":"@s ","objective":"minestone2"},"color":"yellow"},{"text":" blocks from the previous node!","color":"yellow"}]
execute as @a[scores={minegold=1..}] at @s run scoreboard players set @s minestone2 0
execute as @a[scores={minegold=1..}] at @s run scoreboard players add @s ore 1
execute as @a[scores={minegold=1..}] at @s run scoreboard players set @s minegold 0

execute as @a[scores={minecoal=1..}] at @s run scoreboard players add @s xraycoal 1
execute as @a[scores={minecoal=1..}] at @s run scoreboard players operation @s xraycoalstone += @s minestone3
execute as @a[scores={minecoal=1..}] at @s if score @s minestone3 <= xray_threshold acsettings unless score @s minestone3 matches 0 if score announceores acsettings matches 1 run tellraw @a[tag=admin] ["",{"text":"[NEC AntiCheat] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" found ","color":"yellow"},{"text":"","color":"yellow"},{"text":"coal ore after mining ","color":"yellow"},{"score":{"name":"@s ","objective":"minestone3"},"color":"yellow"},{"text":" blocks from the previous node!","color":"yellow"}]
execute as @a[scores={minecoal=1..}] at @s run scoreboard players set @s minestone3 0
execute as @a[scores={minecoal=1..}] at @s run scoreboard players add @s ore 1
execute as @a[scores={minecoal=1..}] at @s run scoreboard players set @s minecoal 0

execute as @a[scores={minelapis=1..}] at @s run scoreboard players add @s xraylapis 1
execute as @a[scores={minelapis=1..}] at @s run scoreboard players operation @s xraylapisstone += @s minestone4
execute as @a[scores={minelapis=1..}] at @s if score @s minestone4 <= xray_threshold acsettings unless score @s minestone4 matches 0 if score announceores acsettings matches 1 run tellraw @a[tag=admin] ["",{"text":"[NEC AntiCheat] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" found ","color":"yellow"},{"text":"","color":"yellow"},{"text":"lapis ore after mining ","color":"yellow"},{"score":{"name":"@s ","objective":"minestone4"},"color":"yellow"},{"text":" blocks from the previous node!","color":"yellow"}]
execute as @a[scores={minelapis=1..}] at @s run scoreboard players set @s minestone4 0
execute as @a[scores={minelapis=1..}] at @s run scoreboard players add @s ore 1
execute as @a[scores={minelapis=1..}] at @s run scoreboard players set @s minelapis 0

execute as @a[scores={mineemerald=1..}] at @s run scoreboard players add @s xrayemerald 1
execute as @a[scores={mineemerald=1..}] at @s run scoreboard players operation @s xrayemstone += @s minestone5
execute as @a[scores={mineemerald=1..}] at @s if score @s minestone5 <= xray_threshold acsettings unless score @s minestone5 matches 0 if score announceores acsettings matches 1 run tellraw @a[tag=admin] ["",{"text":"[NEC AntiCheat] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" found ","color":"yellow"},{"text":"","color":"yellow"},{"text":"emerald ore after mining ","color":"yellow"},{"score":{"name":"@s ","objective":"minestone5"},"color":"yellow"},{"text":" blocks from the previous node!","color":"yellow"}]
execute as @a[scores={mineemerald=1..}] at @s run scoreboard players set @s minestone5 0
execute as @a[scores={mineemerald=1..}] at @s run scoreboard players add @s ore 1
execute as @a[scores={mineemerald=1..}] at @s run scoreboard players set @s mineemerald 0

execute as @a[scores={minediamond=1..}] at @s run scoreboard players add @s xraydiamond 1
execute as @a[scores={minediamond=1..}] at @s run scoreboard players operation @s xraydiamstone += @s minestone6
execute as @a[scores={minediamond=1..}] at @s if score @s minestone6 <= xray_threshold acsettings unless score @s minestone6 matches 0 if score announceores acsettings matches 1 run tellraw @a[tag=admin] ["",{"text":"[NEC AntiCheat] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" found ","color":"yellow"},{"text":"","color":"yellow"},{"text":"diamond ore after mining ","color":"yellow"},{"score":{"name":"@s ","objective":"minestone6"},"color":"yellow"},{"text":" blocks from the previous node!","color":"yellow"}]
execute as @a[scores={minediamond=1..}] at @s run scoreboard players set @s minestone6 0
execute as @a[scores={minediamond=1..}] at @s run scoreboard players add @s ore 1
execute as @a[scores={minediamond=1..}] at @s run scoreboard players set @s minediamond 0

execute as @a[scores={mineredstone=1..}] at @s run scoreboard players add @s xrayred 1
execute as @a[scores={mineredstone=1..}] at @s run scoreboard players operation @s xrayredstone += @s minestone6
execute as @a[scores={mineredstone=1..}] at @s if score @s minestone7 <= xray_threshold acsettings unless score @s minestone7 matches 0 if score announceores acsettings matches 1 run tellraw @a[tag=admin] ["",{"text":"[NEC AntiCheat] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" found ","color":"yellow"},{"text":"","color":"yellow"},{"text":"redstone ore after mining ","color":"yellow"},{"score":{"name":"@s ","objective":"minestone7"},"color":"yellow"},{"text":" blocks from the previous node!","color":"yellow"}]
execute as @a[scores={mineredstone=1..}] at @s run scoreboard players set @s minestone7 0
execute as @a[scores={mineredstone=1..}] at @s run scoreboard players add @s ore 1
execute as @a[scores={mineredstone=1..}] at @s run scoreboard players set @s mineredstone 0

execute as @a[scores={minescrap=1..}] at @s run scoreboard players add @s xrayscrap 1
execute as @a[scores={minescrap=1..}] at @s run scoreboard players operation @s xrayscrapstone += @s minerack
execute as @a[scores={minescrap=1..}] at @s if score @s minerack <= xray_threshold acsettings unless score @s minerack matches 0 if score announceores acsettings matches 1 run tellraw @a[tag=admin] ["",{"text":"[NEC AntiCheat] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" found ","color":"yellow"},{"text":"","color":"yellow"},{"text":"ancient debris after mining ","color":"yellow"},{"score":{"name":"@s ","objective":"minerack"},"color":"yellow"},{"text":" blocks from the previous node!","color":"yellow"}]
execute as @a[scores={minescrap=1..}] at @s run scoreboard players set @s minerack 0
execute as @a[scores={minescrap=1..}] at @s run scoreboard players add @s ore 1
execute as @a[scores={minescrap=1..}] at @s run scoreboard players set @s minescrap 0

scoreboard players add tick necac 1
scoreboard players add msgtick necac 1
execute if score tick necac matches 11.. run execute as @a at @s if score @s spmove matches 300.. unless score @s potions matches 1.. store result score @s speedtemp run scoreboard players remove @s spmove 300
execute if score tick necac matches 11.. run execute as @a at @s run scoreboard players operation @s speedflag += @s speedtemp
execute if score tick necac matches 11.. run scoreboard players reset @a spmove
execute if score tick necac matches 11.. run scoreboard players reset @a speedtemp
execute if score tick necac matches 11.. run scoreboard players reset @a damagecount
execute if score tick necac matches 11.. as @a[scores={jump=5..}] run scoreboard players add @s flyflag 1
execute if score tick necac matches 11.. run scoreboard players set @a jump 0
execute if score tick necac matches 11.. run scoreboard players set tick necac 1
execute if score msgtick necac >= samplesize acsettings run execute as @a[scores={kaspit=1..}] at @s if score @s kaspit >= ka_threshold acsettings run tellraw @a[tag=admin] ["",{"text":"[NEC AntiCheat] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" is triggering KillAura flags! ","color":"gold"},{"text":"(Confidence Level: ","color":"yellow"},{"score":{"name":"@s","objective":"kaspit"},"color":"yellow"},{"text":")","color":"yellow"}]
execute if score msgtick necac >= samplesize acsettings run execute as @a[scores={kaspit=1..}] at @s run scoreboard players operation @s killaura += @s kaspit
execute if score msgtick necac >= samplesize acsettings run scoreboard players set @a kaspit 0
execute if score msgtick necac >= samplesize acsettings run execute as @a[scores={jesusflags=1..}] at @s if score @s jesusflags >= jesus_threshold acsettings run tellraw @a[tag=admin] ["",{"text":"[NEC AntiCheat] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" is triggering Jesus flags! ","color":"gold"},{"text":"(Confidence Level: ","color":"yellow"},{"score":{"name":"@s","objective":"jesusflags"},"color":"yellow"},{"text":")","color":"yellow"}]
execute if score msgtick necac >= samplesize acsettings run execute as @a[scores={jesusflags=1..}] at @s run scoreboard players operation @s jesus += @s jesusflags
execute if score msgtick necac >= samplesize acsettings run scoreboard players set @a jesusflags 0

execute if score msgtick necac >= samplesize acsettings run execute as @a[scores={speedflag=1..}] at @s if score @s speedflag >= speed_threshold acsettings run tellraw @a[tag=admin] ["",{"text":"[NEC AntiCheat] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" is triggering Speed flags! ","color":"gold"},{"text":"(Confidence Level: ","color":"yellow"},{"score":{"name":"@s","objective":"speedflag"},"color":"yellow"},{"text":")","color":"yellow"}]
execute if score msgtick necac >= samplesize acsettings run execute as @a[scores={speedflag=1..}] at @s if score @s speedflag >= speed_threshold acsettings run scoreboard players operation @s speed += @s speedflag
execute if score msgtick necac >= samplesize acsettings run scoreboard players set @a speedflag 0

execute if score msgtick necac >= samplesize acsettings run execute as @a[scores={flyflag=1..}] at @s if score @s flyflag >= fly_threshold acsettings run tellraw @a[tag=admin] ["",{"text":"[NEC AntiCheat] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" is triggering Fly flags! ","color":"gold"},{"text":"(Confidence Level: ","color":"yellow"},{"score":{"name":"@s","objective":"flyflag"},"color":"yellow"},{"text":")","color":"yellow"}]
execute if score msgtick necac >= samplesize acsettings run execute as @a[scores={flyflag=1..}] at @s run scoreboard players operation @s fly += @s flyflag
execute if score msgtick necac >= samplesize acsettings run scoreboard players set @a flyflag 0

execute if score msgtick necac >= samplesize acsettings run scoreboard players set msgtick necac 0
execute as @a at @s store result score @s potions run data get entity @s ActiveEffects
execute if score tick necac matches 1 run scoreboard players set subtick necac 1
execute if score tick necac matches 3 run scoreboard players set subtick necac 1
execute if score tick necac matches 5 run scoreboard players set subtick necac 1
execute if score tick necac matches 7 run scoreboard players set subtick necac 1
execute if score tick necac matches 9 run scoreboard players set subtick necac 1
execute if score tick necac matches 2 run scoreboard players set subtick necac 2
execute if score tick necac matches 4 run scoreboard players set subtick necac 2
execute if score tick necac matches 6 run scoreboard players set subtick necac 2
execute if score tick necac matches 8 run scoreboard players set subtick necac 2
execute if score tick necac matches 10 run scoreboard players set subtick necac 2
execute as @a at @s store result score @s rotx run data get entity @s Rotation[0]
execute as @a at @s store result score @s roty run data get entity @s Rotation[1]
execute as @a at @s run scoreboard players operation @s rotsum = @s rotx
execute as @a at @s run scoreboard players operation @s rotsum += @s roty
execute as @a at @s if score subtick necac matches 1 run scoreboard players operation @s rotsuma = @s rotsum
execute as @a at @s if score subtick necac matches 2 run scoreboard players operation @s rotsumb = @s rotsum
execute as @a at @s if score tick necac matches 1 run scoreboard players operation @s rotsum1 = @s rotsum
execute as @a at @s if score tick necac matches 2 run scoreboard players operation @s rotsum2 = @s rotsum
execute as @a at @s if score tick necac matches 3 run scoreboard players operation @s rotsum3 = @s rotsum
execute as @a at @s if score tick necac matches 4 run scoreboard players operation @s rotsum4 = @s rotsum
execute as @a at @s if score tick necac matches 5 run scoreboard players operation @s rotsum5 = @s rotsum
execute as @a at @s if score tick necac matches 6 run scoreboard players operation @s rotsum6 = @s rotsum
execute as @a at @s if score tick necac matches 7 run scoreboard players operation @s rotsum7 = @s rotsum
execute as @a at @s if score tick necac matches 8 run scoreboard players operation @s rotsum8 = @s rotsum
execute as @a at @s if score tick necac matches 9 run scoreboard players operation @s rotsum9 = @s rotsum
execute as @a at @s if score tick necac matches 10 run scoreboard players operation @s rotsum10 = @s rotsum

execute as @a at @s if score @s kaflags matches 7 run tellraw @a {"text":"sus"}

execute as @a at @s run scoreboard players set @s kaflags 0

execute as @a at @s if score @s rotsum1 = @s rotsum1 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum1 = @s rotsum2 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum1 = @s rotsum3 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum1 = @s rotsum4 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum1 = @s rotsum5 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum1 = @s rotsum6 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum1 = @s rotsum7 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum1 = @s rotsum8 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum1 = @s rotsum9 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum1 = @s rotsum10 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum2 = @s rotsum1 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum2 = @s rotsum2 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum2 = @s rotsum3 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum2 = @s rotsum4 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum2 = @s rotsum5 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum2 = @s rotsum6 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum2 = @s rotsum7 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum2 = @s rotsum8 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum2 = @s rotsum9 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum2 = @s rotsum10 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum3 = @s rotsum1 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum3 = @s rotsum2 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum3 = @s rotsum3 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum3 = @s rotsum4 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum3 = @s rotsum5 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum3 = @s rotsum6 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum3 = @s rotsum7 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum3 = @s rotsum8 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum3 = @s rotsum9 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum3 = @s rotsum10 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum4 = @s rotsum1 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum4 = @s rotsum2 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum4 = @s rotsum3 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum4 = @s rotsum4 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum4 = @s rotsum5 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum4 = @s rotsum6 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum4 = @s rotsum7 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum4 = @s rotsum8 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum4 = @s rotsum9 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum4 = @s rotsum10 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum5 = @s rotsum1 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum5 = @s rotsum2 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum5 = @s rotsum3 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum5 = @s rotsum4 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum5 = @s rotsum5 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum5 = @s rotsum6 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum5 = @s rotsum7 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum5 = @s rotsum8 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum5 = @s rotsum9 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum5 = @s rotsum10 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum6 = @s rotsum1 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum6 = @s rotsum2 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum6 = @s rotsum3 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum6 = @s rotsum4 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum6 = @s rotsum5 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum6 = @s rotsum6 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum6 = @s rotsum7 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum6 = @s rotsum8 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum6 = @s rotsum9 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum6 = @s rotsum10 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum7 = @s rotsum1 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum7 = @s rotsum2 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum7 = @s rotsum3 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum7 = @s rotsum4 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum7 = @s rotsum5 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum7 = @s rotsum6 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum7 = @s rotsum7 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum7 = @s rotsum8 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum7 = @s rotsum9 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum7 = @s rotsum10 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum8 = @s rotsum1 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum8 = @s rotsum2 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum8 = @s rotsum3 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum8 = @s rotsum4 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum8 = @s rotsum5 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum8 = @s rotsum6 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum8 = @s rotsum7 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum8 = @s rotsum8 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum8 = @s rotsum9 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum8 = @s rotsum10 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum9 = @s rotsum1 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum9 = @s rotsum2 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum9 = @s rotsum3 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum9 = @s rotsum4 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum9 = @s rotsum5 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum9 = @s rotsum6 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum9 = @s rotsum7 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum9 = @s rotsum8 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum9 = @s rotsum9 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum9 = @s rotsum10 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum10 = @s rotsum1 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum10 = @s rotsum2 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum10 = @s rotsum3 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum10 = @s rotsum4 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum10 = @s rotsum5 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum10 = @s rotsum6 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum10 = @s rotsum7 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum10 = @s rotsum8 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum10 = @s rotsum9 run scoreboard players add @s kaflags 1
execute as @a at @s if score @s rotsum10 = @s rotsum10 run scoreboard players add @s kaflags 1

execute as @a at @s if score @s damagecount matches 1.. if score @s kaflags matches 66 run scoreboard players add @s kaspit 1
execute as @a at @s if score @s damagecount matches 1.. if score @s kaflags matches 82 run scoreboard players add @s kaspit 1


execute as @a at @s store result score @s ymotion run data get entity @s Motion[1]
execute as @a at @s if score subtick necac matches 1 run scoreboard players operation @s rotsuma -= @s rotsumb
execute as @a store result score @s ylevel run data get entity @s Pos[1]
execute as @a at @s if score subtick necac matches 1 store result score @s ylevel1 run data get entity @s Pos[1]
execute as @a at @s if score subtick necac matches 2 store result score @s ylevel2 run data get entity @s Pos[1]
execute as @a at @s if score subtick necac matches 2 run scoreboard players operation @s ylevel1 -= @s ylevel2
execute as @a at @s if score subtick necac matches 2 if score @s ylevel1 matches 0 if score @s ymotion matches ..-2 unless score @s fall matches 1.. run scoreboard players add @s flyflag 1
execute as @a at @s if score subtick necac matches 2 if score @s fall matches 1.. run scoreboard players reset @s fallflag
execute as @a at @s if score subtick necac matches 2 run scoreboard players set @a fall 0
execute as @a at @s run scoreboard players operation kaflags necac = @s kaflags
execute as @a at @s run scoreboard players operation rotsum1 necac = @s rotsum1
execute as @a at @s run scoreboard players operation rotsum2 necac = @s rotsum2
execute as @a at @s run scoreboard players operation rotsum3 necac = @s rotsum3
execute as @a at @s run scoreboard players operation rotsum4 necac = @s rotsum4
execute as @a at @s run scoreboard players operation rotsum5 necac = @s rotsum5
execute as @a at @s run scoreboard players operation rotsum6 necac = @s rotsum6
execute as @a at @s run scoreboard players operation rotsum7 necac = @s rotsum7
execute as @a at @s run scoreboard players operation rotsum8 necac = @s rotsum8
execute as @a at @s run scoreboard players operation rotsum9 necac = @s rotsum9
execute as @a at @s run scoreboard players operation rotsum10 necac = @s rotsum10

execute as @a[tag=audit] run tag @s remove audit