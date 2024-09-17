#TNT Bow
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{TntBow:1b}}}}] at @s run tag @e[type=arrow,distance=..2] add summon_tnt
execute as @e[tag=summon_tnt,nbt=!{inGround:1b}] at @s run summon tnt ~ ~ ~ {fire:-20,fuse:100}
scoreboard players add @e[tag=summon_tnt] despawn_tnt 1
kill @e[type=arrow,scores={despawn_tnt=150..}]

#TNT Beam
execute as @e[tag=tnt_beam,nbt={fuse:2s}] at @s unless block ~ ~-1 ~ bedrock run summon tnt ~ ~-1 ~ {fuse:4,Tags:["tnt_beam"]}
scoreboard players add @e[tag=tnt_beam] despawn_tnt 1
kill @e[tag=tnt_beam,scores={despawn_tnt=150..}]

#TNT Beam Bow
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{TntBeamBow:1b}}}}] at @s run tag @e[type=arrow,distance=..2] add summon_tnt_beam
execute as @e[tag=summon_tnt_beam,nbt=!{inGround:1b}] at @s run summon tnt ~ ~ ~ {fire:-20,fuse:100,Tags:["tnt_beam"]}
scoreboard players add @e[tag=summon_tnt_beam] despawn_tnt 1
kill @e[type=arrow,scores={despawn_tnt=150..}]

#Nuclear Arrow
execute as @e[nbt={Inventory:[{components:{"minecraft:custom_data":{NuclearArrow:1b}}}]}] at @s run tag @e[type=arrow,distance=..2] add nuclear_arrow
execute as @e[tag=nuclear_arrow,nbt={inGround:1b}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"empty",ExplosionRadius:64b,Fuse:1,ignited:1b,Tags:["nuclear_creeper"]}
execute as @e[tag=nuclear_arrow,nbt={inGround:1b}] at @s run kill @s