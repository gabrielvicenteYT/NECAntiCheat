scoreboard objectives add rotx dummy
scoreboard objectives add jesuswalk1 minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add jesuswalk2 minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add roty dummy
scoreboard objectives add gametickk dummy
execute as @a at @s unless score @s necstick matches -99999..99999 run scoreboard players set @s necstick 0
execute as @a at @s unless score @s necseconds matches -99999..99999 run scoreboard players set @s necseconds 0
execute as @a at @s unless score @s necminutes matches -99999..99999 run scoreboard players set @s necminutes 0
execute as @a at @s unless score @s nechours matches -99999..99999 run scoreboard players set @s nechours 0
execute as @a at @s unless score @s necdays matches -99999..99999 run scoreboard players set @s necdays 0
execute as @a at @s unless score @s ore matches -99999..99999 run scoreboard players set @s ore 0
execute as @a at @s unless score @s minestone matches -99999..99999999 run scoreboard players set @s minestone 0
scoreboard objectives add necstick dummy
scoreboard objectives add necseconds dummy
scoreboard objectives add necminutes dummy
scoreboard objectives add nechours dummy
scoreboard objectives add necdays dummy
scoreboard objectives add ymotion dummy
scoreboard objectives add ylevel1 dummy
scoreboard objectives add ylevel2 dummy
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add rotsum dummy
scoreboard objectives add flyflag dummy
scoreboard objectives add fly dummy
scoreboard objectives add spmove dummy
scoreboard objectives add xrayiron dummy
scoreboard objectives add xrayironstone dummy
scoreboard objectives add xrayscrap dummy
scoreboard objectives add xrayscrapstone dummy
scoreboard objectives add xraygold dummy
scoreboard objectives add xraygoldstone dummy
scoreboard objectives add xraylapis dummy
scoreboard objectives add xraylapisstone dummy
scoreboard objectives add xrayemerald dummy
scoreboard objectives add xrayemstone dummy
scoreboard objectives add xraydiamond dummy
scoreboard objectives add xraydiamstone dummy
scoreboard objectives add xrayred dummy
scoreboard objectives add xrayredstone dummy
scoreboard objectives add ore dummy
scoreboard objectives add xraycoal dummy
scoreboard objectives add xraycoalstone dummy
scoreboard objectives add mineiron minecraft.mined:minecraft.iron_ore
scoreboard objectives add minegold minecraft.mined:minecraft.gold_ore
scoreboard objectives add minecoal minecraft.mined:minecraft.coal_ore
scoreboard objectives add minelapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add minediamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add mineemerald minecraft.mined:minecraft.emerald_ore
scoreboard objectives add mineredstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add minescrap minecraft.mined:minecraft.ancient_debris
scoreboard objectives add minestone1 minecraft.mined:minecraft.stone
scoreboard objectives add minestone2 minecraft.mined:minecraft.stone
scoreboard objectives add minestone3 minecraft.mined:minecraft.stone
scoreboard objectives add minestone4 minecraft.mined:minecraft.stone
scoreboard objectives add minestone5 minecraft.mined:minecraft.stone
scoreboard objectives add minestone6 minecraft.mined:minecraft.stone
scoreboard objectives add minestone7 minecraft.mined:minecraft.stone
scoreboard objectives add minestone minecraft.mined:minecraft.stone
scoreboard objectives add minerack minecraft.mined:minecraft.netherrack
scoreboard objectives add jesus dummy
scoreboard objectives add realratio dummy
scoreboard objectives add rotsuma dummy
scoreboard objectives add jesusflags dummy
scoreboard objectives add potions dummy
scoreboard objectives add rotsumb dummy
scoreboard objectives add speedtemp dummy
scoreboard objectives add rotsum1 dummy
scoreboard objectives add speedflag dummy
scoreboard objectives add speed dummy
scoreboard objectives add rotsum2 dummy
scoreboard objectives add rotsum3 dummy
scoreboard objectives add rotsum4 dummy
scoreboard objectives add rotsum5 dummy
scoreboard objectives add rotsum6 dummy
scoreboard objectives add rotsum7 dummy
scoreboard objectives add ylevel dummy
scoreboard objectives add kaspit dummy
scoreboard objectives add rotsum8 dummy
scoreboard objectives add rotsum9 dummy
scoreboard objectives add rotsum10 dummy
scoreboard objectives add necac dummy
scoreboard objectives add kaflags dummy
scoreboard objectives add killaura dummy
scoreboard objectives add acsettings dummy
execute unless score tick necac matches -99..99 run scoreboard players set tick necac 1
scoreboard objectives add damagecount minecraft.custom:minecraft.damage_dealt
execute unless score ka_threshold acsettings matches 1..99999999 run scoreboard players set ka_threshold acsettings 1
execute unless score samplesize acsettings matches 1..99999999 run scoreboard players set samplesize acsettings 40
execute unless score jesus_threshold acsettings matches 1..99999999 run scoreboard players set jesus_threshold acsettings 1
execute unless score fly_threshold acsettings matches 1..99999999 run scoreboard players set fly_threshold acsettings 1
execute unless score speed_threshold acsettings matches 1..99999999 run scoreboard players set speed_threshold acsettings 20
execute unless score announceores acsettings matches -1..99999999 run scoreboard players set announceores acsettings 1
execute unless score xray_threshold acsettings matches -99999..99999999 run scoreboard players set xray_threshold acsettings 50
