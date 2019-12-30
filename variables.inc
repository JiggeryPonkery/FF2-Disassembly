;; Zero page ;; 

charstat_pointer   = $7A ; 2 bytes
charskill_pointer  = $7E ; 2 bytes
battlestat_pointer = $80 ; 2 bytes ; Pointer to Temp Battle Stats ($7D7A)
charstat_pointer2  = $A1 ; 2 bytes ; Mixed pointer? A1 = 7A, A2 = 81





;; Some kind of dialogue text buffer/box drawing stuff at $0780-07FF








;; Save RAM ;; 

sram_1                   = $6300
sram_2                   = $6600
sram_3                   = $6900
sram_4                   = $6C00

unsram                   = $6000        ; $300 bytes
zeropage_5A              = unsram + $02FE
checksum                 = unsram + $02FF

pirateship_flag          = unsram + $00 ; $01 will trigger animation and fight scene; $02 gives total control over sailing
pirateship_x             = unsram + $01
pirateship_y             = unsram + $02
animated_movement        = unsram + $03 ; $C0 when riding ship in animation, $10 when in control of pirate ship?
airship_flag             = unsram + $04 ; $01 = airship visible, $02 = trigger animation?, $04 = in control of airship
airship_x                = unsram + $05
airship_y                = unsram + $06
airship_flyover          = unsram + $07 ; Counts down when airship is flying overhead 
chocobo_flag             = unsram + $08 ; $02 = riding and in control of chocobo, $80 = animation?
chocobo_x                = unsram + $09
chocobo_y                = unsram + $0A
;                        = unsram + $0B
ship_flag                = unsram + $0C
ship_x                   = unsram + $0D
ship_y                   = unsram + $0E
;                        = unsram + $0F
ow_save_pos_x            = unsram + $10
ow_save_pos_y            = unsram + $11
mapcheckything           = unsram + $12 ; constantly read when moving in town (value = $36)
;                        = unsram + $13
dreadnaught_flag         = unsram + $14
dreadnaught_x            = unsram + $15
dreadnaught_y            = unsram + $16
;                        = unsram + $17
zeropage_42              = unsram + $18 ; 01 when saving? (copied over from zero page $42)
;                        = unsram + $19
scotts_ring              = unsram + $1A ; becomes $02 when given Scott's Ring
;                        = unsram + $1B 
gold                     = unsram + $1C ; gold low byte
;                        = unsram + $1D ; gold middle byte
;                        = unsram + $1E ; gold high byte
battlespeed              = unsram + $1F ; battle text Speed (-1 from option chosen on game start)
chest_flags              = unsram + $20 ; starts at $FF, then each bit is set to 0 when its corresponding chest is opened
event_flags              = unsram + $40 ; similar to chests, 1s get turned to 0s to influence the game's story progression
;                                       ; at least one visible effect is to make NPC sprites vanish
;6042 - Starts $8B, turns to $8A when given Scott's Ring
;6046 - Starts $7F, turns to $7E when using Wild Rose on bartender in third town. Then to $7C when given Scott's Ring. Flags character sprites vanishing?

inventory                = unsram + $60 ; $20 bytes
passwords                = unsram + $80 ; $10 bytes ; password item IDs start at $F1 and end at $FF

ch_stats                 = unsram + $0100 ; $40 bytes per character, so use 00,40,80,C0 to index ch_stats
ch_id                    = ch_stats + $00 ; portrait and sprite; high bit set = don't display anything
;	00 = Firion
;	01 = Maria
;	02 = Guy
;	03 = Minwu
;	04 = Josef
;	05 = Gordon
;	06 = Leila
;	07 = Ricard
;	08 = Leon

ch_ailments              = ch_stats + $01
;	01 = Blind
;	02 = 
;	04 = Venom
;	08 = Cursed
;	10 = Amnesia
;	20 = Toad
;	40 = Stone
;	80 = Dead 

ch_name                  = ch_stats + $02 ; 6 bytes
ch_current_hp            = ch_stats + $08 ; 2 bytes, low then high
ch_max_hp                = ch_stats + $0A ; 2 bytes, low then high
ch_current_mp            = ch_stats + $0C ; 2 bytes, low then high
ch_max_mp                = ch_stats + $0E ; 2 bytes, low then high
ch_strength              = ch_stats + $10
ch_agility               = ch_stats + $11
ch_stamina               = ch_stats + $12
ch_intellect             = ch_stats + $13
ch_spirit                = ch_stats + $14
ch_mpower                = ch_stats + $15
ch_minaccuracy           = ch_stats + $16
ch_maxaccuracy           = ch_stats + $17
ch_attack                = ch_stats + $18
ch_head                  = ch_stats + $19 ; saved as item ID
ch_body                  = ch_stats + $1A
ch_hands                 = ch_stats + $1B
ch_righthand             = ch_stats + $1C
ch_lefthand              = ch_stats + $1D
ch_item1                 = ch_stats + $1E
ch_item2                 = ch_stats + $1F
ch_strength_real         = ch_stats + $20
ch_agility_real          = ch_stats + $21
ch_stamina_real          = ch_stats + $22
ch_intellect_real        = ch_stats + $23
ch_spirit_real           = ch_stats + $24
ch_mpower_real           = ch_stats + $25
ch_defense               = ch_stats + $26
ch_unknown1              = ch_stats + $27
ch_unknown2              = ch_stats + $28
ch_unknown3              = ch_stats + $29
ch_minevasion            = ch_stats + $2A
ch_maxevasion            = ch_stats + $2B
ch_min_mresist           = ch_stats + $2C
ch_max_mresist           = ch_stats + $2D
ch_unknown4              = ch_stats + $2E
ch_unknown5              = ch_stats + $2F
ch_spells                = ch_stats + $30 ; saved as item ID

ch_skills                = ch_stats + $0100 ; $40 per character
unarmed_level            = ch_skills + $00
unarmed_exp              = ch_skills + $01
shield_level             = ch_skills + $02
shield_exp               = ch_skills + $03
dagger_level             = ch_skills + $04
dagger_exp               = ch_skills + $05
staff_level              = ch_skills + $06
staff_exp                = ch_skills + $07
spear_level              = ch_skills + $08
spear_exp                = ch_skills + $09
sword_level              = ch_skills + $0A
sword_exp                = ch_skills + $0B
axe_level                = ch_skills + $0C
axe_exp                  = ch_skills + $0D
bow_level                = ch_skills + $0E
bow_exp                  = ch_skills + $0F
spell_1_level            = ch_skills + $10
spell_1_exp              = ch_skills + $11
spell_2_level            = ch_skills + $12
spell_2_exp              = ch_skills + $13
spell_3_level            = ch_skills + $14
spell_3_exp              = ch_skills + $15
spell_4_level            = ch_skills + $16
spell_4_exp              = ch_skills + $17
spell_5_level            = ch_skills + $18
spell_5_exp              = ch_skills + $19
spell_6_level            = ch_skills + $1A
spell_6_exp              = ch_skills + $1B
spell_7_level            = ch_skills + $1C
spell_7_exp              = ch_skills + $1D
spell_8_level            = ch_skills + $1E
spell_8_exp              = ch_skills + $1F
spell_9_level            = ch_skills + $20
spell_9_exp              = ch_skills + $21
spell_10_level           = ch_skills + $22
spell_10_exp             = ch_skills + $23
spell_11_level           = ch_skills + $24
spell_11_exp             = ch_skills + $25
spell_12_level           = ch_skills + $26
spell_12_exp             = ch_skills + $27
spell_13_level           = ch_skills + $28
spell_13_exp             = ch_skills + $29
spell_14_level           = ch_skills + $2A
spell_14_exp             = ch_skills + $2B
spell_15_level           = ch_skills + $2C
spell_15_exp             = ch_skills + $2D
spell_16_level           = ch_skills + $2E
spell_16_exp             = ch_skills + $2F
battle_min_evasion       = ch_skills + $30
;                        = ch_skills + $31
battle_min_mresist       = ch_skills + $32
;                        = ch_skills + $33
;                        = ch_skills + $34
battle_row               = ch_skills + $35 ; $00 = back row, $01 = front row, $80 = no character portrait visible





;; Battle Stats ;; 

battle_stats             = $7D7A ; #48 bytes per entity
btl_stat_minevasion      = battle_stats + $00
btl_stat_maxevasion      = battle_stats + $01
btl_stat_charstat29      = battle_stats + $02
btl_stat_min_mresist     = battle_stats + $03
btl_stat_max_mresist     = battle_stats + $04
btl_stat_charstat2E      = battle_stats + $05
btl_stat_unknown_0_1     = battle_stats + $06
btl_stat_unknown_14      = battle_stats + $07
btl_stat_ailment         = battle_stats + $08
btl_stat_unknown_0_2     = battle_stats + $09
btl_stat_current_hp_low  = battle_stats + $0A
btl_stat_current_hp_high = battle_stats + $0B
btl_stat_current_mp_low  = battle_stats + $0C
btl_stat_current_mp_high = battle_stats + $0D
btl_stat_max_hp_low      = battle_stats + $0E
btl_stat_max_hp_high     = battle_stats + $0F
btl_stat_max_mp_low      = battle_stats + $10
btl_stat_max_mp_high     = battle_stats + $11
btl_stat_intellect       = battle_stats + $12
btl_stat_spirit          = battle_stats + $13
;                        = battle_stats + $14
;                        = battle_stats + $15
;                        = battle_stats + $16
;                        = battle_stats + $17
btl_stat_minaccuracy     = battle_stats + $18
btl_stat_maxaccuracy     = battle_stats + $19
btl_stat_attack          = battle_stats + $1A
;                        = battle_stats + $1B
;                        = battle_stats + $1C
;                        = battle_stats + $1D
btl_stat_defense         = battle_stats + $1E
btl_stat_charstat27      = battle_stats + $1F
btl_stat_charstat28      = battle_stats + $20
;                        = battle_stats + $21
;                        = battle_stats + $22
;                        = battle_stats + $23
btl_stat_charstat2F      = battle_stats + $24
;                        = battle_stats + $25
;                        = battle_stats + $26
;                        = battle_stats + $27
;                        = battle_stats + $28
btl_stat_command         = battle_stats + $29 ; $00 = attack, $FE = flee
btl_stat_target          = battle_stats + $2A ; high bit set when targeting enemies 
;                        = battle_stats + $2B
btl_stat_ailmentbackup   = battle_stats + $2C
btl_stat_btlstat09backup = battle_stats + $2D
btl_stat_unknown         = battle_stats + $2E
btl_stat_unknown_2       = battle_stats + $2F



battle_magiclist         = $7CE3 ; List of spell item IDs for the character choosing a spell in battle

;; Command counters - rise when confirming attack, does not reset between turns; 4 bytes per character ;;
attack_counter           = $7CF3 ; 4 bytes
magic_counter            = $7CF7 ; 4 bytes

;; Stat level up counters ;; 
hp_levelup               = $7D6A ; 2 bytes per character, first 2 are Firion's, second 2 are Maria's... ; 8 bytes total
; a value of $06, $00 resulted in Firion gaining HP at battle's end

mp_levelup               = $7D72 ; 2 bytes per character, 8 bytes total


;; NES Registers ;;

PpuControl_2000          = $2000
PpuMask_2001             = $2001
PpuStatus_2002           = $2002
PpuScroll_2005           = $2005
PpuAddr_2006             = $2006
PpuData_2007             = $2007
Sq0Duty_4000             = $4000         
Sq0Sweep_4001            = $4001 
Sq0Timer_4002            = $4002 
Sq0Length_4003           = $4003
Sq1Duty_4004             = $4004  
Sq1Sweep_4005            = $4005 
Sq1Timer_4006            = $4006 
Sq1Length_4007           = $4007
TrgLinear_4008           = $4008
NoiseVolume_400C         = $400C
NoisePeriod_400E         = $400E
NoiseLength_400F         = $400F
DmcFreq_4010             = $4010
SpriteDma_4014           = $4014
ApuStatus_4015           = $4015
Ctrl1_4016               = $4016
Ctrl2_FrameCtr_4017      = $4017















