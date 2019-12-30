.include "Constants.inc"
.include "variables.inc"

.segment "BANK_FIXED"

    JMP $C025                ; C000  $4C $25 $C0    
L3C003:              
    JMP L3DCE3               ; C003  $4C $E3 $DC    
    JMP $F34D                ; C006  $4C $4D $F3    
L3C009:              
    JMP L3C74F               ; C009  $4C $4F $C7    
    JMP L3DBA2               ; C00C  $4C $A2 $DB    
    JMP $DC30                ; C00F  $4C $30 $DC    
    JMP $C018                ; C012  $4C $18 $C0    
    JMP $F2C8                ; C015  $4C $C8 $F2    
    LDA #$00                 ; C018  $A9 $00        
    JSR L3FE03               ; C01A  $20 $03 $FE    
    JSR $9C0C                ; C01D  $20 $0C $9C    
    LDA #$0E                 ; C020  $A9 $0E        
    JMP L3FE03               ; C022  $4C $03 $FE    
    LDA #$00                 ; C025  $A9 $00        
    STA PpuMask_2001         ; C027  $8D $01 $20    
    STA $FE                  ; C02A  $85 $FE        
    LDA #$88                 ; C02C  $A9 $88        
    STA $FF                  ; C02E  $85 $FF        
    STA $FD                  ; C030  $85 $FD        
    STA PpuControl_2000      ; C032  $8D $00 $20    
    LDX #$FF                 ; C035  $A2 $FF        
    STX $6F25                ; C037  $8E $25 $6F    
    TXS                      ; C03A  $9A            
    LDA #$00                 ; C03B  $A9 $00        
    JSR $C4A0                ; C03D  $20 $A0 $C4    
    JSR $C486                ; C040  $20 $86 $C4    
    JSR $C46E                ; C043  $20 $6E $C4    
    JSR $FE00                ; C046  $20 $00 $FE    
    LDA #$02                 ; C049  $A9 $02        
    STA SpriteDma_4014       ; C04B  $8D $14 $40    
    JSR $DC30                ; C04E  $20 $30 $DC    
    LDA $FA                  ; C051  $A5 $FA        
    CMP #$77                 ; C053  $C9 $77        
    BEQ C066                 ; C055  $F0 $0F        
    LDA #$77                 ; C057  $A9 $77        
    STA $FA                  ; C059  $85 $FA        
    JSR $F476                ; C05B  $20 $76 $F4    
    LDA #$0E                 ; C05E  $A9 $0E        
    JSR L3FE03               ; C060  $20 $03 $FE    
    JSR $B890                ; C063  $20 $90 $B8    
C066:    
    LDA #$0E                 ; C066  $A9 $0E        
    JSR L3FE03               ; C068  $20 $03 $FE    
    JSR $B642                ; C06B  $20 $42 $B6    
    PHP                      ; C06E  $08            
    JSR $C486                ; C06F  $20 $86 $C4    
    LDA $6010                ; C072  $AD $10 $60    
    STA $27                  ; C075  $85 $27        
    LDA $6011                ; C077  $AD $11 $60    
    STA $28                  ; C07A  $85 $28        
    LDA $6018                ; C07C  $AD $18 $60    
    STA $46                  ; C07F  $85 $46        
    STA $42                  ; C081  $85 $42        
    PLP                      ; C083  $28            
    BCS L3C0B8               ; C084  $B0 $32        
    LDA #$08                 ; C086  $A9 $08        
    STA $61C0                ; C088  $8D $C0 $61    
    LDX #$00                 ; C08B  $A2 $00        
    LDA #$7F                 ; C08D  $A9 $7F        
    JSR $FA00                ; C08F  $20 $00 $FA    
    LDA #$80                 ; C092  $A9 $80        
    STA $62F5                ; C094  $8D $F5 $62    
    LDX #$00                 ; C097  $A2 $00        
    LDA #$00                 ; C099  $A9 $00        
    JSR L3FE03               ; C09B  $20 $03 $FE    
    LDA $B400,X              ; C09E  $BD $00 $B4    
    SEC                      ; C0A1  $38            
    SBC #$07                 ; C0A2  $E9 $07        
    AND #$3F                 ; C0A4  $29 $3F        
    STA $29                  ; C0A6  $85 $29        
    LDA $B440,X              ; C0A8  $BD $40 $B4    
    SEC                      ; C0AB  $38            
    SBC #$07                 ; C0AC  $E9 $07        
    STA $2A                  ; C0AE  $85 $2A        
    LDA $B480,X              ; C0B0  $BD $80 $B4    
    STA $48                  ; C0B3  $85 $48        
    JSR L3CA41               ; C0B5  $20 $41 $CA    
L3C0B8:              
    LDA #$00                 ; C0B8  $A9 $00        
    STA ApuStatus_4015       ; C0BA  $8D $15 $40    
    JSR $C832                ; C0BD  $20 $32 $C8    
    JSR $D7F0                ; C0C0  $20 $F0 $D7    
L3C0C3:              
    LDX #$FF                 ; C0C3  $A2 $FF        
    TXS                      ; C0C5  $9A            
    JSR $C75C                ; C0C6  $20 $5C $C7    
L3C0C9:              
    JSR $FE00                ; C0C9  $20 $00 $FE    
    LDA #$02                 ; C0CC  $A9 $02        
    STA SpriteDma_4014       ; C0CE  $8D $14 $40    
    JSR $C2F3                ; C0D1  $20 $F3 $C2    
    JSR $C36F                ; C0D4  $20 $6F $C3    
    LDA $F0                  ; C0D7  $A5 $F0        
    CLC                      ; C0D9  $18            
    ADC #$01                 ; C0DA  $69 $01        
    STA $F0                  ; C0DC  $85 $F0        
    LDA $F1                  ; C0DE  $A5 $F1        
    ADC #$00                 ; C0E0  $69 $00        
    STA $F1                  ; C0E2  $85 $F1        
    JSR L3C746               ; C0E4  $20 $46 $C7    
    LDA $46                  ; C0E7  $A5 $46        
    CMP #$01                 ; C0E9  $C9 $01        
    BNE L3C0FB               ; C0EB  $D0 $0E        
    LDA $36                  ; C0ED  $A5 $36        
    ORA $35                  ; C0EF  $05 $35        
    CMP #$08                 ; C0F1  $C9 $08        
    BNE L3C0FB               ; C0F3  $D0 $06        
    LDA $44                  ; C0F5  $A5 $44        
    AND #$10                 ; C0F7  $29 $10        
    STA $43                  ; C0F9  $85 $43        
L3C0FB:              
    LDA $34                  ; C0FB  $A5 $34        
    BNE L3C109               ; C0FD  $D0 $0A        
    LDA $46                  ; C0FF  $A5 $46        
    STA $42                  ; C101  $85 $42        
    JSR $C159                ; C103  $20 $59 $C1    
    JSR $C266                ; C106  $20 $66 $C2    
L3C109:              
    JSR $C46E                ; C109  $20 $6E $C4    
    JSR $E009                ; C10C  $20 $09 $E0    
    LDA $6004                ; C10F  $AD $04 $60    
    ORA $6C                  ; C112  $05 $6C        
    BNE L3C126               ; C114  $D0 $10        
    LDA $6013                ; C116  $AD $13 $60    
    ASL A                    ; C119  $0A            
    BCS L3C126               ; C11A  $B0 $0A        
    LDA #$03                 ; C11C  $A9 $03        
    JSR L3FE03               ; C11E  $20 $03 $FE    
    LDX #$02                 ; C121  $A2 $02        
    JSR $A003                ; C123  $20 $03 $A0    
L3C126:              
    LDA $42                  ; C126  $A5 $42        
    AND #$0C                 ; C128  $29 $0C        
    BEQ L3C0C9               ; C12A  $F0 $9D        
    CMP #$08                 ; C12C  $C9 $08        
    BNE C13D                 ; C12E  $D0 $0D        
    LDA #$38                 ; C130  $A9 $38        
    STA NoiseVolume_400C     ; C132  $8D $0C $40    
    LDA $F0                  ; C135  $A5 $F0        
    ASL A                    ; C137  $0A            
    AND #$0F                 ; C138  $29 $0F        
    JMP $C14E                ; C13A  $4C $4E $C1    
C13D:
    LDA $F0                  ; C13D  $A5 $F0        
    BPL C143                 ; C13F  $10 $02        
    EOR #$FF                 ; C141  $49 $FF        
C143:
    LSR A                    ; C143  $4A            
    LSR A                    ; C144  $4A            
    LSR A                    ; C145  $4A            
    LSR A                    ; C146  $4A            
    ORA #$30                 ; C147  $09 $30        
    STA NoiseVolume_400C     ; C149  $8D $0C $40    
    LDA #$0A                 ; C14C  $A9 $0A        
    STA NoisePeriod_400E     ; C14E  $8D $0E $40    
    LDA #$00                 ; C151  $A9 $00        
    STA NoiseLength_400F     ; C153  $8D $0F $40    
    JMP L3C0C9               ; C156  $4C $C9 $C0    
   ;; sub start ;;
    LDA $44                  ; C159  $A5 $44        
    BMI L3C1C7               ; C15B  $30 $6A        
    AND #$20                 ; C15D  $29 $20        
    BNE L3C1B1               ; C15F  $D0 $50        
    LDA $23                  ; C161  $A5 $23        
    BEQ L3C181               ; C163  $F0 $1C        
    LDA #$00                 ; C165  $A9 $00        
    STA $23                  ; C167  $85 $23        
    LDA #$30                 ; C169  $A9 $30        
    STA NoiseVolume_400C     ; C16B  $8D $0C $40    
    JSR L3DDA4               ; C16E  $20 $A4 $DD    
    LDA #$0E                 ; C171  $A9 $0E        
    JSR L3FE03               ; C173  $20 $03 $FE    
    JSR $ACC4                ; C176  $20 $C4 $AC    
    LDA #$00                 ; C179  $A9 $00        
    STA ApuStatus_4015       ; C17B  $8D $15 $40    
    JMP L3C8BC               ; C17E  $4C $BC $C8    
L3C181:              
    LDA $22                  ; C181  $A5 $22        
    BEQ L3C1B0               ; C183  $F0 $2B        
    LDA #$30                 ; C185  $A9 $30        
    STA NoiseVolume_400C     ; C187  $8D $0C $40    
    JSR L3DDA4               ; C18A  $20 $A4 $DD    
    LDA $20                  ; C18D  $A5 $20        
    AND #$40                 ; C18F  $29 $40        
    BEQ C1A5                 ; C191  $F0 $12        
    LDA $601A                ; C193  $AD $1A $60    
    AND #$02                 ; C196  $29 $02        
    BEQ C1A5                 ; C198  $F0 $0B        
    LDA #$09                 ; C19A  $A9 $09        
    JSR L3FE03               ; C19C  $20 $03 $FE    
    JSR $BA00                ; C19F  $20 $00 $BA    
    JMP L3C8BC               ; C1A2  $4C $BC $C8    
C1A5:
    LDA #$0E                 ; C1A5  $A9 $0E        
    JSR L3FE03               ; C1A7  $20 $03 $FE    
    JSR $F0E2                ; C1AA  $20 $E2 $F0    
    JMP L3C8BC               ; C1AD  $4C $BC $C8    
L3C1B0:              
    RTS                      ; C1B0  $60            

L3C1B1:              
    JSR $DC6A                ; C1B1  $20 $6A $DC    
    LDA #$00                 ; C1B4  $A9 $00        
    STA PpuMask_2001         ; C1B6  $8D $01 $20    
    STA ApuStatus_4015       ; C1B9  $8D $15 $40    
    JSR $C75C                ; C1BC  $20 $5C $C7    
    LDA $6A                  ; C1BF  $A5 $6A        
    JSR $FA00                ; C1C1  $20 $00 $FA    
    JMP L3C8BC               ; C1C4  $4C $BC $C8    
L3C1C7:              
    LDA #$30                 ; C1C7  $A9 $30        
    STA NoiseVolume_400C     ; C1C9  $8D $0C $40    
    JSR $D7CB                ; C1CC  $20 $CB $D7    
    LDA #$00                 ; C1CF  $A9 $00        
    JSR L3FE03               ; C1D1  $20 $03 $FE    
    LDA $45                  ; C1D4  $A5 $45        
    TAX                      ; C1D6  $AA            
    LDA $B400,X              ; C1D7  $BD $00 $B4    
    SEC                      ; C1DA  $38            
    SBC #$07                 ; C1DB  $E9 $07        
    AND #$3F                 ; C1DD  $29 $3F        
    STA $29                  ; C1DF  $85 $29        
    LDA $B440,X              ; C1E1  $BD $40 $B4    
    SEC                      ; C1E4  $38            
    SBC #$07                 ; C1E5  $E9 $07        
    AND #$3F                 ; C1E7  $29 $3F        
    STA $2A                  ; C1E9  $85 $2A        
    LDA $B480,X              ; C1EB  $BD $80 $B4    
    STA $48                  ; C1EE  $85 $48        
    JSR L3CA41               ; C1F0  $20 $41 $CA    
    JMP L3C0B8               ; C1F3  $4C $B8 $C0    
C1F6:
    LDA #$80                 ; C1F6  $A9 $80        
    STA $6008                ; C1F8  $8D $08 $60    
    LDA #$70                 ; C1FB  $A9 $70        
    STA $6009                ; C1FD  $8D $09 $60    
    LDA #$6F                 ; C200  $A9 $6F        
    STA $600A                ; C202  $8D $0A $60    
    LDA #$44                 ; C205  $A9 $44        
    STA $E0                  ; C207  $85 $E0        
    RTS                      ; C209  $60            

C20A:
    LDA #$08                 ; C20A  $A9 $08        
    STA $46                  ; C20C  $85 $46        
    STA $42                  ; C20E  $85 $42        
    JSR $DF82                ; C210  $20 $82 $DF    
    LDA $6004                ; C213  $AD $04 $60    
    AND #$02                 ; C216  $29 $02        
    BEQ C21E                 ; C218  $F0 $04        
    LDA #$04                 ; C21A  $A9 $04        
    STA $6C                  ; C21C  $85 $6C        
C21E:
    RTS                      ; C21E  $60            

C21F:
    LDA $6008                ; C21F  $AD $08 $60    
    CMP #$02                 ; C222  $C9 $02        
    BEQ C1F6                 ; C224  $F0 $D0        
    LDA $6004                ; C226  $AD $04 $60    
    CMP #$02                 ; C229  $C9 $02        
    BCC C241                 ; C22B  $90 $14        
    LDA $27                  ; C22D  $A5 $27        
    CLC                      ; C22F  $18            
    ADC #$07                 ; C230  $69 $07        
    CMP $6005                ; C232  $CD $05 $60    
    BNE C241                 ; C235  $D0 $0A        
    LDA $28                  ; C237  $A5 $28        
    CLC                      ; C239  $18            
    ADC #$07                 ; C23A  $69 $07        
    CMP $6006                ; C23C  $CD $06 $60    
    BEQ C20A                 ; C23F  $F0 $C9        
C241:
    LDA $6008                ; C241  $AD $08 $60    
    CMP #$01                 ; C244  $C9 $01        
    BNE C265                 ; C246  $D0 $1D        
    LDA $27                  ; C248  $A5 $27        
    CLC                      ; C24A  $18            
    ADC #$07                 ; C24B  $69 $07        
    CMP $6009                ; C24D  $CD $09 $60    
    BNE C265                 ; C250  $D0 $13        
    LDA $28                  ; C252  $A5 $28        
    CLC                      ; C254  $18            
    ADC #$07                 ; C255  $69 $07        
    CMP $600A                ; C257  $CD $0A $60    
    BNE C265                 ; C25A  $D0 $09        
    LDA #$02                 ; C25C  $A9 $02        
    STA $6008                ; C25E  $8D $08 $60    
    LDA #$43                 ; C261  $A9 $43        
    STA $E0                  ; C263  $85 $E0        
C265:
    RTS                      ; C265  $60        
    
;; sub start ;;
    LDA $47                  ; C266  $A5 $47        
    BEQ L3C270               ; C268  $F0 $06        
    SEC                      ; C26A  $38            
    SBC #$01                 ; C26B  $E9 $01        
    STA $47                  ; C26D  $85 $47        
    RTS                      ; C26F  $60            

L3C270:              
    JSR $DB5C                ; C270  $20 $5C $DB    
    LDA $20                  ; C273  $A5 $20        
    AND #$0F                 ; C275  $29 $0F        
    BNE L3C290               ; C277  $D0 $17        
    LDA #$00                 ; C279  $A9 $00        
    STA $4E                  ; C27B  $85 $4E        
    LDA $24                  ; C27D  $A5 $24        
    BEQ L3C28F               ; C27F  $F0 $0E        
    LDA #$00                 ; C281  $A9 $00        
    STA $24                  ; C283  $85 $24        
    LDA $42                  ; C285  $A5 $42        
    CMP #$08                 ; C287  $C9 $08        
    BEQ C2C9                 ; C289  $F0 $3E        
    CMP #$01                 ; C28B  $C9 $01        
    BEQ C21F                 ; C28D  $F0 $90        
L3C28F:              
    RTS                      ; C28F  $60            

L3C290:              
    LDX $42                  ; C290  $A6 $42        
    CPX #$08                 ; C292  $E0 $08        
    BEQ L3C2C0               ; C294  $F0 $2A        
    CPX #$04                 ; C296  $E0 $04        
    BEQ L3C2CC               ; C298  $F0 $32        
    CPX #$02                 ; C29A  $E0 $02        
    BEQ L3C2E2               ; C29C  $F0 $44        
    JSR $C4B4                ; C29E  $20 $B4 $C4    
    BCS L3C2AA               ; C2A1  $B0 $07        
    JSR $C70E                ; C2A3  $20 $0E $C7    
    BCS L3C2DB               ; C2A6  $B0 $33        
    BCC L3C2C0               ; C2A8  $90 $16        
L3C2AA:              
    LDA $6008                ; C2AA  $AD $08 $60    
    CMP #$02                 ; C2AD  $C9 $02        
    BEQ L3C2DB               ; C2AF  $F0 $2A        
    JSR $C654                ; C2B1  $20 $54 $C6    
    BCC L3C2C0               ; C2B4  $90 $0A        
    JSR $C68B                ; C2B6  $20 $8B $C6    
    BCC L3C2C0               ; C2B9  $90 $05        
    JSR $C6C7                ; C2BB  $20 $C7 $C6    
    BCS L3C2DB               ; C2BE  $B0 $1B        
L3C2C0:              
    LDA $20                  ; C2C0  $A5 $20        
    AND #$0F                 ; C2C2  $29 $0F        
    STA $33                  ; C2C4  $85 $33        
    JMP L3D209               ; C2C6  $4C $09 $D2    
C2C9:
    JMP $C785                ; C2C9  $4C $85 $C7    
L3C2CC:              
    JSR $C4B4                ; C2CC  $20 $B4 $C4    
    BCC L3C2C0               ; C2CF  $90 $EF        
    JSR $C654                ; C2D1  $20 $54 $C6    
    BCC L3C2C0               ; C2D4  $90 $EA        
    JSR $C640                ; C2D6  $20 $40 $C6    
    BCC L3C2C0               ; C2D9  $90 $E5        
L3C2DB:              
    LDA $43                  ; C2DB  $A5 $43        
    STA $44                  ; C2DD  $85 $44        
    STA $4E                  ; C2DF  $85 $4E        
    RTS                      ; C2E1  $60            

L3C2E2:              
    JSR $C4B4                ; C2E2  $20 $B4 $C4    
    BCC L3C2C0               ; C2E5  $90 $D9        
    JSR $C640                ; C2E7  $20 $40 $C6    
    BCC L3C2C0               ; C2EA  $90 $D4        
    JSR $C68B                ; C2EC  $20 $8B $C6    
    BCC L3C2C0               ; C2EF  $90 $CF        
    BCS L3C2DB               ; C2F1  $B0 $E8        
    
   ;; sub start ;;
    LDA $6D                  ; C2F3  $A5 $6D        
    CLC                      ; C2F5  $18            
    ADC #$03                 ; C2F6  $69 $03        
    STA $6D                  ; C2F8  $85 $6D        
    AND #$0F                 ; C2FA  $29 $0F        
    ASL A                    ; C2FC  $0A            
    TAX                      ; C2FD  $AA            
    LDA PpuStatus_2002       ; C2FE  $AD $02 $20    
    LDA #$03                 ; C301  $A9 $03        
    STA PpuAddr_2006         ; C303  $8D $06 $20    
    LDA $C34F,X              ; C306  $BD $4F $C3    
    STA PpuAddr_2006         ; C309  $8D $06 $20    
    LDA PpuData_2007         ; C30C  $AD $07 $20    
    LDA PpuData_2007         ; C30F  $AD $07 $20    
    STA $80                  ; C312  $85 $80        
    LDA #$03                 ; C314  $A9 $03        
    STA PpuAddr_2006         ; C316  $8D $06 $20    
    LDA $C350,X              ; C319  $BD $50 $C3    
    STA PpuAddr_2006         ; C31C  $8D $06 $20    
    LDA PpuData_2007         ; C31F  $AD $07 $20    
    LDA PpuData_2007         ; C322  $AD $07 $20    
    STA $81                  ; C325  $85 $81        
    LDA $80                  ; C327  $A5 $80        
    ASL A                    ; C329  $0A            
    ROL $81                  ; C32A  $26 $81        
    ROL $80                  ; C32C  $26 $80        
    LDA #$03                 ; C32E  $A9 $03        
    STA PpuAddr_2006         ; C330  $8D $06 $20    
    LDA $C34F,X              ; C333  $BD $4F $C3    
    STA PpuAddr_2006         ; C336  $8D $06 $20    
    LDA $80                  ; C339  $A5 $80        
    STA PpuData_2007         ; C33B  $8D $07 $20    
    LDA #$03                 ; C33E  $A9 $03        
    STA PpuAddr_2006         ; C340  $8D $06 $20    
    LDA $C350,X              ; C343  $BD $50 $C3    
    STA PpuAddr_2006         ; C346  $8D $06 $20    
    LDA $81                  ; C349  $A5 $81        
    STA PpuData_2007         ; C34B  $8D $07 $20    
    RTS                      ; C34E  $60            

 ;data block---
  .byte $50
;; [C350 : 3C360]  
  .byte $60,$51,$61,$52,$62,$53,$63,$54,$64,$55,$65,$56,$66,$57,$67,$90
  .byte $A0,$91,$A1,$92,$A2,$93,$A3,$94,$A4,$95,$A5,$96,$A6,$97,$A7

;; sub start ;;
    LDA $34                  ; C36F  $A5 $34        
    BEQ L3C380               ; C371  $F0 $0D        
    JSR $C3FE                ; C373  $20 $FE $C3    
    LDA $42                  ; C376  $A5 $42        
    CMP #$01                 ; C378  $C9 $01        
    BNE L3C37F               ; C37A  $D0 $03        
    JMP L3C8E7               ; C37C  $4C $E7 $C8    
L3C37F:              
    RTS                      ; C37F  $60            

L3C380:              
    LDA #$1E                 ; C380  $A9 $1E        
    STA PpuMask_2001         ; C382  $8D $01 $20    
    LDA $FD                  ; C385  $A5 $FD        
    STA $FF                  ; C387  $85 $FF        
    STA PpuControl_2000      ; C389  $8D $00 $20    
    LDA PpuStatus_2002       ; C38C  $AD $02 $20    
    LDA $27                  ; C38F  $A5 $27        
    ASL A                    ; C391  $0A            
    ASL A                    ; C392  $0A            
    ASL A                    ; C393  $0A            
    ASL A                    ; C394  $0A            
    ORA $35                  ; C395  $05 $35        
    STA PpuScroll_2005       ; C397  $8D $05 $20    
    LDA $2F                  ; C39A  $A5 $2F        
    ASL A                    ; C39C  $0A            
    ASL A                    ; C39D  $0A            
    ASL A                    ; C39E  $0A            
    ASL A                    ; C39F  $0A            
    ORA $36                  ; C3A0  $05 $36        
    STA PpuScroll_2005       ; C3A2  $8D $05 $20    
    RTS                      ; C3A5  $60            

L3C3A6:              
    LDA $32                  ; C3A6  $A5 $32        
    BEQ L3C3AD               ; C3A8  $F0 $03        
    JSR $D21B                ; C3AA  $20 $1B $D2    
L3C3AD:              
    JSR L3C380               ; C3AD  $20 $80 $C3    
    LDA $35                  ; C3B0  $A5 $35        
    CLC                      ; C3B2  $18            
    ADC $34                  ; C3B3  $65 $34        
    AND #$0F                 ; C3B5  $29 $0F        
    BEQ L3C3BC               ; C3B7  $F0 $03        
    STA $35                  ; C3B9  $85 $35        
    RTS                      ; C3BB  $60            

L3C3BC:              
    STA $34                  ; C3BC  $85 $34        
    STA $35                  ; C3BE  $85 $35        
    LDA $27                  ; C3C0  $A5 $27        
    CLC                      ; C3C2  $18            
    ADC #$01                 ; C3C3  $69 $01        
    STA $27                  ; C3C5  $85 $27        
    AND #$10                 ; C3C7  $29 $10        
    LSR $FD                  ; C3C9  $46 $FD        
    CMP #$10                 ; C3CB  $C9 $10        
    ROL $FD                  ; C3CD  $26 $FD        
    RTS                      ; C3CF  $60            

L3C3D0:              
    LDA $32                  ; C3D0  $A5 $32        
    BEQ L3C3D7               ; C3D2  $F0 $03        
    JSR $D21B                ; C3D4  $20 $1B $D2    
L3C3D7:              
    JSR L3C380               ; C3D7  $20 $80 $C3    
    LDA $35                  ; C3DA  $A5 $35        
    BNE L3C3EF               ; C3DC  $D0 $11        
    LDA $27                  ; C3DE  $A5 $27        
    SEC                      ; C3E0  $38            
    SBC #$01                 ; C3E1  $E9 $01        
    STA $27                  ; C3E3  $85 $27        
    AND #$10                 ; C3E5  $29 $10        
    LSR $FD                  ; C3E7  $46 $FD        
    CMP #$10                 ; C3E9  $C9 $10        
    ROL $FD                  ; C3EB  $26 $FD        
    LDA $35                  ; C3ED  $A5 $35        
L3C3EF:              
    SEC                      ; C3EF  $38            
    SBC $34                  ; C3F0  $E5 $34        
    AND #$0F                 ; C3F2  $29 $0F        
    BEQ L3C3F9               ; C3F4  $F0 $03        
    STA $35                  ; C3F6  $85 $35        
    RTS                      ; C3F8  $60            

L3C3F9:              
    STA $34                  ; C3F9  $85 $34        
    STA $35                  ; C3FB  $85 $35        
    RTS                      ; C3FD  $60            

;; sub start ;;
    LDA $33                  ; C3FE  $A5 $33        
    LSR A                    ; C400  $4A            
    BCS L3C3A6               ; C401  $B0 $A3        
    LSR A                    ; C403  $4A            
    BCS L3C3D0               ; C404  $B0 $CA        
    LSR A                    ; C406  $4A            
    BCS L3C40C               ; C407  $B0 $03        
    JMP L3C43C               ; C409  $4C $3C $C4    
L3C40C:              
    LDA $32                  ; C40C  $A5 $32        
    BEQ L3C419               ; C40E  $F0 $09        
    LDA $36                  ; C410  $A5 $36        
    CMP #$08                 ; C412  $C9 $08        
    BCC L3C419               ; C414  $90 $03        
    JSR $D21B                ; C416  $20 $1B $D2    
L3C419:              
    JSR L3C380               ; C419  $20 $80 $C3    
    LDA $36                  ; C41C  $A5 $36        
    CLC                      ; C41E  $18            
    ADC $34                  ; C41F  $65 $34        
    AND #$0F                 ; C421  $29 $0F        
    BEQ L3C428               ; C423  $F0 $03        
    STA $36                  ; C425  $85 $36        
    RTS                      ; C427  $60            

L3C428:              
    STA $34                  ; C428  $85 $34        
    STA $36                  ; C42A  $85 $36        
    INC $28                  ; C42C  $E6 $28        
    LDA $2F                  ; C42E  $A5 $2F        
    CLC                      ; C430  $18            
    ADC #$01                 ; C431  $69 $01        
    CMP #$0F                 ; C433  $C9 $0F        
    BCC L3C439               ; C435  $90 $02        
    SBC #$0F                 ; C437  $E9 $0F        
L3C439:              
    STA $2F                  ; C439  $85 $2F        
    RTS                      ; C43B  $60            

L3C43C:              
    LDA $32                  ; C43C  $A5 $32        
    BEQ L3C449               ; C43E  $F0 $09        
    LDA $36                  ; C440  $A5 $36        
    CMP #$08                 ; C442  $C9 $08        
    BNE L3C449               ; C444  $D0 $03        
    JSR $D21B                ; C446  $20 $1B $D2    
L3C449:              
    JSR L3C380               ; C449  $20 $80 $C3    
    LDA $36                  ; C44C  $A5 $36        
    BNE L3C45F               ; C44E  $D0 $0F        
    DEC $28                  ; C450  $C6 $28        
    LDA $2F                  ; C452  $A5 $2F        
    SEC                      ; C454  $38            
    SBC #$01                 ; C455  $E9 $01        
    BCS L3C45B               ; C457  $B0 $02        
    ADC #$0F                 ; C459  $69 $0F        
L3C45B:              
    STA $2F                  ; C45B  $85 $2F        
    LDA $36                  ; C45D  $A5 $36        
L3C45F:              
    SEC                      ; C45F  $38            
    SBC $34                  ; C460  $E5 $34        
    AND #$0F                 ; C462  $29 $0F        
    BEQ L3C469               ; C464  $F0 $03        
    STA $36                  ; C466  $85 $36        
    RTS                      ; C468  $60            

L3C469:              
    STA $34                  ; C469  $85 $34        
    STA $36                  ; C46B  $85 $36        
    RTS                      ; C46D  $60            

;; sub start ;;
    LDX #$3F                 ; C46E  $A2 $3F        
    LDA #$F0                 ; C470  $A9 $F0        
L3C472:              
    STA $0200,X              ; C472  $9D $00 $02    
    STA $0240,X              ; C475  $9D $40 $02    
    STA $0280,X              ; C478  $9D $80 $02    
    STA $02C0,X              ; C47B  $9D $C0 $02    
    DEX                      ; C47E  $CA            
    BPL L3C472               ; C47F  $10 $F1        
    LDA #$00                 ; C481  $A9 $00        
    STA $26                  ; C483  $85 $26        
    RTS                      ; C485  $60            

    LDX #$EF                 ; C486  $A2 $EF        
    LDA #$00                 ; C488  $A9 $00        
C48A:
    STA $00,X                ; C48A  $95 $00        
    DEX                      ; C48C  $CA            
    BNE C48A                 ; C48D  $D0 $FB        
    LDA #$1B                 ; C48F  $A9 $1B        
    ORA $F4                  ; C491  $05 $F4        
    STA $F4                  ; C493  $85 $F4        
    LDX #$1F                 ; C495  $A2 $1F        
    LDA #$0F                 ; C497  $A9 $0F        
C499:
    STA $03C0,X              ; C499  $9D $C0 $03    
    DEX                      ; C49C  $CA            
    BPL C499                 ; C49D  $10 $FA        
    RTS                      ; C49F  $60            

 LDA #$30                 ; C4A0  $A9 $30        
    STA Sq0Duty_4000         ; C4A2  $8D $00 $40    
    STA Sq1Duty_4004         ; C4A5  $8D $04 $40    
    STA TrgLinear_4008       ; C4A8  $8D $08 $40    
    STA NoiseVolume_400C     ; C4AB  $8D $0C $40    
    LDA #$00                 ; C4AE  $A9 $00        
    STA ApuStatus_4015       ; C4B0  $8D $15 $40    
    RTS                      ; C4B3  $60            

;; sub start ;;
    LSR A                    ; C4B4  $4A            
    BCS L3C4CB               ; C4B5  $B0 $14        
    LSR A                    ; C4B7  $4A            
    BCS L3C4D2               ; C4B8  $B0 $18        
    LSR A                    ; C4BA  $4A            
    BCS L3C4C4               ; C4BB  $B0 $07        
    LDX #$07                 ; C4BD  $A2 $07        
    LDY #$06                 ; C4BF  $A0 $06        
    JMP L3C4D6               ; C4C1  $4C $D6 $C4    
L3C4C4:              
    LDX #$07                 ; C4C4  $A2 $07        
    LDY #$08                 ; C4C6  $A0 $08        
    JMP L3C4D6               ; C4C8  $4C $D6 $C4    
L3C4CB:              
    LDX #$08                 ; C4CB  $A2 $08        
    LDY #$07                 ; C4CD  $A0 $07        
    JMP L3C4D6               ; C4CF  $4C $D6 $C4    
L3C4D2:              
    LDX #$06                 ; C4D2  $A2 $06        
    LDY #$07                 ; C4D4  $A0 $07        
L3C4D6:              
    TXA                      ; C4D6  $8A            
    CLC                      ; C4D7  $18            
    ADC $27                  ; C4D8  $65 $27        
    STA $80                  ; C4DA  $85 $80        
    STA $82                  ; C4DC  $85 $82        
    TYA                      ; C4DE  $98            
    CLC                      ; C4DF  $18            
    ADC $28                  ; C4E0  $65 $28        
    STA $83                  ; C4E2  $85 $83        
    AND #$0F                 ; C4E4  $29 $0F        
    ORA #$70                 ; C4E6  $09 $70        
    STA $81                  ; C4E8  $85 $81        
    LDY #$00                 ; C4EA  $A0 $00        
    LDA ($80),Y              ; C4EC  $B1 $80        
    ASL A                    ; C4EE  $0A            
    TAX                      ; C4EF  $AA            
    LDA $0400,X              ; C4F0  $BD $00 $04    
    STA $44                  ; C4F3  $85 $44        
    LDA $0401,X              ; C4F5  $BD $01 $04    
    STA $45                  ; C4F8  $85 $45        
    LDA $44                  ; C4FA  $A5 $44        
    AND $42                  ; C4FC  $25 $42        
    BEQ L3C502               ; C4FE  $F0 $02        
    SEC                      ; C500  $38            
    RTS                      ; C501  $60            

L3C502:              
    BIT $44                  ; C502  $24 $44        
    BVC L3C509               ; C504  $50 $03        
    JMP $C995                ; C506  $4C $95 $C9    
L3C509:              
    BMI L3C543               ; C509  $30 $38        
    LDA $6C                  ; C50B  $A5 $6C        
    BNE L3C543               ; C50D  $D0 $34        
    LDX $42                  ; C50F  $A6 $42        
    CPX #$08                 ; C511  $E0 $08        
    BEQ L3C543               ; C513  $F0 $2E        
    LDA $62B9                ; C515  $AD $B9 $62    
    CPX #$04                 ; C518  $E0 $04        
    BEQ L3C53A               ; C51A  $F0 $1E        
    CPX #$02                 ; C51C  $E0 $02        
    BNE L3C52D               ; C51E  $D0 $0D        
    LDA $6019                ; C520  $AD $19 $60    
    CMP #$40                 ; C523  $C9 $40        
    BEQ L3C543               ; C525  $F0 $1C        
    LDA $62B8                ; C527  $AD $B8 $62    
    JMP L3C53A               ; C52A  $4C $3A $C5    
L3C52D:              
    LDA $62B7                ; C52D  $AD $B7 $62    
    LDX $6008                ; C530  $AE $08 $60    
    CPX #$02                 ; C533  $E0 $02        
    BEQ L3C53A               ; C535  $F0 $03        
    LDA $62B6                ; C537  $AD $B6 $62    
L3C53A:              
    STA $80                  ; C53A  $85 $80        
    JSR $C5AD                ; C53C  $20 $AD $C5    
    CMP $80                  ; C53F  $C5 $80        
    BCC L3C545               ; C541  $90 $02        
L3C543:              
    CLC                      ; C543  $18            
    RTS                      ; C544  $60            

L3C545:              
    LDA $42                  ; C545  $A5 $42        
    CMP #$04                 ; C547  $C9 $04        
    BNE L3C54F               ; C549  $D0 $04        
    LDA #$01                 ; C54B  $A9 $01        
    BNE C567                 ; C54D  $D0 $18        
L3C54F:              
    LDA $27                  ; C54F  $A5 $27        
    CLC                      ; C551  $18            
    ADC #$07                 ; C552  $69 $07        
    ROL A                    ; C554  $2A            
    ROL A                    ; C555  $2A            
    ROL A                    ; C556  $2A            
    ROL A                    ; C557  $2A            
    AND #$07                 ; C558  $29 $07        
    STA $80                  ; C55A  $85 $80        
    LDA $28                  ; C55C  $A5 $28        
    CLC                      ; C55E  $18            
    ADC #$07                 ; C55F  $69 $07        
    LSR A                    ; C561  $4A            
    LSR A                    ; C562  $4A            
    AND #$38                 ; C563  $29 $38        
    ORA $80                  ; C565  $05 $80        
C567:
    STA $80                  ; C567  $85 $80        
    LDA $6012                ; C569  $AD $12 $60    
    AND #$40                 ; C56C  $29 $40        
    ORA $80                  ; C56E  $05 $80        
    TAX                      ; C570  $AA            
    LDA #$0B                 ; C571  $A9 $0B        
    JSR L3FE03               ; C573  $20 $03 $FE    
    LDA $8200,X              ; C576  $BD $00 $82    
    LDY #$00                 ; C579  $A0 $00        
    STY $81                  ; C57B  $84 $81        
    ASL A                    ; C57D  $0A            
    ROL $81                  ; C57E  $26 $81        
    ASL A                    ; C580  $0A            
    ROL $81                  ; C581  $26 $81        
    ASL A                    ; C583  $0A            
    ROL $81                  ; C584  $26 $81        
    CLC                      ; C586  $18            
    ADC #$80                 ; C587  $69 $80        
    STA $80                  ; C589  $85 $80        
    LDA $81                  ; C58B  $A5 $81        
    ADC #$82                 ; C58D  $69 $82        
    STA $81                  ; C58F  $85 $81        
    LDA #$0B                 ; C591  $A9 $0B        
    JSR L3FE03               ; C593  $20 $03 $FE    
    INC $F7                  ; C596  $E6 $F7        
    LDX $F7                  ; C598  $A6 $F7        
    LDA $F900,X              ; C59A  $BD $00 $F9    
    AND #$3F                 ; C59D  $29 $3F        
    TAX                      ; C59F  $AA            
    LDY $C5C8,X              ; C5A0  $BC $C8 $C5    
    LDA ($80),Y              ; C5A3  $B1 $80        
    STA $6A                  ; C5A5  $85 $6A        
    LDA #$20                 ; C5A7  $A9 $20        
    STA $44                  ; C5A9  $85 $44        
    CLC                      ; C5AB  $18            
    RTS                      ; C5AC  $60            

;; sub start ;;
    BIT $F6                  ; C5AD  $24 $F6        
    BMI L3C5B7               ; C5AF  $30 $06        
    INC $F5                  ; C5B1  $E6 $F5        
    BNE L3C5C2               ; C5B3  $D0 $0D        
    BEQ L3C5BB               ; C5B5  $F0 $04        
L3C5B7:              
    DEC $F5                  ; C5B7  $C6 $F5        
    BNE L3C5C2               ; C5B9  $D0 $07        
L3C5BB:              
    LDA $F6                  ; C5BB  $A5 $F6        
    CLC                      ; C5BD  $18            
    ADC #$A0                 ; C5BE  $69 $A0        
    STA $F6                  ; C5C0  $85 $F6        
L3C5C2:              
    LDX $F5                  ; C5C2  $A6 $F5        
    LDA $F900,X              ; C5C4  $BD $00 $F9    
    RTS                      ; C5C7  $60            

 ;data block---

.byte $00,$00,$00,$00,$00,$00,$00,$00 
;;; [C5D0 : 3C5E0]
.byte $00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 
.byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$03,$03,$03,$03 
.byte $03,$03,$03,$03,$03,$03,$03,$03,$04,$04,$04,$04,$04,$04,$05,$05 
.byte $05,$05,$05,$05,$06,$06,$06,$07

C608:
    LDA $6003                ; C608  $AD $03 $60    
    CMP #$10                 ; C60B  $C9 $10        
    BNE C625                 ; C60D  $D0 $16        
    LDA $27                  ; C60F  $A5 $27        
    CLC                      ; C611  $18            
    ADC #$07                 ; C612  $69 $07        
    STA $6001                ; C614  $8D $01 $60    
    LDA $28                  ; C617  $A5 $28        
    CLC                      ; C619  $18            
    ADC #$07                 ; C61A  $69 $07        
    STA $6002                ; C61C  $8D $02 $60    
    LDA #$30                 ; C61F  $A9 $30        
    STA NoiseVolume_400C     ; C621  $8D $0C $40    
    RTS                      ; C624  $60            

C625:
    LDA $27                  ; C625  $A5 $27        
    CLC                      ; C627  $18            
    ADC #$07                 ; C628  $69 $07        
    STA $600D                ; C62A  $8D $0D $60    
    LDA $28                  ; C62D  $A5 $28        
    CLC                      ; C62F  $18            
    ADC #$07                 ; C630  $69 $07        
    STA $600E                ; C632  $8D $0E $60    
    LDA $600C                ; C635  $AD $0C $60    
    EOR #$03                 ; C638  $49 $03        
    STA $600C                ; C63A  $8D $0C $60    
    JMP $C61F                ; C63D  $4C $1F $C6    
    LDA $44                  ; C640  $A5 $44        
    AND #$01                 ; C642  $29 $01        
    BNE L3C689               ; C644  $D0 $43        
    LDA $42                  ; C646  $A5 $42        
    LDX #$01                 ; C648  $A2 $01        
    STX $46                  ; C64A  $86 $46        
    STX $42                  ; C64C  $86 $42        
    CMP #$04                 ; C64E  $C9 $04        
C650:
    BEQ C608                 ; C650  $F0 $B6        
    CLC                      ; C652  $18            
    RTS                      ; C653  $60            

;; sub start ;;
    LDA $44                  ; C654  $A5 $44        
    AND #$02                 ; C656  $29 $02        
    BNE L3C689               ; C658  $D0 $2F        
    CPX #$4C                 ; C65A  $E0 $4C        
    BNE C669                 ; C65C  $D0 $0B        
    LDA $601A                ; C65E  $AD $1A $60    
    AND #$20                 ; C661  $29 $20        
    BEQ L3C689               ; C663  $F0 $24        
    LDA #$58                 ; C665  $A9 $58        
    BNE C672                 ; C667  $D0 $09        
C669:
    LDA $601A                ; C669  $AD $1A $60    
    AND #$04                 ; C66C  $29 $04        
    BEQ L3C689               ; C66E  $F0 $19        
    LDA #$40                 ; C670  $A9 $40        
C672:
    STA $6019                ; C672  $8D $19 $60    
    LDA #$04                 ; C675  $A9 $04        
    STA $47                  ; C677  $85 $47        
    LDA $42                  ; C679  $A5 $42        
    LDX #$01                 ; C67B  $A2 $01        
    STX $42                  ; C67D  $86 $42        
    LDX #$02                 ; C67F  $A2 $02        
    STX $46                  ; C681  $86 $46        
    CMP #$04                 ; C683  $C9 $04        
    BEQ C650                 ; C685  $F0 $C9        
    CLC                      ; C687  $18            
    RTS                      ; C688  $60            

L3C689:              
    SEC                      ; C689  $38            
    RTS                      ; C68A  $60            

;; sub start ;;
    LDA $6000                ; C68B  $AD $00 $60    
    BEQ L3C689               ; C68E  $F0 $F9        
    LDA $6001                ; C690  $AD $01 $60    
    CMP $82                  ; C693  $C5 $82        
    BNE L3C689               ; C695  $D0 $F2        
    LDA $6002                ; C697  $AD $02 $60    
    CMP $83                  ; C69A  $C5 $83        
    BNE L3C689               ; C69C  $D0 $EB        
    LDA #$10                 ; C69E  $A9 $10        
    STA $6003                ; C6A0  $8D $03 $60    
    LDA #$00                 ; C6A3  $A9 $00        
    STA $600F                ; C6A5  $8D $0F $60    
    LDA $6000                ; C6A8  $AD $00 $60    
    CMP #$02                 ; C6AB  $C9 $02        
    BCS C6B9                 ; C6AD  $B0 $0A        
    LDA #$02                 ; C6AF  $A9 $02        
    STA $6000                ; C6B1  $8D $00 $60    
    LDA #$00                 ; C6B4  $A9 $00        
    JSR L3C6F4               ; C6B6  $20 $F4 $C6    
C6B9:
    LDA #$01                 ; C6B9  $A9 $01        
    STA $42                  ; C6BB  $85 $42        
    LDA #$04                 ; C6BD  $A9 $04        
    STA $46                  ; C6BF  $85 $46        
    LDA #$04                 ; C6C1  $A9 $04        
    STA $47                  ; C6C3  $85 $47        
    CLC                      ; C6C5  $18            
    RTS                      ; C6C6  $60            

;; sub start ;;
    LDA $600C                ; C6C7  $AD $0C $60    
    CMP #$02                 ; C6CA  $C9 $02        
    BCC L3C689               ; C6CC  $90 $BB        
    LDA $600D                ; C6CE  $AD $0D $60    
    CMP $82                  ; C6D1  $C5 $82        
    BNE L3C689               ; C6D3  $D0 $B4        
    LDA $600E                ; C6D5  $AD $0E $60    
    CMP $83                  ; C6D8  $C5 $83        
    BNE L3C689               ; C6DA  $D0 $AD        
    LDA #$C0                 ; C6DC  $A9 $C0        
    STA $6003                ; C6DE  $8D $03 $60    
    LDA #$00                 ; C6E1  $A9 $00        
    STA $600F                ; C6E3  $8D $0F $60    
    LDA $600C                ; C6E6  $AD $0C $60    
    AND #$01                 ; C6E9  $29 $01        
    CLC                      ; C6EB  $18            
    ADC #$01                 ; C6EC  $69 $01        
    JSR L3C6F4               ; C6EE  $20 $F4 $C6    
    JMP $C6B9                ; C6F1  $4C $B9 $C6    
L3C6F4:              
    ASL A                    ; C6F4  $0A            
    TAX                      ; C6F5  $AA            
    LDA #$0D                 ; C6F6  $A9 $0D        
    JSR L3FE03               ; C6F8  $20 $03 $FE    
    LDA $BFC0,X              ; C6FB  $BD $C0 $BF    
    STA $72                  ; C6FE  $85 $72        
    LDA $BFC1,X              ; C700  $BD $C1 $BF    
    STA $73                  ; C703  $85 $73        
    LDA #$01                 ; C705  $A9 $01        
    STA $6C                  ; C707  $85 $6C        
    LDA #$00                 ; C709  $A9 $00        
    STA $17                  ; C70B  $85 $17        
    RTS                      ; C70D  $60            

;; sub start ;;
    LDA $6014                ; C70E  $AD $14 $60    
    BEQ L3C733               ; C711  $F0 $20        
    LDA $82                  ; C713  $A5 $82        
    CMP $6015                ; C715  $CD $15 $60    
    BEQ L3C722               ; C718  $F0 $08        
    CLC                      ; C71A  $18            
    ADC #$01                 ; C71B  $69 $01        
    CMP $6015                ; C71D  $CD $15 $60    
    BNE L3C733               ; C720  $D0 $11        
L3C722:              
    LDA $83                  ; C722  $A5 $83        
    CMP $6016                ; C724  $CD $16 $60    
    BEQ C731                 ; C727  $F0 $08        
    CLC                      ; C729  $18            
    ADC #$01                 ; C72A  $69 $01        
    CMP $6016                ; C72C  $CD $16 $60    
    BNE L3C733               ; C72F  $D0 $02        
C731:
    SEC                      ; C731  $38            
    RTS                      ; C732  $60            

L3C733:              
    LDA $42                  ; C733  $A5 $42        
    CMP #$01                 ; C735  $C9 $01        
    BNE L3C744               ; C737  $D0 $0B        
    LDA $6008                ; C739  $AD $08 $60    
    CMP #$02                 ; C73C  $C9 $02        
    BNE L3C744               ; C73E  $D0 $04        
    LDA $44                  ; C740  $A5 $44        
    BMI C731                 ; C742  $30 $ED        
L3C744:              
    CLC                      ; C744  $18            
    RTS                      ; C745  $60            

L3C746:              
    LDA #$0D                 ; C746  $A9 $0D        
    JSR L3FE03               ; C748  $20 $03 $FE    
    JMP $9800                ; C74B  $4C $00 $98    
    RTS                      ; C74E  $60            

L3C74F:              
    LDA #$0D                 ; C74F  $A9 $0D        
    JSR L3FE03               ; C751  $20 $03 $FE    
    JSR $9800                ; C754  $20 $00 $98    
    LDA $57                  ; C757  $A5 $57        
    JMP L3FE03               ; C759  $4C $03 $FE    
   ;; sub start ;;
    LDA $27                  ; C75C  $A5 $27        
    CLC                      ; C75E  $18            
    ADC #$07                 ; C75F  $69 $07        
    STA $80                  ; C761  $85 $80        
    LDA $28                  ; C763  $A5 $28        
    CLC                      ; C765  $18            
    ADC #$07                 ; C766  $69 $07        
    AND #$0F                 ; C768  $29 $0F        
    ORA #$70                 ; C76A  $09 $70        
    STA $81                  ; C76C  $85 $81        
    LDY #$00                 ; C76E  $A0 $00        
    LDA ($80),Y              ; C770  $B1 $80        
    TAY                      ; C772  $A8            
    ASL A                    ; C773  $0A            
    TAX                      ; C774  $AA            
    LDA $0400,X              ; C775  $BD $00 $04    
    AND #$10                 ; C778  $29 $10        
    STA $43                  ; C77A  $85 $43        
    LDA #$00                 ; C77C  $A9 $00        
    JSR L3FE03               ; C77E  $20 $03 $FE    
    LDX $9500,Y              ; C781  $BE $00 $95    
    RTS                      ; C784  $60            

    LDA #$00                 ; C785  $A9 $00        
    STA $24                  ; C787  $85 $24        
    JSR $DF9C                ; C789  $20 $9C $DF    
    LDA $6004                ; C78C  $AD $04 $60    
    AND #$02                 ; C78F  $29 $02        
    BEQ C7AA                 ; C791  $F0 $17        
    LDA #$00                 ; C793  $A9 $00        
    STA $6C                  ; C795  $85 $6C        
    JSR $C827                ; C797  $20 $27 $C8    
    LDA #$70                 ; C79A  $A9 $70        
    STA $6005                ; C79C  $8D $05 $60    
    LDA #$6F                 ; C79F  $A9 $6F        
    STA $6006                ; C7A1  $8D $06 $60    
    LDA #$81                 ; C7A4  $A9 $81        
    STA $6004                ; C7A6  $8D $04 $60    
    RTS                      ; C7A9  $60            

C7AA:
    LDA $27                  ; C7AA  $A5 $27        
    CLC                      ; C7AC  $18            
    ADC #$07                 ; C7AD  $69 $07        
    STA $82                  ; C7AF  $85 $82        
    STA $80                  ; C7B1  $85 $80        
    LDA $28                  ; C7B3  $A5 $28        
    CLC                      ; C7B5  $18            
    ADC #$07                 ; C7B6  $69 $07        
    STA $83                  ; C7B8  $85 $83        
    AND #$0F                 ; C7BA  $29 $0F        
    ORA #$70                 ; C7BC  $09 $70        
    STA $81                  ; C7BE  $85 $81        
    LDY #$00                 ; C7C0  $A0 $00        
    LDA ($80),Y              ; C7C2  $B1 $80        
    ASL A                    ; C7C4  $0A            
    TAX                      ; C7C5  $AA            
    LDA $0400,X              ; C7C6  $BD $00 $04    
    PHA                      ; C7C9  $48            
    AND #$40                 ; C7CA  $29 $40        
    BEQ C7F9                 ; C7CC  $F0 $2B        
    LDA $0401,X              ; C7CE  $BD $01 $04    
    CMP #$02                 ; C7D1  $C9 $02        
    BNE C7F9                 ; C7D3  $D0 $24        
    LDA $601B                ; C7D5  $AD $1B $60    
    AND #$40                 ; C7D8  $29 $40        
    BEQ C7F9                 ; C7DA  $F0 $1D        
    LDA $6236                ; C7DC  $AD $36 $62    
    STA $6005                ; C7DF  $8D $05 $60    
    LDA $6237                ; C7E2  $AD $37 $62    
    STA $6006                ; C7E5  $8D $06 $60    
    LDA #$01                 ; C7E8  $A9 $01        
    STA $42                  ; C7EA  $85 $42        
    STA $46                  ; C7EC  $85 $46        
    LDA #$80                 ; C7EE  $A9 $80        
    STA $44                  ; C7F0  $85 $44        
    LDA $62BE                ; C7F2  $AD $BE $62    
    STA $45                  ; C7F5  $85 $45        
    PLA                      ; C7F7  $68            
    RTS                      ; C7F8  $60            

C7F9:
    PLA                      ; C7F9  $68            
    AND #$08                 ; C7FA  $29 $08        
    BEQ C802                 ; C7FC  $F0 $04        
C7FE:
    JMP $DF82                ; C7FE  $4C $82 $DF    
    RTS                      ; C801  $60            

C802:
    LDA $6008                ; C802  $AD $08 $60    
    CMP #$01                 ; C805  $C9 $01        
    BNE C817                 ; C807  $D0 $0E        
    LDA $82                  ; C809  $A5 $82        
    CMP $6009                ; C80B  $CD $09 $60    
    BNE C817                 ; C80E  $D0 $07        
    LDA $83                  ; C810  $A5 $83        
    CMP $600A                ; C812  $CD $0A $60    
    BEQ C7FE                 ; C815  $F0 $E7        
C817:
    LDA $27                  ; C817  $A5 $27        
    CLC                      ; C819  $18            
    ADC #$07                 ; C81A  $69 $07        
    STA $6005                ; C81C  $8D $05 $60    
    LDA $28                  ; C81F  $A5 $28        
    CLC                      ; C821  $18            
    ADC #$07                 ; C822  $69 $07        
    STA $6006                ; C824  $8D $06 $60    
    LDA #$01                 ; C827  $A9 $01        
    STA $46                  ; C829  $85 $46        
    STA $42                  ; C82B  $85 $42        
    LDA #$00                 ; C82D  $A9 $00        
    STA $43                  ; C82F  $85 $43        
    RTS                      ; C831  $60            

;; sub start ;;
    LDA $FF                  ; C832  $A5 $FF        
    STA PpuControl_2000      ; C834  $8D $00 $20    
    LDA #$00                 ; C837  $A9 $00        
    STA PpuMask_2001         ; C839  $8D $01 $20    
    STA $43                  ; C83C  $85 $43        
    STA $4E                  ; C83E  $85 $4E        
    STA $6007                ; C840  $8D $07 $60    
    STA $2F                  ; C843  $85 $2F        
    STA $44                  ; C845  $85 $44        
    STA $45                  ; C847  $85 $45        
    STA $0D                  ; C849  $85 $0D        
    STA $50                  ; C84B  $85 $50        
    STA $33                  ; C84D  $85 $33        
    STA $24                  ; C84F  $85 $24        
    STA $25                  ; C851  $85 $25        
    STA $23                  ; C853  $85 $23        
    STA $22                  ; C855  $85 $22        
    STA $2D                  ; C857  $85 $2D        
    JSR $E4A5                ; C859  $20 $A5 $E4    
    LDA #$00                 ; C85C  $A9 $00        
    JSR L3FE03               ; C85E  $20 $03 $FE    
    JSR $9C03                ; C861  $20 $03 $9C    
    JSR $9C06                ; C864  $20 $06 $9C    
    JSR $D9A3                ; C867  $20 $A3 $D9    
    JSR $D1D3                ; C86A  $20 $D3 $D1    
    LDA $27                  ; C86D  $A5 $27        
    AND #$10                 ; C86F  $29 $10        
    CMP #$10                 ; C871  $C9 $10        
    ROL A                    ; C873  $2A            
    AND #$01                 ; C874  $29 $01        
    ORA #$88                 ; C876  $09 $88        
    STA $FD                  ; C878  $85 $FD        
    STA $FF                  ; C87A  $85 $FF        
    JSR $FE00                ; C87C  $20 $00 $FE    
    JSR $DC30                ; C87F  $20 $30 $DC    
    JSR L3C380               ; C882  $20 $80 $C3    
    LDA #$00                 ; C885  $A9 $00        
    STA PpuMask_2001         ; C887  $8D $01 $20    
    LDA #$44                 ; C88A  $A9 $44        
    LDX $42                  ; C88C  $A6 $42        
    CPX #$01                 ; C88E  $E0 $01        
    BNE L3C89B               ; C890  $D0 $09        
    LDX $6008                ; C892  $AE $08 $60    
    CPX #$02                 ; C895  $E0 $02        
    BNE L3C89B               ; C897  $D0 $02        
    LDA #$43                 ; C899  $A9 $43        
L3C89B:              
    STA $E0                  ; C89B  $85 $E0        
    LDA $6008                ; C89D  $AD $08 $60    
    AND #$7F                 ; C8A0  $29 $7F        
    STA $6008                ; C8A2  $8D $08 $60    
    LDA $6004                ; C8A5  $AD $04 $60    
    BPL L3C8BB               ; C8A8  $10 $11        
    LDA #$01                 ; C8AA  $A9 $01        
    STA $6004                ; C8AC  $8D $04 $60    
    LDA $623C                ; C8AF  $AD $3C $62    
    STA $6005                ; C8B2  $8D $05 $60    
    LDA $623D                ; C8B5  $AD $3D $62    
    STA $6006                ; C8B8  $8D $06 $60    
L3C8BB:              
    RTS                      ; C8BB  $60            

L3C8BC:              
    JSR $C832                ; C8BC  $20 $32 $C8    
    LDA #$01                 ; C8BF  $A9 $01        
    JSR L3DDA4               ; C8C1  $20 $A4 $DD    
    JMP L3C0C3               ; C8C4  $4C $C3 $C0    
    LDA $F0                  ; C8C7  $A5 $F0        
    AND #$01                 ; C8C9  $29 $01        
    ORA #$1E                 ; C8CB  $09 $1E        
    STA PpuMask_2001         ; C8CD  $8D $01 $20    
    LDA #$0F                 ; C8D0  $A9 $0F        
    STA NoiseVolume_400C     ; C8D2  $8D $0C $40    
    LDA #$0D                 ; C8D5  $A9 $0D        
    STA NoisePeriod_400E     ; C8D7  $8D $0E $40    
    LDA #$00                 ; C8DA  $A9 $00        
    STA NoiseLength_400F     ; C8DC  $8D $0F $40    
    LDA $34                  ; C8DF  $A5 $34        
    BNE C8E6                 ; C8E1  $D0 $03        
    JMP $C96E                ; C8E3  $4C $6E $C9    
C8E6:
    RTS                      ; C8E6  $60            

L3C8E7:              
    LDA $6101                ; C8E7  $AD $01 $61    
    ASL A                    ; C8EA  $0A            
    BCS L3C8F4               ; C8EB  $B0 $07        
    ASL A                    ; C8ED  $0A            
    BCS L3C8F4               ; C8EE  $B0 $04        
    AND #$10                 ; C8F0  $29 $10        
    BNE L3C921               ; C8F2  $D0 $2D        
L3C8F4:              
    LDA $6141                ; C8F4  $AD $41 $61    
    ASL A                    ; C8F7  $0A            
    BCS L3C901               ; C8F8  $B0 $07        
    ASL A                    ; C8FA  $0A            
    BCS L3C901               ; C8FB  $B0 $04        
    AND #$10                 ; C8FD  $29 $10        
    BNE L3C921               ; C8FF  $D0 $20        
L3C901:              
    LDA $6181                ; C901  $AD $81 $61    
    ASL A                    ; C904  $0A            
    BCS L3C90E               ; C905  $B0 $07        
    ASL A                    ; C907  $0A            
    BCS L3C90E               ; C908  $B0 $04        
    AND #$10                 ; C90A  $29 $10        
    BNE L3C921               ; C90C  $D0 $13        
L3C90E:              
    LDA $62F5                ; C90E  $AD $F5 $62    
    BMI L3C920               ; C911  $30 $0D        
    LDA $61C1                ; C913  $AD $C1 $61    
    ASL A                    ; C916  $0A            
    BCS L3C920               ; C917  $B0 $07        
    ASL A                    ; C919  $0A            
    BCS L3C920               ; C91A  $B0 $04        
    AND #$10                 ; C91C  $29 $10        
    BNE L3C921               ; C91E  $D0 $01        
L3C920:              
    RTS                      ; C920  $60            

L3C921:              
    LDA #$3A                 ; C921  $A9 $3A        
    STA Sq1Duty_4004         ; C923  $8D $04 $40    
    LDA #$81                 ; C926  $A9 $81        
    STA Sq1Sweep_4005        ; C928  $8D $05 $40    
    LDA #$60                 ; C92B  $A9 $60        
    STA Sq1Timer_4006        ; C92D  $8D $06 $40    
    STA Sq1Length_4007       ; C930  $8D $07 $40    
    LDA #$06                 ; C933  $A9 $06        
    STA $E5                  ; C935  $85 $E5        
    LDA $34                  ; C937  $A5 $34        
    BEQ C93C                 ; C939  $F0 $01        
    RTS                      ; C93B  $60            

C93C:
    LDX #$00                 ; C93C  $A2 $00        
C93E:
    LDA $6101,X              ; C93E  $BD $01 $61    
    ASL A                    ; C941  $0A            
    ASL A                    ; C942  $0A            
    BCS C966                 ; C943  $B0 $21        
    AND #$10                 ; C945  $29 $10        
    BEQ C966                 ; C947  $F0 $1D        
    LDA $6109,X              ; C949  $BD $09 $61    
    BNE C955                 ; C94C  $D0 $07        
    LDA $6108,X              ; C94E  $BD $08 $61    
    CMP #$02                 ; C951  $C9 $02        
    BCC C966                 ; C953  $90 $11        
C955:
    LDA $6108,X              ; C955  $BD $08 $61    
    SEC                      ; C958  $38            
    SBC #$01                 ; C959  $E9 $01        
    STA $6108,X              ; C95B  $9D $08 $61    
    LDA $6109,X              ; C95E  $BD $09 $61    
    SBC #$00                 ; C961  $E9 $00        
    STA $6109,X              ; C963  $9D $09 $61    
C966:
    TXA                      ; C966  $8A            
    CLC                      ; C967  $18            
    ADC #$40                 ; C968  $69 $40        
    TAX                      ; C96A  $AA            
    BNE C93E                 ; C96B  $D0 $D1        
    RTS                      ; C96D  $60            

    LDX #$00                 ; C96E  $A2 $00        
C970:
    LDA $6109,X              ; C970  $BD $09 $61    
    BNE C97C                 ; C973  $D0 $07        
    LDA $6108,X              ; C975  $BD $08 $61    
    CMP #$02                 ; C978  $C9 $02        
    BCC C98D                 ; C97A  $90 $11        
C97C:
    LDA $6108,X              ; C97C  $BD $08 $61    
    SEC                      ; C97F  $38            
    SBC #$01                 ; C980  $E9 $01        
    STA $6108,X              ; C982  $9D $08 $61    
    LDA $6109,X              ; C985  $BD $09 $61    
    SBC #$00                 ; C988  $E9 $00        
    STA $6109,X              ; C98A  $9D $09 $61    
C98D:
    TXA                      ; C98D  $8A            
    CLC                      ; C98E  $18            
    ADC #$40                 ; C98F  $69 $40        
    TAX                      ; C991  $AA            
    BNE C970                 ; C992  $D0 $DC        
    RTS                      ; C994  $60            

    LDA $6C                  ; C995  $A5 $6C        
    BNE C9CE                 ; C997  $D0 $35        
    LDA $45                  ; C999  $A5 $45        
    BNE C9BF                 ; C99B  $D0 $22        
    LDA $601B                ; C99D  $AD $1B $60    
    AND #$20                 ; C9A0  $29 $20        
    BEQ C9CE                 ; C9A2  $F0 $2A        
    LDA $6043                ; C9A4  $AD $43 $60    
    AND #$02                 ; C9A7  $29 $02        
    BEQ C9CE                 ; C9A9  $F0 $23        
    JSR $F308                ; C9AB  $20 $08 $F3    
    BCC C9B8                 ; C9AE  $90 $08        
    LDA $6101                ; C9B0  $AD $01 $61    
    AND #$1F                 ; C9B3  $29 $1F        
    STA $6101                ; C9B5  $8D $01 $61    
C9B8:
    LDA #$16                 ; C9B8  $A9 $16        
    JSR L3C6F4               ; C9BA  $20 $F4 $C6    
    CLC                      ; C9BD  $18            
    RTS                      ; C9BE  $60            

C9BF:
    CMP #$01                 ; C9BF  $C9 $01        
    BNE C9D0                 ; C9C1  $D0 $0D        
    LDA $601B                ; C9C3  $AD $1B $60    
    AND #$20                 ; C9C6  $29 $20        
    BEQ C9CE                 ; C9C8  $F0 $04        
    LDA #$03                 ; C9CA  $A9 $03        
    STA $6C                  ; C9CC  $85 $6C        
C9CE:
    CLC                      ; C9CE  $18            
    RTS                      ; C9CF  $60            

C9D0:
    CMP #$03                 ; C9D0  $C9 $03        
    BNE C9E8                 ; C9D2  $D0 $14        
    LDA $6012                ; C9D4  $AD $12 $60    
    AND #$04                 ; C9D7  $29 $04        
    BNE C9CE                 ; C9D9  $D0 $F3        
    LDA $601B                ; C9DB  $AD $1B $60    
    AND #$40                 ; C9DE  $29 $40        
    BEQ C9CE                 ; C9E0  $F0 $EC        
    LDA #$02                 ; C9E2  $A9 $02        
    STA $6C                  ; C9E4  $85 $6C        
    CLC                      ; C9E6  $18            
    RTS                      ; C9E7  $60            

C9E8:
    CMP #$04                 ; C9E8  $C9 $04        
    BNE C9CE                 ; C9EA  $D0 $E2        
    LDA $601B                ; C9EC  $AD $1B $60    
    AND #$01                 ; C9EF  $29 $01        
    BEQ C9CE                 ; C9F1  $F0 $DB        
    LDA $6013                ; C9F3  $AD $13 $60    
    AND #$10                 ; C9F6  $29 $10        
    BEQ C9CE                 ; C9F8  $F0 $D4        
    LDA $6047                ; C9FA  $AD $47 $60    
    AND #$02                 ; C9FD  $29 $02        
    BEQ C9CE                 ; C9FF  $F0 $CD        
    LDA $6013                ; CA01  $AD $13 $60    
    AND #$EF                 ; CA04  $29 $EF        
    ORA #$80                 ; CA06  $09 $80        
    STA $6013                ; CA08  $8D $13 $60    
    LDA #$00                 ; CA0B  $A9 $00        
    JSR L3FE03               ; CA0D  $20 $03 $FE    
    LDA $80F2                ; CA10  $AD $F2 $80    
    STA $04F2                ; CA13  $8D $F2 $04    
    LDA $80F3                ; CA16  $AD $F3 $80    
    STA $04F3                ; CA19  $8D $F3 $04    
    LDA $8179                ; CA1C  $AD $79 $81    
    STA $0579                ; CA1F  $8D $79 $05    
    LDA $81F9                ; CA22  $AD $F9 $81    
    STA $05F9                ; CA25  $8D $F9 $05    
    LDA $8279                ; CA28  $AD $79 $82    
    STA $0679                ; CA2B  $8D $79 $06    
    LDA $82F9                ; CA2E  $AD $F9 $82    
    STA $06F9                ; CA31  $8D $F9 $06    
    LDA $8379                ; CA34  $AD $79 $83    
    STA $0779                ; CA37  $8D $79 $07    
    LDA #$06                 ; CA3A  $A9 $06        
    STA $6C                  ; CA3C  $85 $6C        
    CLC                      ; CA3E  $18            
    RTS                      ; CA3F  $60            

    RTS                      ; CA40  $60            
L3CA41:              
    JSR $D06F                ; CA41  $20 $6F $D0    
L3CA44:              
    JSR $FE00                ; CA44  $20 $00 $FE    
    LDA #$02                 ; CA47  $A9 $02        
    STA SpriteDma_4014       ; CA49  $8D $14 $40    
    JSR $CDD0                ; CA4C  $20 $D0 $CD    
    LDA $F0                  ; CA4F  $A5 $F0        
    CLC                      ; CA51  $18            
    ADC #$01                 ; CA52  $69 $01        
    STA $F0                  ; CA54  $85 $F0        
    LDA $F1                  ; CA56  $A5 $F1        
    ADC #$00                 ; CA58  $69 $00        
    STA $F1                  ; CA5A  $85 $F1        
    JSR L3C746               ; CA5C  $20 $46 $C7    
    LDA $36                  ; CA5F  $A5 $36        
    ORA $35                  ; CA61  $05 $35        
    CMP #$08                 ; CA63  $C9 $08        
    BNE L3CA6D               ; CA65  $D0 $06        
    LDA $44                  ; CA67  $A5 $44        
    AND #$06                 ; CA69  $29 $06        
    STA $43                  ; CA6B  $85 $43        
L3CA6D:              
    LDA $34                  ; CA6D  $A5 $34        
    BNE L3CA7D               ; CA6F  $D0 $0C        
    LDA $44                  ; CA71  $A5 $44        
    AND #$E0                 ; CA73  $29 $E0        
    BEQ L3CA7A               ; CA75  $F0 $03        
    JMP L3CA8D               ; CA77  $4C $8D $CA    
L3CA7A:              
    JSR L3CB20               ; CA7A  $20 $20 $CB    
L3CA7D:              
    LDA $76                  ; CA7D  $A5 $76        
    BEQ L3CA84               ; CA7F  $F0 $03        
    JSR $E8AA                ; CA81  $20 $AA $E8    
L3CA84:              
    JSR $C46E                ; CA84  $20 $6E $C4    
    JSR $E30C                ; CA87  $20 $0C $E3    
    JMP L3CA44               ; CA8A  $4C $44 $CA    
L3CA8D:              
    CMP #$40                 ; CA8D  $C9 $40        
    BCS L3CAB6               ; CA8F  $B0 $25        
    LDA #$00                 ; CA91  $A9 $00        
    STA $44                  ; CA93  $85 $44        
    JSR $DC6A                ; CA95  $20 $6A $DC    
    LDA #$00                 ; CA98  $A9 $00        
    STA PpuMask_2001         ; CA9A  $8D $01 $20    
    STA ApuStatus_4015       ; CA9D  $8D $15 $40    
    LDA #$00                 ; CAA0  $A9 $00        
    JSR L3FE03               ; CAA2  $20 $03 $FE    
    LDX $48                  ; CAA5  $A6 $48        
    LDA $9400,X              ; CAA7  $BD $00 $94    
    TAX                      ; CAAA  $AA            
    LDA $6A                  ; CAAB  $A5 $6A        
    JSR $FA00                ; CAAD  $20 $00 $FA    
    JSR L3D07B               ; CAB0  $20 $7B $D0    
    JMP L3CA44               ; CAB3  $4C $44 $CA    
L3CAB6:              
    BNE L3CABC               ; CAB6  $D0 $04        
    JSR $D8EE                ; CAB8  $20 $EE $D8    
    RTS                      ; CABB  $60            

L3CABC:              
    CMP #$80                 ; CABC  $C9 $80        
    BNE L3CAFF               ; CABE  $D0 $3F        
    TSX                      ; CAC0  $BA            
    CPX #$20                 ; CAC1  $E0 $20        
    BCC L3CA7A               ; CAC3  $90 $B5        
    LDA $29                  ; CAC5  $A5 $29        
    PHA                      ; CAC7  $48            
    LDA $2A                  ; CAC8  $A5 $2A        
    PHA                      ; CACA  $48            
    LDA $48                  ; CACB  $A5 $48        
    PHA                      ; CACD  $48            
    JSR $D8EE                ; CACE  $20 $EE $D8    
    LDA #$00                 ; CAD1  $A9 $00        
    JSR L3FE03               ; CAD3  $20 $03 $FE    
    LDX $45                  ; CAD6  $A6 $45        
    LDA $B000,X              ; CAD8  $BD $00 $B0    
    AND #$1F                 ; CADB  $29 $1F        
    SEC                      ; CADD  $38            
    SBC #$07                 ; CADE  $E9 $07        
    AND #$3F                 ; CAE0  $29 $3F        
    STA $29                  ; CAE2  $85 $29        
    LDA $B100,X              ; CAE4  $BD $00 $B1    
    SEC                      ; CAE7  $38            
    SBC #$07                 ; CAE8  $E9 $07        
    AND #$3F                 ; CAEA  $29 $3F        
    STA $2A                  ; CAEC  $85 $2A        
    STX $48                  ; CAEE  $86 $48        
    JSR L3CA41               ; CAF0  $20 $41 $CA    
    PLA                      ; CAF3  $68            
    STA $48                  ; CAF4  $85 $48        
    PLA                      ; CAF6  $68            
    STA $2A                  ; CAF7  $85 $2A        
    PLA                      ; CAF9  $68            
    STA $29                  ; CAFA  $85 $29        
    JMP L3CA41               ; CAFC  $4C $41 $CA    
L3CAFF:              
    CMP #$C0                 ; CAFF  $C9 $C0        
    BNE L3CB20               ; CB01  $D0 $1D        
    JSR $D8EE                ; CB03  $20 $EE $D8    
    LDA #$00                 ; CB06  $A9 $00        
    JSR L3FE03               ; CB08  $20 $03 $FE    
    LDX $45                  ; CB0B  $A6 $45        
    LDA $B4C0,X              ; CB0D  $BD $C0 $B4    
    SEC                      ; CB10  $38            
    SBC #$07                 ; CB11  $E9 $07        
    STA $27                  ; CB13  $85 $27        
    LDA $B4E0,X              ; CB15  $BD $E0 $B4    
    SEC                      ; CB18  $38            
    SBC #$07                 ; CB19  $E9 $07        
    STA $28                  ; CB1B  $85 $28        
    JMP L3C0B8               ; CB1D  $4C $B8 $C0    
L3CB20:              
    LDA $24                  ; CB20  $A5 $24        
    BEQ L3CB83               ; CB22  $F0 $5F        
    LDA #$00                 ; CB24  $A9 $00        
    STA $24                  ; CB26  $85 $24        
    JSR $FE00                ; CB28  $20 $00 $FE    
    JSR L3C746               ; CB2B  $20 $46 $C7    
    LDA $33                  ; CB2E  $A5 $33        
    JSR $CD21                ; CB30  $20 $21 $CD    
    JSR $CCDE                ; CB33  $20 $DE $CC    
    STX $67                  ; CB36  $86 $67        
    PHP                      ; CB38  $08            
    LDX #$08                 ; CB39  $A2 $08        
    LDA #$03                 ; CB3B  $A9 $03        
    JSR L3FE03               ; CB3D  $20 $03 $FE    
    JSR $A003                ; CB40  $20 $03 $A0    
    PLP                      ; CB43  $28            
    LDX $67                  ; CB44  $A6 $67        
    BCC L3CB4B               ; CB46  $90 $03        
    JMP L3CBC7               ; CB48  $4C $C7 $CB    
L3CB4B:              
    JSR $CD85                ; CB4B  $20 $85 $CD    
    STA $92                  ; CB4E  $85 $92        
    LDA $44                  ; CB50  $A5 $44        
    AND #$20                 ; CB52  $29 $20        
    ORA $43                  ; CB54  $05 $43        
    STA $44                  ; CB56  $85 $44        
    LDA #$00                 ; CB58  $A9 $00        
    STA $94                  ; CB5A  $85 $94        
    LDA #$84                 ; CB5C  $A9 $84        
    STA $95                  ; CB5E  $85 $95        
    LDA #$0A                 ; CB60  $A9 $0A        
    STA $93                  ; CB62  $85 $93        
L3CB64:              
    JSR $E8D8                ; CB64  $20 $D8 $E8    
    JSR $FE00                ; CB67  $20 $00 $FE    
    LDA #$02                 ; CB6A  $A9 $02        
    STA SpriteDma_4014       ; CB6C  $8D $14 $40    
    JSR L3CDF5               ; CB6F  $20 $F5 $CD    
    LDA #$1E                 ; CB72  $A9 $1E        
    STA PpuMask_2001         ; CB74  $8D $01 $20    
    JSR L3C746               ; CB77  $20 $46 $C7    
    LDA #$00                 ; CB7A  $A9 $00        
    STA $24                  ; CB7C  $85 $24        
    STA $23                  ; CB7E  $85 $23        
    STA $22                  ; CB80  $85 $22        
    RTS                      ; CB82  $60            

L3CB83:              
    LDA $23                  ; CB83  $A5 $23        
    BEQ L3CB9B               ; CB85  $F0 $14        
    LDA #$00                 ; CB87  $A9 $00        
    STA $23                  ; CB89  $85 $23        
    LDA #$02                 ; CB8B  $A9 $02        
    JSR L3DDA4               ; CB8D  $20 $A4 $DD    
    LDA #$0E                 ; CB90  $A9 $0E        
    JSR L3FE03               ; CB92  $20 $03 $FE    
    JSR $ACC4                ; CB95  $20 $C4 $AC    
    JMP L3D07B               ; CB98  $4C $7B $D0    
L3CB9B:              
    LDA $22                  ; CB9B  $A5 $22        
    BEQ L3CBB3               ; CB9D  $F0 $14        
    LDA #$00                 ; CB9F  $A9 $00        
    STA $22                  ; CBA1  $85 $22        
    LDA #$02                 ; CBA3  $A9 $02        
    JSR L3DDA4               ; CBA5  $20 $A4 $DD    
    LDA #$0E                 ; CBA8  $A9 $0E        
    JSR L3FE03               ; CBAA  $20 $03 $FE    
    JSR $F0E2                ; CBAD  $20 $E2 $F0    
    JMP L3D07B               ; CBB0  $4C $7B $D0    
L3CBB3:              
    JSR $DB5C                ; CBB3  $20 $5C $DB    
    LDA $20                  ; CBB6  $A5 $20        
    AND #$0F                 ; CBB8  $29 $0F        
    BNE L3CBBD               ; CBBA  $D0 $01        
L3CBBC:              
    RTS                      ; CBBC  $60            

L3CBBD:              
    STA $33                  ; CBBD  $85 $33        
    JSR $CBFC                ; CBBF  $20 $FC $CB    
    BCS L3CBBC               ; CBC2  $B0 $F8        
    JMP L3D209               ; CBC4  $4C $09 $D2    
L3CBC7:              
    LDA $43                  ; CBC7  $A5 $43        
    STA $44                  ; CBC9  $85 $44        
    LDA #$0E                 ; CBCB  $A9 $0E        
    JSR L3FE03               ; CBCD  $20 $03 $FE    
    JSR $9794                ; CBD0  $20 $94 $97    
    STA $92                  ; CBD3  $85 $92        
    LDA $A0                  ; CBD5  $A5 $A0        
    CMP #$60                 ; CBD7  $C9 $60        
    BCC L3CBDF               ; CBD9  $90 $04        
    CMP #$C0                 ; CBDB  $C9 $C0        
    BCC L3CBEE               ; CBDD  $90 $0F        
L3CBDF:              
    LDA $44                  ; CBDF  $A5 $44        
    AND #$E0                 ; CBE1  $29 $E0        
    ORA $6C                  ; CBE3  $05 $6C        
    BEQ L3CBF1               ; CBE5  $F0 $0A        
    LDA $6C                  ; CBE7  $A5 $6C        
    BEQ L3CBEE               ; CBE9  $F0 $03        
    JSR L3C6F4               ; CBEB  $20 $F4 $C6    
L3CBEE:              
    JMP L3CB64               ; CBEE  $4C $64 $CB    
L3CBF1:              
    JSR $9145                ; CBF1  $20 $45 $91    
    LDA $6C                  ; CBF4  $A5 $6C        
    BEQ L3CBFB               ; CBF6  $F0 $03        
    JMP L3C6F4               ; CBF8  $4C $F4 $C6    
L3CBFB:              
    RTS                      ; CBFB  $60            

;; sub start ;;
    JSR $CD21                ; CBFC  $20 $21 $CD    
    JSR $CC5B                ; CBFF  $20 $5B $CC    
    BCS L3CC51               ; CC02  $B0 $4D        
    JSR $CD54                ; CC04  $20 $54 $CD    
    LDA $44                  ; CC07  $A5 $44        
    CMP #$40                 ; CC09  $C9 $40        
    BCC L3CC0F               ; CC0B  $90 $02        
    CLC                      ; CC0D  $18            
    RTS                      ; CC0E  $60            

L3CC0F:              
    CMP #$10                 ; CC0F  $C9 $10        
    BCC L3CC21               ; CC11  $90 $0E        
    AND #$30                 ; CC13  $29 $30        
    CMP #$20                 ; CC15  $C9 $20        
    BCC L3CC51               ; CC17  $90 $38        
    BEQ L3CC1E               ; CC19  $F0 $03        
    JMP L3CF87               ; CC1B  $4C $87 $CF    
L3CC1E:              
    JMP L3CF87               ; CC1E  $4C $87 $CF    
L3CC21:              
    AND #$09                 ; CC21  $29 $09        
    CMP #$01                 ; CC23  $C9 $01        
    BEQ L3CC51               ; CC25  $F0 $2A        
    CMP #$08                 ; CC27  $C9 $08        
    BEQ L3CC30               ; CC29  $F0 $05        
    JMP L3CF57               ; CC2B  $4C $57 $CF    
L3CC2E:              
    CLC                      ; CC2E  $18            
    RTS                      ; CC2F  $60            

L3CC30:              
    LDA $6C                  ; CC30  $A5 $6C        
    BNE L3CC2E               ; CC32  $D0 $FA        
    LDA $45                  ; CC34  $A5 $45        
    CMP #$0F                 ; CC36  $C9 $0F        
    BCC L3CC3D               ; CC38  $90 $03        
    JMP L3CF50               ; CC3A  $4C $50 $CF    
L3CC3D:              
    ASL A                    ; CC3D  $0A            
    TAX                      ; CC3E  $AA            
    LDA $CEED,X              ; CC3F  $BD $ED $CE    
    STA $80                  ; CC42  $85 $80        
    LDA $CEEE,X              ; CC44  $BD $EE $CE    
    STA $81                  ; CC47  $85 $81        
    LDA #$0E                 ; CC49  $A9 $0E        
    JSR L3FE03               ; CC4B  $20 $03 $FE    
    JMP ($0080)              ; CC4E  $6C $80 $00    
L3CC51:              
    LDA #$00                 ; CC51  $A9 $00        
    STA $45                  ; CC53  $85 $45        
    LDA $43                  ; CC55  $A5 $43        
    STA $44                  ; CC57  $85 $44        
    SEC                      ; CC59  $38            
    RTS                      ; CC5A  $60            

;; sub start ;;
    LDX #$00                 ; CC5B  $A2 $00        
L3CC5D:              
    LDA $7500,X              ; CC5D  $BD $00 $75    
    BEQ L3CC7A               ; CC60  $F0 $18        
    LDA $7502,X              ; CC62  $BD $02 $75    
    CMP $84                  ; CC65  $C5 $84        
    BNE L3CC7A               ; CC67  $D0 $11        
    LDA $7503,X              ; CC69  $BD $03 $75    
    CMP $85                  ; CC6C  $C5 $85        
    BNE L3CC7A               ; CC6E  $D0 $0A        
    LDA $750B,X              ; CC70  $BD $0B $75    
    AND #$03                 ; CC73  $29 $03        
    STA $750B,X              ; CC75  $9D $0B $75    
    SEC                      ; CC78  $38            
    RTS                      ; CC79  $60            

L3CC7A:              
    TXA                      ; CC7A  $8A            
    CLC                      ; CC7B  $18            
    ADC #$10                 ; CC7C  $69 $10        
    TAX                      ; CC7E  $AA            
    CMP #$C0                 ; CC7F  $C9 $C0        
    BCC L3CC5D               ; CC81  $90 $DA        
    LDX #$00                 ; CC83  $A2 $00        
L3CC85:              
    LDA $7500,X              ; CC85  $BD $00 $75    
    BEQ L3CCD3               ; CC88  $F0 $49        
    LDA $7508,X              ; CC8A  $BD $08 $75    
    BMI L3CCA9               ; CC8D  $30 $1A        
    LDA $7509,X              ; CC8F  $BD $09 $75    
    BPL L3CCBE               ; CC92  $10 $2A        
    LDA $7504,X              ; CC94  $BD $04 $75    
    CMP $84                  ; CC97  $C5 $84        
    BNE L3CCD3               ; CC99  $D0 $38        
    LDA $7505,X              ; CC9B  $BD $05 $75    
    CLC                      ; CC9E  $18            
    ADC #$01                 ; CC9F  $69 $01        
    AND #$3F                 ; CCA1  $29 $3F        
    CMP $85                  ; CCA3  $C5 $85        
    BNE L3CCD3               ; CCA5  $D0 $2C        
    BEQ CCCC                 ; CCA7  $F0 $23        
L3CCA9:              
    LDA $7504,X              ; CCA9  $BD $04 $75    
    CLC                      ; CCAC  $18            
    ADC #$01                 ; CCAD  $69 $01        
    AND #$3F                 ; CCAF  $29 $3F        
    CMP $84                  ; CCB1  $C5 $84        
    BNE L3CCD3               ; CCB3  $D0 $1E        
    LDA $7505,X              ; CCB5  $BD $05 $75    
    CMP $85                  ; CCB8  $C5 $85        
    BNE L3CCD3               ; CCBA  $D0 $17        
    BEQ CCCC                 ; CCBC  $F0 $0E        
L3CCBE:              
    LDA $7504,X              ; CCBE  $BD $04 $75    
    CMP $84                  ; CCC1  $C5 $84        
    BNE L3CCD3               ; CCC3  $D0 $0E        
    LDA $7505,X              ; CCC5  $BD $05 $75    
    CMP $85                  ; CCC8  $C5 $85        
    BNE L3CCD3               ; CCCA  $D0 $07        
CCCC:
    LDA #$01                 ; CCCC  $A9 $01        
    STA $750D,X              ; CCCE  $9D $0D $75    
    CLC                      ; CCD1  $18            
    RTS                      ; CCD2  $60            

L3CCD3:              
    TXA                      ; CCD3  $8A            
    CLC                      ; CCD4  $18            
    ADC #$10                 ; CCD5  $69 $10        
    TAX                      ; CCD7  $AA            
    CMP #$C0                 ; CCD8  $C9 $C0        
    BCC L3CC85               ; CCDA  $90 $A9        
    CLC                      ; CCDC  $18            
    RTS                      ; CCDD  $60            

;; sub start ;;
    LDX #$00                 ; CCDE  $A2 $00        
L3CCE0:              
    LDA $7500,X              ; CCE0  $BD $00 $75    
    BEQ L3CD16               ; CCE3  $F0 $31        
    LDA $7506,X              ; CCE5  $BD $06 $75    
    CMP #$08                 ; CCE8  $C9 $08        
    LDA $7504,X              ; CCEA  $BD $04 $75    
    ADC #$00                 ; CCED  $69 $00        
    AND #$3F                 ; CCEF  $29 $3F        
    CMP $84                  ; CCF1  $C5 $84        
    BNE L3CD16               ; CCF3  $D0 $21        
    LDA $7507,X              ; CCF5  $BD $07 $75    
    CMP #$08                 ; CCF8  $C9 $08        
    LDA $7505,X              ; CCFA  $BD $05 $75    
    ADC #$00                 ; CCFD  $69 $00        
    AND #$3F                 ; CCFF  $29 $3F        
    CMP $85                  ; CD01  $C5 $85        
    BNE L3CD16               ; CD03  $D0 $11        
    LDA $7501,X              ; CD05  $BD $01 $75    
    AND #$20                 ; CD08  $29 $20        
    BNE L3CD14               ; CD0A  $D0 $08        
    LDA $750D,X              ; CD0C  $BD $0D $75    
    ORA #$80                 ; CD0F  $09 $80        
    STA $750D,X              ; CD11  $9D $0D $75    
L3CD14:              
    SEC                      ; CD14  $38            
    RTS                      ; CD15  $60            

L3CD16:              
    TXA                      ; CD16  $8A            
    CLC                      ; CD17  $18            
    ADC #$10                 ; CD18  $69 $10        
    TAX                      ; CD1A  $AA            
    CMP #$C0                 ; CD1B  $C9 $C0        
    BCC L3CCE0               ; CD1D  $90 $C1        
    CLC                      ; CD1F  $18            
    RTS                      ; CD20  $60            

;; sub start ;;
    LSR A                    ; CD21  $4A            
    BCS L3CD38               ; CD22  $B0 $14        
    LSR A                    ; CD24  $4A            
    BCS L3CD3F               ; CD25  $B0 $18        
    LSR A                    ; CD27  $4A            
    BCS L3CD31               ; CD28  $B0 $07        
    LDX #$07                 ; CD2A  $A2 $07        
    LDY #$06                 ; CD2C  $A0 $06        
    JMP L3CD43               ; CD2E  $4C $43 $CD    
L3CD31:              
    LDX #$07                 ; CD31  $A2 $07        
    LDY #$08                 ; CD33  $A0 $08        
    JMP L3CD43               ; CD35  $4C $43 $CD    
L3CD38:              
    LDX #$08                 ; CD38  $A2 $08        
    LDY #$07                 ; CD3A  $A0 $07        
    JMP L3CD43               ; CD3C  $4C $43 $CD    
L3CD3F:              
    LDX #$06                 ; CD3F  $A2 $06        
    LDY #$07                 ; CD41  $A0 $07        
L3CD43:              
    TXA                      ; CD43  $8A            
    CLC                      ; CD44  $18            
    ADC $29                  ; CD45  $65 $29        
    AND #$3F                 ; CD47  $29 $3F        
    STA $84                  ; CD49  $85 $84        
    TYA                      ; CD4B  $98            
    CLC                      ; CD4C  $18            
    ADC $2A                  ; CD4D  $65 $2A        
    AND #$3F                 ; CD4F  $29 $3F        
    STA $85                  ; CD51  $85 $85        
    RTS                      ; CD53  $60            

;; sub start ;;
    LDY #$70                 ; CD54  $A0 $70        
    LDA $84                  ; CD56  $A5 $84        
    ORA $85                  ; CD58  $05 $85        
    AND #$20                 ; CD5A  $29 $20        
    BNE L3CD7A               ; CD5C  $D0 $1C        
    LDA $85                  ; CD5E  $A5 $85        
    AND #$1F                 ; CD60  $29 $1F        
    LSR A                    ; CD62  $4A            
    LSR A                    ; CD63  $4A            
    LSR A                    ; CD64  $4A            
    ORA #$70                 ; CD65  $09 $70        
    STA $81                  ; CD67  $85 $81        
    LDA $85                  ; CD69  $A5 $85        
    ASL A                    ; CD6B  $0A            
    ASL A                    ; CD6C  $0A            
    ASL A                    ; CD6D  $0A            
    ASL A                    ; CD6E  $0A            
    ASL A                    ; CD6F  $0A            
    ORA $84                  ; CD70  $05 $84        
    STA $80                  ; CD72  $85 $80        
    LDY #$00                 ; CD74  $A0 $00        
    LDA ($80),Y              ; CD76  $B1 $80        
    ASL A                    ; CD78  $0A            
    TAY                      ; CD79  $A8            
L3CD7A:              
    LDA $0400,Y              ; CD7A  $B9 $00 $04    
    STA $44                  ; CD7D  $85 $44        
    LDA $0401,Y              ; CD7F  $B9 $01 $04    
    STA $45                  ; CD82  $85 $45        
    RTS                      ; CD84  $60            

;; sub start ;;
    JSR $CD54                ; CD85  $20 $54 $CD    
    LDA $44                  ; CD88  $A5 $44        
    AND #$30                 ; CD8A  $29 $30        
    BEQ L3CD9D               ; CD8C  $F0 $0F        
    CMP #$10                 ; CD8E  $C9 $10        
    BEQ L3CDA2               ; CD90  $F0 $10        
    CMP #$30                 ; CD92  $C9 $30        
    BNE L3CD9D               ; CD94  $D0 $07        
    LDA #$00                 ; CD96  $A9 $00        
    STA $44                  ; CD98  $85 $44        
    LDA #$04                 ; CD9A  $A9 $04        
    RTS                      ; CD9C  $60            

L3CD9D:              
    LDA #$00                 ; CD9D  $A9 $00        
    STA $44                  ; CD9F  $85 $44        
    RTS                      ; CDA1  $60            

L3CDA2:              
    LDA $80                  ; CDA2  $A5 $80        
    PHA                      ; CDA4  $48            
    LDA $81                  ; CDA5  $A5 $81        
    PHA                      ; CDA7  $48            
    JSR $CFA5                ; CDA8  $20 $A5 $CF    
    JSR $EF48                ; CDAB  $20 $48 $EF    
    CMP #$03                 ; CDAE  $C9 $03        
    BNE L3CDBF               ; CDB0  $D0 $0D        
    LDA #$00                 ; CDB2  $A9 $00        
    STA $0D                  ; CDB4  $85 $0D        
    STA $44                  ; CDB6  $85 $44        
    STA $45                  ; CDB8  $85 $45        
    PLA                      ; CDBA  $68            
    PLA                      ; CDBB  $68            
    LDA #$03                 ; CDBC  $A9 $03        
    RTS                      ; CDBE  $60            

L3CDBF:              
    STA $82                  ; CDBF  $85 $82        
    PLA                      ; CDC1  $68            
    STA $81                  ; CDC2  $85 $81        
    PLA                      ; CDC4  $68            
    STA $80                  ; CDC5  $85 $80        
    LDY #$00                 ; CDC7  $A0 $00        
    LDA #$7F                 ; CDC9  $A9 $7F        
    STA ($80),Y              ; CDCB  $91 $80        
    LDA $82                  ; CDCD  $A5 $82        
    RTS                      ; CDCF  $60            

;; sub start ;;
    LDA #$1E                 ; CDD0  $A9 $1E        
    STA PpuMask_2001         ; CDD2  $8D $01 $20    
    JSR $D02B                ; CDD5  $20 $2B $D0    
    LDA PpuStatus_2002       ; CDD8  $AD $02 $20    
    LDA $34                  ; CDDB  $A5 $34        
    BEQ L3CDF5               ; CDDD  $F0 $16        
    JSR $CE6F                ; CDDF  $20 $6F $CE    
    JSR L3C8E7               ; CDE2  $20 $E7 $C8    
    LDA $44                  ; CDE5  $A5 $44        
    AND #$08                 ; CDE7  $29 $08        
    CMP #$08                 ; CDE9  $C9 $08        
    BNE L3CDF4               ; CDEB  $D0 $07        
    LDA $45                  ; CDED  $A5 $45        
    BNE L3CDF4               ; CDEF  $D0 $03        
    JSR $C8C7                ; CDF1  $20 $C7 $C8    
L3CDF4:              
    RTS                      ; CDF4  $60            

L3CDF5:              
    LDA $FD                  ; CDF5  $A5 $FD        
    STA $FF                  ; CDF7  $85 $FF        
    STA PpuControl_2000      ; CDF9  $8D $00 $20    
    LDA $29                  ; CDFC  $A5 $29        
    ASL A                    ; CDFE  $0A            
    ASL A                    ; CDFF  $0A            
    ASL A                    ; CE00  $0A            
    ASL A                    ; CE01  $0A            
    ORA $35                  ; CE02  $05 $35        
    STA PpuScroll_2005       ; CE04  $8D $05 $20    
    LDA $2F                  ; CE07  $A5 $2F        
    ASL A                    ; CE09  $0A            
    ASL A                    ; CE0A  $0A            
    ASL A                    ; CE0B  $0A            
    ASL A                    ; CE0C  $0A            
    ORA $36                  ; CE0D  $05 $36        
    STA PpuScroll_2005       ; CE0F  $8D $05 $20    
    RTS                      ; CE12  $60            

L3CE13:              
    LDA $32                  ; CE13  $A5 $32        
    BEQ L3CE1A               ; CE15  $F0 $03        
    JSR $D21B                ; CE17  $20 $1B $D2    
L3CE1A:              
    JSR L3CDF5               ; CE1A  $20 $F5 $CD    
    LDA $35                  ; CE1D  $A5 $35        
    CLC                      ; CE1F  $18            
    ADC $34                  ; CE20  $65 $34        
    AND #$0F                 ; CE22  $29 $0F        
    BEQ L3CE29               ; CE24  $F0 $03        
    STA $35                  ; CE26  $85 $35        
    RTS                      ; CE28  $60            

L3CE29:              
    STA $34                  ; CE29  $85 $34        
    STA $35                  ; CE2B  $85 $35        
    LDA $29                  ; CE2D  $A5 $29        
    CLC                      ; CE2F  $18            
    ADC #$01                 ; CE30  $69 $01        
    AND #$3F                 ; CE32  $29 $3F        
    STA $29                  ; CE34  $85 $29        
    AND #$10                 ; CE36  $29 $10        
    LSR $FD                  ; CE38  $46 $FD        
    CMP #$10                 ; CE3A  $C9 $10        
    ROL $FD                  ; CE3C  $26 $FD        
    RTS                      ; CE3E  $60            

L3CE3F:              
    LDA $32                  ; CE3F  $A5 $32        
    BEQ L3CE46               ; CE41  $F0 $03        
    JSR $D21B                ; CE43  $20 $1B $D2    
L3CE46:              
    JSR L3CDF5               ; CE46  $20 $F5 $CD    
    LDA $35                  ; CE49  $A5 $35        
    BNE L3CE60               ; CE4B  $D0 $13        
    LDA $29                  ; CE4D  $A5 $29        
    SEC                      ; CE4F  $38            
    SBC #$01                 ; CE50  $E9 $01        
    AND #$3F                 ; CE52  $29 $3F        
    STA $29                  ; CE54  $85 $29        
    AND #$10                 ; CE56  $29 $10        
    LSR $FD                  ; CE58  $46 $FD        
    CMP #$10                 ; CE5A  $C9 $10        
    ROL $FD                  ; CE5C  $26 $FD        
    LDA $35                  ; CE5E  $A5 $35        
L3CE60:              
    SEC                      ; CE60  $38            
    SBC $34                  ; CE61  $E5 $34        
    AND #$0F                 ; CE63  $29 $0F        
    BEQ L3CE6A               ; CE65  $F0 $03        
    STA $35                  ; CE67  $85 $35        
    RTS                      ; CE69  $60            

L3CE6A:              
    STA $34                  ; CE6A  $85 $34        
    STA $35                  ; CE6C  $85 $35        
    RTS                      ; CE6E  $60            

;; sub start ;;
    LDA $33                  ; CE6F  $A5 $33        
    LSR A                    ; CE71  $4A            
    BCS L3CE13               ; CE72  $B0 $9F        
    LSR A                    ; CE74  $4A            
    BCS L3CE3F               ; CE75  $B0 $C8        
    LSR A                    ; CE77  $4A            
    BCS L3CE7D               ; CE78  $B0 $03        
    JMP L3CEB4               ; CE7A  $4C $B4 $CE    
L3CE7D:              
    LDA $32                  ; CE7D  $A5 $32        
    BEQ L3CE8A               ; CE7F  $F0 $09        
    LDA $36                  ; CE81  $A5 $36        
    CMP #$08                 ; CE83  $C9 $08        
    BNE L3CE8A               ; CE85  $D0 $03        
    JSR $D21B                ; CE87  $20 $1B $D2    
L3CE8A:              
    JSR L3CDF5               ; CE8A  $20 $F5 $CD    
    LDA $36                  ; CE8D  $A5 $36        
    CLC                      ; CE8F  $18            
    ADC $34                  ; CE90  $65 $34        
    AND #$0F                 ; CE92  $29 $0F        
    BEQ L3CE99               ; CE94  $F0 $03        
    STA $36                  ; CE96  $85 $36        
    RTS                      ; CE98  $60            

L3CE99:              
    STA $34                  ; CE99  $85 $34        
    STA $36                  ; CE9B  $85 $36        
    LDA $2A                  ; CE9D  $A5 $2A        
    CLC                      ; CE9F  $18            
    ADC #$01                 ; CEA0  $69 $01        
    AND #$3F                 ; CEA2  $29 $3F        
    STA $2A                  ; CEA4  $85 $2A        
    LDA $2F                  ; CEA6  $A5 $2F        
    CLC                      ; CEA8  $18            
    ADC #$01                 ; CEA9  $69 $01        
    CMP #$0F                 ; CEAB  $C9 $0F        
    BCC L3CEB1               ; CEAD  $90 $02        
    SBC #$0F                 ; CEAF  $E9 $0F        
L3CEB1:              
    STA $2F                  ; CEB1  $85 $2F        
    RTS                      ; CEB3  $60            

L3CEB4:              
    LDA $32                  ; CEB4  $A5 $32        
    BEQ L3CEC1               ; CEB6  $F0 $09        
    LDA $36                  ; CEB8  $A5 $36        
    CMP #$08                 ; CEBA  $C9 $08        
    BNE L3CEC1               ; CEBC  $D0 $03        
    JSR $D21B                ; CEBE  $20 $1B $D2    
L3CEC1:              
    JSR L3CDF5               ; CEC1  $20 $F5 $CD    
    LDA $36                  ; CEC4  $A5 $36        
    BNE L3CEDE               ; CEC6  $D0 $16        
    LDA $2A                  ; CEC8  $A5 $2A        
    SEC                      ; CECA  $38            
    SBC #$01                 ; CECB  $E9 $01        
    AND #$3F                 ; CECD  $29 $3F        
    STA $2A                  ; CECF  $85 $2A        
    LDA $2F                  ; CED1  $A5 $2F        
    SEC                      ; CED3  $38            
    SBC #$01                 ; CED4  $E9 $01        
    BCS L3CEDA               ; CED6  $B0 $02        
    ADC #$0F                 ; CED8  $69 $0F        
L3CEDA:              
    STA $2F                  ; CEDA  $85 $2F        
    LDA $36                  ; CEDC  $A5 $36        
L3CEDE:              
    SEC                      ; CEDE  $38            
    SBC $34                  ; CEDF  $E5 $34        
    AND #$0F                 ; CEE1  $29 $0F        
    BEQ L3CEE8               ; CEE3  $F0 $03        
    STA $36                  ; CEE5  $85 $36        
    RTS                      ; CEE7  $60            

L3CEE8:              
    STA $34                  ; CEE8  $85 $34        
    STA $36                  ; CEEA  $85 $36        
    RTS                      ; CEEC  $60            

.byte $0D,$CF,$0D 
;; [CEF0 : 3CF00]
.byte $CF,$0D,$CF,$0F,$CF,$18,$CF,$36,$CF,$47,$CF,$50,$CF,$50,$CF,$50 
;; [CF00 : 3CF10]
.byte $CF,$50,$CF,$50,$CF,$50,$CF,$50,$CF,$50,$CF,$50,$CF

L3CF0D:              
    CLC                      ; CF0D  $18            
    RTS                      ; CF0E  $60            

L3CF0F:              
    LDY #$01                 ; CF0F  $A0 $01        
    JSR $989E                ; CF11  $20 $9E $98    
    BNE L3CF0D               ; CF14  $D0 $F7        
    BEQ L3CF50               ; CF16  $F0 $38        
    LDA $601A                ; CF18  $AD $1A $60    
    AND #$40                 ; CF1B  $29 $40        
    BEQ L3CF0D               ; CF1D  $F0 $EE        
    LDY #$37                 ; CF1F  $A0 $37        
    JSR $989E                ; CF21  $20 $9E $98    
    BNE L3CF0D               ; CF24  $D0 $E7        
    JSR $F308                ; CF26  $20 $08 $F3    
    BCC L3CF50               ; CF29  $90 $25        
    LDA $6101                ; CF2B  $AD $01 $61    
    AND #$1F                 ; CF2E  $29 $1F        
    STA $6101                ; CF30  $8D $01 $61    
    JMP L3CF50               ; CF33  $4C $50 $CF    
L3CF36:              
    LDY #$03                 ; CF36  $A0 $03        
    JSR $989E                ; CF38  $20 $9E $98    
    BEQ L3CF0D               ; CF3B  $F0 $D0        
    LDY #$20                 ; CF3D  $A0 $20        
    JSR $989E                ; CF3F  $20 $9E $98    
    BEQ L3CF0D               ; CF42  $F0 $C9        
    JMP $CF26                ; CF44  $4C $26 $CF    
    LDY #$28                 ; CF47  $A0 $28        
    JSR $989E                ; CF49  $20 $9E $98    
    BEQ L3CF0D               ; CF4C  $F0 $BF        
    BNE L3CF50               ; CF4E  $D0 $00        
L3CF50:              
    LDA $45                  ; CF50  $A5 $45        
    JSR L3C6F4               ; CF52  $20 $F4 $C6    
    CLC                      ; CF55  $18            
    RTS                      ; CF56  $60            

L3CF57:              
    LDA $6C                  ; CF57  $A5 $6C        
    BNE L3CF85               ; CF59  $D0 $2A        
    LDA $6012                ; CF5B  $AD $12 $60    
    LSR A                    ; CF5E  $4A            
    BCC L3CF6B               ; CF5F  $90 $0A        
    LDA $48                  ; CF61  $A5 $48        
    CMP #$40                 ; CF63  $C9 $40        
    BCC L3CF6B               ; CF65  $90 $04        
    CMP #$50                 ; CF67  $C9 $50        
    BCC L3CF85               ; CF69  $90 $1A        
L3CF6B:              
    JSR $C5AD                ; CF6B  $20 $AD $C5    
    CMP $F8                  ; CF6E  $C5 $F8        
    BCS L3CF85               ; CF70  $B0 $13        
    LDA #$0B                 ; CF72  $A9 $0B        
    JSR L3FE03               ; CF74  $20 $03 $FE    
    LDX $48                  ; CF77  $A6 $48        
    LDA $8100,X              ; CF79  $BD $00 $81    
    JSR $C579                ; CF7C  $20 $79 $C5    
    LDA $43                  ; CF7F  $A5 $43        
    ORA #$20                 ; CF81  $09 $20        
    STA $44                  ; CF83  $85 $44        
L3CF85:              
    CLC                      ; CF85  $18            
    RTS                      ; CF86  $60            

L3CF87:              
    LDA #$01                 ; CF87  $A9 $01        
    STA $0D                  ; CF89  $85 $0D        
    LDA #$05                 ; CF8B  $A9 $05        
    CLC                      ; CF8D  $18            
    ADC $2F                  ; CF8E  $65 $2F        
    CMP #$0F                 ; CF90  $C9 $0F        
    BCC L3CF96               ; CF92  $90 $02        
    SBC #$0F                 ; CF94  $E9 $0F        
L3CF96:              
    STA $0F                  ; CF96  $85 $0F        
    LDA $84                  ; CF98  $A5 $84        
    STA $0E                  ; CF9A  $85 $0E        
    JSR $D05F                ; CF9C  $20 $5F $D0    
    LDA #$80                 ; CF9F  $A9 $80        
    STA $44                  ; CFA1  $85 $44        
    CLC                      ; CFA3  $18            
    RTS                      ; CFA4  $60            

;; sub start ;;
    LDA #$09                 ; CFA5  $A9 $09        
    STA $0D                  ; CFA7  $85 $0D        
    LDX #$07                 ; CFA9  $A2 $07        
    LDA $33                  ; CFAB  $A5 $33        
    AND #$0C                 ; CFAD  $29 $0C        
    BEQ L3CFB9               ; CFAF  $F0 $08        
    LDX #$08                 ; CFB1  $A2 $08        
    CMP #$04                 ; CFB3  $C9 $04        
    BEQ L3CFB9               ; CFB5  $F0 $02        
    LDX #$06                 ; CFB7  $A2 $06        
L3CFB9:              
    TXA                      ; CFB9  $8A            
    CLC                      ; CFBA  $18            
    ADC $2F                  ; CFBB  $65 $2F        
    CMP #$0F                 ; CFBD  $C9 $0F        
    BCC L3CFC3               ; CFBF  $90 $02        
    SBC #$0F                 ; CFC1  $E9 $0F        
L3CFC3:              
    STA $0F                  ; CFC3  $85 $0F        
    LDA $84                  ; CFC5  $A5 $84        
    STA $0E                  ; CFC7  $85 $0E        
    RTS                      ; CFC9  $60            

;; sub start ;;
    LDX $0F                  ; CFCA  $A6 $0F        
    LDA $0E                  ; CFCC  $A5 $0E        
    ASL A                    ; CFCE  $0A            
    CMP #$20                 ; CFCF  $C9 $20        
    BCS L3CFDE               ; CFD1  $B0 $0B        
    ORA $D321,X              ; CFD3  $1D $21 $D3    
    STA $80                  ; CFD6  $85 $80        
    LDA $D331,X              ; CFD8  $BD $31 $D3    
    JMP L3CFEB               ; CFDB  $4C $EB $CF    
L3CFDE:              
    AND #$1F                 ; CFDE  $29 $1F        
    ORA $D321,X              ; CFE0  $1D $21 $D3    
    STA $80                  ; CFE3  $85 $80        
    LDA $D331,X              ; CFE5  $BD $31 $D3    
    CLC                      ; CFE8  $18            
    ADC #$04                 ; CFE9  $69 $04        
L3CFEB:              
    STA $81                  ; CFEB  $85 $81        
    STA PpuAddr_2006         ; CFED  $8D $06 $20    
    LDA $80                  ; CFF0  $A5 $80        
    STA PpuAddr_2006         ; CFF2  $8D $06 $20    
    LDX $0D                  ; CFF5  $A6 $0D        
    DEX                      ; CFF7  $CA            
    LDA $D01E,X              ; CFF8  $BD $1E $D0    
    STA PpuData_2007         ; CFFB  $8D $07 $20    
    LDA $D01F,X              ; CFFE  $BD $1F $D0    
    STA PpuData_2007         ; D001  $8D $07 $20    
    LDA $81                  ; D004  $A5 $81        
    STA PpuAddr_2006         ; D006  $8D $06 $20    
    LDA $80                  ; D009  $A5 $80        
    CLC                      ; D00B  $18            
    ADC #$20                 ; D00C  $69 $20        
    STA PpuAddr_2006         ; D00E  $8D $06 $20    
    LDA $D020,X              ; D011  $BD $20 $D0    
    STA PpuData_2007         ; D014  $8D $07 $20    
    LDA $D021,X              ; D017  $BD $21 $D0    
    STA PpuData_2007         ; D01A  $8D $07 $20    
    RTS                      ; D01D  $60            

 ;data block---
.byte $0A,$0B,$0C,$0D,$0E,$0F,$10,$11,$24,$25,$22,$23

L3D02A:              
    RTS                      ; D02A  $60            

;; sub start ;;
    LDA $0D                  ; D02B  $A5 $0D        
    BEQ L3D02A               ; D02D  $F0 $FB        
    LDA $34                  ; D02F  $A5 $34        
    BEQ L3D03D               ; D031  $F0 $0A        
    LDA $33                  ; D033  $A5 $33        
    AND #$03                 ; D035  $29 $03        
    BEQ L3D03D               ; D037  $F0 $04        
    LDA $32                  ; D039  $A5 $32        
    BNE L3D02A               ; D03B  $D0 $ED        
L3D03D:              
    JSR $CFCA                ; D03D  $20 $CA $CF    
    LDA $0D                  ; D040  $A5 $0D        
    CMP #$01                 ; D042  $C9 $01        
    BNE L3D05A               ; D044  $D0 $14        
    LDA $0F                  ; D046  $A5 $0F        
    CLC                      ; D048  $18            
    ADC #$01                 ; D049  $69 $01        
    CMP #$0F                 ; D04B  $C9 $0F        
    BCC L3D051               ; D04D  $90 $02        
    SBC #$0F                 ; D04F  $E9 $0F        
L3D051:              
    STA $0F                  ; D051  $85 $0F        
    LDA #$05                 ; D053  $A9 $05        
    STA $0D                  ; D055  $85 $0D        
    JSR $CFCA                ; D057  $20 $CA $CF    
L3D05A:              
    LDA #$00                 ; D05A  $A9 $00        
    STA $0D                  ; D05C  $85 $0D        
    RTS                      ; D05E  $60            

;; sub start ;;
    LDA #$0C                 ; D05F  $A9 $0C        
    STA NoiseVolume_400C     ; D061  $8D $0C $40    
    LDA #$0E                 ; D064  $A9 $0E        
    STA NoisePeriod_400E     ; D066  $8D $0E $40    
    LDA #$30                 ; D069  $A9 $30        
    STA NoiseLength_400F     ; D06B  $8D $0F $40    
    RTS                      ; D06E  $60            

;; sub start ;;
    JSR $D083                ; D06F  $20 $83 $D0    
    JSR $D09A                ; D072  $20 $9A $D0    
    JSR $D13C                ; D075  $20 $3C $D1    
    JMP L3D8C9               ; D078  $4C $C9 $D8    
L3D07B:              
    JSR $D09A                ; D07B  $20 $9A $D0    
    LDA #$03                 ; D07E  $A9 $03        
    JMP L3DDA4               ; D080  $4C $A4 $DD    
   ;; sub start ;;
    LDA #$01                 ; D083  $A9 $01        
    STA $2D                  ; D085  $85 $2D        
    LDA #$00                 ; D087  $A9 $00        
    STA PpuMask_2001         ; D089  $8D $01 $20    
    JSR $D341                ; D08C  $20 $41 $D3    
    LDX #$07                 ; D08F  $A2 $07        
    LDA #$03                 ; D091  $A9 $03        
    JSR L3FE03               ; D093  $20 $03 $FE    
    JSR $A003                ; D096  $20 $03 $A0    
    RTS                      ; D099  $60            

;; sub start ;;
    LDA #$00                 ; D09A  $A9 $00        
    STA $37                  ; D09C  $85 $37        
    STA PpuMask_2001         ; D09E  $8D $01 $20    
    STA NoiseVolume_400C     ; D0A1  $8D $0C $40    
    STA $22                  ; D0A4  $85 $22        
    STA $23                  ; D0A6  $85 $23        
    STA $24                  ; D0A8  $85 $24        
    STA $25                  ; D0AA  $85 $25        
    JSR $E497                ; D0AC  $20 $97 $E4    
    LDA #$00                 ; D0AF  $A9 $00        
    JSR L3FE03               ; D0B1  $20 $03 $FE    
    JSR $9C06                ; D0B4  $20 $06 $9C    
    LDA $48                  ; D0B7  $A5 $48        
    LSR A                    ; D0B9  $4A            
    LSR A                    ; D0BA  $4A            
    LSR A                    ; D0BB  $4A            
    LSR A                    ; D0BC  $4A            
    ORA #$A0                 ; D0BD  $09 $A0        
    STA $81                  ; D0BF  $85 $81        
    LDA $48                  ; D0C1  $A5 $48        
    ASL A                    ; D0C3  $0A            
    ASL A                    ; D0C4  $0A            
    ASL A                    ; D0C5  $0A            
    ASL A                    ; D0C6  $0A            
    STA $80                  ; D0C7  $85 $80        
    LDY #$0F                 ; D0C9  $A0 $0F        
    LDA ($80),Y              ; D0CB  $B1 $80        
    ORA #$40                 ; D0CD  $09 $40        
    STA $E0                  ; D0CF  $85 $E0        
    JSR $D1D3                ; D0D1  $20 $D3 $D1    
    LDA $29                  ; D0D4  $A5 $29        
    AND #$10                 ; D0D6  $29 $10        
    CMP #$10                 ; D0D8  $C9 $10        
    ROL A                    ; D0DA  $2A            
    AND #$01                 ; D0DB  $29 $01        
    ORA #$88                 ; D0DD  $09 $88        
    STA $FD                  ; D0DF  $85 $FD        
    STA $FF                  ; D0E1  $85 $FF        
    JSR $FE00                ; D0E3  $20 $00 $FE    
    JSR $DC30                ; D0E6  $20 $30 $DC    
    JSR L3CDF5               ; D0E9  $20 $F5 $CD    
    LDA #$00                 ; D0EC  $A9 $00        
    STA PpuMask_2001         ; D0EE  $8D $01 $20    
    LDA #$04                 ; D0F1  $A9 $04        
    STA $33                  ; D0F3  $85 $33        
    LDA $29                  ; D0F5  $A5 $29        
    CLC                      ; D0F7  $18            
    ADC #$07                 ; D0F8  $69 $07        
    AND #$3F                 ; D0FA  $29 $3F        
    STA $68                  ; D0FC  $85 $68        
    STA $84                  ; D0FE  $85 $84        
    LDA $2A                  ; D100  $A5 $2A        
    CLC                      ; D102  $18            
    ADC #$07                 ; D103  $69 $07        
    AND #$3F                 ; D105  $29 $3F        
    STA $85                  ; D107  $85 $85        
    STA $69                  ; D109  $85 $69        
    JSR $CD54                ; D10B  $20 $54 $CD    
    LDA $44                  ; D10E  $A5 $44        
    AND #$06                 ; D110  $29 $06        
    STA $43                  ; D112  $85 $43        
    LDA $44                  ; D114  $A5 $44        
    AND #$08                 ; D116  $29 $08        
    BEQ L3D11D               ; D118  $F0 $03        
    JSR L3CC30               ; D11A  $20 $30 $CC    
L3D11D:              
    LDA #$00                 ; D11D  $A9 $00        
    STA $44                  ; D11F  $85 $44        
    STA $45                  ; D121  $85 $45        
    LDA #$0B                 ; D123  $A9 $0B        
    JSR L3FE03               ; D125  $20 $03 $FE    
    LDX $48                  ; D128  $A6 $48        
    LDA $8000,X              ; D12A  $BD $00 $80    
    STA $F8                  ; D12D  $85 $F8        
    LDA #$00                 ; D12F  $A9 $00        
    JSR L3FE03               ; D131  $20 $03 $FE    
    LDA $9400,X              ; D134  $BD $00 $94    
    AND #$80                 ; D137  $29 $80        
    STA $19                  ; D139  $85 $19        
    RTS                      ; D13B  $60            

;; sub start ;;
    RTS                      ; D13C  $60            

;; sub start ;;
    LDA $37                  ; D13D  $A5 $37        
    BNE L3D163               ; D13F  $D0 $22        
    LDA $38                  ; D141  $A5 $38        
    LSR A                    ; D143  $4A            
    STA $31                  ; D144  $85 $31        
    LDA $3B                  ; D146  $A5 $3B        
    LSR A                    ; D148  $4A            
    STA $30                  ; D149  $85 $30        
    LDA $3C                  ; D14B  $A5 $3C        
    LSR A                    ; D14D  $4A            
    STA $86                  ; D14E  $85 $86        
    LDA #$01                 ; D150  $A9 $01        
    STA $2D                  ; D152  $85 $2D        
    JMP L3D24E               ; D154  $4C $4E $D2    
   ;; sub start ;;
    LDA $37                  ; D157  $A5 $37        
    BNE L3D163               ; D159  $D0 $08        
    LDA $3C                  ; D15B  $A5 $3C        
    LSR A                    ; D15D  $4A            
    TAX                      ; D15E  $AA            
    DEX                      ; D15F  $CA            
    JMP L3D308               ; D160  $4C $08 $D3    
L3D163:              
    RTS                      ; D163  $60            

L3D164:              
    JSR $E837                ; D164  $20 $37 $E8    
    LDA #$05                 ; D167  $A9 $05        
    STA $66                  ; D169  $85 $66        
    LDX #$06                 ; D16B  $A2 $06        
    BNE L3D178               ; D16D  $D0 $09        
   ;; sub start ;;
    JSR $E83D                ; D16F  $20 $3D $E8    
    LDA #$07                 ; D172  $A9 $07        
    STA $66                  ; D174  $85 $66        
    LDX #$0E                 ; D176  $A2 $0E        
L3D178:              
    LDA $2F                  ; D178  $A5 $2F        
    STA $67                  ; D17A  $85 $67        
    TXA                      ; D17C  $8A            
    CLC                      ; D17D  $18            
    ADC $2F                  ; D17E  $65 $2F        
    CMP #$0F                 ; D180  $C9 $0F        
    BCC L3D186               ; D182  $90 $02        
    SBC #$0F                 ; D184  $E9 $0F        
L3D186:              
    STA $2F                  ; D186  $85 $2F        
    LDA $69                  ; D188  $A5 $69        
    PHA                      ; D18A  $48            
    LDA $2A                  ; D18B  $A5 $2A        
    PHA                      ; D18D  $48            
    TXA                      ; D18E  $8A            
    CLC                      ; D18F  $18            
    ADC $2A                  ; D190  $65 $2A        
    AND #$3F                 ; D192  $29 $3F        
    STA $2A                  ; D194  $85 $2A        
    LDA $33                  ; D196  $A5 $33        
    PHA                      ; D198  $48            
    LDA #$08                 ; D199  $A9 $08        
    STA $33                  ; D19B  $85 $33        
L3D19D:              
    JSR L3D209               ; D19D  $20 $09 $D2    
    JSR $FE00                ; D1A0  $20 $00 $FE    
    JSR $D21B                ; D1A3  $20 $1B $D2    
    LDA $2F                  ; D1A6  $A5 $2F        
    PHA                      ; D1A8  $48            
    LDA $67                  ; D1A9  $A5 $67        
    STA $2F                  ; D1AB  $85 $2F        
    JSR L3CDF5               ; D1AD  $20 $F5 $CD    
    PLA                      ; D1B0  $68            
    STA $2F                  ; D1B1  $85 $2F        
    JSR L3C746               ; D1B3  $20 $46 $C7    
    JSR $D226                ; D1B6  $20 $26 $D2    
    DEC $66                  ; D1B9  $C6 $66        
    BNE L3D19D               ; D1BB  $D0 $E0        
    LDA $67                  ; D1BD  $A5 $67        
    STA $2F                  ; D1BF  $85 $2F        
    PLA                      ; D1C1  $68            
    STA $33                  ; D1C2  $85 $33        
    PLA                      ; D1C4  $68            
    STA $2A                  ; D1C5  $85 $2A        
    PLA                      ; D1C7  $68            
    STA $69                  ; D1C8  $85 $69        
    LDA #$00                 ; D1CA  $A9 $00        
    STA $34                  ; D1CC  $85 $34        
    LDA $57                  ; D1CE  $A5 $57        
    JMP L3FE03               ; D1D0  $4C $03 $FE    
   ;; sub start ;;
    LDA #$00                 ; D1D3  $A9 $00        
    STA $2F                  ; D1D5  $85 $2F        
    LDA $2D                  ; D1D7  $A5 $2D        
    LSR A                    ; D1D9  $4A            
    BCS L3D1E6               ; D1DA  $B0 $0A        
    LDA $28                  ; D1DC  $A5 $28        
    CLC                      ; D1DE  $18            
    ADC #$0F                 ; D1DF  $69 $0F        
    STA $28                  ; D1E1  $85 $28        
    JMP L3D1EF               ; D1E3  $4C $EF $D1    
L3D1E6:              
    LDA $2A                  ; D1E6  $A5 $2A        
    CLC                      ; D1E8  $18            
    ADC #$0F                 ; D1E9  $69 $0F        
    AND #$3F                 ; D1EB  $29 $3F        
    STA $2A                  ; D1ED  $85 $2A        
L3D1EF:              
    LDA #$08                 ; D1EF  $A9 $08        
    STA $33                  ; D1F1  $85 $33        
L3D1F3:              
    JSR L3D209               ; D1F3  $20 $09 $D2    
    JSR $D21B                ; D1F6  $20 $1B $D2    
    JSR $D226                ; D1F9  $20 $26 $D2    
    LDA $2F                  ; D1FC  $A5 $2F        
    BNE L3D1F3               ; D1FE  $D0 $F3        
    LDA #$00                 ; D200  $A9 $00        
    STA $33                  ; D202  $85 $33        
    STA $32                  ; D204  $85 $32        
    STA $34                  ; D206  $85 $34        
    RTS                      ; D208  $60            

L3D209:              
    LDA $2D                  ; D209  $A5 $2D        
    LSR A                    ; D20B  $4A            
    BCC L3D214               ; D20C  $90 $06        
    JSR $D4AD                ; D20E  $20 $AD $D4    
    JMP L3D217               ; D211  $4C $17 $D2    
L3D214:              
    JSR $D3E2                ; D214  $20 $E2 $D3    
L3D217:              
    JSR $D24A                ; D217  $20 $4A $D2    
    RTS                      ; D21A  $60            

;; sub start ;;
    JSR $D66A                ; D21B  $20 $6A $D6    
    JSR $D2FE                ; D21E  $20 $FE $D2    
    LDA #$00                 ; D221  $A9 $00        
    STA $32                  ; D223  $85 $32        
    RTS                      ; D225  $60            

;; sub start ;;
    LDA $2D                  ; D226  $A5 $2D        
    LSR A                    ; D228  $4A            
    BCC L3D237               ; D229  $90 $0C        
    LDA $2A                  ; D22B  $A5 $2A        
    SEC                      ; D22D  $38            
    SBC #$01                 ; D22E  $E9 $01        
    AND #$3F                 ; D230  $29 $3F        
    STA $2A                  ; D232  $85 $2A        
    JMP L3D23E               ; D234  $4C $3E $D2    
L3D237:              
    LDA $28                  ; D237  $A5 $28        
    SEC                      ; D239  $38            
    SBC #$01                 ; D23A  $E9 $01        
    STA $28                  ; D23C  $85 $28        
L3D23E:              
    LDA $2F                  ; D23E  $A5 $2F        
    SEC                      ; D240  $38            
    SBC #$01                 ; D241  $E9 $01        
    BCS L3D247               ; D243  $B0 $02        
    ADC #$0F                 ; D245  $69 $0F        
L3D247:              
    STA $2F                  ; D247  $85 $2F        
    RTS                      ; D249  $60            

;; sub start ;;
    LDA #$10                 ; D24A  $A9 $10        
    STA $86                  ; D24C  $85 $86        
L3D24E:              
    LDA $31                  ; D24E  $A5 $31        
    PHA                      ; D250  $48            
    LDA $30                  ; D251  $A5 $30        
    PHA                      ; D253  $48            
    LDY #$00                 ; D254  $A0 $00        
L3D256:              
    LDA $30                  ; D256  $A5 $30        
    LDX #$0F                 ; D258  $A2 $0F        
    LSR A                    ; D25A  $4A            
    BCC L3D25F               ; D25B  $90 $02        
    LDX #$F0                 ; D25D  $A2 $F0        
L3D25F:              
    ASL A                    ; D25F  $0A            
    ASL A                    ; D260  $0A            
    ASL A                    ; D261  $0A            
    STA $80                  ; D262  $85 $80        
    STX $81                  ; D264  $86 $81        
    LDA $31                  ; D266  $A5 $31        
    LDX #$23                 ; D268  $A2 $23        
    CMP #$10                 ; D26A  $C9 $10        
    BCC L3D272               ; D26C  $90 $04        
    AND #$0F                 ; D26E  $29 $0F        
    LDX #$27                 ; D270  $A2 $27        
L3D272:              
    STX $82                  ; D272  $86 $82        
    LDX #$33                 ; D274  $A2 $33        
    LSR A                    ; D276  $4A            
    BCC L3D27B               ; D277  $90 $02        
    LDX #$CC                 ; D279  $A2 $CC        
L3D27B:              
    ORA $80                  ; D27B  $05 $80        
    STA $80                  ; D27D  $85 $80        
    TXA                      ; D27F  $8A            
    AND $81                  ; D280  $25 $81        
    STA $81                  ; D282  $85 $81        
    LDA $82                  ; D284  $A5 $82        
    STA $07D0,Y              ; D286  $99 $D0 $07    
    LDA $80                  ; D289  $A5 $80        
    ORA #$C0                 ; D28B  $09 $C0        
    STA $07E0,Y              ; D28D  $99 $E0 $07    
    LDA $81                  ; D290  $A5 $81        
    STA $07F0,Y              ; D292  $99 $F0 $07    
    LDA $2D                  ; D295  $A5 $2D        
    AND #$02                 ; D297  $29 $02        
    BNE L3D2AC               ; D299  $D0 $11        
    LDA $31                  ; D29B  $A5 $31        
    CLC                      ; D29D  $18            
    ADC #$01                 ; D29E  $69 $01        
    AND #$1F                 ; D2A0  $29 $1F        
    STA $31                  ; D2A2  $85 $31        
    INY                      ; D2A4  $C8            
    CPY $86                  ; D2A5  $C4 $86        
    BCS L3D2C1               ; D2A7  $B0 $18        
    JMP L3D256               ; D2A9  $4C $56 $D2    
L3D2AC:              
    LDA $30                  ; D2AC  $A5 $30        
    CLC                      ; D2AE  $18            
    ADC #$01                 ; D2AF  $69 $01        
    CMP #$0F                 ; D2B1  $C9 $0F        
    BCC L3D2B7               ; D2B3  $90 $02        
    SBC #$0F                 ; D2B5  $E9 $0F        
L3D2B7:              
    STA $30                  ; D2B7  $85 $30        
    INY                      ; D2B9  $C8            
    CPY #$0F                 ; D2BA  $C0 $0F        
    BCS L3D2C1               ; D2BC  $B0 $03        
    JMP L3D256               ; D2BE  $4C $56 $D2    
L3D2C1:              
    PLA                      ; D2C1  $68            
    STA $30                  ; D2C2  $85 $30        
    PLA                      ; D2C4  $68            
    STA $31                  ; D2C5  $85 $31        
    LDX $86                  ; D2C7  $A6 $86        
    DEX                      ; D2C9  $CA            
    LDA $2D                  ; D2CA  $A5 $2D        
    AND #$02                 ; D2CC  $29 $02        
    BEQ L3D2D1               ; D2CE  $F0 $01        
    DEX                      ; D2D0  $CA            
L3D2D1:              
    LDA $07D0,X              ; D2D1  $BD $D0 $07    
    AND #$04                 ; D2D4  $29 $04        
    BNE L3D2E0               ; D2D6  $D0 $08        
    LDA $07E0,X              ; D2D8  $BD $E0 $07    
    AND #$3F                 ; D2DB  $29 $3F        
    JMP L3D2E7               ; D2DD  $4C $E7 $D2    
L3D2E0:              
    LDA $07E0,X              ; D2E0  $BD $E0 $07    
    AND #$3F                 ; D2E3  $29 $3F        
    ORA #$40                 ; D2E5  $09 $40        
L3D2E7:              
    TAY                      ; D2E7  $A8            
    LDA $0300,Y              ; D2E8  $B9 $00 $03    
    EOR $07C0,X              ; D2EB  $5D $C0 $07    
    AND $07F0,X              ; D2EE  $3D $F0 $07    
    EOR $0300,Y              ; D2F1  $59 $00 $03    
    STA $0300,Y              ; D2F4  $99 $00 $03    
    STA $07F0,X              ; D2F7  $9D $F0 $07    
    DEX                      ; D2FA  $CA            
    BPL L3D2D1               ; D2FB  $10 $D4        
    RTS                      ; D2FD  $60            

;; sub start ;;
    LDA $2D                  ; D2FE  $A5 $2D        
    LDX #$0F                 ; D300  $A2 $0F        
    AND #$02                 ; D302  $29 $02        
    BEQ L3D308               ; D304  $F0 $02        
    LDX #$0E                 ; D306  $A2 $0E        
L3D308:              
    LDA PpuStatus_2002       ; D308  $AD $02 $20    
L3D30B:              
    LDA $07D0,X              ; D30B  $BD $D0 $07    
    STA PpuAddr_2006         ; D30E  $8D $06 $20    
    LDA $07E0,X              ; D311  $BD $E0 $07    
    STA PpuAddr_2006         ; D314  $8D $06 $20    
    LDA $07F0,X              ; D317  $BD $F0 $07    
    STA PpuData_2007         ; D31A  $8D $07 $20    
    DEX                      ; D31D  $CA            
    BPL L3D30B               ; D31E  $10 $EB        
    RTS                      ; D320  $60            

 ;data block---
;; [D321 : 3D331]
.byte $00,$40,$80,$C0,$00,$40,$80,$C0,$00,$40,$80,$C0,$00,$40,$80 
.byte $C0,$20,$20,$20,$20,$21,$21,$21,$21,$22,$22,$22,$22,$23,$23,$23 
.byte $23

;; sub start ;;
    LDA #$00                 ; D341  $A9 $00        
    JSR L3FE03               ; D343  $20 $03 $FE    
    LDX $48                  ; D346  $A6 $48        
    LDA $B200,X              ; D348  $BD $00 $B2    
    PHA                      ; D34B  $48            
    ASL A                    ; D34C  $0A            
    ROL A                    ; D34D  $2A            
    AND #$01                 ; D34E  $29 $01        
    ORA #$04                 ; D350  $09 $04        
    JSR L3FE03               ; D352  $20 $03 $FE    
    PLA                      ; D355  $68            
    ASL A                    ; D356  $0A            
    TAX                      ; D357  $AA            
    LDA $8000,X              ; D358  $BD $00 $80    
    STA $80                  ; D35B  $85 $80        
    LDA $8001,X              ; D35D  $BD $01 $80    
    STA $81                  ; D360  $85 $81        
    LDA #$00                 ; D362  $A9 $00        
    STA $82                  ; D364  $85 $82        
    LDA #$74                 ; D366  $A9 $74        
    STA $83                  ; D368  $85 $83        
    JSR L3D39F               ; D36A  $20 $9F $D3    
    LDA #$00                 ; D36D  $A9 $00        
    JSR L3FE03               ; D36F  $20 $03 $FE    
    JMP $9C00                ; D372  $4C $00 $9C    
   ;; sub start ;;
    LDA #$01                 ; D375  $A9 $01        
    JSR L3FE03               ; D377  $20 $03 $FE    
    LDA #$80                 ; D37A  $A9 $80        
    STA $87                  ; D37C  $85 $87        
    LDA #$00                 ; D37E  $A9 $00        
    STA $86                  ; D380  $85 $86        
    LDA $2C                  ; D382  $A5 $2C        
    TAX                      ; D384  $AA            
    ASL A                    ; D385  $0A            
    BCC L3D38A               ; D386  $90 $02        
    INC $87                  ; D388  $E6 $87        
L3D38A:              
    TAY                      ; D38A  $A8            
    LDA ($86),Y              ; D38B  $B1 $86        
    STA $80                  ; D38D  $85 $80        
    INY                      ; D38F  $C8            
    LDA ($86),Y              ; D390  $B1 $86        
    STA $81                  ; D392  $85 $81        
    TXA                      ; D394  $8A            
    AND #$0F                 ; D395  $29 $0F        
    ORA #$70                 ; D397  $09 $70        
    STA $83                  ; D399  $85 $83        
    LDA #$00                 ; D39B  $A9 $00        
    STA $82                  ; D39D  $85 $82        
L3D39F:              
    LDY #$00                 ; D39F  $A0 $00        
    LDA ($80),Y              ; D3A1  $B1 $80        
    BPL L3D3D0               ; D3A3  $10 $2B        
    CMP #$FF                 ; D3A5  $C9 $FF        
    BEQ L3D3E1               ; D3A7  $F0 $38        
    AND #$7F                 ; D3A9  $29 $7F        
    STA $84                  ; D3AB  $85 $84        
    INC $80                  ; D3AD  $E6 $80        
    BNE L3D3B3               ; D3AF  $D0 $02        
    INC $81                  ; D3B1  $E6 $81        
L3D3B3:              
    LDA ($80),Y              ; D3B3  $B1 $80        
    TAX                      ; D3B5  $AA            
    LDA $84                  ; D3B6  $A5 $84        
L3D3B8:              
    STA ($82),Y              ; D3B8  $91 $82        
    INY                      ; D3BA  $C8            
    BEQ L3D3C8               ; D3BB  $F0 $0B        
    DEX                      ; D3BD  $CA            
    BNE L3D3B8               ; D3BE  $D0 $F8        
    TYA                      ; D3C0  $98            
    CLC                      ; D3C1  $18            
    ADC $82                  ; D3C2  $65 $82        
    STA $82                  ; D3C4  $85 $82        
    BCC L3D3CA               ; D3C6  $90 $02        
L3D3C8:              
    INC $83                  ; D3C8  $E6 $83        
L3D3CA:              
    INC $80                  ; D3CA  $E6 $80        
    BNE L3D39F               ; D3CC  $D0 $D1        
    BEQ L3D3DC               ; D3CE  $F0 $0C        
L3D3D0:              
    STA ($82),Y              ; D3D0  $91 $82        
    INC $82                  ; D3D2  $E6 $82        
    BNE L3D3D8               ; D3D4  $D0 $02        
    INC $83                  ; D3D6  $E6 $83        
L3D3D8:              
    INC $80                  ; D3D8  $E6 $80        
    BNE L3D39F               ; D3DA  $D0 $C3        
L3D3DC:              
    INC $81                  ; D3DC  $E6 $81        
    JMP L3D39F               ; D3DE  $4C $9F $D3    
L3D3E1:              
    RTS                      ; D3E1  $60            

;; sub start ;;
    LDA $33                  ; D3E2  $A5 $33        
    LSR A                    ; D3E4  $4A            
    BCS L3D3F1               ; D3E5  $B0 $0A        
    LSR A                    ; D3E7  $4A            
    BCS L3D416               ; D3E8  $B0 $2C        
    LSR A                    ; D3EA  $4A            
    BCS L3D41E               ; D3EB  $B0 $31        
    LSR A                    ; D3ED  $4A            
    BCS L3D433               ; D3EE  $B0 $43        
    RTS                      ; D3F0  $60            

L3D3F1:              
    LDA $27                  ; D3F1  $A5 $27        
    CLC                      ; D3F3  $18            
    ADC #$10                 ; D3F4  $69 $10        
L3D3F6:              
    STA $2B                  ; D3F6  $85 $2B        
    AND #$1F                 ; D3F8  $29 $1F        
    STA $31                  ; D3FA  $85 $31        
    LDA $2F                  ; D3FC  $A5 $2F        
    STA $30                  ; D3FE  $85 $30        
    LDA $28                  ; D400  $A5 $28        
    STA $2C                  ; D402  $85 $2C        
    LDA $2D                  ; D404  $A5 $2D        
    ORA #$02                 ; D406  $09 $02        
    STA $2D                  ; D408  $85 $2D        
    JSR $D547                ; D40A  $20 $47 $D5    
L3D40D:              
    LDA #$01                 ; D40D  $A9 $01        
    STA $32                  ; D40F  $85 $32        
    STA $34                  ; D411  $85 $34        
    JMP L3D45D               ; D413  $4C $5D $D4    
L3D416:              
    LDA $27                  ; D416  $A5 $27        
    SEC                      ; D418  $38            
    SBC #$01                 ; D419  $E9 $01        
    JMP L3D3F6               ; D41B  $4C $F6 $D3    
L3D41E:              
    LDA $28                  ; D41E  $A5 $28        
    CLC                      ; D420  $18            
    ADC #$0F                 ; D421  $69 $0F        
    STA $2C                  ; D423  $85 $2C        
    LDA $2F                  ; D425  $A5 $2F        
    CLC                      ; D427  $18            
    ADC #$0F                 ; D428  $69 $0F        
    CMP #$0F                 ; D42A  $C9 $0F        
    BCC L3D444               ; D42C  $90 $16        
    SEC                      ; D42E  $38            
    SBC #$0F                 ; D42F  $E9 $0F        
    BCS L3D444               ; D431  $B0 $11        
L3D433:              
    LDA $28                  ; D433  $A5 $28        
    SEC                      ; D435  $38            
    SBC #$01                 ; D436  $E9 $01        
    STA $2C                  ; D438  $85 $2C        
    LDA $2F                  ; D43A  $A5 $2F        
    SEC                      ; D43C  $38            
    SBC #$01                 ; D43D  $E9 $01        
    BCS L3D444               ; D43F  $B0 $03        
    CLC                      ; D441  $18            
    ADC #$0F                 ; D442  $69 $0F        
L3D444:              
    STA $30                  ; D444  $85 $30        
    LDA $27                  ; D446  $A5 $27        
    STA $2B                  ; D448  $85 $2B        
    AND #$1F                 ; D44A  $29 $1F        
    STA $31                  ; D44C  $85 $31        
    LDA $2D                  ; D44E  $A5 $2D        
    AND #$FD                 ; D450  $29 $FD        
    STA $2D                  ; D452  $85 $2D        
    JSR $D375                ; D454  $20 $75 $D3    
    JSR $D547                ; D457  $20 $47 $D5    
    JMP L3D40D               ; D45A  $4C $0D $D4    
L3D45D:              
    LDA $42                  ; D45D  $A5 $42        
    CMP #$08                 ; D45F  $C9 $08        
    BEQ L3D47D               ; D461  $F0 $1A        
    CMP #$04                 ; D463  $C9 $04        
    BEQ L3D479               ; D465  $F0 $12        
    CMP #$02                 ; D467  $C9 $02        
    BEQ L3D474               ; D469  $F0 $09        
    LDA $6008                ; D46B  $AD $08 $60    
    AND #$02                 ; D46E  $29 $02        
    BEQ L3D474               ; D470  $F0 $02        
D472:
    STA $34                  ; D472  $85 $34        
L3D474:              
    LDA #$00                 ; D474  $A9 $00        
    STA $4E                  ; D476  $85 $4E        
    RTS                      ; D478  $60            

L3D479:              
    LDA #$02                 ; D479  $A9 $02        
    BNE D472                 ; D47B  $D0 $F5        
L3D47D:              
    LDA $601A                ; D47D  $AD $1A $60    
    LSR A                    ; D480  $4A            
    BCC D48F                 ; D481  $90 $0C        
    LDA $25                  ; D483  $A5 $25        
    AND #$01                 ; D485  $29 $01        
    ASL A                    ; D487  $0A            
    ASL A                    ; D488  $0A            
    CLC                      ; D489  $18            
    ADC #$04                 ; D48A  $69 $04        
    TAX                      ; D48C  $AA            
    BNE D4A2                 ; D48D  $D0 $13        
D48F:
    LDX #$04                 ; D48F  $A2 $04        
    LDA $25                  ; D491  $A5 $25        
    CLC                      ; D493  $18            
    ADC #$01                 ; D494  $69 $01        
    AND #$1F                 ; D496  $29 $1F        
    BNE D4A2                 ; D498  $D0 $08        
    LDA $601A                ; D49A  $AD $1A $60    
    ORA #$01                 ; D49D  $09 $01        
    STA $601A                ; D49F  $8D $1A $60    
D4A2:
    LDA $4E                  ; D4A2  $A5 $4E        
    BNE D4AA                 ; D4A4  $D0 $04        
    INC $4E                  ; D4A6  $E6 $4E        
    LDX #$02                 ; D4A8  $A2 $02        
D4AA:
    STX $34                  ; D4AA  $86 $34        
    RTS                      ; D4AC  $60            

;; sub start ;;
    LDA $33                  ; D4AD  $A5 $33        
    LSR A                    ; D4AF  $4A            
    BCS L3D4BC               ; D4B0  $B0 $0A        
    LSR A                    ; D4B2  $4A            
    BCS L3D4E8               ; D4B3  $B0 $33        
    LSR A                    ; D4B5  $4A            
    BCS L3D4F9               ; D4B6  $B0 $41        
    LSR A                    ; D4B8  $4A            
    BCS L3D517               ; D4B9  $B0 $5C        
    RTS                      ; D4BB  $60            

L3D4BC:              
    LDA $29                  ; D4BC  $A5 $29        
    CLC                      ; D4BE  $18            
    ADC #$08                 ; D4BF  $69 $08        
    AND #$3F                 ; D4C1  $29 $3F        
    STA $68                  ; D4C3  $85 $68        
    CLC                      ; D4C5  $18            
    ADC #$08                 ; D4C6  $69 $08        
    AND #$3F                 ; D4C8  $29 $3F        
L3D4CA:              
    STA $2B                  ; D4CA  $85 $2B        
    AND #$1F                 ; D4CC  $29 $1F        
    STA $31                  ; D4CE  $85 $31        
    LDA $2F                  ; D4D0  $A5 $2F        
    STA $30                  ; D4D2  $85 $30        
    LDA $2A                  ; D4D4  $A5 $2A        
    STA $2C                  ; D4D6  $85 $2C        
    LDA $2D                  ; D4D8  $A5 $2D        
    ORA #$02                 ; D4DA  $09 $02        
    STA $2D                  ; D4DC  $85 $2D        
    JSR $D5BA                ; D4DE  $20 $BA $D5    
L3D4E1:              
    LDA #$01                 ; D4E1  $A9 $01        
    JSR $F750                ; D4E3  $20 $50 $F7    
    NOP                      ; D4E6  $EA            
    RTS                      ; D4E7  $60            

L3D4E8:              
    LDA $29                  ; D4E8  $A5 $29        
    CLC                      ; D4EA  $18            
    ADC #$06                 ; D4EB  $69 $06        
    AND #$3F                 ; D4ED  $29 $3F        
    STA $68                  ; D4EF  $85 $68        
    SEC                      ; D4F1  $38            
    SBC #$07                 ; D4F2  $E9 $07        
    AND #$3F                 ; D4F4  $29 $3F        
    JMP L3D4CA               ; D4F6  $4C $CA $D4    
L3D4F9:              
    LDA $2A                  ; D4F9  $A5 $2A        
    CLC                      ; D4FB  $18            
    ADC #$08                 ; D4FC  $69 $08        
    AND #$3F                 ; D4FE  $29 $3F        
    STA $69                  ; D500  $85 $69        
    CLC                      ; D502  $18            
    ADC #$07                 ; D503  $69 $07        
    AND #$3F                 ; D505  $29 $3F        
    STA $2C                  ; D507  $85 $2C        
    LDA $2F                  ; D509  $A5 $2F        
    CLC                      ; D50B  $18            
    ADC #$0F                 ; D50C  $69 $0F        
    CMP #$0F                 ; D50E  $C9 $0F        
    BCC L3D531               ; D510  $90 $1F        
    SEC                      ; D512  $38            
    SBC #$0F                 ; D513  $E9 $0F        
    BCS L3D531               ; D515  $B0 $1A        
L3D517:              
    LDA $2A                  ; D517  $A5 $2A        
    CLC                      ; D519  $18            
    ADC #$06                 ; D51A  $69 $06        
    AND #$3F                 ; D51C  $29 $3F        
    STA $69                  ; D51E  $85 $69        
    SEC                      ; D520  $38            
    SBC #$07                 ; D521  $E9 $07        
    AND #$3F                 ; D523  $29 $3F        
    STA $2C                  ; D525  $85 $2C        
    LDA $2F                  ; D527  $A5 $2F        
    SEC                      ; D529  $38            
    SBC #$01                 ; D52A  $E9 $01        
    BCS L3D531               ; D52C  $B0 $03        
    CLC                      ; D52E  $18            
    ADC #$0F                 ; D52F  $69 $0F        
L3D531:              
    STA $30                  ; D531  $85 $30        
    LDA $29                  ; D533  $A5 $29        
    STA $2B                  ; D535  $85 $2B        
    AND #$1F                 ; D537  $29 $1F        
    STA $31                  ; D539  $85 $31        
    LDA $2D                  ; D53B  $A5 $2D        
    AND #$FD                 ; D53D  $29 $FD        
    STA $2D                  ; D53F  $85 $2D        
    JSR $D5BA                ; D541  $20 $BA $D5    
    JMP L3D4E1               ; D544  $4C $E1 $D4    
   ;; sub start ;;
    LDX #$00                 ; D547  $A2 $00        
    LDA $2C                  ; D549  $A5 $2C        
    AND #$0F                 ; D54B  $29 $0F        
    ORA #$70                 ; D54D  $09 $70        
    STA $81                  ; D54F  $85 $81        
    LDA $2B                  ; D551  $A5 $2B        
    STA $80                  ; D553  $85 $80        
    LDA $2D                  ; D555  $A5 $2D        
    AND #$02                 ; D557  $29 $02        
    BNE L3D586               ; D559  $D0 $2B        
L3D55B:              
    LDY #$00                 ; D55B  $A0 $00        
    LDA ($80),Y              ; D55D  $B1 $80        
    TAY                      ; D55F  $A8            
    LDA $0500,Y              ; D560  $B9 $00 $05    
    STA $0780,X              ; D563  $9D $80 $07    
    LDA $0580,Y              ; D566  $B9 $80 $05    
    STA $0790,X              ; D569  $9D $90 $07    
    LDA $0600,Y              ; D56C  $B9 $00 $06    
    STA $07A0,X              ; D56F  $9D $A0 $07    
    LDA $0680,Y              ; D572  $B9 $80 $06    
    STA $07B0,X              ; D575  $9D $B0 $07    
    LDA $0700,Y              ; D578  $B9 $00 $07    
    STA $07C0,X              ; D57B  $9D $C0 $07    
    INC $80                  ; D57E  $E6 $80        
    INX                      ; D580  $E8            
    CPX #$10                 ; D581  $E0 $10        
    BCC L3D55B               ; D583  $90 $D6        
    RTS                      ; D585  $60            

L3D586:              
    LDY #$00                 ; D586  $A0 $00        
    LDA ($80),Y              ; D588  $B1 $80        
    TAY                      ; D58A  $A8            
    LDA $0500,Y              ; D58B  $B9 $00 $05    
    STA $0780,X              ; D58E  $9D $80 $07    
    LDA $0580,Y              ; D591  $B9 $80 $05    
    STA $0790,X              ; D594  $9D $90 $07    
    LDA $0600,Y              ; D597  $B9 $00 $06    
    STA $07A0,X              ; D59A  $9D $A0 $07    
    LDA $0680,Y              ; D59D  $B9 $80 $06    
    STA $07B0,X              ; D5A0  $9D $B0 $07    
    LDA $0700,Y              ; D5A3  $B9 $00 $07    
    STA $07C0,X              ; D5A6  $9D $C0 $07    
    LDA $81                  ; D5A9  $A5 $81        
    CLC                      ; D5AB  $18            
    ADC #$01                 ; D5AC  $69 $01        
    AND #$0F                 ; D5AE  $29 $0F        
    ORA #$70                 ; D5B0  $09 $70        
    STA $81                  ; D5B2  $85 $81        
    INX                      ; D5B4  $E8            
    CPX #$10                 ; D5B5  $E0 $10        
    BCC L3D586               ; D5B7  $90 $CD        
    RTS                      ; D5B9  $60            

;; sub start ;;
    LDX #$00                 ; D5BA  $A2 $00        
    LDA $2C                  ; D5BC  $A5 $2C        
    AND #$1F                 ; D5BE  $29 $1F        
    LSR A                    ; D5C0  $4A            
    LSR A                    ; D5C1  $4A            
    LSR A                    ; D5C2  $4A            
    ORA #$70                 ; D5C3  $09 $70        
    STA $81                  ; D5C5  $85 $81        
    LDA $2C                  ; D5C7  $A5 $2C        
    ASL A                    ; D5C9  $0A            
    ASL A                    ; D5CA  $0A            
    ASL A                    ; D5CB  $0A            
    ASL A                    ; D5CC  $0A            
    ASL A                    ; D5CD  $0A            
    STA $82                  ; D5CE  $85 $82        
    LDA $2B                  ; D5D0  $A5 $2B        
    AND #$1F                 ; D5D2  $29 $1F        
    ORA $82                  ; D5D4  $05 $82        
    STA $80                  ; D5D6  $85 $80        
    LDA $2D                  ; D5D8  $A5 $2D        
    AND #$02                 ; D5DA  $29 $02        
    BNE L3D621               ; D5DC  $D0 $43        
L3D5DE:              
    LDY #$00                 ; D5DE  $A0 $00        
    LDA $2B                  ; D5E0  $A5 $2B        
    ORA $2C                  ; D5E2  $05 $2C        
    AND #$20                 ; D5E4  $29 $20        
    BEQ L3D5ED               ; D5E6  $F0 $05        
    LDY #$38                 ; D5E8  $A0 $38        
    JMP L3D5F0               ; D5EA  $4C $F0 $D5    
L3D5ED:              
    LDA ($80),Y              ; D5ED  $B1 $80        
    TAY                      ; D5EF  $A8            
L3D5F0:              
    LDA $0500,Y              ; D5F0  $B9 $00 $05    
    STA $0780,X              ; D5F3  $9D $80 $07    
    LDA $0580,Y              ; D5F6  $B9 $80 $05    
    STA $0790,X              ; D5F9  $9D $90 $07    
    LDA $0600,Y              ; D5FC  $B9 $00 $06    
    STA $07A0,X              ; D5FF  $9D $A0 $07    
    LDA $0680,Y              ; D602  $B9 $80 $06    
    STA $07B0,X              ; D605  $9D $B0 $07    
    LDA $0700,Y              ; D608  $B9 $00 $07    
    STA $07C0,X              ; D60B  $9D $C0 $07    
    LDA $80                  ; D60E  $A5 $80        
    CLC                      ; D610  $18            
    ADC #$01                 ; D611  $69 $01        
    AND #$1F                 ; D613  $29 $1F        
    ORA $82                  ; D615  $05 $82        
    STA $80                  ; D617  $85 $80        
    INC $2B                  ; D619  $E6 $2B        
    INX                      ; D61B  $E8            
    CPX #$10                 ; D61C  $E0 $10        
    BCC L3D5DE               ; D61E  $90 $BE        
    RTS                      ; D620  $60            

L3D621:              
    LDY #$00                 ; D621  $A0 $00        
    LDA $2C                  ; D623  $A5 $2C        
    ORA $2B                  ; D625  $05 $2B        
    AND #$20                 ; D627  $29 $20        
    BEQ L3D630               ; D629  $F0 $05        
    LDY #$38                 ; D62B  $A0 $38        
    JMP L3D633               ; D62D  $4C $33 $D6    
L3D630:              
    LDA ($80),Y              ; D630  $B1 $80        
    TAY                      ; D632  $A8            
L3D633:              
    LDA $0500,Y              ; D633  $B9 $00 $05    
    STA $0780,X              ; D636  $9D $80 $07    
    LDA $0580,Y              ; D639  $B9 $80 $05    
    STA $0790,X              ; D63C  $9D $90 $07    
    LDA $0600,Y              ; D63F  $B9 $00 $06    
    STA $07A0,X              ; D642  $9D $A0 $07    
    LDA $0680,Y              ; D645  $B9 $80 $06    
    STA $07B0,X              ; D648  $9D $B0 $07    
    LDA $0700,Y              ; D64B  $B9 $00 $07    
    STA $07C0,X              ; D64E  $9D $C0 $07    
    LDA $80                  ; D651  $A5 $80        
    CLC                      ; D653  $18            
    ADC #$20                 ; D654  $69 $20        
    STA $80                  ; D656  $85 $80        
    LDA $81                  ; D658  $A5 $81        
    ADC #$00                 ; D65A  $69 $00        
    AND #$03                 ; D65C  $29 $03        
    ORA #$70                 ; D65E  $09 $70        
    STA $81                  ; D660  $85 $81        
    INX                      ; D662  $E8            
    INC $2C                  ; D663  $E6 $2C        
    CPX #$10                 ; D665  $E0 $10        
    BCC L3D621               ; D667  $90 $B8        
    RTS                      ; D669  $60            

;; sub start ;;
    LDX $30                  ; D66A  $A6 $30        
    LDA $D321,X              ; D66C  $BD $21 $D3    
    STA $80                  ; D66F  $85 $80        
    LDA $D331,X              ; D671  $BD $31 $D3    
    STA $81                  ; D674  $85 $81        
    LDA $31                  ; D676  $A5 $31        
    CMP #$10                 ; D678  $C9 $10        
    BCS L3D685               ; D67A  $B0 $09        
    TAX                      ; D67C  $AA            
    ASL A                    ; D67D  $0A            
    ORA $80                  ; D67E  $05 $80        
    STA $80                  ; D680  $85 $80        
    JMP L3D694               ; D682  $4C $94 $D6    
L3D685:              
    AND #$0F                 ; D685  $29 $0F        
    TAX                      ; D687  $AA            
    ASL A                    ; D688  $0A            
    ORA $80                  ; D689  $05 $80        
    STA $80                  ; D68B  $85 $80        
    LDA $81                  ; D68D  $A5 $81        
    CLC                      ; D68F  $18            
    ADC #$04                 ; D690  $69 $04        
    STA $81                  ; D692  $85 $81        
L3D694:              
    LDA $2D                  ; D694  $A5 $2D        
    AND #$02                 ; D696  $29 $02        
    BEQ L3D69D               ; D698  $F0 $03        
    JMP L3D730               ; D69A  $4C $30 $D7    
L3D69D:              
    TXA                      ; D69D  $8A            
    EOR #$0F                 ; D69E  $49 $0F        
    CLC                      ; D6A0  $18            
    ADC #$01                 ; D6A1  $69 $01        
    STA $82                  ; D6A3  $85 $82        
    LDY #$00                 ; D6A5  $A0 $00        
    LDA PpuStatus_2002       ; D6A7  $AD $02 $20    
    LDA $81                  ; D6AA  $A5 $81        
    STA PpuAddr_2006         ; D6AC  $8D $06 $20    
    LDA $80                  ; D6AF  $A5 $80        
    STA PpuAddr_2006         ; D6B1  $8D $06 $20    
L3D6B4:              
    LDA $0780,Y              ; D6B4  $B9 $80 $07    
    STA PpuData_2007         ; D6B7  $8D $07 $20    
    LDA $0790,Y              ; D6BA  $B9 $90 $07    
    STA PpuData_2007         ; D6BD  $8D $07 $20    
    INY                      ; D6C0  $C8            
    CPY $82                  ; D6C1  $C4 $82        
    BCC L3D6B4               ; D6C3  $90 $EF        
    CPY #$10                 ; D6C5  $C0 $10        
    BCS L3D6E8               ; D6C7  $B0 $1F        
    LDA $81                  ; D6C9  $A5 $81        
    EOR #$04                 ; D6CB  $49 $04        
    STA PpuAddr_2006         ; D6CD  $8D $06 $20    
    LDA $80                  ; D6D0  $A5 $80        
    AND #$E0                 ; D6D2  $29 $E0        
    STA PpuAddr_2006         ; D6D4  $8D $06 $20    
L3D6D7:              
    LDA $0780,Y              ; D6D7  $B9 $80 $07    
    STA PpuData_2007         ; D6DA  $8D $07 $20    
    LDA $0790,Y              ; D6DD  $B9 $90 $07    
    STA PpuData_2007         ; D6E0  $8D $07 $20    
    INY                      ; D6E3  $C8            
    CPY #$10                 ; D6E4  $C0 $10        
    BCC L3D6D7               ; D6E6  $90 $EF        
L3D6E8:              
    LDA $80                  ; D6E8  $A5 $80        
    CLC                      ; D6EA  $18            
    ADC #$20                 ; D6EB  $69 $20        
    STA $80                  ; D6ED  $85 $80        
    LDA $81                  ; D6EF  $A5 $81        
    STA PpuAddr_2006         ; D6F1  $8D $06 $20    
    LDA $80                  ; D6F4  $A5 $80        
    STA PpuAddr_2006         ; D6F6  $8D $06 $20    
    LDY #$00                 ; D6F9  $A0 $00        
L3D6FB:              
    LDA $07A0,Y              ; D6FB  $B9 $A0 $07    
    STA PpuData_2007         ; D6FE  $8D $07 $20    
    LDA $07B0,Y              ; D701  $B9 $B0 $07    
    STA PpuData_2007         ; D704  $8D $07 $20    
    INY                      ; D707  $C8            
    CPY $82                  ; D708  $C4 $82        
    BCC L3D6FB               ; D70A  $90 $EF        
    CPY #$10                 ; D70C  $C0 $10        
    BCS L3D72F               ; D70E  $B0 $1F        
    LDA $81                  ; D710  $A5 $81        
    EOR #$04                 ; D712  $49 $04        
    STA PpuAddr_2006         ; D714  $8D $06 $20    
    LDA $80                  ; D717  $A5 $80        
    AND #$E0                 ; D719  $29 $E0        
    STA PpuAddr_2006         ; D71B  $8D $06 $20    
L3D71E:              
    LDA $07A0,Y              ; D71E  $B9 $A0 $07    
    STA PpuData_2007         ; D721  $8D $07 $20    
    LDA $07B0,Y              ; D724  $B9 $B0 $07    
    STA PpuData_2007         ; D727  $8D $07 $20    
    INY                      ; D72A  $C8            
    CPY #$10                 ; D72B  $C0 $10        
    BCC L3D71E               ; D72D  $90 $EF        
L3D72F:              
    RTS                      ; D72F  $60            

L3D730:              
    LDA #$0F                 ; D730  $A9 $0F        
    SEC                      ; D732  $38            
    SBC $30                  ; D733  $E5 $30        
    STA $82                  ; D735  $85 $82        
    LDY #$00                 ; D737  $A0 $00        
    LDA PpuStatus_2002       ; D739  $AD $02 $20    
    LDA $81                  ; D73C  $A5 $81        
    STA PpuAddr_2006         ; D73E  $8D $06 $20    
    LDA $80                  ; D741  $A5 $80        
    STA PpuAddr_2006         ; D743  $8D $06 $20    
    LDA #$04                 ; D746  $A9 $04        
    STA PpuControl_2000      ; D748  $8D $00 $20    
L3D74B:              
    LDA $0780,Y              ; D74B  $B9 $80 $07    
    STA PpuData_2007         ; D74E  $8D $07 $20    
    LDA $07A0,Y              ; D751  $B9 $A0 $07    
    STA PpuData_2007         ; D754  $8D $07 $20    
    INY                      ; D757  $C8            
    CPY $82                  ; D758  $C4 $82        
    BCC L3D74B               ; D75A  $90 $EF        
    CPY #$0F                 ; D75C  $C0 $0F        
    BCS L3D77F               ; D75E  $B0 $1F        
    LDA $81                  ; D760  $A5 $81        
    AND #$24                 ; D762  $29 $24        
    STA PpuAddr_2006         ; D764  $8D $06 $20    
    LDA $80                  ; D767  $A5 $80        
    AND #$1F                 ; D769  $29 $1F        
    STA PpuAddr_2006         ; D76B  $8D $06 $20    
L3D76E:              
    LDA $0780,Y              ; D76E  $B9 $80 $07    
    STA PpuData_2007         ; D771  $8D $07 $20    
    LDA $07A0,Y              ; D774  $B9 $A0 $07    
    STA PpuData_2007         ; D777  $8D $07 $20    
    INY                      ; D77A  $C8            
    CPY #$0F                 ; D77B  $C0 $0F        
    BCC L3D76E               ; D77D  $90 $EF        
L3D77F:              
    LDY #$00                 ; D77F  $A0 $00        
    LDA $81                  ; D781  $A5 $81        
    STA PpuAddr_2006         ; D783  $8D $06 $20    
    LDA $80                  ; D786  $A5 $80        
    CLC                      ; D788  $18            
    ADC #$01                 ; D789  $69 $01        
    STA PpuAddr_2006         ; D78B  $8D $06 $20    
L3D78E:              
    LDA $0790,Y              ; D78E  $B9 $90 $07    
    STA PpuData_2007         ; D791  $8D $07 $20    
    LDA $07B0,Y              ; D794  $B9 $B0 $07    
    STA PpuData_2007         ; D797  $8D $07 $20    
    INY                      ; D79A  $C8            
    CPY $82                  ; D79B  $C4 $82        
    BCC L3D78E               ; D79D  $90 $EF        
    CPY #$0F                 ; D79F  $C0 $0F        
    BCS L3D7C5               ; D7A1  $B0 $22        
    LDA $81                  ; D7A3  $A5 $81        
    AND #$24                 ; D7A5  $29 $24        
    STA PpuAddr_2006         ; D7A7  $8D $06 $20    
    LDA $80                  ; D7AA  $A5 $80        
    CLC                      ; D7AC  $18            
    ADC #$01                 ; D7AD  $69 $01        
    AND #$1F                 ; D7AF  $29 $1F        
    STA PpuAddr_2006         ; D7B1  $8D $06 $20    
L3D7B4:              
    LDA $0790,Y              ; D7B4  $B9 $90 $07    
    STA PpuData_2007         ; D7B7  $8D $07 $20    
    LDA $07B0,Y              ; D7BA  $B9 $B0 $07    
    STA PpuData_2007         ; D7BD  $8D $07 $20    
    INY                      ; D7C0  $C8            
    CPY #$0F                 ; D7C1  $C0 $0F        
    BCC L3D7B4               ; D7C3  $90 $EF        
L3D7C5:              
    LDA #$88                 ; D7C5  $A9 $88        
    STA PpuControl_2000      ; D7C7  $8D $00 $20    
    RTS                      ; D7CA  $60            

;; sub start ;;
    JSR $D990                ; D7CB  $20 $90 $D9    
    LDA #$70                 ; D7CE  $A9 $70        
    STA $84                  ; D7D0  $85 $84        
    LDA #$01                 ; D7D2  $A9 $01        
    STA $85                  ; D7D4  $85 $85        
L3D7D6:              
    JSR $D81E                ; D7D6  $20 $1E $D8    
    LDA $85                  ; D7D9  $A5 $85        
    CLC                      ; D7DB  $18            
    ADC #$06                 ; D7DC  $69 $06        
    STA $85                  ; D7DE  $85 $85        
    LDA $84                  ; D7E0  $A5 $84        
    SEC                      ; D7E2  $38            
    SBC #$03                 ; D7E3  $E9 $03        
    STA $84                  ; D7E5  $85 $84        
    CMP #$04                 ; D7E7  $C9 $04        
    BCS L3D7D6               ; D7E9  $B0 $EB        
    LDA #$00                 ; D7EB  $A9 $00        
    JMP L3D812               ; D7ED  $4C $12 $D8    
   ;; sub start ;;
    JSR $D990                ; D7F0  $20 $90 $D9    
    LDA #$01                 ; D7F3  $A9 $01        
    STA $84                  ; D7F5  $85 $84        
    LDA #$DF                 ; D7F7  $A9 $DF        
    STA $85                  ; D7F9  $85 $85        
L3D7FB:              
    JSR $D81E                ; D7FB  $20 $1E $D8    
    LDA $85                  ; D7FE  $A5 $85        
    SEC                      ; D800  $38            
    SBC #$06                 ; D801  $E9 $06        
    STA $85                  ; D803  $85 $85        
    LDA $84                  ; D805  $A5 $84        
    CLC                      ; D807  $18            
    ADC #$03                 ; D808  $69 $03        
    STA $84                  ; D80A  $85 $84        
    CMP #$70                 ; D80C  $C9 $70        
    BCC L3D7FB               ; D80E  $90 $EB        
    LDA #$0A                 ; D810  $A9 $0A        
L3D812:              
    STA PpuMask_2001         ; D812  $8D $01 $20    
    LDA #$30                 ; D815  $A9 $30        
    STA Sq0Duty_4000         ; D817  $8D $00 $40    
    STA Sq0Sweep_4001        ; D81A  $8D $01 $40    
    RTS                      ; D81D  $60            

;; sub start ;;
    JSR $FE00                ; D81E  $20 $00 $FE    
    LDA #$0A                 ; D821  $A9 $0A        
    STA PpuMask_2001         ; D823  $8D $01 $20    
    JSR $DC30                ; D826  $20 $30 $DC    
    JSR $D889                ; D829  $20 $89 $D8    
    JSR $D8BA                ; D82C  $20 $BA $D8    
    LDX $84                  ; D82F  $A6 $84        
L3D831:              
    JSR $D962                ; D831  $20 $62 $D9    
    DEX                      ; D834  $CA            
    BNE L3D831               ; D835  $D0 $FA        
    LDA #$00                 ; D837  $A9 $00        
    STA PpuMask_2001         ; D839  $8D $01 $20    
    LDX $85                  ; D83C  $A6 $85        
L3D83E:              
    JSR $D962                ; D83E  $20 $62 $D9    
    DEX                      ; D841  $CA            
    BNE L3D83E               ; D842  $D0 $FA        
    LDA PpuStatus_2002       ; D844  $AD $02 $20    
    LDX $2F                  ; D847  $A6 $2F        
    LDA $D87A,X              ; D849  $BD $7A $D8    
    STA PpuAddr_2006         ; D84C  $8D $06 $20    
    LDA $D86A,X              ; D84F  $BD $6A $D8    
    STA PpuAddr_2006         ; D852  $8D $06 $20    
    JSR $D889                ; D855  $20 $89 $D8    
    LDA #$0A                 ; D858  $A9 $0A        
    STA PpuMask_2001         ; D85A  $8D $01 $20    
    LDA $85                  ; D85D  $A5 $85        
    ASL A                    ; D85F  $0A            
    STA Sq0Timer_4002        ; D860  $8D $02 $40    
    ROL A                    ; D863  $2A            
    AND #$01                 ; D864  $29 $01        
    STA Sq0Length_4003       ; D866  $8D $03 $40    
    RTS                      ; D869  $60            

 ;data block---
.byte $E0,$20,$60,$A0,$E0,$20 
;; [D870 : 3D880]
.byte $60,$A0,$20,$60,$A0,$E0,$20,$60,$A0,$E0,$21,$22,$22,$22,$22,$23 
.byte $23,$23,$20,$20,$20,$20,$21,$21,$21

 ;; sub start ;;
    LDA #$70                 ; D889  $A9 $70        
    SEC                      ; D88B  $38            
    SBC $84                  ; D88C  $E5 $84        
    AND #$7F                 ; D88E  $29 $7F        
    STA $80                  ; D890  $85 $80        
    LDA $FD                  ; D892  $A5 $FD        
    STA $FF                  ; D894  $85 $FF        
    STA PpuControl_2000      ; D896  $8D $00 $20    
    LDA PpuStatus_2002       ; D899  $AD $02 $20    
    LDA $27                  ; D89C  $A5 $27        
    ASL A                    ; D89E  $0A            
    ASL A                    ; D89F  $0A            
    ASL A                    ; D8A0  $0A            
    ASL A                    ; D8A1  $0A            
    STA PpuScroll_2005       ; D8A2  $8D $05 $20    
    LDA $2F                  ; D8A5  $A5 $2F        
    ASL A                    ; D8A7  $0A            
    ASL A                    ; D8A8  $0A            
    ASL A                    ; D8A9  $0A            
    ASL A                    ; D8AA  $0A            
    CLC                      ; D8AB  $18            
    ADC $80                  ; D8AC  $65 $80        
    BCS L3D8B4               ; D8AE  $B0 $04        
    CMP #$F0                 ; D8B0  $C9 $F0        
    BCC L3D8B6               ; D8B2  $90 $02        
L3D8B4:              
    ADC #$0F                 ; D8B4  $69 $0F        
L3D8B6:              
    STA PpuScroll_2005       ; D8B6  $8D $05 $20    
    RTS                      ; D8B9  $60            

;; sub start ;;
    LDX #$90                 ; D8BA  $A2 $90        
L3D8BC:              
    LDY #$03                 ; D8BC  $A0 $03        
L3D8BE:              
    DEY                      ; D8BE  $88            
    BNE L3D8BE               ; D8BF  $D0 $FD        
    DEX                      ; D8C1  $CA            
    BNE L3D8BC               ; D8C2  $D0 $F8        
    NOP                      ; D8C4  $EA            
    NOP                      ; D8C5  $EA            
    NOP                      ; D8C6  $EA            
    NOP                      ; D8C7  $EA            
    RTS                      ; D8C8  $60            

L3D8C9:              
    JSR $D977                ; D8C9  $20 $77 $D9    
    LDA #$85                 ; D8CC  $A9 $85        
    STA $84                  ; D8CE  $85 $84        
    LDA #$01                 ; D8D0  $A9 $01        
    STA $85                  ; D8D2  $85 $85        
L3D8D4:              
    JSR $D935                ; D8D4  $20 $35 $D9    
    LDA $84                  ; D8D7  $A5 $84        
    SEC                      ; D8D9  $38            
    SBC #$03                 ; D8DA  $E9 $03        
    STA $84                  ; D8DC  $85 $84        
    LDA $85                  ; D8DE  $A5 $85        
    CLC                      ; D8E0  $18            
    ADC #$06                 ; D8E1  $69 $06        
    STA $85                  ; D8E3  $85 $85        
    CMP #$C8                 ; D8E5  $C9 $C8        
    BCC L3D8D4               ; D8E7  $90 $EB        
    LDA #$1E                 ; D8E9  $A9 $1E        
    JMP L3D910               ; D8EB  $4C $10 $D9    
   ;; sub start ;;
    JSR $D977                ; D8EE  $20 $77 $D9    
    LDA #$21                 ; D8F1  $A9 $21        
    STA $84                  ; D8F3  $85 $84        
    LDA #$C5                 ; D8F5  $A9 $C5        
    STA $85                  ; D8F7  $85 $85        
L3D8F9:              
    JSR $D935                ; D8F9  $20 $35 $D9    
    LDA $84                  ; D8FC  $A5 $84        
    CLC                      ; D8FE  $18            
    ADC #$03                 ; D8FF  $69 $03        
    STA $84                  ; D901  $85 $84        
    LDA $85                  ; D903  $A5 $85        
    SEC                      ; D905  $38            
    SBC #$06                 ; D906  $E9 $06        
    STA $85                  ; D908  $85 $85        
    CMP #$06                 ; D90A  $C9 $06        
    BCS L3D8F9               ; D90C  $B0 $EB        
    LDA #$00                 ; D90E  $A9 $00        
L3D910:              
    STA PpuMask_2001         ; D910  $8D $01 $20    
    LDA #$30                 ; D913  $A9 $30        
    STA Sq0Duty_4000         ; D915  $8D $00 $40    
    STA Sq1Duty_4004         ; D918  $8D $04 $40    
    STA TrgLinear_4008       ; D91B  $8D $08 $40    
    STA NoiseVolume_400C     ; D91E  $8D $0C $40    
    RTS                      ; D921  $60            

;; sub start ;;
    LDA #$02                 ; D922  $A9 $02        
    STA SpriteDma_4014       ; D924  $8D $14 $40    
    JSR $DC30                ; D927  $20 $30 $DC    
    LDA $2D                  ; D92A  $A5 $2D        
    LSR A                    ; D92C  $4A            
    BCS L3D932               ; D92D  $B0 $03        
    JMP $C385                ; D92F  $4C $85 $C3    
L3D932:              
    JMP L3CDF5               ; D932  $4C $F5 $CD    
   ;; sub start ;;
    JSR $FE00                ; D935  $20 $00 $FE    
    JSR $D922                ; D938  $20 $22 $D9    
    LDX #$0A                 ; D93B  $A2 $0A        
L3D93D:              
    DEX                      ; D93D  $CA            
    BNE L3D93D               ; D93E  $D0 $FD        
    LDA #$10                 ; D940  $A9 $10        
    STA PpuMask_2001         ; D942  $8D $01 $20    
    LDX $84                  ; D945  $A6 $84        
L3D947:              
    JSR $D962                ; D947  $20 $62 $D9    
    DEX                      ; D94A  $CA            
    BNE L3D947               ; D94B  $D0 $FA        
    LDA #$1E                 ; D94D  $A9 $1E        
    STA PpuMask_2001         ; D94F  $8D $01 $20    
    LDX $85                  ; D952  $A6 $85        
L3D954:              
    JSR $D962                ; D954  $20 $62 $D9    
    DEX                      ; D957  $CA            
    BNE L3D954               ; D958  $D0 $FA        
    LDA #$10                 ; D95A  $A9 $10        
    STA PpuMask_2001         ; D95C  $8D $01 $20    
    JMP L3C746               ; D95F  $4C $46 $C7    
   ;; sub start ;;
    LDY #$10                 ; D962  $A0 $10        
L3D964:              
    DEY                      ; D964  $88            
    BNE L3D964               ; D965  $D0 $FD        
    LDA $82                  ; D967  $A5 $82        
    DEC $82                  ; D969  $C6 $82        
    BNE L3D972               ; D96B  $D0 $05        
    LDA #$03                 ; D96D  $A9 $03        
    STA $82                  ; D96F  $85 $82        
    RTS                      ; D971  $60            

L3D972:              
    LDA #$00                 ; D972  $A9 $00        
    LDA $82                  ; D974  $A5 $82        
    RTS                      ; D976  $60            

;; sub start ;;
    JSR $D97D                ; D977  $20 $7D $D9    
    JMP L3C746               ; D97A  $4C $46 $C7    
   ;; sub start ;;
    LDA #$F0                 ; D97D  $A9 $F0        
    LDX #$00                 ; D97F  $A2 $00        
L3D981:              
    STA $0200,X              ; D981  $9D $00 $02    
    INX                      ; D984  $E8            
    BNE L3D981               ; D985  $D0 $FA        
    JSR $FE00                ; D987  $20 $00 $FE    
    LDA #$02                 ; D98A  $A9 $02        
    STA SpriteDma_4014       ; D98C  $8D $14 $40    
    RTS                      ; D98F  $60            

;; sub start ;;
    JSR $D97D                ; D990  $20 $7D $D9    
    LDA #$01                 ; D993  $A9 $01        
    STA ApuStatus_4015       ; D995  $8D $15 $40    
    LDA #$38                 ; D998  $A9 $38        
    STA Sq0Duty_4000         ; D99A  $8D $00 $40    
    LDA #$8B                 ; D99D  $A9 $8B        
    STA Sq0Sweep_4001        ; D99F  $8D $01 $40    
    RTS                      ; D9A2  $60            

;; sub start ;;
    LDA $6012                ; D9A3  $AD $12 $60    
    AND #$02                 ; D9A6  $29 $02        
    BEQ L3D9B4               ; D9A8  $F0 $0A        
    LDX #$EA                 ; D9AA  $A2 $EA        
    JSR $DA52                ; D9AC  $20 $52 $DA    
    LDX #$EC                 ; D9AF  $A2 $EC        
    JSR $DA52                ; D9B1  $20 $52 $DA    
L3D9B4:              
    LDA $6012                ; D9B4  $AD $12 $60    
    AND #$04                 ; D9B7  $29 $04        
    BEQ L3D9C0               ; D9B9  $F0 $05        
    LDX #$64                 ; D9BB  $A2 $64        
    JSR $DA5C                ; D9BD  $20 $5C $DA    
L3D9C0:              
    LDA $6012                ; D9C0  $AD $12 $60    
    AND #$10                 ; D9C3  $29 $10        
    BEQ L3D9CC               ; D9C5  $F0 $05        
    LDX #$7A                 ; D9C7  $A2 $7A        
    JSR $DA5C                ; D9C9  $20 $5C $DA    
L3D9CC:              
    LDA $6012                ; D9CC  $AD $12 $60    
    AND #$20                 ; D9CF  $29 $20        
    BEQ L3D9D8               ; D9D1  $F0 $05        
    LDX #$72                 ; D9D3  $A2 $72        
    JSR $DA5C                ; D9D5  $20 $5C $DA    
L3D9D8:              
    LDA $6012                ; D9D8  $AD $12 $60    
    AND #$40                 ; D9DB  $29 $40        
    BEQ L3D9E4               ; D9DD  $F0 $05        
    LDX #$7C                 ; D9DF  $A2 $7C        
    JSR $DA58                ; D9E1  $20 $58 $DA    
L3D9E4:              
    LDA $6012                ; D9E4  $AD $12 $60    
    AND #$80                 ; D9E7  $29 $80        
    BEQ L3D9F0               ; D9E9  $F0 $05        
    LDX #$7D                 ; D9EB  $A2 $7D        
    JSR $DA58                ; D9ED  $20 $58 $DA    
L3D9F0:              
    LDA $6013                ; D9F0  $AD $13 $60    
    AND #$01                 ; D9F3  $29 $01        
    BEQ L3D9FC               ; D9F5  $F0 $05        
    LDX #$7E                 ; D9F7  $A2 $7E        
    JSR $DA58                ; D9F9  $20 $58 $DA    
L3D9FC:              
    LDA $6013                ; D9FC  $AD $13 $60    
    AND #$02                 ; D9FF  $29 $02        
    BEQ L3DA08               ; DA01  $F0 $05        
    LDX #$7F                 ; DA03  $A2 $7F        
    JSR $DA58                ; DA05  $20 $58 $DA    
L3DA08:              
    LDA $6013                ; DA08  $AD $13 $60    
    AND #$10                 ; DA0B  $29 $10        
    BEQ L3DA14               ; DA0D  $F0 $05        
    LDX #$79                 ; DA0F  $A2 $79        
    JSR $DA5C                ; DA11  $20 $5C $DA    
L3DA14:              
    LDA $6013                ; DA14  $AD $13 $60    
    AND #$20                 ; DA17  $29 $20        
    BEQ L3DA20               ; DA19  $F0 $05        
    LDX #$F6                 ; DA1B  $A2 $F6        
    JSR $DA52                ; DA1D  $20 $52 $DA    
L3DA20:              
    LDA $6013                ; DA20  $AD $13 $60    
    AND #$04                 ; DA23  $29 $04        
    BEQ L3DA51               ; DA25  $F0 $2A        
    LDX #$3B                 ; DA27  $A2 $3B        
    LDY #$51                 ; DA29  $A0 $51        
    JSR $DA5E                ; DA2B  $20 $5E $DA    
    LDX #$3C                 ; DA2E  $A2 $3C        
    LDY #$52                 ; DA30  $A0 $52        
    JSR $DA5E                ; DA32  $20 $5E $DA    
    LDX #$3D                 ; DA35  $A2 $3D        
    LDY #$53                 ; DA37  $A0 $53        
    JSR $DA5E                ; DA39  $20 $5E $DA    
    LDX #$3E                 ; DA3C  $A2 $3E        
    LDY #$54                 ; DA3E  $A0 $54        
    JSR $DA5E                ; DA40  $20 $5E $DA    
    LDX #$77                 ; DA43  $A2 $77        
    LDY #$65                 ; DA45  $A0 $65        
    JSR $DA5E                ; DA47  $20 $5E $DA    
    LDX #$78                 ; DA4A  $A2 $78        
    LDY #$66                 ; DA4C  $A0 $66        
    JMP $DA5E                ; DA4E  $4C $5E $DA    
L3DA51:              
    RTS                      ; DA51  $60            

;; sub start ;;
    LDA #$0F                 ; DA52  $A9 $0F        
    STA $0400,X              ; DA54  $9D $00 $04    
    RTS                      ; DA57  $60            

    LDY #$69                 ; DA58  $A0 $69        
    BNE DA5E                 ; DA5A  $D0 $02        
    
;; sub start ;;
    LDY #$34                 ; DA5C  $A0 $34        
DA5E:
    LDA $0500,Y              ; DA5E  $B9 $00 $05    
    STA $0500,X              ; DA61  $9D $00 $05    
    LDA $0580,Y              ; DA64  $B9 $80 $05    
    STA $0580,X              ; DA67  $9D $80 $05    
    LDA $0600,Y              ; DA6A  $B9 $00 $06    
    STA $0600,X              ; DA6D  $9D $00 $06    
    LDA $0680,Y              ; DA70  $B9 $80 $06    
    STA $0680,X              ; DA73  $9D $80 $06    
    LDA $0700,Y              ; DA76  $B9 $00 $07    
    STA $0700,X              ; DA79  $9D $00 $07    
    TYA                      ; DA7C  $98            
    ASL A                    ; DA7D  $0A            
    TAY                      ; DA7E  $A8            
    TXA                      ; DA7F  $8A            
    ASL A                    ; DA80  $0A            
    TAX                      ; DA81  $AA            
    LDA $0400,Y              ; DA82  $B9 $00 $04    
    STA $0400,X              ; DA85  $9D $00 $04    
    LDA $0401,Y              ; DA88  $B9 $01 $04    
    STA $0401,X              ; DA8B  $9D $01 $04    
    RTS                      ; DA8E  $60            

;; sub start ;;
    LDA $42                  ; DA8F  $A5 $42        
    STA $6018                ; DA91  $8D $18 $60    
    LDA $27                  ; DA94  $A5 $27        
    STA $6010                ; DA96  $8D $10 $60    
    LDA $28                  ; DA99  $A5 $28        
    STA $6011                ; DA9B  $8D $11 $60    
    LDA #$00                 ; DA9E  $A9 $00        
    STA $62FF                ; DAA0  $8D $FF $62    
    LDA #$5A                 ; DAA3  $A9 $5A        
    STA $62FE                ; DAA5  $8D $FE $62    
    LDA #$00                 ; DAA8  $A9 $00        
    LDX #$00                 ; DAAA  $A2 $00        
L3DAAC:              
    CLC                      ; DAAC  $18            
    ADC $6000,X              ; DAAD  $7D $00 $60    
    CLC                      ; DAB0  $18            
    ADC $6100,X              ; DAB1  $7D $00 $61    
    CLC                      ; DAB4  $18            
    ADC $6200,X              ; DAB5  $7D $00 $62    
    INX                      ; DAB8  $E8            
    BNE L3DAAC               ; DAB9  $D0 $F1        
    EOR #$FF                 ; DABB  $49 $FF        
    STA $62FF                ; DABD  $8D $FF $62    
    RTS                      ; DAC0  $60            

;; sub start ;;
    STA $80                  ; DAC1  $85 $80        
    ASL A                    ; DAC3  $0A            
    ADC $80                  ; DAC4  $65 $80        
    ADC #$63                 ; DAC6  $69 $63        
    STA $81                  ; DAC8  $85 $81        
    LDA #$00                 ; DACA  $A9 $00        
    STA $80                  ; DACC  $85 $80        
    LDX #$03                 ; DACE  $A2 $03        
    LDY #$00                 ; DAD0  $A0 $00        
    LDA #$00                 ; DAD2  $A9 $00        
L3DAD4:              
    CLC                      ; DAD4  $18            
    ADC ($80),Y              ; DAD5  $71 $80        
    INY                      ; DAD7  $C8            
    BNE L3DAD4               ; DAD8  $D0 $FA        
    INC $81                  ; DADA  $E6 $81        
    DEX                      ; DADC  $CA            
    BNE L3DAD4               ; DADD  $D0 $F5        
    CLC                      ; DADF  $18            
    ADC #$01                 ; DAE0  $69 $01        
    CMP #$01                 ; DAE2  $C9 $01        
    BCS L3DAF0               ; DAE4  $B0 $0A        
    LDY #$FE                 ; DAE6  $A0 $FE        
    DEC $81                  ; DAE8  $C6 $81        
    LDA ($80),Y              ; DAEA  $B1 $80        
    EOR #$5A                 ; DAEC  $49 $5A        
    CMP #$01                 ; DAEE  $C9 $01        
L3DAF0:              
    RTS                      ; DAF0  $60            

;; sub start ;;
    PHA                      ; DAF1  $48            
    LDA #$0A                 ; DAF2  $A9 $0A        
    JSR L3FE03               ; DAF4  $20 $03 $FE    
    PLA                      ; DAF7  $68            
    ASL A                    ; DAF8  $0A            
    TAY                      ; DAF9  $A8            
    LDA $8400,Y              ; DAFA  $B9 $00 $84    
    STA $80                  ; DAFD  $85 $80        
    LDA $8401,Y              ; DAFF  $B9 $01 $84    
    STA $81                  ; DB02  $85 $81        
    LDY #$00                 ; DB04  $A0 $00        
L3DB06:              
    LDA ($80),Y              ; DB06  $B1 $80        
    CMP #$30                 ; DB08  $C9 $30        
    BCS L3DB21               ; DB0A  $B0 $15        
    CMP #$10                 ; DB0C  $C9 $10        
    BCC L3DB21               ; DB0E  $90 $11        
    BNE L3DB14               ; DB10  $D0 $02        
    LDA $9E                  ; DB12  $A5 $9E        
L3DB14:              
    STA $7B00,Y              ; DB14  $99 $00 $7B    
    INY                      ; DB17  $C8            
    LDA ($80),Y              ; DB18  $B1 $80        
    STA $7B00,Y              ; DB1A  $99 $00 $7B    
    INY                      ; DB1D  $C8            
    JMP L3DB06               ; DB1E  $4C $06 $DB    
L3DB21:              
    STA $7B00,Y              ; DB21  $99 $00 $7B    
    INY                      ; DB24  $C8            
    CMP #$00                 ; DB25  $C9 $00        
    BNE L3DB06               ; DB27  $D0 $DD        
    LDA #$0E                 ; DB29  $A9 $0E        
    JMP L3FE03               ; DB2B  $4C $03 $FE    
L3DB2E:              
    LDA #$7D                 ; DB2E  $A9 $7D        
    STA Sq1Duty_4004         ; DB30  $8D $04 $40    
    LDA #$BA                 ; DB33  $A9 $BA        
    STA Sq1Sweep_4005        ; DB35  $8D $05 $40    
    LDA #$40                 ; DB38  $A9 $40        
    STA Sq1Timer_4006        ; DB3A  $8D $06 $40    
    LDA #$10                 ; DB3D  $A9 $10        
    STA Sq1Length_4007       ; DB3F  $8D $07 $40    
    STA $E5                  ; DB42  $85 $E5        
    RTS                      ; DB44  $60            

;; sub start ;;
    LDA #$7C                 ; DB45  $A9 $7C        
    STA Sq1Duty_4004         ; DB47  $8D $04 $40    
    LDA #$BA                 ; DB4A  $A9 $BA        
    STA Sq1Sweep_4005        ; DB4C  $8D $05 $40    
    LDA #$20                 ; DB4F  $A9 $20        
    STA Sq1Timer_4006        ; DB51  $8D $06 $40    
    STA Sq1Length_4007       ; DB54  $8D $07 $40    
    LDA #$0C                 ; DB57  $A9 $0C        
    STA $E5                  ; DB59  $85 $E5        
    RTS                      ; DB5B  $60            

;; sub start ;;
    LDA $6C                  ; DB5C  $A5 $6C        
    BEQ L3DBA2               ; DB5E  $F0 $42        
    CMP #$01                 ; DB60  $C9 $01        
    BNE L3DB95               ; DB62  $D0 $31        
    LDA $17                  ; DB64  $A5 $17        
    BNE L3DB95               ; DB66  $D0 $2D        
    LDA #$0D                 ; DB68  $A9 $0D        
    JSR L3FE03               ; DB6A  $20 $03 $FE    
    LDY #$00                 ; DB6D  $A0 $00        
    LDA ($72),Y              ; DB6F  $B1 $72        
    CMP #$F9                 ; DB71  $C9 $F9        
    BNE L3DB8E               ; DB73  $D0 $19        
    INY                      ; DB75  $C8            
    LDA ($72),Y              ; DB76  $B1 $72        
    STA $17                  ; DB78  $85 $17        
    DEC $17                  ; DB7A  $C6 $17        
    LDA $72                  ; DB7C  $A5 $72        
    CLC                      ; DB7E  $18            
    ADC #$02                 ; DB7F  $69 $02        
    STA $72                  ; DB81  $85 $72        
    LDA $73                  ; DB83  $A5 $73        
    ADC #$00                 ; DB85  $69 $00        
    STA $73                  ; DB87  $85 $73        
    LDA #$0E                 ; DB89  $A9 $0E        
    JMP L3FE03               ; DB8B  $4C $03 $FE    
L3DB8E:              
    STA $70                  ; DB8E  $85 $70        
    INY                      ; DB90  $C8            
    LDA ($72),Y              ; DB91  $B1 $72        
    STA $71                  ; DB93  $85 $71        
L3DB95:              
    LDA #$03                 ; DB95  $A9 $03        
    JSR L3FE03               ; DB97  $20 $03 $FE    
    JSR $A000                ; DB9A  $20 $00 $A0    
    LDA #$0E                 ; DB9D  $A9 $0E        
    JMP L3FE03               ; DB9F  $4C $03 $FE    
L3DBA2:              
    JSR $DBA9                ; DBA2  $20 $A9 $DB    
    JSR $DBC2                ; DBA5  $20 $C2 $DB    
    RTS                      ; DBA8  $60            

;; sub start ;;
    LDA #$01                 ; DBA9  $A9 $01        
    STA Ctrl1_4016           ; DBAB  $8D $16 $40    
    LDA #$00                 ; DBAE  $A9 $00        
    STA Ctrl1_4016           ; DBB0  $8D $16 $40    
    LDX #$08                 ; DBB3  $A2 $08        
L3DBB5:              
    LDA Ctrl1_4016           ; DBB5  $AD $16 $40    
    AND #$03                 ; DBB8  $29 $03        
    CMP #$01                 ; DBBA  $C9 $01        
    ROL $20                  ; DBBC  $26 $20        
    DEX                      ; DBBE  $CA            
    BNE L3DBB5               ; DBBF  $D0 $F4        
    RTS                      ; DBC1  $60            

;; sub start ;;
    LDA $20                  ; DBC2  $A5 $20        
    AND #$03                 ; DBC4  $29 $03        
    BEQ L3DBCA               ; DBC6  $F0 $02        
    LDX #$03                 ; DBC8  $A2 $03        
L3DBCA:              
    STX $81                  ; DBCA  $86 $81        
    LDA $20                  ; DBCC  $A5 $20        
    AND #$0C                 ; DBCE  $29 $0C        
    BEQ L3DBD7               ; DBD0  $F0 $05        
    TXA                      ; DBD2  $8A            
    ORA #$0C                 ; DBD3  $09 $0C        
    STA $81                  ; DBD5  $85 $81        
L3DBD7:              
    LDA $20                  ; DBD7  $A5 $20        
    EOR $21                  ; DBD9  $45 $21        
    AND $81                  ; DBDB  $25 $81        
    EOR $21                  ; DBDD  $45 $21        
    STA $21                  ; DBDF  $85 $21        
    EOR $20                  ; DBE1  $45 $20        
    TAX                      ; DBE3  $AA            
    AND #$10                 ; DBE4  $29 $10        
    BEQ L3DBF6               ; DBE6  $F0 $0E        
    LDA $20                  ; DBE8  $A5 $20        
    AND #$10                 ; DBEA  $29 $10        
    BEQ L3DBF0               ; DBEC  $F0 $02        
    INC $23                  ; DBEE  $E6 $23        
L3DBF0:              
    LDA $21                  ; DBF0  $A5 $21        
    EOR #$10                 ; DBF2  $49 $10        
    STA $21                  ; DBF4  $85 $21        
L3DBF6:              
    TXA                      ; DBF6  $8A            
    AND #$20                 ; DBF7  $29 $20        
    BEQ L3DC09               ; DBF9  $F0 $0E        
    LDA $20                  ; DBFB  $A5 $20        
    AND #$20                 ; DBFD  $29 $20        
    BEQ DC03                 ; DBFF  $F0 $02        
    INC $22                  ; DC01  $E6 $22        
DC03:
    LDA $21                  ; DC03  $A5 $21        
    EOR #$20                 ; DC05  $49 $20        
    STA $21                  ; DC07  $85 $21        
L3DC09:              
    TXA                      ; DC09  $8A            
    AND #$40                 ; DC0A  $29 $40        
    BEQ L3DC1C               ; DC0C  $F0 $0E        
    LDA $20                  ; DC0E  $A5 $20        
    AND #$40                 ; DC10  $29 $40        
    BEQ L3DC16               ; DC12  $F0 $02        
    INC $25                  ; DC14  $E6 $25        
L3DC16:              
    LDA $21                  ; DC16  $A5 $21        
    EOR #$40                 ; DC18  $49 $40        
    STA $21                  ; DC1A  $85 $21        
L3DC1C:              
    TXA                      ; DC1C  $8A            
    AND #$80                 ; DC1D  $29 $80        
    BEQ L3DC2F               ; DC1F  $F0 $0E        
    LDA $20                  ; DC21  $A5 $20        
    AND #$80                 ; DC23  $29 $80        
    BEQ L3DC29               ; DC25  $F0 $02        
    INC $24                  ; DC27  $E6 $24        
L3DC29:              
    LDA $21                  ; DC29  $A5 $21        
    EOR #$80                 ; DC2B  $49 $80        
    STA $21                  ; DC2D  $85 $21        
L3DC2F:              
    RTS                      ; DC2F  $60            

;; sub start ;;
    LDA PpuStatus_2002       ; DC30  $AD $02 $20    
    LDA #$3F                 ; DC33  $A9 $3F        
    STA PpuAddr_2006         ; DC35  $8D $06 $20    
    LDA #$00                 ; DC38  $A9 $00        
    STA PpuAddr_2006         ; DC3A  $8D $06 $20    
    LDX #$00                 ; DC3D  $A2 $00        
L3DC3F:              
    LDA $03C0,X              ; DC3F  $BD $C0 $03    
    STA PpuData_2007         ; DC42  $8D $07 $20    
    INX                      ; DC45  $E8            
    CPX #$20                 ; DC46  $E0 $20        
    BCC L3DC3F               ; DC48  $90 $F5        
    LDA PpuStatus_2002       ; DC4A  $AD $02 $20    
    LDA #$3F                 ; DC4D  $A9 $3F        
    STA PpuAddr_2006         ; DC4F  $8D $06 $20    
    LDA #$00                 ; DC52  $A9 $00        
    STA PpuAddr_2006         ; DC54  $8D $06 $20    
    STA PpuAddr_2006         ; DC57  $8D $06 $20    
    STA PpuAddr_2006         ; DC5A  $8D $06 $20    
    RTS                      ; DC5D  $60            

L3DC5E:              
    JSR $C46E                ; DC5E  $20 $6E $C4    
    JSR $FE00                ; DC61  $20 $00 $FE    
    LDA #$02                 ; DC64  $A9 $02        
    STA SpriteDma_4014       ; DC66  $8D $14 $40    
    RTS                      ; DC69  $60            

;; sub start ;;
    LDA #$08                 ; DC6A  $A9 $08        
    STA ApuStatus_4015       ; DC6C  $8D $15 $40    
    LDA #$00                 ; DC6F  $A9 $00        
    STA $8C                  ; DC71  $85 $8C        
L3DC73:              
    JSR $FE00                ; DC73  $20 $00 $FE    
    LDA $2D                  ; DC76  $A5 $2D        
    LSR A                    ; DC78  $4A            
    BCC L3DC81               ; DC79  $90 $06        
    JSR L3CDF5               ; DC7B  $20 $F5 $CD    
    JMP $DC84                ; DC7E  $4C $84 $DC    
L3DC81:              
    JSR L3C380               ; DC81  $20 $80 $C3    
    LDA $8C                  ; DC84  $A5 $8C        
    ASL A                    ; DC86  $0A            
    ASL A                    ; DC87  $0A            
    ASL A                    ; DC88  $0A            
    AND #$E0                 ; DC89  $29 $E0        
    ORA #$0A                 ; DC8B  $09 $0A        
    STA PpuMask_2001         ; DC8D  $8D $01 $20    
    LDA #$0F                 ; DC90  $A9 $0F        
    STA NoiseVolume_400C     ; DC92  $8D $0C $40    
    LDA $8C                  ; DC95  $A5 $8C        
    LSR A                    ; DC97  $4A            
    ORA #$03                 ; DC98  $09 $03        
    STA NoisePeriod_400E     ; DC9A  $8D $0E $40    
    LDA #$00                 ; DC9D  $A9 $00        
    STA NoiseLength_400F     ; DC9F  $8D $0F $40    
    INC $8C                  ; DCA2  $E6 $8C        
    LDA $8C                  ; DCA4  $A5 $8C        
    CMP #$41                 ; DCA6  $C9 $41        
    BCC L3DC73               ; DCA8  $90 $C9        
    LDA #$00                 ; DCAA  $A9 $00        
    STA PpuMask_2001         ; DCAC  $8D $01 $20    
    STA ApuStatus_4015       ; DCAF  $8D $15 $40    
    JMP L3DC5E               ; DCB2  $4C $5E $DC    

;; sub start ;;
    LDA PpuStatus_2002       ; DCB5  $AD $02 $20    
    LDX #$00                 ; DCB8  $A2 $00        
    LDA #$3F                 ; DCBA  $A9 $3F        
    STA PpuAddr_2006         ; DCBC  $8D $06 $20    
    LDA #$00                 ; DCBF  $A9 $00        
    STA PpuAddr_2006         ; DCC1  $8D $06 $20    
L3DCC4:              
    LDA $03F0,X              ; DCC4  $BD $F0 $03    
    STA PpuData_2007         ; DCC7  $8D $07 $20    
    INX                      ; DCCA  $E8            
    CPX #$10                 ; DCCB  $E0 $10        
    BCC L3DCC4               ; DCCD  $90 $F5        
    LDA PpuStatus_2002       ; DCCF  $AD $02 $20    
    LDA #$3F                 ; DCD2  $A9 $3F        
    STA PpuAddr_2006         ; DCD4  $8D $06 $20    
    LDA #$00                 ; DCD7  $A9 $00        
    STA PpuAddr_2006         ; DCD9  $8D $06 $20    
    STA PpuAddr_2006         ; DCDC  $8D $06 $20    
    STA PpuAddr_2006         ; DCDF  $8D $06 $20    
    RTS                      ; DCE2  $60            

L3DCE3:              
    LDA #$05                 ; DCE3  $A9 $05        
    STA $61                  ; DCE5  $85 $61        
    BCC L3DCEC               ; DCE7  $90 $03        
    JMP L3DD27               ; DCE9  $4C $27 $DD    
L3DCEC:              
    LDX #$0F                 ; DCEC  $A2 $0F        
L3DCEE:              
    LDA $03C0,X              ; DCEE  $BD $C0 $03    
    STA $03F0,X              ; DCF1  $9D $F0 $03    
    DEX                      ; DCF4  $CA            
    CPX #$0C                 ; DCF5  $E0 $0C        
    BCC L3DCEE               ; DCF7  $90 $F5        
L3DCF9:              
    LDA $03C0,X              ; DCF9  $BD $C0 $03    
    AND #$1F                 ; DCFC  $29 $1F        
    STA $03F0,X              ; DCFE  $9D $F0 $03    
    DEX                      ; DD01  $CA            
    BPL L3DCF9               ; DD02  $10 $F5        
    LDA #$01                 ; DD04  $A9 $01        
L3DD06:              
    PHA                      ; DD06  $48            
    AND #$03                 ; DD07  $29 $03        
    BNE L3DD12               ; DD09  $D0 $07        
    JSR $DD7B                ; DD0B  $20 $7B $DD    
    CPY #$00                 ; DD0E  $C0 $00        
    BEQ L3DD25               ; DD10  $F0 $13        
L3DD12:              
    JSR $FE00                ; DD12  $20 $00 $FE    
    JSR $DCB5                ; DD15  $20 $B5 $DC    
    JSR L3CDF5               ; DD18  $20 $F5 $CD    
    JSR L3C746               ; DD1B  $20 $46 $C7    
    PLA                      ; DD1E  $68            
    CLC                      ; DD1F  $18            
    ADC #$01                 ; DD20  $69 $01        
    JMP L3DD06               ; DD22  $4C $06 $DD    
L3DD25:              
    PLA                      ; DD25  $68            
    RTS                      ; DD26  $60            

L3DD27:              
    LDA #$02                 ; DD27  $A9 $02        
    STA $61                  ; DD29  $85 $61        
    JSR L3DCEC               ; DD2B  $20 $EC $DC    
    JSR $DBA9                ; DD2E  $20 $A9 $DB    
    LDA $20                  ; DD31  $A5 $20        
    STA $82                  ; DD33  $85 $82        
L3DD35:              
    JSR $FE00                ; DD35  $20 $00 $FE    
    JSR L3C746               ; DD38  $20 $46 $C7    
    JSR $DBA9                ; DD3B  $20 $A9 $DB    
    LDA $20                  ; DD3E  $A5 $20        
    CMP $82                  ; DD40  $C5 $82        
    BEQ L3DD35               ; DD42  $F0 $F1        
    JSR $FE00                ; DD44  $20 $00 $FE    
    JSR $DC30                ; DD47  $20 $30 $DC    
    JSR L3CDF5               ; DD4A  $20 $F5 $CD    
    LDA $57                  ; DD4D  $A5 $57        
    JMP L3FE03               ; DD4F  $4C $03 $FE    
    LDA $DD73,X              ; DD52  $BD $73 $DD    
    STA $0200                ; DD55  $8D $00 $02    
    LDA $DD74,X              ; DD58  $BD $74 $DD    
    STA $0204                ; DD5B  $8D $04 $02    
    LDA $DD75,X              ; DD5E  $BD $75 $DD    
    STA $0208                ; DD61  $8D $08 $02    
    LDA $DD76,X              ; DD64  $BD $76 $DD    
    STA $020C                ; DD67  $8D $0C $02    
    JSR $FE00                ; DD6A  $20 $00 $FE    
    LDA #$02                 ; DD6D  $A9 $02        
    STA SpriteDma_4014       ; DD6F  $8D $14 $40    
    RTS                      ; DD72  $60            

 ;data block---
;; [DD73 : 3DD83]
.byte $F8,$F8,$F8,$F8,$6C,$74,$6C,$74

;; sub start ;;
    LDY #$00                 ; DD7B  $A0 $00        
    LDX #$0D                 ; DD7D  $A2 $0D        
L3DD7F:              
    LDA $03F0,X              ; DD7F  $BD $F0 $03    
    CMP #$0F                 ; DD82  $C9 $0F        
    BEQ L3DDA0               ; DD84  $F0 $1A        
    PHA                      ; DD86  $48            
    AND #$10                 ; DD87  $29 $10        
    STA $80                  ; DD89  $85 $80        
    PLA                      ; DD8B  $68            
    AND #$0F                 ; DD8C  $29 $0F        
    CMP $61                  ; DD8E  $C5 $61        
    BEQ L3DDA0               ; DD90  $F0 $0E        
    BCS L3DD98               ; DD92  $B0 $04        
    ADC #$01                 ; DD94  $69 $01        
    BNE L3DD9A               ; DD96  $D0 $02        
L3DD98:              
    SBC #$01                 ; DD98  $E9 $01        
L3DD9A:              
    ORA $80                  ; DD9A  $05 $80        
    STA $03F0,X              ; DD9C  $9D $F0 $03    
    INY                      ; DD9F  $C8            
L3DDA0:              
    DEX                      ; DDA0  $CA            
    BPL L3DD7F               ; DDA1  $10 $DC        
    RTS                      ; DDA3  $60            

L3DDA4:              
    STA $8C                  ; DDA4  $85 $8C        
    JSR L3DC5E               ; DDA6  $20 $5E $DC    
    JSR $DE0E                ; DDA9  $20 $0E $DE    
    LDA #$01                 ; DDAC  $A9 $01        
L3DDAE:              
    PHA                      ; DDAE  $48            
    AND #$03                 ; DDAF  $29 $03        
    BNE L3DDBA               ; DDB1  $D0 $07        
    JSR $DE31                ; DDB3  $20 $31 $DE    
    CPY #$00                 ; DDB6  $C0 $00        
    BEQ L3DDCD               ; DDB8  $F0 $13        
L3DDBA:              
    JSR $FE00                ; DDBA  $20 $00 $FE    
    JSR $DCB5                ; DDBD  $20 $B5 $DC    
    JSR $DDDD                ; DDC0  $20 $DD $DD    
    JSR L3C746               ; DDC3  $20 $46 $C7    
    PLA                      ; DDC6  $68            
    CLC                      ; DDC7  $18            
    ADC #$01                 ; DDC8  $69 $01        
    JMP L3DDAE               ; DDCA  $4C $AE $DD    
L3DDCD:              
    PLA                      ; DDCD  $68            
    LDA $8C                  ; DDCE  $A5 $8C        
    LSR A                    ; DDD0  $4A            
    BCS L3DDD8               ; DDD1  $B0 $05        
    LDA #$00                 ; DDD3  $A9 $00        
    STA PpuMask_2001         ; DDD5  $8D $01 $20    
L3DDD8:              
    LDA #$0E                 ; DDD8  $A9 $0E        
    JMP L3FE03               ; DDDA  $4C $03 $FE    

;; sub start ;;
    LDA $8C                  ; DDDD  $A5 $8C        
    AND #$04                 ; DDDF  $29 $04        
    BEQ L3DDF6               ; DDE1  $F0 $13        
    LDA $FF                  ; DDE3  $A5 $FF        
    STA PpuControl_2000      ; DDE5  $8D $00 $20    
    LDA #$0A                 ; DDE8  $A9 $0A        
    STA PpuMask_2001         ; DDEA  $8D $01 $20    
    LDA #$00                 ; DDED  $A9 $00        
    STA PpuScroll_2005       ; DDEF  $8D $05 $20    
    STA PpuScroll_2005       ; DDF2  $8D $05 $20    
    RTS                      ; DDF5  $60            

L3DDF6:              
    LDA $8C                  ; DDF6  $A5 $8C        
    AND #$02                 ; DDF8  $29 $02        
    BNE L3DE05               ; DDFA  $D0 $09        
    JSR L3C380               ; DDFC  $20 $80 $C3    
    LDA #$0A                 ; DDFF  $A9 $0A        
    STA PpuMask_2001         ; DE01  $8D $01 $20    
    RTS                      ; DE04  $60            

L3DE05:              
    JSR L3CDF5               ; DE05  $20 $F5 $CD    
    LDA #$0A                 ; DE08  $A9 $0A        
    STA PpuMask_2001         ; DE0A  $8D $01 $20    
    RTS                      ; DE0D  $60            

;; sub start ;;
    LDX #$00                 ; DE0E  $A2 $00        
    LDA $8C                  ; DE10  $A5 $8C        
    LSR A                    ; DE12  $4A            
    BCC L3DE25               ; DE13  $90 $10        
    JSR L3DE25               ; DE15  $20 $25 $DE    
    DEX                      ; DE18  $CA            
L3DE19:              
    LDA $03F0,X              ; DE19  $BD $F0 $03    
    AND #$0F                 ; DE1C  $29 $0F        
    STA $03F0,X              ; DE1E  $9D $F0 $03    
    DEX                      ; DE21  $CA            
    BPL L3DE19               ; DE22  $10 $F5        
    RTS                      ; DE24  $60            

L3DE25:              
    LDA $03C0,X              ; DE25  $BD $C0 $03    
    STA $03F0,X              ; DE28  $9D $F0 $03    
    INX                      ; DE2B  $E8            
    CPX #$10                 ; DE2C  $E0 $10        
    BCC L3DE25               ; DE2E  $90 $F5        
    RTS                      ; DE30  $60            

;; sub start ;;
    LDY #$00                 ; DE31  $A0 $00        
    LDX #$00                 ; DE33  $A2 $00        
    LDA $8C                  ; DE35  $A5 $8C        
    LSR A                    ; DE37  $4A            
    BCS L3DE52               ; DE38  $B0 $18        
L3DE3A:              
    LDA $03F0,X              ; DE3A  $BD $F0 $03    
    CMP #$0F                 ; DE3D  $C9 $0F        
    BEQ L3DE4C               ; DE3F  $F0 $0B        
    SEC                      ; DE41  $38            
    SBC #$10                 ; DE42  $E9 $10        
    BCS L3DE48               ; DE44  $B0 $02        
    LDA #$0F                 ; DE46  $A9 $0F        
L3DE48:              
    STA $03F0,X              ; DE48  $9D $F0 $03    
    INY                      ; DE4B  $C8            
L3DE4C:              
    INX                      ; DE4C  $E8            
    CPX #$10                 ; DE4D  $E0 $10        
    BNE L3DE3A               ; DE4F  $D0 $E9        
    RTS                      ; DE51  $60            

L3DE52:              
    LDA $03F0,X              ; DE52  $BD $F0 $03    
    CMP $03C0,X              ; DE55  $DD $C0 $03    
    BEQ L3DE61               ; DE58  $F0 $07        
    CLC                      ; DE5A  $18            
    ADC #$10                 ; DE5B  $69 $10        
    STA $03F0,X              ; DE5D  $9D $F0 $03    
    INY                      ; DE60  $C8            
L3DE61:              
    INX                      ; DE61  $E8            
    CPX #$10                 ; DE62  $E0 $10        
    BCC L3DE52               ; DE64  $90 $EC        
    RTS                      ; DE66  $60            

L3DE67:              
    LDA #$01                 ; DE67  $A9 $01        
    STA $E5                  ; DE69  $85 $E5        
    LDA #$30                 ; DE6B  $A9 $30        
    STA Sq0Duty_4000         ; DE6D  $8D $00 $40    
    STA TrgLinear_4008       ; DE70  $8D $08 $40    
    STA NoiseVolume_400C     ; DE73  $8D $0C $40    
    LDY #$0F                 ; DE76  $A0 $0F        
L3DE78:              
    JSR $DE89                ; DE78  $20 $89 $DE    
    DEY                      ; DE7B  $88            
    BPL L3DE78               ; DE7C  $10 $FA        
    LDA #$30                 ; DE7E  $A9 $30        
    STA Sq1Duty_4004         ; DE80  $8D $04 $40    
    LDA #$00                 ; DE83  $A9 $00        
    STA Sq1Timer_4006        ; DE85  $8D $06 $40    
    RTS                      ; DE88  $60            

;; sub start ;;
    JSR $FE00                ; DE89  $20 $00 $FE    
    LDA #$7C                 ; DE8C  $A9 $7C        
    STA Sq1Duty_4004         ; DE8E  $8D $04 $40    
    LDA #$89                 ; DE91  $A9 $89        
    STA Sq1Sweep_4005        ; DE93  $8D $05 $40    
    LDA #$80                 ; DE96  $A9 $80        
    STA Sq1Timer_4006        ; DE98  $8D $06 $40    
    LDA #$00                 ; DE9B  $A9 $00        
    STA Sq1Length_4007       ; DE9D  $8D $07 $40    
    RTS                      ; DEA0  $60            

L3DEA1:              
    LDA #$E3                 ; DEA1  $A9 $E3        
    STA $81                  ; DEA3  $85 $81        
    LDA #$B7                 ; DEA5  $A9 $B7        
    STA $80                  ; DEA7  $85 $80        
    LDA #$FC                 ; DEA9  $A9 $FC        
    STA $82                  ; DEAB  $85 $82        
    JMP L3E102               ; DEAD  $4C $02 $E1    
L3DEB0:              
    JSR $E238                ; DEB0  $20 $38 $E2    
    BCS L3DEB8               ; DEB3  $B0 $03        
    JMP $DEE0                ; DEB5  $4C $E0 $DE    
L3DEB8:              
    RTS                      ; DEB8  $60            

    LDA $6015                ; DEB9  $AD $15 $60    
    STA $40                  ; DEBC  $85 $40        
    LDA $6016                ; DEBE  $AD $16 $60    
    STA $41                  ; DEC1  $85 $41        
    LDA $6017                ; DEC3  $AD $17 $60    
    STA $61                  ; DEC6  $85 $61        
    LDA $F0                  ; DEC8  $A5 $F0        
    AND #$04                 ; DECA  $29 $04        
    BNE DED4                 ; DECC  $D0 $06        
    JSR $DEE0                ; DECE  $20 $E0 $DE    
    JMP $DED7                ; DED1  $4C $D7 $DE    
DED4:
    JSR $DEEB                ; DED4  $20 $EB $DE    
    LDA $F0                  ; DED7  $A5 $F0        
    LSR A                    ; DED9  $4A            
    BCC DEDF                 ; DEDA  $90 $03        
    JMP $DEF6                ; DEDC  $4C $F6 $DE    
DEDF:
    RTS                      ; DEDF  $60            

    LDA #$E2                 ; DEE0  $A9 $E2        
    STA $55                  ; DEE2  $85 $55        
    LDA #$79                 ; DEE4  $A9 $79        
    STA $54                  ; DEE6  $85 $54        
    JMP $DF1E                ; DEE8  $4C $1E $DF    
    LDA #$E2                 ; DEEB  $A9 $E2        
    STA $55                  ; DEED  $85 $55        
    LDA #$BA                 ; DEEF  $A9 $BA        
    STA $54                  ; DEF1  $85 $54        
    JMP $DF1E                ; DEF3  $4C $1E $DF    
    LDA #$E2                 ; DEF6  $A9 $E2        
    STA $55                  ; DEF8  $85 $55        
    LDA #$FB                 ; DEFA  $A9 $FB        
    STA $54                  ; DEFC  $85 $54        
    JMP $DF1E                ; DEFE  $4C $1E $DF    
DF01:
    STX $26                  ; DF01  $86 $26        
    LDA $40                  ; DF03  $A5 $40        
    SEC                      ; DF05  $38            
    SBC #$18                 ; DF06  $E9 $18        
    STA $40                  ; DF08  $85 $40        
    LDA $61                  ; DF0A  $A5 $61        
    SBC #$00                 ; DF0C  $E9 $00        
    STA $61                  ; DF0E  $85 $61        
    LDA $41                  ; DF10  $A5 $41        
    CLC                      ; DF12  $18            
    ADC #$20                 ; DF13  $69 $20        
    CMP #$70                 ; DF15  $C9 $70        
    BCC DF1B                 ; DF17  $90 $02        
    LDA #$6F                 ; DF19  $A9 $6F        
DF1B:
    STA $41                  ; DF1B  $85 $41        
    RTS                      ; DF1D  $60            

    LDX $26                  ; DF1E  $A6 $26        
DF20:
    LDY #$00                 ; DF20  $A0 $00        
    LDA ($54),Y              ; DF22  $B1 $54        
    BEQ DF3F                 ; DF24  $F0 $19        
    CMP #$FF                 ; DF26  $C9 $FF        
    BEQ DF01                 ; DF28  $F0 $D7        
    CLC                      ; DF2A  $18            
    ADC $41                  ; DF2B  $65 $41        
    STA $41                  ; DF2D  $85 $41        
    LDA $40                  ; DF2F  $A5 $40        
    SEC                      ; DF31  $38            
    SBC #$18                 ; DF32  $E9 $18        
    STA $40                  ; DF34  $85 $40        
    LDA $61                  ; DF36  $A5 $61        
    SBC #$00                 ; DF38  $E9 $00        
    STA $61                  ; DF3A  $85 $61        
    JMP $DF4E                ; DF3C  $4C $4E $DF    
DF3F:
    LDY #$03                 ; DF3F  $A0 $03        
    LDA ($54),Y              ; DF41  $B1 $54        
    CLC                      ; DF43  $18            
    ADC $40                  ; DF44  $65 $40        
    STA $40                  ; DF46  $85 $40        
    LDA $61                  ; DF48  $A5 $61        
    ADC #$00                 ; DF4A  $69 $00        
    STA $61                  ; DF4C  $85 $61        
    LDA $61                  ; DF4E  $A5 $61        
    BNE DF74                 ; DF50  $D0 $22        
    LDA $41                  ; DF52  $A5 $41        
    CMP #$F0                 ; DF54  $C9 $F0        
    BCS DF74                 ; DF56  $B0 $1C        
    LDA $41                  ; DF58  $A5 $41        
    STA $0200,X              ; DF5A  $9D $00 $02    
    LDA $40                  ; DF5D  $A5 $40        
    STA $0203,X              ; DF5F  $9D $03 $02    
    LDY #$01                 ; DF62  $A0 $01        
    LDA ($54),Y              ; DF64  $B1 $54        
    STA $0201,X              ; DF66  $9D $01 $02    
    INY                      ; DF69  $C8            
    LDA ($54),Y              ; DF6A  $B1 $54        
    STA $0202,X              ; DF6C  $9D $02 $02    
    TXA                      ; DF6F  $8A            
    CLC                      ; DF70  $18            
    ADC #$04                 ; DF71  $69 $04        
    TAX                      ; DF73  $AA            
DF74:
    LDA $54                  ; DF74  $A5 $54        
    CLC                      ; DF76  $18            
    ADC #$04                 ; DF77  $69 $04        
    STA $54                  ; DF79  $85 $54        
    BCC DF20                 ; DF7B  $90 $A3        
    INC $55                  ; DF7D  $E6 $55        
    JMP $DF20                ; DF7F  $4C $20 $DF    
    LDA #$6F                 ; DF82  $A9 $6F        
    STA $8A                  ; DF84  $85 $8A        
DF86:
    JSR $DFBB                ; DF86  $20 $BB $DF    
    LDA $F0                  ; DF89  $A5 $F0        
    AND #$01                 ; DF8B  $29 $01        
    BNE DF86                 ; DF8D  $D0 $F7        
    DEC $8A                  ; DF8F  $C6 $8A        
    LDA $8A                  ; DF91  $A5 $8A        
    CMP #$4F                 ; DF93  $C9 $4F        
    BCS DF86                 ; DF95  $B0 $EF        
    LDA #$02                 ; DF97  $A9 $02        
    STA $33                  ; DF99  $85 $33        
    RTS                      ; DF9B  $60            

    LDA #$4F                 ; DF9C  $A9 $4F        
    STA $8A                  ; DF9E  $85 $8A        
DFA0:
    JSR $DFBB                ; DFA0  $20 $BB $DF    
    LDA $F0                  ; DFA3  $A5 $F0        
    AND #$01                 ; DFA5  $29 $01        
    BNE DFA0                 ; DFA7  $D0 $F7        
    INC $8A                  ; DFA9  $E6 $8A        
    LDA $8A                  ; DFAB  $A5 $8A        
    CMP #$70                 ; DFAD  $C9 $70        
    BCC DFA0                 ; DFAF  $90 $EF        
    LDA #$01                 ; DFB1  $A9 $01        
    STA $33                  ; DFB3  $85 $33        
    LDA #$00                 ; DFB5  $A9 $00        
    STA NoiseVolume_400C     ; DFB7  $8D $0C $40    
    RTS                      ; DFBA  $60            

    JSR $FE00                ; DFBB  $20 $00 $FE    
    LDA #$02                 ; DFBE  $A9 $02        
    STA SpriteDma_4014       ; DFC0  $8D $14 $40    
    LDA $F0                  ; DFC3  $A5 $F0        
    CLC                      ; DFC5  $18            
    ADC #$01                 ; DFC6  $69 $01        
    STA $F0                  ; DFC8  $85 $F0        
    JSR L3C380               ; DFCA  $20 $80 $C3    
    JSR $C46E                ; DFCD  $20 $6E $C4    
    JSR L3C746               ; DFD0  $20 $46 $C7    
    LDA #$70                 ; DFD3  $A9 $70        
    STA $40                  ; DFD5  $85 $40        
    LDA $8A                  ; DFD7  $A5 $8A        
    STA $41                  ; DFD9  $85 $41        
    LDA $F0                  ; DFDB  $A5 $F0        
    AND #$08                 ; DFDD  $29 $08        
    ORA #$10                 ; DFDF  $09 $10        
    STA $80                  ; DFE1  $85 $80        
    LDA #$28                 ; DFE3  $A9 $28        
    JSR $E0CF                ; DFE5  $20 $CF $E0    
    JSR $E0AA                ; DFE8  $20 $AA $E0    
    JSR $E17B                ; DFEB  $20 $7B $E1    
    JSR $E194                ; DFEE  $20 $94 $E1    
    JSR $E1A8                ; DFF1  $20 $A8 $E1    
    JSR L3E1FB               ; DFF4  $20 $FB $E1    
    LDA #$38                 ; DFF7  $A9 $38        
    STA NoiseVolume_400C     ; DFF9  $8D $0C $40    
    LDA $F0                  ; DFFC  $A5 $F0        
    AND #$0F                 ; DFFE  $29 $0F        
    STA NoisePeriod_400E     ; E000  $8D $0E $40    
L3E003:    
    LDA #$00                 ; E003  $A9 $00        
    STA NoiseLength_400F     ; E005  $8D $0F $40    
    RTS                      ; E008  $60            

;; sub start ;;
    LDY $42                  ; E009  $A4 $42        
    CPY #$08                 ; E00B  $C0 $08        
    BEQ L3E05B               ; E00D  $F0 $4C        
    CPY #$04                 ; E00F  $C0 $04        
    BEQ L3E061               ; E011  $F0 $4E        
    CPY #$02                 ; E013  $C0 $02        
    BEQ L3E06D               ; E015  $F0 $56        

;; sub start ;;
    JSR $E073                ; E017  $20 $73 $E0    
    LDA $43                  ; E01A  $A5 $43        
    AND #$12                 ; E01C  $29 $12        
    BEQ L3E030               ; E01E  $F0 $10        
    LDA $0206                ; E020  $AD $06 $02    
    EOR #$20                 ; E023  $49 $20        
    STA $0206                ; E025  $8D $06 $02    
    LDA $020E                ; E028  $AD $0E $02    
    EOR #$20                 ; E02B  $49 $20        
    STA $020E,X              ; E02D  $9D $0E $02    
L3E030:              
    LDA $43                  ; E030  $A5 $43        
    AND #$04                 ; E032  $29 $04        
    BEQ L3E046               ; E034  $F0 $10        
    LDA $0202                ; E036  $AD $02 $02    
    EOR #$20                 ; E039  $49 $20        
    STA $0202                ; E03B  $8D $02 $02    
    LDA $020A                ; E03E  $AD $0A $02    
    EOR #$20                 ; E041  $49 $20        
    STA $020A                ; E043  $8D $0A $02    
L3E046:              
    LDA $2D                  ; E046  $A5 $2D        
    LSR A                    ; E048  $4A            
    BCC L3E04C               ; E049  $90 $01        
    RTS                      ; E04B  $60            

L3E04C:              
    JSR $E1E0                ; E04C  $20 $E0 $E1    
    JSR $E17B                ; E04F  $20 $7B $E1    
    JSR $E194                ; E052  $20 $94 $E1    
    JSR $E1A8                ; E055  $20 $A8 $E1    
    JMP L3E1FB               ; E058  $4C $FB $E1    
L3E05B:              
    JSR $E073                ; E05B  $20 $73 $E0    
    JMP $E04F                ; E05E  $4C $4F $E0    
L3E061:              
    JSR $E073                ; E061  $20 $73 $E0    
    JSR $E1E0                ; E064  $20 $E0 $E1    
    JSR $E055                ; E067  $20 $55 $E0    
    JMP $E174                ; E06A  $4C $74 $E1    
L3E06D:              
    JSR $E073                ; E06D  $20 $73 $E0    
    JMP L3E04C               ; E070  $4C $4C $E0    

;; sub start ;;
    LDA #$70                 ; E073  $A9 $70        
    STA $40                  ; E075  $85 $40        
    LDA $E16B,Y              ; E077  $B9 $6B $E1    
    CPY #$08                 ; E07A  $C0 $08        
    BNE L3E086               ; E07C  $D0 $08        
    STA $41                  ; E07E  $85 $41        
    LDA $F0                  ; E080  $A5 $F0        
    ASL A                    ; E082  $0A            
    JMP L3E08E               ; E083  $4C $8E $E0    
L3E086:              
    STA $41                  ; E086  $85 $41        
    LDA $35                  ; E088  $A5 $35        
    BNE L3E08E               ; E08A  $D0 $02        
    LDA $36                  ; E08C  $A5 $36        
L3E08E:              
    AND #$08                 ; E08E  $29 $08        
    LDX $33                  ; E090  $A6 $33        
    ORA $E31F,X              ; E092  $1D $1F $E3    
    STA $80                  ; E095  $85 $80        
    CPY #$01                 ; E097  $C0 $01        
    BEQ L3E0E1               ; E099  $F0 $46        
    CPY #$02                 ; E09B  $C0 $02        
    BEQ E0CC                 ; E09D  $F0 $2D        
    CPY #$04                 ; E09F  $C0 $04        
    BEQ E0C7                 ; E0A1  $F0 $24        
    LDA #$28                 ; E0A3  $A9 $28        
    STA $82                  ; E0A5  $85 $82        
    JSR $E0D1                ; E0A7  $20 $D1 $E0    
    LDA $F0                  ; E0AA  $A5 $F0        
    LSR A                    ; E0AC  $4A            
    BCC E0C6                 ; E0AD  $90 $17        
    LDA #$6F                 ; E0AF  $A9 $6F        
    STA $41                  ; E0B1  $85 $41        
    LDA #$70                 ; E0B3  $A9 $70        
    STA $40                  ; E0B5  $85 $40        
    LDA #$B4                 ; E0B7  $A9 $B4        
    STA $82                  ; E0B9  $85 $82        
    LDA #$AF                 ; E0BB  $A9 $AF        
    STA $80                  ; E0BD  $85 $80        
    LDA #$E3                 ; E0BF  $A9 $E3        
    STA $81                  ; E0C1  $85 $81        
    JMP L3E102               ; E0C3  $4C $02 $E1    
E0C6:
    RTS                      ; E0C6  $60            

E0C7:
    LDA $6003                ; E0C7  $AD $03 $60    
    BNE E0CF                 ; E0CA  $D0 $03        
E0CC:
    LDA $6019                ; E0CC  $AD $19 $60    
E0CF:
    STA $82                  ; E0CF  $85 $82        
    LDA $80                  ; E0D1  $A5 $80        
    CLC                      ; E0D3  $18            
    ADC #$6F                 ; E0D4  $69 $6F        
    STA $80                  ; E0D6  $85 $80        
    LDA #$E3                 ; E0D8  $A9 $E3        
    ADC #$00                 ; E0DA  $69 $00        
    STA $81                  ; E0DC  $85 $81        
    JMP L3E102               ; E0DE  $4C $02 $E1    
L3E0E1:              
    LDA $2D                  ; E0E1  $A5 $2D        
    AND #$01                 ; E0E3  $29 $01        
    LSR A                    ; E0E5  $4A            
    BCS L3E0F3               ; E0E6  $B0 $0B        
    LDA $6008                ; E0E8  $AD $08 $60    
    AND #$02                 ; E0EB  $29 $02        
    BEQ L3E0F3               ; E0ED  $F0 $04        
    LDA #$70                 ; E0EF  $A9 $70        
    BNE E0CF                 ; E0F1  $D0 $DC        
L3E0F3:              
    STA $82                  ; E0F3  $85 $82        
    LDA #$2F                 ; E0F5  $A9 $2F        
    CLC                      ; E0F7  $18            
    ADC $80                  ; E0F8  $65 $80        
    STA $80                  ; E0FA  $85 $80        
    LDA #$E3                 ; E0FC  $A9 $E3        
    ADC #$00                 ; E0FE  $69 $00        
    STA $81                  ; E100  $85 $81        
L3E102:              
    LDY #$00                 ; E102  $A0 $00        
    LDX $26                  ; E104  $A6 $26        
    LDA $41                  ; E106  $A5 $41        
    STA $0200,X              ; E108  $9D $00 $02    
    STA $0208,X              ; E10B  $9D $08 $02    
    CLC                      ; E10E  $18            
    ADC #$08                 ; E10F  $69 $08        
    STA $0204,X              ; E111  $9D $04 $02    
    STA $020C,X              ; E114  $9D $0C $02    
    LDA $40                  ; E117  $A5 $40        
    STA $0203,X              ; E119  $9D $03 $02    
    STA $0207,X              ; E11C  $9D $07 $02    
    CLC                      ; E11F  $18            
    ADC #$08                 ; E120  $69 $08        
    STA $020B,X              ; E122  $9D $0B $02    
    STA $020F,X              ; E125  $9D $0F $02    
    LDA ($80),Y              ; E128  $B1 $80        
    INY                      ; E12A  $C8            
    CLC                      ; E12B  $18            
    ADC $82                  ; E12C  $65 $82        
    STA $0201,X              ; E12E  $9D $01 $02    
    LDA ($80),Y              ; E131  $B1 $80        
    INY                      ; E133  $C8            
    STA $0202,X              ; E134  $9D $02 $02    
    LDA ($80),Y              ; E137  $B1 $80        
    INY                      ; E139  $C8            
    CLC                      ; E13A  $18            
    ADC $82                  ; E13B  $65 $82        
    STA $0205,X              ; E13D  $9D $05 $02    
    LDA ($80),Y              ; E140  $B1 $80        
    INY                      ; E142  $C8            
    STA $0206,X              ; E143  $9D $06 $02    
    LDA ($80),Y              ; E146  $B1 $80        
    INY                      ; E148  $C8            
    CLC                      ; E149  $18            
    ADC $82                  ; E14A  $65 $82        
    STA $0209,X              ; E14C  $9D $09 $02    
    LDA ($80),Y              ; E14F  $B1 $80        
    INY                      ; E151  $C8            
    STA $020A,X              ; E152  $9D $0A $02    
    LDA ($80),Y              ; E155  $B1 $80        
    INY                      ; E157  $C8            
    CLC                      ; E158  $18            
    ADC $82                  ; E159  $65 $82        
    STA $020D,X              ; E15B  $9D $0D $02    
    LDA ($80),Y              ; E15E  $B1 $80        
    STA $020E,X              ; E160  $9D $0E $02    
    LDA $26                  ; E163  $A5 $26        
    CLC                      ; E165  $18            
    ADC #$10                 ; E166  $69 $10        
    STA $26                  ; E168  $85 $26        
    RTS                      ; E16A  $60            

   ;data block---  
.byte $6C,$6C,$6F,$6F,$6F    
;; [E170 : 3E180]
.byte $6F,$6F,$6F,$4F,$AD,$03

    RTS                      ; E176  $60            

    CMP #$10                 ; E177  $C9 $10        
    BEQ E194                 ; E179  $F0 $19        

;; sub start ;;
    LDA $6000                ; E17B  $AD $00 $60    
    BEQ L3E1C7               ; E17E  $F0 $47        
    LDX $6001                ; E180  $AE $01 $60    
    LDY $6002                ; E183  $AC $02 $60    
    JSR $E208                ; E186  $20 $08 $E2    
    BCS L3E1C7               ; E189  $B0 $3C        
    LDA #$00                 ; E18B  $A9 $00        
    STA $80                  ; E18D  $85 $80        
    LDA #$10                 ; E18F  $A9 $10        
    JMP $E0CF                ; E191  $4C $CF $E0    

;; sub start ;;
E194:
    LDX $600D                ; E194  $AE $0D $60    
    LDY $600E                ; E197  $AC $0E $60    
    JSR $E208                ; E19A  $20 $08 $E2    
    BCS L3E1C7               ; E19D  $B0 $28        
    LDA #$00                 ; E19F  $A9 $00        
    STA $80                  ; E1A1  $85 $80        
    LDA #$C0                 ; E1A3  $A9 $C0        
    JMP $E0CF                ; E1A5  $4C $CF $E0    

;; sub start ;;
    LDA $6008                ; E1A8  $AD $08 $60    
    BMI L3E1D0               ; E1AB  $30 $23        
    BEQ L3E1C7               ; E1AD  $F0 $18        
    CMP #$02                 ; E1AF  $C9 $02        
    BEQ L3E1C7               ; E1B1  $F0 $14        
    LDX $6009                ; E1B3  $AE $09 $60    
    LDY $600A                ; E1B6  $AC $0A $60    
    JSR $E208                ; E1B9  $20 $08 $E2    
    BCS L3E1C7               ; E1BC  $B0 $09        
    LDA #$00                 ; E1BE  $A9 $00        
    STA $80                  ; E1C0  $85 $80        
    LDA #$70                 ; E1C2  $A9 $70        
    JMP $E0CF                ; E1C4  $4C $CF $E0    
L3E1C7:              
    RTS                      ; E1C7  $60            

 LDA #$03                 ; E1C8  $A9 $03        
    JSR L3FE03               ; E1CA  $20 $03 $FE    
    JMP $A003                ; E1CD  $4C $03 $A0    
L3E1D0:              
    LDX #$01                 ; E1D0  $A2 $01        
    JSR $E1C8                ; E1D2  $20 $C8 $E1    
    BCS E1DA                 ; E1D5  $B0 $03        
    JMP $E0D1                ; E1D7  $4C $D1 $E0    
E1DA:
    LDA #$00                 ; E1DA  $A9 $00        
    STA $6008                ; E1DC  $8D $08 $60    
    RTS                      ; E1DF  $60            

;; sub start ;;
    LDA $6004                ; E1E0  $AD $04 $60    
    BMI L3E203               ; E1E3  $30 $1E        
    BEQ L3E1C7               ; E1E5  $F0 $E0        
    LDX $6005                ; E1E7  $AE $05 $60    
    LDY $6006                ; E1EA  $AC $06 $60    
    JSR $E208                ; E1ED  $20 $08 $E2    
    BCS L3E1C7               ; E1F0  $B0 $D5        
    LDA #$10                 ; E1F2  $A9 $10        
    STA $80                  ; E1F4  $85 $80        
    LDA #$28                 ; E1F6  $A9 $28        
    JMP $E0CF                ; E1F8  $4C $CF $E0    
L3E1FB:              
    LDA $6014                ; E1FB  $AD $14 $60    
    BEQ L3E1C7               ; E1FE  $F0 $C7        
    JMP L3DEB0               ; E200  $4C $B0 $DE    
L3E203:              
    LDX #$04                 ; E203  $A2 $04        
    JMP $E1C8                ; E205  $4C $C8 $E1    

;; sub start ;;
    TYA                      ; E208  $98            
    SEC                      ; E209  $38            
    SBC $28                  ; E20A  $E5 $28        
    CMP #$10                 ; E20C  $C9 $10        
    BCS L3E236               ; E20E  $B0 $26        
    ASL A                    ; E210  $0A            
    ASL A                    ; E211  $0A            
    ASL A                    ; E212  $0A            
    ASL A                    ; E213  $0A            
    CLC                      ; E214  $18            
    SBC $36                  ; E215  $E5 $36        
    CMP #$EC                 ; E217  $C9 $EC        
    BCS L3E236               ; E219  $B0 $1B        
    STA $41                  ; E21B  $85 $41        
    TXA                      ; E21D  $8A            
    SEC                      ; E21E  $38            
    SBC $27                  ; E21F  $E5 $27        
    CMP #$10                 ; E221  $C9 $10        
    BCS L3E236               ; E223  $B0 $11        
    ASL A                    ; E225  $0A            
    ASL A                    ; E226  $0A            
    ASL A                    ; E227  $0A            
    ASL A                    ; E228  $0A            
    SEC                      ; E229  $38            
    SBC $35                  ; E22A  $E5 $35        
    BCC L3E236               ; E22C  $90 $08        
    CMP #$F8                 ; E22E  $C9 $F8        
    BCS L3E236               ; E230  $B0 $04        
    STA $40                  ; E232  $85 $40        
    CLC                      ; E234  $18            
    RTS                      ; E235  $60            

L3E236:              
    SEC                      ; E236  $38            
    RTS                      ; E237  $60            

;; sub start ;;
    LDA $6016                ; E238  $AD $16 $60    
    SEC                      ; E23B  $38            
    SBC $28                  ; E23C  $E5 $28        
    CMP #$10                 ; E23E  $C9 $10        
    BCS L3E236               ; E240  $B0 $F4        
    ASL A                    ; E242  $0A            
    ASL A                    ; E243  $0A            
    ASL A                    ; E244  $0A            
    ASL A                    ; E245  $0A            
    SEC                      ; E246  $38            
    SBC $36                  ; E247  $E5 $36        
    BCC L3E236               ; E249  $90 $EB        
    SBC #$10                 ; E24B  $E9 $10        
    STA $41                  ; E24D  $85 $41        
    LDA $6015                ; E24F  $AD $15 $60    
    SEC                      ; E252  $38            
    SBC $27                  ; E253  $E5 $27        
    CMP #$11                 ; E255  $C9 $11        
    BCS L3E236               ; E257  $B0 $DD        
    LDX #$00                 ; E259  $A2 $00        
    CMP #$10                 ; E25B  $C9 $10        
    BCC E261                 ; E25D  $90 $02        
    LDX #$01                 ; E25F  $A2 $01        
E261:
    ASL A                    ; E261  $0A            
    ASL A                    ; E262  $0A            
    ASL A                    ; E263  $0A            
    ASL A                    ; E264  $0A            
    SEC                      ; E265  $38            
    SBC $35                  ; E266  $E5 $35        
    BCS E26E                 ; E268  $B0 $04        
    DEX                      ; E26A  $CA            
    BMI L3E236               ; E26B  $30 $C9        
    SEC                      ; E26D  $38            
E26E:
    SBC #$10                 ; E26E  $E9 $10        
    STA $40                  ; E270  $85 $40        
    BCS E275                 ; E272  $B0 $01        
    DEX                      ; E274  $CA            
E275:
    STX $61                  ; E275  $86 $61        
    CLC                      ; E277  $18            
    RTS                      ; E278  $60            

;data block
.byte $00,$88,$02,$00,$00,$89,$02 
;;; [E280 : 3E290]
.byte $08,$00,$8A,$02,$08,$00,$8B,$02,$08,$08,$8C,$02,$00,$00,$9D,$02 
.byte $08,$00,$8E,$02,$08,$00,$9F,$02,$08,$08,$90,$02,$00,$00,$91,$02 
.byte $08,$00,$92,$02,$08,$00,$93,$02,$08,$08,$94,$02,$00,$00,$95,$02 
.byte $08,$00,$96,$02,$08,$00,$97,$02,$08,$FF,$00,$98,$02,$00,$00,$99 
.byte $02,$08,$00,$9A,$02,$08,$00,$9B,$02,$08,$08,$9C,$02,$00,$00,$9D 
.byte $02,$08,$00,$9E,$02,$08,$00,$9F,$02,$08,$08,$A0,$02,$00,$00,$91 
.byte $02,$08,$00,$92,$02,$08,$00,$93,$02,$08,$08,$A1,$02,$00,$00,$95 
.byte $02,$08,$00,$96,$02,$08,$00,$97,$02,$08,$FF,$00,$B8,$02,$00,$00 
.byte $B9,$02,$08,$00,$B9,$02,$08,$00,$B8,$42,$08,$FF

;; sub start ;;
    LDY #$01                 ; E30C  $A0 $01        
    JSR $E017                ; E30E  $20 $17 $E0    
    LDA #$40                 ; E311  $A9 $40        
    STA $26                  ; E313  $85 $26        
    LDX #$06                 ; E315  $A2 $06        
    LDA #$03                 ; E317  $A9 $03        
    JSR L3FE03               ; E319  $20 $03 $FE    
    JMP $A003                ; E31C  $4C $03 $A0    

;data block---
.byte $00 
;; [E320 : 3E330]
.byte $00,$10,$00,$30,$00,$10,$00,$20,$00,$10,$00,$30,$00,$10,$00,$09 
.byte $40,$0B,$41,$08,$40,$0A,$41,$0D,$40,$0F,$41,$0C,$40,$0E,$41,$08 
.byte $00,$0A,$01,$09,$00,$0B,$01,$0C,$00,$0E,$01,$0D,$00,$0F,$01,$04 
.byte $00,$06,$01,$05,$00,$07,$01,$04,$00,$07,$41,$05,$00,$06,$41,$00 
.byte $00,$02,$01,$01,$00,$03,$01,$00,$00,$03,$41,$01,$00,$02,$41,$11 
.byte $42,$13,$42,$10,$42,$12,$42,$15,$42,$17,$42,$14,$42,$16,$42,$10 
.byte $02,$12,$02,$11,$02,$13,$02,$14,$02,$16,$02,$15,$02,$17,$02,$00 
.byte $02,$02,$02,$01,$02,$03,$02,$04,$02,$06,$02,$05,$02,$07,$02,$08 
.byte $02,$0A,$02,$09,$02,$0B,$02,$0C,$02,$0E,$02,$0D,$02,$0F,$02,$00 
.byte $02,$02,$02,$01,$02,$03,$02,$00,$03,$02,$03,$01,$03,$03,$03

E3BF:
    RTS                      ; E3BF  $60            

    TAX                      ; E3C0  $AA            
    LSR A                    ; E3C1  $4A            
    STA $80                  ; E3C2  $85 $80        
    LDA $6100,X              ; E3C4  $BD $00 $61    
    TAY                      ; E3C7  $A8            
    LDA $E456,Y              ; E3C8  $B9 $56 $E4    
    STA $81                  ; E3CB  $85 $81        
    LDA $6101,X              ; E3CD  $BD $01 $61    
    BEQ E3E0                 ; E3D0  $F0 $0E        
    BMI E3BF                 ; E3D2  $30 $EB        
    CMP #$03                 ; E3D4  $C9 $03        
    BEQ E3DE                 ; E3D6  $F0 $06        
    LDA #$03                 ; E3D8  $A9 $03        
    STA $81                  ; E3DA  $85 $81        
    BNE E3DE                 ; E3DC  $D0 $00        
E3DE:
    LDA #$14                 ; E3DE  $A9 $14        
E3E0:
    CLC                      ; E3E0  $18            
    ADC $80                  ; E3E1  $65 $80        
    STA $80                  ; E3E3  $85 $80        
    LDX $26                  ; E3E5  $A6 $26        
    LDA $40                  ; E3E7  $A5 $40        
    STA $0203,X              ; E3E9  $9D $03 $02    
    STA $020B,X              ; E3EC  $9D $0B $02    
    STA $0213,X              ; E3EF  $9D $13 $02    
    CLC                      ; E3F2  $18            
    ADC #$08                 ; E3F3  $69 $08        
    STA $0207,X              ; E3F5  $9D $07 $02    
    STA $020F,X              ; E3F8  $9D $0F $02    
    STA $0217,X              ; E3FB  $9D $17 $02    
    LDA $41                  ; E3FE  $A5 $41        
    STA $0200,X              ; E400  $9D $00 $02    
    STA $0204,X              ; E403  $9D $04 $02    
    CLC                      ; E406  $18            
    ADC #$08                 ; E407  $69 $08        
    STA $0208,X              ; E409  $9D $08 $02    
    STA $020C,X              ; E40C  $9D $0C $02    
    CLC                      ; E40F  $18            
    ADC #$08                 ; E410  $69 $08        
    STA $0210,X              ; E412  $9D $10 $02    
    STA $0214,X              ; E415  $9D $14 $02    
    LDA $80                  ; E418  $A5 $80        
    STA $0201,X              ; E41A  $9D $01 $02    
    CLC                      ; E41D  $18            
    ADC #$01                 ; E41E  $69 $01        
    STA $0205,X              ; E420  $9D $05 $02    
    CLC                      ; E423  $18            
    ADC #$01                 ; E424  $69 $01        
    STA $0209,X              ; E426  $9D $09 $02    
    CLC                      ; E429  $18            
    ADC #$01                 ; E42A  $69 $01        
    STA $020D,X              ; E42C  $9D $0D $02    
    CLC                      ; E42F  $18            
    ADC #$01                 ; E430  $69 $01        
    STA $0211,X              ; E432  $9D $11 $02    
    CLC                      ; E435  $18            
    ADC #$01                 ; E436  $69 $01        
    STA $0215,X              ; E438  $9D $15 $02    
    LDA $81                  ; E43B  $A5 $81        
    STA $0202,X              ; E43D  $9D $02 $02    
    STA $0206,X              ; E440  $9D $06 $02    
    STA $020A,X              ; E443  $9D $0A $02    
    STA $020E,X              ; E446  $9D $0E $02    
    STA $0212,X              ; E449  $9D $12 $02    
    STA $0216,X              ; E44C  $9D $16 $02    
    TXA                      ; E44F  $8A            
    CLC                      ; E450  $18            
    ADC #$18                 ; E451  $69 $18        
    STA $26                  ; E453  $85 $26        
    RTS                      ; E455  $60            

    ORA ($00,X)              ; E456  $01 $00        
    BRK                      ; E458  $00            
    ORA ($01,X)              ; E459  $01 $01        
    BRK                      ; E45B  $00            
    ORA ($01,X)              ; E45C  $01 $01        
    BRK                      ; E45E  $00            
    ORA ($01,X)              ; E45F  $01 $01        
    BRK                      ; E461  $00            
    LDA #$00                 ; E462  $A9 $00        
    STA PpuMask_2001         ; E464  $8D $01 $20    
    LDA #$00                 ; E467  $A9 $00        
    STA $80                  ; E469  $85 $80        
    LDA #$B0                 ; E46B  $A9 $B0        
    STA $81                  ; E46D  $85 $81        
    LDX #$04                 ; E46F  $A2 $04        
    LDA #$09                 ; E471  $A9 $09        
    JSR L3FE03               ; E473  $20 $03 $FE    
    LDA #$00                 ; E476  $A9 $00        
    JSR L3E503               ; E478  $20 $03 $E5    
    LDA #$80                 ; E47B  $A9 $80        
    STA $81                  ; E47D  $85 $81        
    LDX #$0A                 ; E47F  $A2 $0A        
    LDA #$10                 ; E481  $A9 $10        
    JSR L3E503               ; E483  $20 $03 $E5    
    LDA #$0E                 ; E486  $A9 $0E        
    JMP L3FE03               ; E488  $4C $03 $FE    
    JSR $E6E1                ; E48B  $20 $E1 $E6    
    JMP L3E6FA               ; E48E  $4C $FA $E6   
    
;; sub start ;;
    JSR $E6E1                ; E491  $20 $E1 $E6    
    JMP L3E6FA               ; E494  $4C $FA $E6   
    
;; sub start ;;
    LDA #$02                 ; E497  $A9 $02        
    JSR L3FE03               ; E499  $20 $03 $FE    
    JSR $E4B3                ; E49C  $20 $B3 $E4    
    JSR $E528                ; E49F  $20 $28 $E5    
    JMP L3E607               ; E4A2  $4C $07 $E6    
    
;; sub start ;;
    LDA #$02                 ; E4A5  $A9 $02        
    JSR L3FE03               ; E4A7  $20 $03 $FE    
    JSR $E4F7                ; E4AA  $20 $F7 $E4    
    JSR $E4B3                ; E4AD  $20 $B3 $E4    
    JMP L3E4D8               ; E4B0  $4C $D8 $E4    
    
;; sub start ;;
    LDA #$00                 ; E4B3  $A9 $00        
    STA $80                  ; E4B5  $85 $80        
    LDX #$00                 ; E4B7  $A2 $00        
E4B9:
    LDA $6101,X              ; E4B9  $BD $01 $61    
    AND #$E0                 ; E4BC  $29 $E0        
    BEQ L3E4C7               ; E4BE  $F0 $07        
    TXA                      ; E4C0  $8A            
    CLC                      ; E4C1  $18            
    ADC #$40                 ; E4C2  $69 $40        
    TAX                      ; E4C4  $AA            
    BNE E4B9                 ; E4C5  $D0 $F2        
L3E4C7:              
    LDA $6100,X              ; E4C7  $BD $00 $61    
    AND #$0F                 ; E4CA  $29 $0F        
    CLC                      ; E4CC  $18            
    ADC #$9B                 ; E4CD  $69 $9B        
    STA $81                  ; E4CF  $85 $81        
    LDX #$01                 ; E4D1  $A2 $01        
    LDA #$10                 ; E4D3  $A9 $10        
    JMP L3E503               ; E4D5  $4C $03 $E5    
L3E4D8:              
    LDA #$90                 ; E4D8  $A9 $90        
    STA $81                  ; E4DA  $85 $81        
    LDX #$0B                 ; E4DC  $A2 $0B        
    LDA #$11                 ; E4DE  $A9 $11        
    JSR L3E503               ; E4E0  $20 $03 $E5    
    LDA #$80                 ; E4E3  $A9 $80        
    STA $80                  ; E4E5  $85 $80        
    LDA #$95                 ; E4E7  $A9 $95        
    STA $81                  ; E4E9  $85 $81        
    LDA #$00                 ; E4EB  $A9 $00        
    JSR L3FE03               ; E4ED  $20 $03 $FE    
    LDA #$1C                 ; E4F0  $A9 $1C        
    LDX #$02                 ; E4F2  $A2 $02        
    JMP L3E503               ; E4F4  $4C $03 $E5   
    
;; sub start ;;
    LDA #$00                 ; E4F7  $A9 $00        
    STA $80                  ; E4F9  $85 $80        
    LDA #$80                 ; E4FB  $A9 $80        
    STA $81                  ; E4FD  $85 $81        
    LDX #$10                 ; E4FF  $A2 $10        
    LDA #$00                 ; E501  $A9 $00        
L3E503:              
    LDY PpuStatus_2002       ; E503  $AC $02 $20    
    STA PpuAddr_2006         ; E506  $8D $06 $20    
    LDA #$00                 ; E509  $A9 $00        
    STA PpuAddr_2006         ; E50B  $8D $06 $20    
L3E50E:              
    LDY #$00                 ; E50E  $A0 $00        
L3E510:              
    LDA ($80),Y              ; E510  $B1 $80        
    STA PpuData_2007         ; E512  $8D $07 $20    
    INY                      ; E515  $C8            
    BNE L3E510               ; E516  $D0 $F8        
    INC $81                  ; E518  $E6 $81        
    DEX                      ; E51A  $CA            
    BNE L3E510               ; E51B  $D0 $F3        
    RTS                      ; E51D  $60            

L3E51E:              
    LDA ($80),Y              ; E51E  $B1 $80        
    STA PpuData_2007         ; E520  $8D $07 $20    
    INY                      ; E523  $C8            
    DEX                      ; E524  $CA            
    BNE L3E51E               ; E525  $D0 $F7        
    RTS                      ; E527  $60            

;; sub start ;;
    LDA #$00                 ; E528  $A9 $00        
    JSR L3FE03               ; E52A  $20 $03 $FE    
    LDX $48                  ; E52D  $A6 $48        
    LDA $B300,X              ; E52F  $BD $00 $B3    
    STA $67                  ; E532  $85 $67        
    LDA $B000,X              ; E534  $BD $00 $B0    
    AND #$E0                 ; E537  $29 $E0        
    CLC                      ; E539  $18            
    ADC #$C0                 ; E53A  $69 $C0        
    STA $80                  ; E53C  $85 $80        
    LDA #$9E                 ; E53E  $A9 $9E        
    ADC #$00                 ; E540  $69 $00        
    STA $81                  ; E542  $85 $81        
    LDA #$03                 ; E544  $A9 $03        
    JSR L3FE03               ; E546  $20 $03 $FE    
    BIT PpuStatus_2002       ; E549  $2C $02 $20    
    LDA #$00                 ; E54C  $A9 $00        
    STA PpuAddr_2006         ; E54E  $8D $06 $20    
    STA PpuAddr_2006         ; E551  $8D $06 $20    
    LDY #$00                 ; E554  $A0 $00        
    LDX #$20                 ; E556  $A2 $20        
    JSR L3E51E               ; E558  $20 $1E $E5    
    LDX #$80                 ; E55B  $A2 $80        
    LDA $67                  ; E55D  $A5 $67        
    LSR A                    ; E55F  $4A            
    LDA #$00                 ; E560  $A9 $00        
    BCC L3E568               ; E562  $90 $04        
    LDA #$40                 ; E564  $A9 $40        
    LDX #$82                 ; E566  $A2 $82        
L3E568:              
    STA $80                  ; E568  $85 $80        
    STX $81                  ; E56A  $86 $81        
    LDX #$02                 ; E56C  $A2 $02        
    JSR L3E50E               ; E56E  $20 $0E $E5    
    LDX #$40                 ; E571  $A2 $40        
    JSR L3E51E               ; E573  $20 $1E $E5    
    LDA #$00                 ; E576  $A9 $00        
    STA $81                  ; E578  $85 $81        
    LDA $67                  ; E57A  $A5 $67        
    LSR A                    ; E57C  $4A            
    AND #$0F                 ; E57D  $29 $0F        
    TAX                      ; E57F  $AA            
    LDA $E5F8,X              ; E580  $BD $F8 $E5    
    ASL A                    ; E583  $0A            
    ROL $81                  ; E584  $26 $81        
    ASL A                    ; E586  $0A            
    ROL $81                  ; E587  $26 $81        
    ASL A                    ; E589  $0A            
    ROL $81                  ; E58A  $26 $81        
    ASL A                    ; E58C  $0A            
    ROL $81                  ; E58D  $26 $81        
    ADC #$80                 ; E58F  $69 $80        
    STA $80                  ; E591  $85 $80        
    LDA $81                  ; E593  $A5 $81        
    ADC #$84                 ; E595  $69 $84        
    STA $81                  ; E597  $85 $81        
    LDY #$00                 ; E599  $A0 $00        
    LDX #$C0                 ; E59B  $A2 $C0        
    JSR L3E51E               ; E59D  $20 $1E $E5    
    LDA #$00                 ; E5A0  $A9 $00        
    STA $81                  ; E5A2  $85 $81        
    LDA $67                  ; E5A4  $A5 $67        
    LSR A                    ; E5A6  $4A            
    LSR A                    ; E5A7  $4A            
    LSR A                    ; E5A8  $4A            
    LSR A                    ; E5A9  $4A            
    LSR A                    ; E5AA  $4A            
    TAX                      ; E5AB  $AA            
    LDA $E602,X              ; E5AC  $BD $02 $E6    
    ASL A                    ; E5AF  $0A            
    ROL $81                  ; E5B0  $26 $81        
    ASL A                    ; E5B2  $0A            
    ROL $81                  ; E5B3  $26 $81        
    ASL A                    ; E5B5  $0A            
    ROL $81                  ; E5B6  $26 $81        
    ASL A                    ; E5B8  $0A            
    ROL $81                  ; E5B9  $26 $81        
    STA $80                  ; E5BB  $85 $80        
    LDA $81                  ; E5BD  $A5 $81        
    CLC                      ; E5BF  $18            
    ADC #$8C                 ; E5C0  $69 $8C        
    STA $81                  ; E5C2  $85 $81        
    LDX #$03                 ; E5C4  $A2 $03        
    JSR L3E50E               ; E5C6  $20 $0E $E5    
    LDX #$C0                 ; E5C9  $A2 $C0        
    JSR L3E51E               ; E5CB  $20 $1E $E5    

;; sub start ;;
    LDA #$09                 ; E5CE  $A9 $09        
    JSR L3FE03               ; E5D0  $20 $03 $FE    
    LDA #$00                 ; E5D3  $A9 $00        
    STA $80                  ; E5D5  $85 $80        
    LDA #$8A                 ; E5D7  $A9 $8A        
    STA $81                  ; E5D9  $85 $81        
    BIT PpuStatus_2002       ; E5DB  $2C $02 $20    
    LDA #$06                 ; E5DE  $A9 $06        
    STA PpuAddr_2006         ; E5E0  $8D $06 $20    
    LDA #$E0                 ; E5E3  $A9 $E0        
    STA PpuAddr_2006         ; E5E5  $8D $06 $20    
    LDY #$00                 ; E5E8  $A0 $00        
    LDX #$20                 ; E5EA  $A2 $20        
    JSR L3E51E               ; E5EC  $20 $1E $E5    
    LDA #$20                 ; E5EF  $A9 $20        
    STA $80                  ; E5F1  $85 $80        
    LDX #$09                 ; E5F3  $A2 $09        
    JMP L3E50E               ; E5F5  $4C $0E $E5    

;data block---
;; [E5F8 : 3E608]
.byte $00,$0C,$18,$24,$30,$3C,$48,$54 
;; [E600 : 3E610]
.byte $60,$6C,$00,$3C,$78,$B4,$F0

L3E607:              
    LDA #$00                 ; E607  $A9 $00        
    JSR L3FE03               ; E609  $20 $03 $FE    
    LDA PpuStatus_2002       ; E60C  $AD $02 $20    
    LDA #$11                 ; E60F  $A9 $11        
    STA PpuAddr_2006         ; E611  $8D $06 $20    
    LDA #$00                 ; E614  $A9 $00        
    STA PpuAddr_2006         ; E616  $8D $06 $20    
    LDA $48                  ; E619  $A5 $48        
    LSR A                    ; E61B  $4A            
    LSR A                    ; E61C  $4A            
    LSR A                    ; E61D  $4A            
    LSR A                    ; E61E  $4A            
    ORA #$A0                 ; E61F  $09 $A0        
    STA $81                  ; E621  $85 $81        
    LDA $48                  ; E623  $A5 $48        
    ASL A                    ; E625  $0A            
    ASL A                    ; E626  $0A            
    ASL A                    ; E627  $0A            
    ASL A                    ; E628  $0A            
    STA $80                  ; E629  $85 $80        
    LDY #$00                 ; E62B  $A0 $00        
    LDA ($80),Y              ; E62D  $B1 $80        
    AND #$7F                 ; E62F  $29 $7F        
    CMP #$40                 ; E631  $C9 $40        
    BCC L3E64A               ; E633  $90 $15        
    AND #$3F                 ; E635  $29 $3F        
    STA $84                  ; E637  $85 $84        
    ASL A                    ; E639  $0A            
    CLC                      ; E63A  $18            
    ADC $84                  ; E63B  $65 $84        
    STA $84                  ; E63D  $85 $84        
    LDA #$BE                 ; E63F  $A9 $BE        
    STA $85                  ; E641  $85 $85        
    LDA #$01                 ; E643  $A9 $01        
    STA $61                  ; E645  $85 $61        
    JMP L3E669               ; E647  $4C $69 $E6    
L3E64A:              
    ASL A                    ; E64A  $0A            
    ASL A                    ; E64B  $0A            
    STA $84                  ; E64C  $85 $84        
    LDX #$00                 ; E64E  $A2 $00        
    STX $85                  ; E650  $86 $85        
    ASL A                    ; E652  $0A            
    ROL $85                  ; E653  $26 $85        
    ASL A                    ; E655  $0A            
    ROL $85                  ; E656  $26 $85        
    ASL A                    ; E658  $0A            
    ROL $85                  ; E659  $26 $85        
    ADC $84                  ; E65B  $65 $84        
    STA $84                  ; E65D  $85 $84        
    LDA $85                  ; E65F  $A5 $85        
    ADC #$B5                 ; E661  $69 $B5        
    STA $85                  ; E663  $85 $85        
    LDA #$0C                 ; E665  $A9 $0C        
    STA $61                  ; E667  $85 $61        
L3E669:              
    LDA #$00                 ; E669  $A9 $00        
    JSR L3FE03               ; E66B  $20 $03 $FE    
    LDA ($84),Y              ; E66E  $B1 $84        
    TAX                      ; E670  $AA            
    LDA $8D00,X              ; E671  $BD $00 $8D    
    CMP #$20                 ; E674  $C9 $20        
    BCC L3E68C               ; E676  $90 $14        
    SBC #$20                 ; E678  $E9 $20        
    ASL A                    ; E67A  $0A            
    TAX                      ; E67B  $AA            
    LDA $E6C3,X              ; E67C  $BD $C3 $E6    
    STA $80                  ; E67F  $85 $80        
    LDA $E6C4,X              ; E681  $BD $C4 $E6    
    CLC                      ; E684  $18            
    ADC #$BB                 ; E685  $69 $BB        
    STA $81                  ; E687  $85 $81        
    JMP L3E695               ; E689  $4C $95 $E6    
L3E68C:              
    CLC                      ; E68C  $18            
    ADC #$9B                 ; E68D  $69 $9B        
    STA $81                  ; E68F  $85 $81        
    LDA #$00                 ; E691  $A9 $00        
    STA $80                  ; E693  $85 $80        
L3E695:              
    LDA #$02                 ; E695  $A9 $02        
    JSR L3FE03               ; E697  $20 $03 $FE    
    TYA                      ; E69A  $98            
    PHA                      ; E69B  $48            
    LDY #$00                 ; E69C  $A0 $00        
L3E69E:              
    LDA ($80),Y              ; E69E  $B1 $80        
    STA PpuData_2007         ; E6A0  $8D $07 $20    
    INY                      ; E6A3  $C8            
    BNE L3E69E               ; E6A4  $D0 $F8        
    PLA                      ; E6A6  $68            
    CLC                      ; E6A7  $18            
    ADC #$03                 ; E6A8  $69 $03        
    TAY                      ; E6AA  $A8            
    DEC $61                  ; E6AB  $C6 $61        
    BNE L3E669               ; E6AD  $D0 $BA        

;; sub start ;;
    LDA #$00                 ; E6AF  $A9 $00        
    STA $80                  ; E6B1  $85 $80        
    LDA #$BD                 ; E6B3  $A9 $BD        
    STA $81                  ; E6B5  $85 $81        
    LDA #$02                 ; E6B7  $A9 $02        
    JSR L3FE03               ; E6B9  $20 $03 $FE    
    LDX #$03                 ; E6BC  $A2 $03        
    LDA #$1D                 ; E6BE  $A9 $1D        
    JMP L3E503               ; E6C0  $4C $03 $E5    

 ;data block---
;; [E6C3 : 3E6D3]
.byte $00,$00,$80,$00,$00,$01,$80,$01,$00,$02,$40,$02,$80 
.byte $02,$C0,$02,$00,$03,$40,$03,$80,$03,$C0,$03,$00,$04,$40,$04,$80 
.byte $04    

;; sub start ;;
    JSR $E5CE                ; E6E1  $20 $CE $E5    
    BIT PpuStatus_2002       ; E6E4  $2C $02 $20    
    LDA #$00                 ; E6E7  $A9 $00        
    STA PpuAddr_2006         ; E6E9  $8D $06 $20    
    STA PpuAddr_2006         ; E6EC  $8D $06 $20    
    LDX #$10                 ; E6EF  $A2 $10        
L3E6F1:              
    STA PpuData_2007         ; E6F1  $8D $07 $20    
    DEX                      ; E6F4  $CA            
    BNE L3E6F1               ; E6F5  $D0 $FA        
    JMP L3E776               ; E6F7  $4C $76 $E7    
L3E6FA:              
    LDA #$09                 ; E6FA  $A9 $09        
    JSR L3FE03               ; E6FC  $20 $03 $FE    
    LDA PpuStatus_2002       ; E6FF  $AD $02 $20    
    LDA #$10                 ; E702  $A9 $10        
    STA PpuAddr_2006         ; E704  $8D $06 $20    
    LDA #$00                 ; E707  $A9 $00        
    STA PpuAddr_2006         ; E709  $8D $06 $20    
    STA $80                  ; E70C  $85 $80        
    LDA $6100                ; E70E  $AD $00 $61    
    JSR $E745                ; E711  $20 $45 $E7    
    LDA $6140                ; E714  $AD $40 $61    
    JSR $E745                ; E717  $20 $45 $E7    
    LDA $6180                ; E71A  $AD $80 $61    
    JSR $E745                ; E71D  $20 $45 $E7    
    LDA $61C0                ; E720  $AD $C0 $61    
    JSR $E745                ; E723  $20 $45 $E7    
    LDA #$0A                 ; E726  $A9 $0A        
    JSR $E745                ; E728  $20 $45 $E7    
    LDA #$09                 ; E72B  $A9 $09        
    JSR $E745                ; E72D  $20 $45 $E7    
    LDX #$10                 ; E730  $A2 $10        
    LDA #$FF                 ; E732  $A9 $FF        
L3E734:              
    STA PpuData_2007         ; E734  $8D $07 $20    
    DEX                      ; E737  $CA            
    BNE L3E734               ; E738  $D0 $FA        
    JSR $E6AF                ; E73A  $20 $AF $E6    
    JSR $E786                ; E73D  $20 $86 $E7    
    LDA #$0E                 ; E740  $A9 $0E        
    JMP L3FE03               ; E742  $4C $03 $FE    

;; sub start ;;
    AND #$0F                 ; E745  $29 $0F        
    TAX                      ; E747  $AA            
    LDA #$00                 ; E748  $A9 $00        
    STA $81                  ; E74A  $85 $81        
    LDA $E76A,X              ; E74C  $BD $6A $E7    
    ASL A                    ; E74F  $0A            
    ROL $81                  ; E750  $26 $81        
    ASL A                    ; E752  $0A            
    ROL $81                  ; E753  $26 $81        
    ASL A                    ; E755  $0A            
    ROL $81                  ; E756  $26 $81        
    ASL A                    ; E758  $0A            
    ROL $81                  ; E759  $26 $81        
    STA $80                  ; E75B  $85 $80        
    LDA $81                  ; E75D  $A5 $81        
    ORA #$80                 ; E75F  $09 $80        
    STA $81                  ; E761  $85 $81        
    LDX #$C0                 ; E763  $A2 $C0        
    LDY #$00                 ; E765  $A0 $00        
    JMP L3E51E               ; E767  $4C $1E $E5    

 ;data block---
.byte $00,$0C,$18,$24,$30,$3C 
;; [E770 : 3E780]
.byte $48,$54,$60,$6C,$78,$84

L3E776:              
    LDA #$00                 ; E776  $A9 $00        
    STA $03CD                ; E778  $8D $CD $03    
    LDA #$02                 ; E77B  $A9 $02        
    STA $03CE                ; E77D  $8D $CE $03    
    LDA #$30                 ; E780  $A9 $30        
    STA $03CF                ; E782  $8D $CF $03    
    RTS                      ; E785  $60            

;; sub start ;;
    LDA #$00                 ; E786  $A9 $00        
    JSR L3FE03               ; E788  $20 $03 $FE    
    LDX #$0F                 ; E78B  $A2 $0F        
L3E78D:              
    LDA $83B2,X              ; E78D  $BD $B2 $83    
    STA $03D0,X              ; E790  $9D $D0 $03    
    DEX                      ; E793  $CA            
    BNE L3E78D               ; E794  $D0 $F7        
    RTS                      ; E796  $60            

    LDY #$00                 ; E797  $A0 $00        
    LDA $93                  ; E799  $A5 $93        
    JSR L3FE03               ; E79B  $20 $03 $FE    
    LDA ($3E),Y              ; E79E  $B1 $3E        
    BNE E7A9                 ; E7A0  $D0 $07        
E7A2:
    LDA $57                  ; E7A2  $A5 $57        
    JSR L3FE03               ; E7A4  $20 $03 $FE    
    SEC                      ; E7A7  $38            
    RTS                      ; E7A8  $60            

E7A9:
    JSR $E7D4                ; E7A9  $20 $D4 $E7    
L3E7AC:              
    JSR $EAAC                ; E7AC  $20 $AC $EA    
    LDA $57                  ; E7AF  $A5 $57        
    JSR L3FE03               ; E7B1  $20 $03 $FE    
    CLC                      ; E7B4  $18            
    RTS                      ; E7B5  $60            


    LDA $1C                  ; E7B6  $A5 $1C        
    SEC                      ; E7B8  $38            
    SBC #$02                 ; E7B9  $E9 $02        
    STA $1C                  ; E7BB  $85 $1C        
    LDA $1D                  ; E7BD  $A5 $1D        
    SBC #$00                 ; E7BF  $E9 $00        
    STA $1D                  ; E7C1  $85 $1D        
    LDA $93                  ; E7C3  $A5 $93        
    JSR L3FE03               ; E7C5  $20 $03 $FE    
    LDY #$01                 ; E7C8  $A0 $01        
    LDA ($1C),Y              ; E7CA  $B1 $1C        
    BEQ E7A2                 ; E7CC  $F0 $D4        
    JSR $E7FC                ; E7CE  $20 $FC $E7    
    JMP L3E7AC               ; E7D1  $4C $AC $E7    

;; sub start ;;
    LDY #$00                 ; E7D4  $A0 $00        
L3E7D6:              
    LDA ($1C),Y              ; E7D6  $B1 $1C        
    INC $1C                  ; E7D8  $E6 $1C        
    BNE L3E7DE               ; E7DA  $D0 $02        
    INC $1D                  ; E7DC  $E6 $1D        
L3E7DE:              
    CMP #$01                 ; E7DE  $C9 $01        
    BEQ L3E7F3               ; E7E0  $F0 $11        
    CMP #$30                 ; E7E2  $C9 $30        
    BCS L3E7D6               ; E7E4  $B0 $F0        
    CMP #$10                 ; E7E6  $C9 $10        
    BCC L3E7D6               ; E7E8  $90 $EC        
    INC $1C                  ; E7EA  $E6 $1C        
    BNE L3E7D6               ; E7EC  $D0 $E8        
    INC $1D                  ; E7EE  $E6 $1D        
    JMP L3E7D6               ; E7F0  $4C $D6 $E7    
L3E7F3:              
    LDA $1C                  ; E7F3  $A5 $1C        
    STA $3E                  ; E7F5  $85 $3E        
    LDA $1D                  ; E7F7  $A5 $1D        
    STA $3F                  ; E7F9  $85 $3F        
    RTS                      ; E7FB  $60            

    LDA $1C                  ; E7FC  $A5 $1C        
    SEC                      ; E7FE  $38            
    SBC #$01                 ; E7FF  $E9 $01        
    STA $1C                  ; E801  $85 $1C        
    LDA $1D                  ; E803  $A5 $1D        
    SBC #$00                 ; E805  $E9 $00        
    STA $1D                  ; E807  $85 $1D        
    LDY #$00                 ; E809  $A0 $00        
    LDA ($1C),Y              ; E80B  $B1 $1C        
    CMP #$10                 ; E80D  $C9 $10        
    BCC E81D                 ; E80F  $90 $0C        
    CMP #$30                 ; E811  $C9 $30        
    BCS E81D                 ; E813  $B0 $08        
    LDA $1C                  ; E815  $A5 $1C        
    SEC                      ; E817  $38            
    SBC #$02                 ; E818  $E9 $02        
    JMP $E801                ; E81A  $4C $01 $E8    
E81D:
    INY                      ; E81D  $C8            
    LDA ($1C),Y              ; E81E  $B1 $1C        
    BEQ E829                 ; E820  $F0 $07        
    CMP #$01                 ; E822  $C9 $01        
    BEQ E829                 ; E824  $F0 $03        
    JMP $E7FC                ; E826  $4C $FC $E7    
E829:
    LDA $1C                  ; E829  $A5 $1C        
    CLC                      ; E82B  $18            
    ADC #$02                 ; E82C  $69 $02        
    STA $3E                  ; E82E  $85 $3E        
    LDA $1D                  ; E830  $A5 $1D        
    ADC #$00                 ; E832  $69 $00        
    STA $3F                  ; E834  $85 $3F        
    RTS                      ; E836  $60            

;; sub start ;;
    LDX #$04                 ; E837  $A2 $04        
    LDA #$01                 ; E839  $A9 $01        
    BNE L3E845               ; E83B  $D0 $08        

;; sub start ;;
    LDX #$05                 ; E83D  $A2 $05        
    LDA #$01                 ; E83F  $A9 $01        
    BNE L3E845               ; E841  $D0 $02        

;; sub start ;;
    LDA #$00                 ; E843  $A9 $00        
L3E845:              
    STA $84                  ; E845  $85 $84        
    LDA $E892,X              ; E847  $BD $92 $E8    
    STA $80                  ; E84A  $85 $80        
    LDA $E898,X              ; E84C  $BD $98 $E8    
    STA $81                  ; E84F  $85 $81        
    LDA $E89E,X              ; E851  $BD $9E $E8    
    STA $82                  ; E854  $85 $82        
    LDA $E8A4,X              ; E856  $BD $A4 $E8    
    STA $83                  ; E859  $85 $83        
    LDY #$40                 ; E85B  $A0 $40        
L3E85D:              
    LDA $0203,Y              ; E85D  $B9 $03 $02    
    CMP $80                  ; E860  $C5 $80        
    BCC L3E88A               ; E862  $90 $26        
    CMP $81                  ; E864  $C5 $81        
    BCS L3E88A               ; E866  $B0 $22        
    LDA $0200,Y              ; E868  $B9 $00 $02    
    CMP $82                  ; E86B  $C5 $82        
    BCC L3E88A               ; E86D  $90 $1B        
    CMP $83                  ; E86F  $C5 $83        
    BCS L3E88A               ; E871  $B0 $17        
    LDA $84                  ; E873  $A5 $84        
    BNE L3E882               ; E875  $D0 $0B        
    LDA $0202,Y              ; E877  $B9 $02 $02    
    ORA #$20                 ; E87A  $09 $20        
    STA $0202,Y              ; E87C  $99 $02 $02    
    JMP L3E88A               ; E87F  $4C $8A $E8    
L3E882:              
    LDA $0202,Y              ; E882  $B9 $02 $02    
    AND #$DF                 ; E885  $29 $DF        
    STA $0202,Y              ; E887  $99 $02 $02    
L3E88A:              
    TYA                      ; E88A  $98            
    CLC                      ; E88B  $18            
    ADC #$04                 ; E88C  $69 $04        
    TAY                      ; E88E  $A8            
    BCC L3E85D               ; E88F  $90 $CC        
    RTS                      ; E891  $60            

 ;data block---
;; [E892 : 3E8A2]
.byte $0A,$0A,$3A,$8A,$0A,$0A,$EF,$4F,$EF,$EF,$EF,$EF,$0A,$8A 
;; [E8A0 : 3E8B0]
.byte $8A,$6A,$0A,$6A,$57,$D7,$D7,$87,$57,$D7

;; sub start ;;
    LDA $76                  ; E8AA  $A5 $76        
    STA $92                  ; E8AC  $85 $92        
    LDA #$0D                 ; E8AE  $A9 $0D        
    STA $93                  ; E8B0  $85 $93        
    LDA #$00                 ; E8B2  $A9 $00        
    STA $94                  ; E8B4  $85 $94        
    LDA #$BF                 ; E8B6  $A9 $BF        
    STA $95                  ; E8B8  $85 $95        
    LDA #$00                 ; E8BA  $A9 $00        
    STA $96                  ; E8BC  $85 $96        
    STA $76                  ; E8BE  $85 $76        
    STA $24                  ; E8C0  $85 $24        
    STA $25                  ; E8C2  $85 $25        
    JSR L3E91E               ; E8C4  $20 $1E $E9    
    JMP L3E8E5               ; E8C7  $4C $E5 $E8    

;; sub start ;;
    LDA #$00                 ; E8CA  $A9 $00        
    STA $96                  ; E8CC  $85 $96        
    STA $24                  ; E8CE  $85 $24        
    STA $25                  ; E8D0  $85 $25        
    JSR L3E91E               ; E8D2  $20 $1E $E9    
    JMP L3EA54               ; E8D5  $4C $54 $EA    

;; sub start ;;
    LDA #$00                 ; E8D8  $A9 $00        
    STA $96                  ; E8DA  $85 $96        
    LDA #$00                 ; E8DC  $A9 $00        
    STA $24                  ; E8DE  $85 $24        
    STA $25                  ; E8E0  $85 $25        
    JSR L3E91E               ; E8E2  $20 $1E $E9    
L3E8E5:              
    JSR L3EA54               ; E8E5  $20 $54 $EA    
    JSR $E8F1                ; E8E8  $20 $F1 $E8    
    JSR $E8F1                ; E8EB  $20 $F1 $E8    
    JMP L3D164               ; E8EE  $4C $64 $D1    

;; sub start ;;
    JSR $DBA9                ; E8F1  $20 $A9 $DB    
    LDA $20                  ; E8F4  $A5 $20        
    STA $86                  ; E8F6  $85 $86        
L3E8F8:              
    JSR $DBA9                ; E8F8  $20 $A9 $DB    
    LDA $20                  ; E8FB  $A5 $20        
    CMP $86                  ; E8FD  $C5 $86        
    BNE L3E90C               ; E8FF  $D0 $0B        
    JSR $FE00                ; E901  $20 $00 $FE    
    INC $F0                  ; E904  $E6 $F0        
    JSR L3C746               ; E906  $20 $46 $C7    
    JMP L3E8F8               ; E909  $4C $F8 $E8    
L3E90C:              
    LDA $93                  ; E90C  $A5 $93        
    JMP L3FE03               ; E90E  $4C $03 $FE    

;; sub start ;;
    JSR $FE00                ; E911  $20 $00 $FE    
    INC $F0                  ; E914  $E6 $F0        
    JSR L3C746               ; E916  $20 $46 $C7    
    LDA $93                  ; E919  $A5 $93        
    JMP L3FE03               ; E91B  $4C $03 $FE    
L3E91E:              
    LDX $96                  ; E91E  $A6 $96        
    JSR $E96E                ; E920  $20 $6E $E9    
    LDA $39                  ; E923  $A5 $39        
    STA $3B                  ; E925  $85 $3B        
    JSR $F031                ; E927  $20 $31 $F0    
    LDX #$0F                 ; E92A  $A2 $0F        
    LDA #$FF                 ; E92C  $A9 $FF        
L3E92E:              
    STA $07C0,X              ; E92E  $9D $C0 $07    
    DEX                      ; E931  $CA            
    BPL L3E92E               ; E932  $10 $FA        
    LDA $3D                  ; E934  $A5 $3D        
    LSR A                    ; E936  $4A            
    PHA                      ; E937  $48            
    JSR $E9E5                ; E938  $20 $E5 $E9    
    JSR $E9BA                ; E93B  $20 $BA $E9    
    PLA                      ; E93E  $68            
    SEC                      ; E93F  $38            
    SBC #$02                 ; E940  $E9 $02        
    BEQ L3E951               ; E942  $F0 $0D        
L3E944:              
    PHA                      ; E944  $48            
    JSR $EA0C                ; E945  $20 $0C $EA    
    JSR $E9BA                ; E948  $20 $BA $E9    
    PLA                      ; E94B  $68            
    SEC                      ; E94C  $38            
    SBC #$01                 ; E94D  $E9 $01        
    BNE L3E944               ; E94F  $D0 $F3        
L3E951:              
    JSR $EA2D                ; E951  $20 $2D $EA    
    JSR $E9BA                ; E954  $20 $BA $E9    
    INC $38                  ; E957  $E6 $38        
    INC $39                  ; E959  $E6 $39        
    LDA $3C                  ; E95B  $A5 $3C        
    SEC                      ; E95D  $38            
    SBC #$02                 ; E95E  $E9 $02        
    STA $3C                  ; E960  $85 $3C        
    LDA $3D                  ; E962  $A5 $3D        
    SEC                      ; E964  $38            
    SBC #$02                 ; E965  $E9 $02        
    STA $3D                  ; E967  $85 $3D        
    LDA $57                  ; E969  $A5 $57        
    JMP L3FE03               ; E96B  $4C $03 $FE    

;; sub start ;;
    LDA $37                  ; E96E  $A5 $37        
    BNE L3E9A9               ; E970  $D0 $37        
    LDA $E9AA,X              ; E972  $BD $AA $E9    
    SEC                      ; E975  $38            
    SBC #$01                 ; E976  $E9 $01        
    STA $97                  ; E978  $85 $97        
    LDA $E9AE,X              ; E97A  $BD $AE $E9    
    CLC                      ; E97D  $18            
    ADC #$02                 ; E97E  $69 $02        
    STA $98                  ; E980  $85 $98        
    LDA $29                  ; E982  $A5 $29        
    ASL A                    ; E984  $0A            
    CLC                      ; E985  $18            
    ADC $E9AA,X              ; E986  $7D $AA $E9    
    AND #$3F                 ; E989  $29 $3F        
    STA $38                  ; E98B  $85 $38        
    LDA $2F                  ; E98D  $A5 $2F        
    ASL A                    ; E98F  $0A            
    CLC                      ; E990  $18            
    ADC $E9AE,X              ; E991  $7D $AE $E9    
    CMP #$1E                 ; E994  $C9 $1E        
    BCC L3E99A               ; E996  $90 $02        
    SBC #$1E                 ; E998  $E9 $1E        
L3E99A:              
    STA $39                  ; E99A  $85 $39        
    LDA $E9B2,X              ; E99C  $BD $B2 $E9    
    STA $3C                  ; E99F  $85 $3C        
    LDA $E9B6,X              ; E9A1  $BD $B6 $E9    
    STA $3D                  ; E9A4  $85 $3D        
    JSR $E843                ; E9A6  $20 $43 $E8    
L3E9A9:              
    RTS                      ; E9A9  $60            

 ;data block---
.byte $02,$02,$08,$12,$02,$12 
;; [E9B0 : 3E9C0]
.byte $12,$0E,$1C,$08,$16,$0C,$0A,$0A,$0A,$04

;; sub start ;;
    LDA $3C                  ; E9BA  $A5 $3C        
    STA $90                  ; E9BC  $85 $90        
    JSR $D13D                ; E9BE  $20 $3D $D1    
    JSR $FE00                ; E9C1  $20 $00 $FE    
    LDA #$02                 ; E9C4  $A9 $02        
    STA SpriteDma_4014       ; E9C6  $8D $14 $40    
    JSR $F069                ; E9C9  $20 $69 $F0    
    JSR $D157                ; E9CC  $20 $57 $D1    
    JSR $E9D5                ; E9CF  $20 $D5 $E9    
    JMP L3C746               ; E9D2  $4C $46 $C7    

;; sub start ;;
    LDA $37                  ; E9D5  $A5 $37        
    BNE L3E9DC               ; E9D7  $D0 $03        
    JMP L3CDF5               ; E9D9  $4C $F5 $CD    
L3E9DC:              
    LDA #$00                 ; E9DC  $A9 $00        
    STA PpuScroll_2005       ; E9DE  $8D $05 $20    
    STA PpuScroll_2005       ; E9E1  $8D $05 $20    
    RTS                      ; E9E4  $60            

;; sub start ;;
    LDX #$01                 ; E9E5  $A2 $01        
    LDA #$F7                 ; E9E7  $A9 $F7        
    STA $0780                ; E9E9  $8D $80 $07    
    LDA #$FA                 ; E9EC  $A9 $FA        
    STA $07A0                ; E9EE  $8D $A0 $07    
L3E9F1:              
    LDA #$F8                 ; E9F1  $A9 $F8        
    STA $0780,X              ; E9F3  $9D $80 $07    
    LDA #$FF                 ; E9F6  $A9 $FF        
    STA $07A0,X              ; E9F8  $9D $A0 $07    
    INX                      ; E9FB  $E8            
    CPX $3C                  ; E9FC  $E4 $3C        
    BCC L3E9F1               ; E9FE  $90 $F1        
    DEX                      ; EA00  $CA            
    LDA #$F9                 ; EA01  $A9 $F9        
    STA $0780,X              ; EA03  $9D $80 $07    
    LDA #$FB                 ; EA06  $A9 $FB        
    STA $07A0,X              ; EA08  $9D $A0 $07    
    RTS                      ; EA0B  $60            

;; sub start ;;
    LDX #$01                 ; EA0C  $A2 $01        
    LDA #$FA                 ; EA0E  $A9 $FA        
    STA $0780                ; EA10  $8D $80 $07    
    STA $07A0                ; EA13  $8D $A0 $07    
    LDA #$FF                 ; EA16  $A9 $FF        
L3EA18:              
    STA $0780,X              ; EA18  $9D $80 $07    
    STA $07A0,X              ; EA1B  $9D $A0 $07    
    INX                      ; EA1E  $E8            
    CPX $3C                  ; EA1F  $E4 $3C        
    BCC L3EA18               ; EA21  $90 $F5        
    DEX                      ; EA23  $CA            
    LDA #$FB                 ; EA24  $A9 $FB        
    STA $0780,X              ; EA26  $9D $80 $07    
    STA $07A0,X              ; EA29  $9D $A0 $07    
    RTS                      ; EA2C  $60            

;; sub start ;;
    LDX #$01                 ; EA2D  $A2 $01        
    LDA #$FA                 ; EA2F  $A9 $FA        
    STA $0780                ; EA31  $8D $80 $07    
    LDA #$FC                 ; EA34  $A9 $FC        
    STA $07A0                ; EA36  $8D $A0 $07    
L3EA39:              
    LDA #$FF                 ; EA39  $A9 $FF        
    STA $0780,X              ; EA3B  $9D $80 $07    
    LDA #$FD                 ; EA3E  $A9 $FD        
    STA $07A0,X              ; EA40  $9D $A0 $07    
    INX                      ; EA43  $E8            
    CPX $3C                  ; EA44  $E4 $3C        
    BCC L3EA39               ; EA46  $90 $F1        
    DEX                      ; EA48  $CA            
    LDA #$FB                 ; EA49  $A9 $FB        
    STA $0780,X              ; EA4B  $9D $80 $07    
    LDA #$FE                 ; EA4E  $A9 $FE        
    STA $07A0,X              ; EA50  $9D $A0 $07    
    RTS                      ; EA53  $60            

L3EA54:              
    JSR L3EA8C               ; EA54  $20 $8C $EA    
    BCC L3EA8B               ; EA57  $90 $32        
L3EA59:              
    JSR $E8F1                ; EA59  $20 $F1 $E8    
    JSR $E8F1                ; EA5C  $20 $F1 $E8    
    LDA $3D                  ; EA5F  $A5 $3D        
L3EA61:              
    PHA                      ; EA61  $48            
    LDA #$00                 ; EA62  $A9 $00        
    STA $F0                  ; EA64  $85 $F0        
L3EA66:              
    JSR $E911                ; EA66  $20 $11 $E9    
    LDA $F0                  ; EA69  $A5 $F0        
    AND #$03                 ; EA6B  $29 $03        
    BNE L3EA66               ; EA6D  $D0 $F7        
    JSR $E7D4                ; EA6F  $20 $D4 $E7    
    JSR $EAAC                ; EA72  $20 $AC $EA    
    BCS L3EA81               ; EA75  $B0 $0A        
    PLA                      ; EA77  $68            
    SEC                      ; EA78  $38            
    SBC #$02                 ; EA79  $E9 $02        
    BEQ L3EA8B               ; EA7B  $F0 $0E        
    BCS L3EA61               ; EA7D  $B0 $E2        
    BCC L3EA8B               ; EA7F  $90 $0A        
L3EA81:              
    PLA                      ; EA81  $68            
    SEC                      ; EA82  $38            
    SBC #$02                 ; EA83  $E9 $02        
    BEQ L3EA59               ; EA85  $F0 $D2        
    BCS L3EA61               ; EA87  $B0 $D8        
    BCC L3EA59               ; EA89  $90 $CE        
L3EA8B:              
    RTS                      ; EA8B  $60            

L3EA8C:              
    LDA $93                  ; EA8C  $A5 $93        
    JSR L3FE03               ; EA8E  $20 $03 $FE    
    LDA $92                  ; EA91  $A5 $92        
    ASL A                    ; EA93  $0A            
    PHP                      ; EA94  $08            
    CLC                      ; EA95  $18            
    ADC $94                  ; EA96  $65 $94        
    STA $80                  ; EA98  $85 $80        
    PLP                      ; EA9A  $28            
    LDA $95                  ; EA9B  $A5 $95        
    ADC #$00                 ; EA9D  $69 $00        
    STA $81                  ; EA9F  $85 $81        
    LDY #$00                 ; EAA1  $A0 $00        
    LDA ($80),Y              ; EAA3  $B1 $80        
    STA $3E                  ; EAA5  $85 $3E        
    INY                      ; EAA7  $C8            
    LDA ($80),Y              ; EAA8  $B1 $80        
    STA $3F                  ; EAAA  $85 $3F        

;; sub start ;;
    LDA $93                  ; EAAC  $A5 $93        
    JSR L3FE03               ; EAAE  $20 $03 $FE    
    LDA #$00                 ; EAB1  $A9 $00        
    STA $1E                  ; EAB3  $85 $1E        
    LDA $3E                  ; EAB5  $A5 $3E        
    STA $1C                  ; EAB7  $85 $1C        
    LDA $3F                  ; EAB9  $A5 $3F        
    STA $1D                  ; EABB  $85 $1D        
    STA $1D                  ; EABD  $85 $1D        
    LDA $38                  ; EABF  $A5 $38        
    STA $3A                  ; EAC1  $85 $3A        
    LDA $39                  ; EAC3  $A5 $39        
    STA $3B                  ; EAC5  $85 $3B        
    JSR $F031                ; EAC7  $20 $31 $F0    
    LDA #$00                 ; EACA  $A9 $00        
    STA $90                  ; EACC  $85 $90        
    STA $1F                  ; EACE  $85 $1F        
    JSR L3EAE6               ; EAD0  $20 $E6 $EA    
    BCS L3EADF               ; EAD3  $B0 $0A        
    JSR $F053                ; EAD5  $20 $53 $F0    
    LDA $57                  ; EAD8  $A5 $57        
    JSR L3FE03               ; EADA  $20 $03 $FE    
L3EADD:              
    CLC                      ; EADD  $18            
    RTS                      ; EADE  $60            

L3EADF:              
    LDA $57                  ; EADF  $A5 $57        
    JSR L3FE03               ; EAE1  $20 $03 $FE    
    SEC                      ; EAE4  $38            
    RTS                      ; EAE5  $60            

L3EAE6:              
    LDY #$00                 ; EAE6  $A0 $00        
    LDA ($3E),Y              ; EAE8  $B1 $3E        
    BEQ L3EADD               ; EAEA  $F0 $F1        
    INC $3E                  ; EAEC  $E6 $3E        
    BNE L3EAF2               ; EAEE  $D0 $02        
    INC $3F                  ; EAF0  $E6 $3F        
L3EAF2:              
    CMP #$3B                 ; EAF2  $C9 $3B        
    BCC L3EB20               ; EAF4  $90 $2A        
    CMP #$6E                 ; EAF6  $C9 $6E        
    BCC L3EB09               ; EAF8  $90 $0F        
    LDY $90                  ; EAFA  $A4 $90        
    STA $07A0,Y              ; EAFC  $99 $A0 $07    
    LDA #$FF                 ; EAFF  $A9 $FF        
    STA $0780,Y              ; EB01  $99 $80 $07    
    INC $90                  ; EB04  $E6 $90        
    JMP L3EAE6               ; EB06  $4C $E6 $EA    
L3EB09:              
    TAX                      ; EB09  $AA            
    LDY $90                  ; EB0A  $A4 $90        
    LDA $EEA7,X              ; EB0C  $BD $A7 $EE    
    STA $07A0,Y              ; EB0F  $99 $A0 $07    
    LDA $EEDA,X              ; EB12  $BD $DA $EE    
    STA $07A1,Y              ; EB15  $99 $A1 $07    
    NOP                      ; EB18  $EA            
    INC $90                  ; EB19  $E6 $90        
    INC $90                  ; EB1B  $E6 $90        
    JMP L3EAE6               ; EB1D  $4C $E6 $EA    
L3EB20:              
    CMP #$10                 ; EB20  $C9 $10        
    BCC L3EB27               ; EB22  $90 $03        
    JMP L3EC02               ; EB24  $4C $02 $EC    
L3EB27:              
    CMP #$01                 ; EB27  $C9 $01        
    BNE L3EB3D               ; EB29  $D0 $12        
    JSR $F053                ; EB2B  $20 $53 $F0    
    INC $1F                  ; EB2E  $E6 $1F        
    INC $1F                  ; EB30  $E6 $1F        
    LDA $1F                  ; EB32  $A5 $1F        
    CMP $3D                  ; EB34  $C5 $3D        
    BCC L3EB3A               ; EB36  $90 $02        
    SEC                      ; EB38  $38            
    RTS                      ; EB39  $60            

L3EB3A:              
    JMP L3EAE6               ; EB3A  $4C $E6 $EA    
L3EB3D:              
    CMP #$02                 ; EB3D  $C9 $02        
    BNE L3EB50               ; EB3F  $D0 $0F        
    LDA #$00                 ; EB41  $A9 $00        
    JSR L3FE03               ; EB43  $20 $03 $FE    
    LDX $45                  ; EB46  $A6 $45        
    LDA $8C00,X              ; EB48  $BD $00 $8C    
    STA $84                  ; EB4B  $85 $84        
    JMP L3EC6C               ; EB4D  $4C $6C $EC    
L3EB50:              
    CMP #$03                 ; EB50  $C9 $03        
    BNE L3EB69               ; EB52  $D0 $15        
    LDA #$0E                 ; EB54  $A9 $0E        
    JSR L3FE03               ; EB56  $20 $03 $FE    
    LDX $45                  ; EB59  $A6 $45        
    JSR $EFAD                ; EB5B  $20 $AD $EF    
    JSR $89F3                ; EB5E  $20 $F3 $89    
    LDA $93                  ; EB61  $A5 $93        
    JSR L3FE03               ; EB63  $20 $03 $FE    
    JMP L3EAE6               ; EB66  $4C $E6 $EA    
L3EB69:              
    CMP #$04                 ; EB69  $C9 $04        
    BNE L3EB89               ; EB6B  $D0 $1C        
    LDA $61                  ; EB6D  $A5 $61        
    STA $80                  ; EB6F  $85 $80        
    LDA $62                  ; EB71  $A5 $62        
    STA $81                  ; EB73  $85 $81        
    LDA #$00                 ; EB75  $A9 $00        
    STA $82                  ; EB77  $85 $82        
    LDA #$0E                 ; EB79  $A9 $0E        
    JSR L3FE03               ; EB7B  $20 $03 $FE    
    JSR $89F3                ; EB7E  $20 $F3 $89    
    LDA $93                  ; EB81  $A5 $93        
    JSR L3FE03               ; EB83  $20 $03 $FE    
    JMP L3EAE6               ; EB86  $4C $E6 $EA    
L3EB89:              
    CMP #$05                 ; EB89  $C9 $05        
    BNE L3EB9D               ; EB8B  $D0 $10        
    LDA #$0E                 ; EB8D  $A9 $0E        
    JSR L3FE03               ; EB8F  $20 $03 $FE    
    JSR $89B5                ; EB92  $20 $B5 $89    
    LDA $93                  ; EB95  $A5 $93        
    JSR L3FE03               ; EB97  $20 $03 $FE    
    JMP L3EAE6               ; EB9A  $4C $E6 $EA    
L3EB9D:              
    CMP #$06                 ; EB9D  $C9 $06        
    BNE L3EBBA               ; EB9F  $D0 $19        
    LDA #$0E                 ; EBA1  $A9 $0E        
    JSR L3FE03               ; EBA3  $20 $03 $FE    
    LDX $9E                  ; EBA6  $A6 $9E        
    LDA $61                  ; EBA8  $A5 $61        
    CLC                      ; EBAA  $18            
    ADC #$01                 ; EBAB  $69 $01        
    STA $80                  ; EBAD  $85 $80        
    JSR $89C7                ; EBAF  $20 $C7 $89    
    LDA $93                  ; EBB2  $A5 $93        
    JSR L3FE03               ; EBB4  $20 $03 $FE    
    JMP L3EAE6               ; EBB7  $4C $E6 $EA    
L3EBBA:              
    CMP #$07                 ; EBBA  $C9 $07        
    BNE L3EBDF               ; EBBC  $D0 $21        
    LDA $6276                ; EBBE  $AD $76 $62    
    STA $5A                  ; EBC1  $85 $5A        
    LDA $6277                ; EBC3  $AD $77 $62    
    STA $5B                  ; EBC6  $85 $5B        
    LDA $6278                ; EBC8  $AD $78 $62    
    STA $5C                  ; EBCB  $85 $5C        
    LDA $6279                ; EBCD  $AD $79 $62    
    STA $5D                  ; EBD0  $85 $5D        
    LDA $627A                ; EBD2  $AD $7A $62    
    STA $5E                  ; EBD5  $85 $5E        
    LDA $627B                ; EBD7  $AD $7B $62    
    STA $5F                  ; EBDA  $85 $5F        
    JMP L3ED77               ; EBDC  $4C $77 $ED    
L3EBDF:              
    CMP #$0F                 ; EBDF  $C9 $0F        
    BNE L3EBFF               ; EBE1  $D0 $1C        
    LDX $90                  ; EBE3  $A6 $90        
    LDA #$76                 ; EBE5  $A9 $76        
    STA $0782,X              ; EBE7  $9D $82 $07    
    LDA #$FF                 ; EBEA  $A9 $FF        
    STA $0783,X              ; EBEC  $9D $83 $07    
    LDA #$77                 ; EBEF  $A9 $77        
    STA $07A2,X              ; EBF1  $9D $A2 $07    
    LDA #$FF                 ; EBF4  $A9 $FF        
    STA $07A3,X              ; EBF6  $9D $A3 $07    
    TXA                      ; EBF9  $8A            
    CLC                      ; EBFA  $18            
    ADC #$04                 ; EBFB  $69 $04        
    STA $90                  ; EBFD  $85 $90        
L3EBFF:              
    JMP L3EAE6               ; EBFF  $4C $E6 $EA    
L3EC02:              
    PHA                      ; EC02  $48            
    LDA ($3E),Y              ; EC03  $B1 $3E        
    STA $84                  ; EC05  $85 $84        
    INC $3E                  ; EC07  $E6 $3E        
    BNE L3EC0D               ; EC09  $D0 $02        
    INC $3F                  ; EC0B  $E6 $3F        
L3EC0D:              
    PLA                      ; EC0D  $68            
    CMP #$14                 ; EC0E  $C9 $14        
    BCS L3EC15               ; EC10  $B0 $03        
    JMP L3ECD0               ; EC12  $4C $D0 $EC    
L3EC15:              
    BNE L3EC1E               ; EC15  $D0 $07        
    LDA $84                  ; EC17  $A5 $84        
    STA $90                  ; EC19  $85 $90        
    JMP L3EAE6               ; EC1B  $4C $E6 $EA    
L3EC1E:              
    CMP #$18                 ; EC1E  $C9 $18        
    BCS L3EC6A               ; EC20  $B0 $48        
    SEC                      ; EC22  $38            
    SBC #$15                 ; EC23  $E9 $15        
    CLC                      ; EC25  $18            
    ADC #$78                 ; EC26  $69 $78        
    STA $81                  ; EC28  $85 $81        
    LDA #$00                 ; EC2A  $A9 $00        
    STA $80                  ; EC2C  $85 $80        
    LDA $84                  ; EC2E  $A5 $84        
    STA $90                  ; EC30  $85 $90        
    LDA ($3E),Y              ; EC32  $B1 $3E        
    STA $82                  ; EC34  $85 $82        
    INY                      ; EC36  $C8            
    LDA ($3E),Y              ; EC37  $B1 $3E        
    STA $83                  ; EC39  $85 $83        
    LDY #$F1                 ; EC3B  $A0 $F1        
    LDA ($80),Y              ; EC3D  $B1 $80        
    LDX $1E                  ; EC3F  $A6 $1E        
    BNE L3EC46               ; EC41  $D0 $03        
    INC $1E                  ; EC43  $E6 $1E        
    TXA                      ; EC45  $8A            
L3EC46:              
    TAX                      ; EC46  $AA            
    CLC                      ; EC47  $18            
    ADC #$04                 ; EC48  $69 $04        
    STA ($80),Y              ; EC4A  $91 $80        
    TXA                      ; EC4C  $8A            
    TAY                      ; EC4D  $A8            
    LDA $84                  ; EC4E  $A5 $84        
    CLC                      ; EC50  $18            
    ADC $97                  ; EC51  $65 $97        
    STA ($80),Y              ; EC53  $91 $80        
    LDA $98                  ; EC55  $A5 $98        
    CLC                      ; EC57  $18            
    ADC $1F                  ; EC58  $65 $1F        
    INY                      ; EC5A  $C8            
    STA ($80),Y              ; EC5B  $91 $80        
    INY                      ; EC5D  $C8            
    LDA $82                  ; EC5E  $A5 $82        
    STA ($80),Y              ; EC60  $91 $80        
    LDA $83                  ; EC62  $A5 $83        
    INY                      ; EC64  $C8            
    STA ($80),Y              ; EC65  $91 $80        
    JMP L3EAE6               ; EC67  $4C $E6 $EA    
L3EC6A:              
    BNE L3EC98               ; EC6A  $D0 $2C        
L3EC6C:              
    JSR $EDF9                ; EC6C  $20 $F9 $ED    
    LDA #$0A                 ; EC6F  $A9 $0A        
    JSR L3FE03               ; EC71  $20 $03 $FE    
    LDA $84                  ; EC74  $A5 $84        
    ASL A                    ; EC76  $0A            
    TAX                      ; EC77  $AA            
    BCS L3EC85               ; EC78  $B0 $0B        
    LDA $8200,X              ; EC7A  $BD $00 $82    
    STA $3E                  ; EC7D  $85 $3E        
    LDA $8201,X              ; EC7F  $BD $01 $82    
    JMP L3EC8D               ; EC82  $4C $8D $EC    
L3EC85:              
    LDA $8300,X              ; EC85  $BD $00 $83    
    STA $3E                  ; EC88  $85 $3E        
    LDA $8301,X              ; EC8A  $BD $01 $83    
L3EC8D:              
    STA $3F                  ; EC8D  $85 $3F        
    JSR L3EAE6               ; EC8F  $20 $E6 $EA    
    JSR $EE02                ; EC92  $20 $02 $EE    
    JMP L3EAE6               ; EC95  $4C $E6 $EA    
L3EC98:              
    CMP #$19                 ; EC98  $C9 $19        
    BNE L3ECB1               ; EC9A  $D0 $15        
    LDX $84                  ; EC9C  $A6 $84        
    LDA #$0E                 ; EC9E  $A9 $0E        
    JSR L3FE03               ; ECA0  $20 $03 $FE    
    JSR $EFAD                ; ECA3  $20 $AD $EF    
    JSR $89F3                ; ECA6  $20 $F3 $89    
    LDA $93                  ; ECA9  $A5 $93        
    JSR L3FE03               ; ECAB  $20 $03 $FE    
    JMP L3EAE6               ; ECAE  $4C $E6 $EA    
L3ECB1:              
    CMP #$1A                 ; ECB1  $C9 $1A        
    BNE L3ECBF               ; ECB3  $D0 $0A        
    LDX $84                  ; ECB5  $A6 $84        
    LDA $6060,X              ; ECB7  $BD $60 $60    
    STA $84                  ; ECBA  $85 $84        
    JMP L3EC6C               ; ECBC  $4C $6C $EC    
L3ECBF:              
    CMP #$1B                 ; ECBF  $C9 $1B        
    BNE L3ECCD               ; ECC1  $D0 $0A        
    LDX $84                  ; ECC3  $A6 $84        
    LDA $6080,X              ; ECC5  $BD $80 $60    
    STA $84                  ; ECC8  $85 $84        
    JMP L3EC6C               ; ECCA  $4C $6C $EC    
L3ECCD:              
    JMP L3EAE6               ; ECCD  $4C $E6 $EA    
L3ECD0:              
    LSR A                    ; ECD0  $4A            
    ROR A                    ; ECD1  $6A            
    ROR A                    ; ECD2  $6A            
    AND #$C0                 ; ECD3  $29 $C0        
    STA $67                  ; ECD5  $85 $67        
    LDA $84                  ; ECD7  $A5 $84        
    CMP #$20                 ; ECD9  $C9 $20        
    BCC L3ECEF               ; ECDB  $90 $12        
    PHA                      ; ECDD  $48            
    LDA #$0E                 ; ECDE  $A9 $0E        
    JSR L3FE03               ; ECE0  $20 $03 $FE    
    PLA                      ; ECE3  $68            
    JSR $8924                ; ECE4  $20 $24 $89    
    LDA $93                  ; ECE7  $A5 $93        
    JSR L3FE03               ; ECE9  $20 $03 $FE    
    JMP L3EAE6               ; ECEC  $4C $E6 $EA    
L3ECEF:              
    CMP #$00                 ; ECEF  $C9 $00        
    BNE L3ED00               ; ECF1  $D0 $0D        
    LDX $67                  ; ECF3  $A6 $67        
    LDA $6100,X              ; ECF5  $BD $00 $61    
    ASL A                    ; ECF8  $0A            
    LDA #$FE                 ; ECF9  $A9 $FE        
    ADC #$00                 ; ECFB  $69 $00        
    JMP L3ED29               ; ECFD  $4C $29 $ED    
L3ED00:              
    CMP #$01                 ; ED00  $C9 $01        
    BNE L3ED53               ; ED02  $D0 $4F        
    LDX $67                  ; ED04  $A6 $67        
    LDY #$07                 ; ED06  $A0 $07        
    LDA $6101,X              ; ED08  $BD $01 $61    
    BEQ L3ED26               ; ED0B  $F0 $19        
    ASL A                    ; ED0D  $0A            
    BCS ED25                 ; ED0E  $B0 $15        
    DEY                      ; ED10  $88            
    ASL A                    ; ED11  $0A            
    BCS ED25                 ; ED12  $B0 $11        
    DEY                      ; ED14  $88            
    ASL A                    ; ED15  $0A            
    BCS ED25                 ; ED16  $B0 $0D        
    DEY                      ; ED18  $88            
    ASL A                    ; ED19  $0A            
    BCS ED25                 ; ED1A  $B0 $09        
    DEY                      ; ED1C  $88            
    ASL A                    ; ED1D  $0A            
    BCS ED25                 ; ED1E  $B0 $05        
    DEY                      ; ED20  $88            
    ASL A                    ; ED21  $0A            
    BCS ED25                 ; ED22  $B0 $01        
    DEY                      ; ED24  $88            
ED25:
    TYA                      ; ED25  $98            
L3ED26:              
    CLC                      ; ED26  $18            
    ADC #$F6                 ; ED27  $69 $F6        
L3ED29:              
    ASL A                    ; ED29  $0A            
    TAX                      ; ED2A  $AA            
    JSR $EDF9                ; ED2B  $20 $F9 $ED    
    LDA #$0A                 ; ED2E  $A9 $0A        
    JSR L3FE03               ; ED30  $20 $03 $FE    
    BCS L3ED40               ; ED33  $B0 $0B        
    LDA $8400,X              ; ED35  $BD $00 $84    
    STA $3E                  ; ED38  $85 $3E        
    LDA $8401,X              ; ED3A  $BD $01 $84    
    JMP $ED48                ; ED3D  $4C $48 $ED    
L3ED40:              
    LDA $8500,X              ; ED40  $BD $00 $85    
    STA $3E                  ; ED43  $85 $3E        
    LDA $8501,X              ; ED45  $BD $01 $85    
    STA $3F                  ; ED48  $85 $3F        
    JSR L3EAE6               ; ED4A  $20 $E6 $EA    
    JSR $EE02                ; ED4D  $20 $02 $EE    
    JMP L3EAE6               ; ED50  $4C $E6 $EA    
L3ED53:              
    CMP #$02                 ; ED53  $C9 $02        
    BNE L3ED8E               ; ED55  $D0 $37        
    LDX $67                  ; ED57  $A6 $67        
    LDA $6102,X              ; ED59  $BD $02 $61    
    STA $5A                  ; ED5C  $85 $5A        
    LDA $6103,X              ; ED5E  $BD $03 $61    
    STA $5B                  ; ED61  $85 $5B        
    LDA $6104,X              ; ED63  $BD $04 $61    
    STA $5C                  ; ED66  $85 $5C        
    LDA $6105,X              ; ED68  $BD $05 $61    
    STA $5D                  ; ED6B  $85 $5D        
    LDA $6106,X              ; ED6D  $BD $06 $61    
    STA $5E                  ; ED70  $85 $5E        
    LDA $6107,X              ; ED72  $BD $07 $61    
    STA $5F                  ; ED75  $85 $5F        
L3ED77:              
    JSR $EDF9                ; ED77  $20 $F9 $ED    
    LDA #$5A                 ; ED7A  $A9 $5A        
    STA $3E                  ; ED7C  $85 $3E        
    LDA #$00                 ; ED7E  $A9 $00        
    STA $3F                  ; ED80  $85 $3F        
    JSR $EE0F                ; ED82  $20 $0F $EE    
    JSR L3EAE6               ; ED85  $20 $E6 $EA    
    JSR $EE02                ; ED88  $20 $02 $EE    
    JMP L3EAE6               ; ED8B  $4C $E6 $EA    
L3ED8E:              
    LDX #$00                 ; ED8E  $A2 $00        
    STX $03                  ; ED90  $86 $03        
    SEC                      ; ED92  $38            
    SBC #$03                 ; ED93  $E9 $03        
    CMP #$07                 ; ED95  $C9 $07        
    BCS L3ED9D               ; ED97  $B0 $04        
    ADC #$19                 ; ED99  $69 $19        
    BNE L3EDAF               ; ED9B  $D0 $12        
L3ED9D:              
    SBC #$07                 ; ED9D  $E9 $07        
    CLC                      ; ED9F  $18            
    ADC #$30                 ; EDA0  $69 $30        
    PHA                      ; EDA2  $48            
    LDX $67                  ; EDA3  $A6 $67        
    LDA $6101,X              ; EDA5  $BD $01 $61    
    AND #$10                 ; EDA8  $29 $10        
    ASL A                    ; EDAA  $0A            
    ASL A                    ; EDAB  $0A            
    STA $03                  ; EDAC  $85 $03        
    PLA                      ; EDAE  $68            
L3EDAF:              
    ADC $67                  ; EDAF  $65 $67        
    TAX                      ; EDB1  $AA            
    JSR $EDF9                ; EDB2  $20 $F9 $ED    
    LDA #$0A                 ; EDB5  $A9 $0A        
    JSR L3FE03               ; EDB7  $20 $03 $FE    
    LDA $6100,X              ; EDBA  $BD $00 $61    
    BNE L3EDF1               ; EDBD  $D0 $32        
    TXA                      ; EDBF  $8A            
    AND #$3F                 ; EDC0  $29 $3F        
    TAX                      ; EDC2  $AA            
    LDA #$00                 ; EDC3  $A9 $00        
    CPX #$1C                 ; EDC5  $E0 $1C        
    BCC L3EDCF               ; EDC7  $90 $06        
    CPX #$1E                 ; EDC9  $E0 $1E        
    BCS L3EDCF               ; EDCB  $B0 $02        
    LDA #$30                 ; EDCD  $A9 $30        
L3EDCF:              
    ASL A                    ; EDCF  $0A            
    TAX                      ; EDD0  $AA            
    BCS L3EDDE               ; EDD1  $B0 $0B        
    LDA $8200,X              ; EDD3  $BD $00 $82    
    STA $3E                  ; EDD6  $85 $3E        
    LDA $8201,X              ; EDD8  $BD $01 $82    
    JMP L3EDE6               ; EDDB  $4C $E6 $ED    
L3EDDE:              
    LDA $8300,X              ; EDDE  $BD $00 $83    
    STA $3E                  ; EDE1  $85 $3E        
    LDA $8301,X              ; EDE3  $BD $01 $83    
L3EDE6:              
    STA $3F                  ; EDE6  $85 $3F        
    JSR L3EAE6               ; EDE8  $20 $E6 $EA    
    JSR $EE02                ; EDEB  $20 $02 $EE    
    JMP L3EAE6               ; EDEE  $4C $E6 $EA    
L3EDF1:              
    BIT $03                  ; EDF1  $24 $03        
    BVC L3EDCF               ; EDF3  $50 $DA        
    LDA #$0F                 ; EDF5  $A9 $0F        
    BNE L3EDCF               ; EDF7  $D0 $D6        
   ;; sub start ;;
    LDA $3E                  ; EDF9  $A5 $3E        
    STA $99                  ; EDFB  $85 $99        
    LDA $3F                  ; EDFD  $A5 $3F        
    STA $9A                  ; EDFF  $85 $9A        
    RTS                      ; EE01  $60            

;; sub start ;;
    LDA $99                  ; EE02  $A5 $99        
    STA $3E                  ; EE04  $85 $3E        
    LDA $9A                  ; EE06  $A5 $9A        
    STA $3F                  ; EE08  $85 $3F        
    LDA $93                  ; EE0A  $A5 $93        
    JMP L3FE03               ; EE0C  $4C $03 $FE    

;; sub start ;;
    LDX #$05                 ; EE0F  $A2 $05        
EE11:
    LDA $5A,X                ; EE11  $B5 $5A        
    CMP #$FF                 ; EE13  $C9 $FF        
    BNE L3EE1E               ; EE15  $D0 $07        
    LDA #$00                 ; EE17  $A9 $00        
    STA $5A,X                ; EE19  $95 $5A        
    DEX                      ; EE1B  $CA            
    BPL EE11                 ; EE1C  $10 $F3        
L3EE1E:              
    RTS                      ; EE1E  $60            

;; sub start ;;
    LDA PpuStatus_2002       ; EE1F  $AD $02 $20    
    LDX $3A                  ; EE22  $A6 $3A        
    LDY $3B                  ; EE24  $A4 $3B        
    CPX #$20                 ; EE26  $E0 $20        
    BCS L3EE38               ; EE28  $B0 $0E        
    LDA $EEC2,Y              ; EE2A  $B9 $C2 $EE    
    STA PpuAddr_2006         ; EE2D  $8D $06 $20    
    TXA                      ; EE30  $8A            
    ORA $EEA2,Y              ; EE31  $19 $A2 $EE    
    STA PpuAddr_2006         ; EE34  $8D $06 $20    
    RTS                      ; EE37  $60            

L3EE38:              
    LDA $EEC2,Y              ; EE38  $B9 $C2 $EE    
    ORA #$04                 ; EE3B  $09 $04        
    STA PpuAddr_2006         ; EE3D  $8D $06 $20    
    TXA                      ; EE40  $8A            
    AND #$1F                 ; EE41  $29 $1F        
    ORA $EEA2,Y              ; EE43  $19 $A2 $EE    
    STA PpuAddr_2006         ; EE46  $8D $06 $20    
    RTS                      ; EE49  $60            

    LDX $3B                  ; EE4A  $A6 $3B        
    DEX                      ; EE4C  $CA            
    BPL EE51                 ; EE4D  $10 $02        
    LDX $3B                  ; EE4F  $A6 $3B        
EE51:
    LDA $3A                  ; EE51  $A5 $3A        
    AND #$1F                 ; EE53  $29 $1F        
    ORA $EEA2,X              ; EE55  $1D $A2 $EE    
    STA $54                  ; EE58  $85 $54        
    LDA $EEC2,X              ; EE5A  $BD $C2 $EE    
    STA $55                  ; EE5D  $85 $55        
    RTS                      ; EE5F  $60            

;; sub start ;;
    LDA #$08                 ; EE60  $A9 $08        
    BNE L3EE66               ; EE62  $D0 $02        
L3EE64:              
    LDA #$1C                 ; EE64  $A9 $1C        
L3EE66:              
    STA $3D                  ; EE66  $85 $3D        
    LDA #$1B                 ; EE68  $A9 $1B        
    STA $39                  ; EE6A  $85 $39        
    STA $3B                  ; EE6C  $85 $3B        
    LDA #$00                 ; EE6E  $A9 $00        
    STA $38                  ; EE70  $85 $38        
    LDA #$20                 ; EE72  $A9 $20        
    STA $3C                  ; EE74  $85 $3C        
    LDA $3D                  ; EE76  $A5 $3D        
    LSR A                    ; EE78  $4A            
L3EE79:              
    PHA                      ; EE79  $48            
    LDA $3C                  ; EE7A  $A5 $3C        
    STA $90                  ; EE7C  $85 $90        
    STA $91                  ; EE7E  $85 $91        
    LDY #$1F                 ; EE80  $A0 $1F        
    LDA #$00                 ; EE82  $A9 $00        
L3EE84:              
    STA $0780,Y              ; EE84  $99 $80 $07    
    STA $07A0,Y              ; EE87  $99 $A0 $07    
    DEY                      ; EE8A  $88            
    BPL L3EE84               ; EE8B  $10 $F7        
    JSR $F053                ; EE8D  $20 $53 $F0    
    LDA $3B                  ; EE90  $A5 $3B        
    SEC                      ; EE92  $38            
    SBC #$04                 ; EE93  $E9 $04        
    STA $3B                  ; EE95  $85 $3B        
    PLA                      ; EE97  $68            
    SEC                      ; EE98  $38            
    SBC #$01                 ; EE99  $E9 $01        
    BNE L3EE79               ; EE9B  $D0 $DC        
    LDA $57                  ; EE9D  $A5 $57        
    JMP L3FE03               ; EE9F  $4C $03 $FE    

 ;data block---
;; [EEA2 : 3EEB2]
.byte $00,$20,$40,$60,$80,$A0,$C0,$E0,$00,$20,$40,$60,$80,$A0 
;; [EEB0 : 3EEC0]
.byte $C0,$E0,$00,$20,$40,$60,$80,$A0,$C0,$E0,$00,$20,$40,$60,$80,$A0 
.byte $00,$20,$20,$20,$20,$20,$20,$20,$20,$20,$21,$21,$21,$21,$21,$21 
.byte $21,$21,$22,$22,$22,$22,$22,$22,$22,$22,$23,$23,$23,$23,$23,$23 
.byte $20,$20,$00,$AC,$B7,$A8,$A4,$AC,$B1,$A8,$FF,$B2,$B2,$AF,$B6,$A7 
.byte $FF,$B5,$FF,$FF,$A8,$FF,$B7,$BC,$B2,$A4,$B2,$AB,$AB,$A8,$B1,$AC
.byte $A7,$A8,$B6,$FF,$B2,$B1,$B7,$B7,$AC,$B9,$AF,$AF,$FF,$A4,$FF,$AA 
.byte $FF,$A4,$FF,$B0,$A8,$00,$B1,$AB,$A7,$B1,$B6,$AA,$B5,$A4,$B1,$B8 
.byte $AF,$FF,$FF,$B7,$A8,$A6,$BA,$FF,$A5,$FF,$FF,$B5,$B7,$FF,$A8,$A4 
.byte $A4,$A7,$B7,$A8,$B6,$B7,$AC,$A9,$B7,$AC,$B2,$B2,$A8,$A8,$AC,$92 
.byte $B5,$BC,$AB,$A9,$B6,$B0,$A8,$B7

;; sub start ;;
    LDA #$0E                 ; EF48  $A9 $0E        
    JSR L3FE03               ; EF4A  $20 $03 $FE    
    LDA $49                  ; EF4D  $A5 $49        
    BNE L3EF9B               ; EF4F  $D0 $4A        
    LDA #$00                 ; EF51  $A9 $00        
    JSR L3FE03               ; EF53  $20 $03 $FE    
    LDY $45                  ; EF56  $A4 $45        
    LDA $8C00,Y              ; EF58  $B9 $00 $8C    
    STA $80                  ; EF5B  $85 $80        
    LDA #$0E                 ; EF5D  $A9 $0E        
    JSR L3FE03               ; EF5F  $20 $03 $FE    
    LDA $80                  ; EF62  $A5 $80        
    JSR $9873                ; EF64  $20 $73 $98    
    BCS L3EF98               ; EF67  $B0 $2F        
    LDA $45                  ; EF69  $A5 $45        
    CMP #$E0                 ; EF6B  $C9 $E0        
    BCC L3EF7D               ; EF6D  $90 $0E        
    AND #$1F                 ; EF6F  $29 $1F        
    STA $6A                  ; EF71  $85 $6A        
    LDA #$20                 ; EF73  $A9 $20        
    STA $44                  ; EF75  $85 $44        
    JSR $F010                ; EF77  $20 $10 $F0    
    LDA #$4C                 ; EF7A  $A9 $4C        
    RTS                      ; EF7C  $60            

L3EF7D:              
    LDA $80                  ; EF7D  $A5 $80        
    CMP #$0F                 ; EF7F  $C9 $0F        
    BCC L3EF8E               ; EF81  $90 $0B        
    CMP #$60                 ; EF83  $C9 $60        
    BEQ L3EF8E               ; EF85  $F0 $07        
    LDA #$48                 ; EF87  $A9 $48        
    STA $E0                  ; EF89  $85 $E0        
    JMP L3EF92               ; EF8B  $4C $92 $EF    
L3EF8E:              
    LDA #$47                 ; EF8E  $A9 $47        
    STA $E0                  ; EF90  $85 $E0        
L3EF92:              
    JSR $F010                ; EF92  $20 $10 $F0    
    LDA #$01                 ; EF95  $A9 $01        
    RTS                      ; EF97  $60            

L3EF98:              
    LDA #$03                 ; EF98  $A9 $03        
    RTS                      ; EF9A  $60            

L3EF9B:              
    LDX $45                  ; EF9B  $A6 $45        
    JSR $EFAD                ; EF9D  $20 $AD $EF    
    JSR $EFCF                ; EFA0  $20 $CF $EF    
    JSR $F010                ; EFA3  $20 $10 $F0    
    LDA #$48                 ; EFA6  $A9 $48        
    STA $E0                  ; EFA8  $85 $E0        
    LDA #$02                 ; EFAA  $A9 $02        
    RTS                      ; EFAC  $60            

;; sub start ;;
    TXA                      ; EFAD  $8A            
    ASL A                    ; EFAE  $0A            
    TAX                      ; EFAF  $AA            
    BCS L3EFBD               ; EFB0  $B0 $0B        
    LDA $8000,X              ; EFB2  $BD $00 $80    
    STA $80                  ; EFB5  $85 $80        
    LDA $8001,X              ; EFB7  $BD $01 $80    
    JMP $EFC5                ; EFBA  $4C $C5 $EF    
L3EFBD:              
    LDA $8100,X              ; EFBD  $BD $00 $81    
    STA $80                  ; EFC0  $85 $80        
    LDA $8101,X              ; EFC2  $BD $01 $81    
    STA $81                  ; EFC5  $85 $81        
    LDA #$00                 ; EFC7  $A9 $00        
    STA $82                  ; EFC9  $85 $82        
    TXA                      ; EFCB  $8A            
    LSR A                    ; EFCC  $4A            
    TAX                      ; EFCD  $AA            
    RTS                      ; EFCE  $60            

    LDA $601C                ; EFCF  $AD $1C $60    
    CLC                      ; EFD2  $18            
    ADC $80                  ; EFD3  $65 $80        
    STA $601C                ; EFD5  $8D $1C $60    
    LDA $601D                ; EFD8  $AD $1D $60    
    ADC $81                  ; EFDB  $65 $81        
    STA $601D                ; EFDD  $8D $1D $60    
    LDA $601E                ; EFE0  $AD $1E $60    
    ADC #$00                 ; EFE3  $69 $00        
    STA $601E                ; EFE5  $8D $1E $60    
    CMP #$98                 ; EFE8  $C9 $98        
    BCS F000                 ; EFEA  $B0 $14        
    BCC F00F                 ; EFEC  $90 $21        
    LDA $601D                ; EFEE  $AD $1D $60    
    CMP #$96                 ; EFF1  $C9 $96        
    BCC F00F                 ; EFF3  $90 $1A        
    BEQ EFF9                 ; EFF5  $F0 $02        
    BCS F000                 ; EFF7  $B0 $07        
EFF9:
    LDA $601C                ; EFF9  $AD $1C $60    
    CMP #$80                 ; EFFC  $C9 $80        
    BCC F00F                 ; EFFE  $90 $0F        
F000:
    LDA #$7F                 ; F000  $A9 $7F        
    STA $601C                ; F002  $8D $1C $60    
    LDA #$96                 ; F005  $A9 $96        
    STA $601D                ; F007  $8D $1D $60    
    LDA #$98                 ; F00A  $A9 $98        
    STA $601E                ; F00C  $8D $1E $60    
F00F:
    RTS                      ; F00F  $60            

;; sub start ;;
    LDA $45                  ; F010  $A5 $45        
    AND #$07                 ; F012  $29 $07        
    TAX                      ; F014  $AA            
    LDA $F029,X              ; F015  $BD $29 $F0    
    STA $80                  ; F018  $85 $80        
    LDA $45                  ; F01A  $A5 $45        
    LSR A                    ; F01C  $4A            
    LSR A                    ; F01D  $4A            
    LSR A                    ; F01E  $4A            
    TAX                      ; F01F  $AA            
    LDA $80                  ; F020  $A5 $80        
    EOR $6020,X              ; F022  $5D $20 $60    
    STA $6020,X              ; F025  $9D $20 $60    
    RTS                      ; F028  $60            

 ;data block---
.byte $01,$02,$04,$08,$10,$20,$40 
;; [F030 : 3F040]
.byte $80

;; sub start ;;
    LDA $3C                  ; F031  $A5 $3C        
    STA $91                  ; F033  $85 $91        
    LDA $38                  ; F035  $A5 $38        
    AND #$1F                 ; F037  $29 $1F        
    EOR #$1F                 ; F039  $49 $1F        
    CLC                      ; F03B  $18            
    ADC #$01                 ; F03C  $69 $01        
    CMP $3C                  ; F03E  $C5 $3C        
    BCS L3F044               ; F040  $B0 $02        
    STA $91                  ; F042  $85 $91        
L3F044:              
    LDY #$1D                 ; F044  $A0 $1D        
    LDA #$FF                 ; F046  $A9 $FF        
L3F048:              
    STA $0780,Y              ; F048  $99 $80 $07    
    STA $07A0,Y              ; F04B  $99 $A0 $07    
    DEY                      ; F04E  $88            
    BPL L3F048               ; F04F  $10 $F7        
    CLC                      ; F051  $18            
    RTS                      ; F052  $60            

;; sub start ;;
    JSR $FE00                ; F053  $20 $00 $FE    
    INC $F0                  ; F056  $E6 $F0        
    JSR $F069                ; F058  $20 $69 $F0    
    JSR $E9D5                ; F05B  $20 $D5 $E9    
    JSR L3C746               ; F05E  $20 $46 $C7    
    LDA $93                  ; F061  $A5 $93        
    JSR L3FE03               ; F063  $20 $03 $FE    
    JMP L3F044               ; F066  $4C $44 $F0    

;; sub start ;;
    LDA $38                  ; F069  $A5 $38        
    STA $3A                  ; F06B  $85 $3A        
    JSR $EE1F                ; F06D  $20 $1F $EE    
    LDX #$00                 ; F070  $A2 $00        
L3F072:              
    LDA $0780,X              ; F072  $BD $80 $07    
    STA PpuData_2007         ; F075  $8D $07 $20    
    INX                      ; F078  $E8            
    CPX $91                  ; F079  $E4 $91        
    BCC L3F072               ; F07B  $90 $F5        
    CPX $3C                  ; F07D  $E4 $3C        
    BCS L3F099               ; F07F  $B0 $18        
    LDA $3A                  ; F081  $A5 $3A        
    AND #$20                 ; F083  $29 $20        
    EOR #$20                 ; F085  $49 $20        
    STA $3A                  ; F087  $85 $3A        
    JSR $EE1F                ; F089  $20 $1F $EE    
    LDX $91                  ; F08C  $A6 $91        
L3F08E:              
    LDA $0780,X              ; F08E  $BD $80 $07    
    STA PpuData_2007         ; F091  $8D $07 $20    
    INX                      ; F094  $E8            
    CPX $3C                  ; F095  $E4 $3C        
    BCC L3F08E               ; F097  $90 $F5        
L3F099:              
    LDA $38                  ; F099  $A5 $38        
    STA $3A                  ; F09B  $85 $3A        
    LDA $3B                  ; F09D  $A5 $3B        
    CLC                      ; F09F  $18            
    ADC #$01                 ; F0A0  $69 $01        
    STA $3B                  ; F0A2  $85 $3B        
    JSR $EE1F                ; F0A4  $20 $1F $EE    
    LDX #$00                 ; F0A7  $A2 $00        
L3F0A9:              
    LDA $07A0,X              ; F0A9  $BD $A0 $07    
    STA PpuData_2007         ; F0AC  $8D $07 $20    
    INX                      ; F0AF  $E8            
    CPX $91                  ; F0B0  $E4 $91        
    BCC L3F0A9               ; F0B2  $90 $F5        
    CPX $3C                  ; F0B4  $E4 $3C        
    BCS L3F0D0               ; F0B6  $B0 $18        
    LDA $3A                  ; F0B8  $A5 $3A        
    AND #$20                 ; F0BA  $29 $20        
    EOR #$20                 ; F0BC  $49 $20        
    STA $3A                  ; F0BE  $85 $3A        
    JSR $EE1F                ; F0C0  $20 $1F $EE    
    LDX $91                  ; F0C3  $A6 $91        
L3F0C5:              
    LDA $07A0,X              ; F0C5  $BD $A0 $07    
    STA PpuData_2007         ; F0C8  $8D $07 $20    
    INX                      ; F0CB  $E8            
    CPX $3C                  ; F0CC  $E4 $3C        
    BCC L3F0C5               ; F0CE  $90 $F5        
L3F0D0:              
    LDA #$00                 ; F0D0  $A9 $00        
    STA $90                  ; F0D2  $85 $90        
    LDA $3B                  ; F0D4  $A5 $3B        
    CLC                      ; F0D6  $18            
    ADC #$01                 ; F0D7  $69 $01        
    CMP #$1E                 ; F0D9  $C9 $1E        
    BCC L3F0DF               ; F0DB  $90 $02        
    SBC #$1E                 ; F0DD  $E9 $1E        
L3F0DF:              
    STA $3B                  ; F0DF  $85 $3B        
    RTS                      ; F0E1  $60            

    LDA #$00                 ; F0E2  $A9 $00        
    STA PpuMask_2001         ; F0E4  $8D $01 $20    
    LDA #$88                 ; F0E7  $A9 $88        
    STA $FF                  ; F0E9  $85 $FF        
    JSR $E491                ; F0EB  $20 $91 $E4    
    JSR $F321                ; F0EE  $20 $21 $F3    
    LDA #$0F                 ; F0F1  $A9 $0F        
    STA $03CE                ; F0F3  $8D $CE $03    
    LDA #$07                 ; F0F6  $A9 $07        
    STA $38                  ; F0F8  $85 $38        
    LDA #$05                 ; F0FA  $A9 $05        
    STA $39                  ; F0FC  $85 $39        
    LDA #$12                 ; F0FE  $A9 $12        
    STA $3C                  ; F100  $85 $3C        
    LDA #$12                 ; F102  $A9 $12        
    STA $3D                  ; F104  $85 $3D        
    LDA #$01                 ; F106  $A9 $01        
    STA $37                  ; F108  $85 $37        
    JSR $C46E                ; F10A  $20 $6E $C4    
    JSR $FE00                ; F10D  $20 $00 $FE    
    JSR $DC30                ; F110  $20 $30 $DC    
    LDA #$02                 ; F113  $A9 $02        
    STA SpriteDma_4014       ; F115  $8D $14 $40    
    LDA $FF                  ; F118  $A5 $FF        
    STA PpuControl_2000      ; F11A  $8D $00 $20    
    LDA #$00                 ; F11D  $A9 $00        
    STA PpuScroll_2005       ; F11F  $8D $05 $20    
    STA PpuScroll_2005       ; F122  $8D $05 $20    
    LDA #$0E                 ; F125  $A9 $0E        
    STA $57                  ; F127  $85 $57        
    LDA #$1E                 ; F129  $A9 $1E        
    STA PpuMask_2001         ; F12B  $8D $01 $20    
    JSR L3E91E               ; F12E  $20 $1E $E9    
    JSR $F246                ; F131  $20 $46 $F2    
    JSR L3DBA2               ; F134  $20 $A2 $DB    
    LDA $20                  ; F137  $A5 $20        
    AND #$0C                 ; F139  $29 $0C        
    STA $66                  ; F13B  $85 $66        
    LDA #$00                 ; F13D  $A9 $00        
    STA $24                  ; F13F  $85 $24        
    STA $25                  ; F141  $85 $25        
    LDA #$00                 ; F143  $A9 $00        
    STA $65                  ; F145  $85 $65        
    LDA #$80                 ; F147  $A9 $80        
    STA $62                  ; F149  $85 $62        
    STA $63                  ; F14B  $85 $63        
    STA $64                  ; F14D  $85 $64        
    STA $61                  ; F14F  $85 $61        
    LDA #$03                 ; F151  $A9 $03        
    STA $67                  ; F153  $85 $67        
    LDA $62F5                ; F155  $AD $F5 $62    
    BMI F15C                 ; F158  $30 $02        
    INC $67                  ; F15A  $E6 $67        
F15C:
    JSR $FE00                ; F15C  $20 $00 $FE    
    LDA #$02                 ; F15F  $A9 $02        
    STA SpriteDma_4014       ; F161  $8D $14 $40    
    LDA $FF                  ; F164  $A5 $FF        
    STA PpuControl_2000      ; F166  $8D $00 $20    
    LDA #$1E                 ; F169  $A9 $1E        
    STA PpuMask_2001         ; F16B  $8D $01 $20    
    LDA #$00                 ; F16E  $A9 $00        
    STA PpuScroll_2005       ; F170  $8D $05 $20    
    STA PpuScroll_2005       ; F173  $8D $05 $20    
    INC $F0                  ; F176  $E6 $F0        
    LDA #$0E                 ; F178  $A9 $0E        
    STA $57                  ; F17A  $85 $57        
    JSR L3C74F               ; F17C  $20 $4F $C7    
    JSR $C46E                ; F17F  $20 $6E $C4    
    JSR $F212                ; F182  $20 $12 $F2    
    JSR $F200                ; F185  $20 $00 $F2    
    JSR $F1A1                ; F188  $20 $A1 $F1    
    JSR $F299                ; F18B  $20 $99 $F2    
    JSR $F2C8                ; F18E  $20 $C8 $F2    
    JMP $F15C                ; F191  $4C $5C $F1    
F194:
    PLA                      ; F194  $68            
    PLA                      ; F195  $68            
    LDA #$00                 ; F196  $A9 $00        
    STA PpuMask_2001         ; F198  $8D $01 $20    
    STA ApuStatus_4015       ; F19B  $8D $15 $40    
    STA $25                  ; F19E  $85 $25        
F1A0:
    RTS                      ; F1A0  $60            

    JSR L3DBA2               ; F1A1  $20 $A2 $DB    
    LDA $25                  ; F1A4  $A5 $25        
    BNE F194                 ; F1A6  $D0 $EC        
    LDA $24                  ; F1A8  $A5 $24        
    BNE F1DB                 ; F1AA  $D0 $2F        
    LDA $20                  ; F1AC  $A5 $20        
    AND #$0C                 ; F1AE  $29 $0C        
    CMP $66                  ; F1B0  $C5 $66        
    BEQ F1A0                 ; F1B2  $F0 $EC        
    STA $66                  ; F1B4  $85 $66        
    AND #$0C                 ; F1B6  $29 $0C        
    BEQ F1A0                 ; F1B8  $F0 $E6        
    CMP #$08                 ; F1BA  $C9 $08        
    BEQ F1CB                 ; F1BC  $F0 $0D        
    LDA $65                  ; F1BE  $A5 $65        
    CLC                      ; F1C0  $18            
    ADC #$01                 ; F1C1  $69 $01        
    CMP $67                  ; F1C3  $C5 $67        
    BCC F1D4                 ; F1C5  $90 $0D        
    SBC $67                  ; F1C7  $E5 $67        
    BCS F1D4                 ; F1C9  $B0 $09        
F1CB:
    LDA $65                  ; F1CB  $A5 $65        
    SEC                      ; F1CD  $38            
    SBC #$01                 ; F1CE  $E9 $01        
    BCS F1D4                 ; F1D0  $B0 $02        
    ADC $67                  ; F1D2  $65 $67        
F1D4:
    AND #$03                 ; F1D4  $29 $03        
    STA $65                  ; F1D6  $85 $65        
    JMP $DB45                ; F1D8  $4C $45 $DB    
F1DB:
    JSR L3DB2E               ; F1DB  $20 $2E $DB    
    LDA #$00                 ; F1DE  $A9 $00        
    STA $24                  ; F1E0  $85 $24        
    LDA $65                  ; F1E2  $A5 $65        
    LSR A                    ; F1E4  $4A            
    ROR A                    ; F1E5  $6A            
    ROR A                    ; F1E6  $6A            
    TAX                      ; F1E7  $AA            
    LDA $6101,X              ; F1E8  $BD $01 $61    
    AND #$C0                 ; F1EB  $29 $C0        
    BNE F1FD                 ; F1ED  $D0 $0E        
    LDY $65                  ; F1EF  $A4 $65        
    LDX $F2C4,Y              ; F1F1  $BE $C4 $F2    
    LDA $6200,X              ; F1F4  $BD $00 $62    
    EOR #$01                 ; F1F7  $49 $01        
    STA $6200,X              ; F1F9  $9D $00 $62    
    RTS                      ; F1FC  $60            

F1FD:
    JMP L3DE67               ; F1FD  $4C $67 $DE    
    LDX $65                  ; F200  $A6 $65        
    LDA #$40                 ; F202  $A9 $40        
    STA $40                  ; F204  $85 $40        
    LDA $F20E,X              ; F206  $BD $0E $F2    
    STA $41                  ; F209  $85 $41        
    JMP L3DEA1               ; F20B  $4C $A1 $DE    

;data block---
.byte $47,$67 
;; [F210 : 3F220]
.byte $87,$A7,$A9,$2F,$85,$41,$A5,$61,$85,$40,$A2,$00,$20,$52,$88,$A9 
.byte $4F,$85,$41,$A5,$62,$85,$40,$A2,$40,$20,$52,$88,$A9,$6F,$85,$41 
.byte $A5,$63,$85,$40,$A2,$80,$20,$52,$88,$A9,$8F,$85,$41,$A5,$64,$85 
.byte $40,$A2,$C0,$4C,$52,$88,$AD,$F5,$62,$30,$11,$A9,$80,$85,$3E,$A9 
.byte $F2,$85,$3F,$A9,$0E,$85,$57,$85,$93,$4C,$AC,$EA,$A9,$6D,$85,$3E 
.byte $A9,$F2,$85,$3F,$A9,$0E,$85,$57,$85,$93,$4C,$AC,$EA,$01,$FF,$FF 
.byte $10,$02,$01,$01,$FF,$FF,$11,$02,$01,$01,$FF,$FF,$12,$02,$00,$00 
.byte $01,$FF,$FF,$10,$02,$01,$01,$FF,$FF,$11,$02,$01,$01,$FF,$FF,$12 
.byte $02,$01,$01,$FF,$FF,$13,$02,$00,$00

   LDY #$03                 ; F299  $A0 $03        
F29B:
    LDX $F2C4,Y              ; F29B  $BE $C4 $F2    
    LDA $6200,X              ; F29E  $BD $00 $62    
    LSR A                    ; F2A1  $4A            
    BCC F2B4                 ; F2A2  $90 $10        
    LDA $0061,Y              ; F2A4  $B9 $61 $00    
    CMP #$81                 ; F2A7  $C9 $81        
    BCC F2B0                 ; F2A9  $90 $05        
    LDA #$80                 ; F2AB  $A9 $80        
    STA $0061,Y              ; F2AD  $99 $61 $00    
F2B0:
    DEY                      ; F2B0  $88            
    BPL F29B                 ; F2B1  $10 $E8        
    RTS                      ; F2B3  $60            

F2B4:
    LDA $0061,Y              ; F2B4  $B9 $61 $00    
    CMP #$A7                 ; F2B7  $C9 $A7        
    BCS F2B0                 ; F2B9  $B0 $F5        
    LDA #$A8                 ; F2BB  $A9 $A8        
    STA $0061,Y              ; F2BD  $99 $61 $00    
    JMP $F2B0                ; F2C0  $4C $B0 $F2    
    RTS                      ; F2C3  $60            

    AND $75,X                ; F2C4  $35 $75        
    LDA $F5,X                ; F2C6  $B5 $F5        
    LDA $62F5                ; F2C8  $AD $F5 $62    
    BPL F2CF                 ; F2CB  $10 $02        
    LDA #$00                 ; F2CD  $A9 $00        
F2CF:
    ORA $62B5                ; F2CF  $0D $B5 $62    
    ORA $6275                ; F2D2  $0D $75 $62    
    ORA $6235                ; F2D5  $0D $35 $62    
    LSR A                    ; F2D8  $4A            
    BCS F2E7                 ; F2D9  $B0 $0C        
    LDA $6101                ; F2DB  $AD $01 $61    
    AND #$C0                 ; F2DE  $29 $C0        
    BNE F2E8                 ; F2E0  $D0 $06        
    LDA #$01                 ; F2E2  $A9 $01        
    STA $6235                ; F2E4  $8D $35 $62    
F2E7:
    RTS                      ; F2E7  $60            

F2E8:
    LDA $6141                ; F2E8  $AD $41 $61    
    AND #$C0                 ; F2EB  $29 $C0        
    BNE F2F5                 ; F2ED  $D0 $06        
    LDA #$01                 ; F2EF  $A9 $01        
    STA $6275                ; F2F1  $8D $75 $62    
    RTS                      ; F2F4  $60            

F2F5:
    LDA $6181                ; F2F5  $AD $81 $61    
    AND #$C0                 ; F2F8  $29 $C0        
    BNE F302                 ; F2FA  $D0 $06        
    LDA #$01                 ; F2FC  $A9 $01        
    STA $62B5                ; F2FE  $8D $B5 $62    
    RTS                      ; F301  $60            

F302:
    LDA #$01                 ; F302  $A9 $01        
    STA $62F5                ; F304  $8D $F5 $62    
    RTS                      ; F307  $60            

    LDA $6101                ; F308  $AD $01 $61    
    AND #$E0                 ; F30B  $29 $E0        
    BEQ F31F                 ; F30D  $F0 $10        
    LDA $6141                ; F30F  $AD $41 $61    
    AND #$E0                 ; F312  $29 $E0        
    BEQ F31F                 ; F314  $F0 $09        
    LDA $6181                ; F316  $AD $81 $61    
    AND #$E0                 ; F319  $29 $E0        
    BEQ F31F                 ; F31B  $F0 $02        
    SEC                      ; F31D  $38            
    RTS                      ; F31E  $60            

F31F:
    CLC                      ; F31F  $18            
    RTS                      ; F320  $60            

;; sub start ;;
    LDA PpuStatus_2002       ; F321  $AD $02 $20    
    LDA #$20                 ; F324  $A9 $20        
    STA PpuAddr_2006         ; F326  $8D $06 $20    
    LDA #$00                 ; F329  $A9 $00        
    STA PpuAddr_2006         ; F32B  $8D $06 $20    
    LDY #$00                 ; F32E  $A0 $00        
    TYA                      ; F330  $98            
    LDX #$03                 ; F331  $A2 $03        
L3F333:              
    STA PpuData_2007         ; F333  $8D $07 $20    
    INY                      ; F336  $C8            
    BNE L3F333               ; F337  $D0 $FA        
    DEX                      ; F339  $CA            
    BNE L3F333               ; F33A  $D0 $F7        
L3F33C:              
    STA PpuData_2007         ; F33C  $8D $07 $20    
    INY                      ; F33F  $C8            
    CPY #$C0                 ; F340  $C0 $C0        
    BCC L3F33C               ; F342  $90 $F8        
    LDA #$FF                 ; F344  $A9 $FF        
L3F346:              
    STA PpuData_2007         ; F346  $8D $07 $20    
    INY                      ; F349  $C8            
    BNE L3F346               ; F34A  $D0 $FA        
    RTS                      ; F34C  $60            

    LDA #$00                 ; F34D  $A9 $00        
    STA $61                  ; F34F  $85 $61        
    STA $62                  ; F351  $85 $62        
    LDA $FD                  ; F353  $A5 $FD        
    ORA #$04                 ; F355  $09 $04        
    STA $FF                  ; F357  $85 $FF        
    STA PpuControl_2000      ; F359  $8D $00 $20    
    JSR $F3D1                ; F35C  $20 $D1 $F3    
    LDA #$10                 ; F35F  $A9 $10        
    STA $62                  ; F361  $85 $62        
    JSR $F3D1                ; F363  $20 $D1 $F3    
    LDA #$00                 ; F366  $A9 $00        
    STA PpuMask_2001         ; F368  $8D $01 $20    
    LDA #$88                 ; F36B  $A9 $88        
    STA $FF                  ; F36D  $85 $FF        
    STA PpuControl_2000      ; F36F  $8D $00 $20    
    JSR $E5CE                ; F372  $20 $CE $E5    
    JSR $F321                ; F375  $20 $21 $F3    
    JSR $F427                ; F378  $20 $27 $F4    
    LDA #$0F                 ; F37B  $A9 $0F        
    STA $03CD                ; F37D  $8D $CD $03    
    STA $03CE                ; F380  $8D $CE $03    
    STA $03C0                ; F383  $8D $C0 $03    
    STA $03D0                ; F386  $8D $D0 $03    
    LDA #$30                 ; F389  $A9 $30        
    STA $03CF                ; F38B  $8D $CF $03    
    JSR $F408                ; F38E  $20 $08 $F4    
    LDA #$0E                 ; F391  $A9 $0E        
    JSR L3FE03               ; F393  $20 $03 $FE    
    JSR $BAAF                ; F396  $20 $AF $BA    
    JSR $F3B0                ; F399  $20 $B0 $F3    
    JSR $E462                ; F39C  $20 $62 $E4    
    JSR $F427                ; F39F  $20 $27 $F4    
    JSR $BCA7                ; F3A2  $20 $A7 $BC    
    JSR $F408                ; F3A5  $20 $08 $F4    
    LDA #$0E                 ; F3A8  $A9 $0E        
    JSR L3FE03               ; F3AA  $20 $03 $FE    
    JMP $B9DE                ; F3AD  $4C $DE $B9    
    JSR $F3BC                ; F3B0  $20 $BC $F3    
    JSR $F3BC                ; F3B3  $20 $BC $F3    
    JSR $F3BC                ; F3B6  $20 $BC $F3    
    JSR $F3BC                ; F3B9  $20 $BC $F3    
    LDA #$E8                 ; F3BC  $A9 $E8        
F3BE:
    PHA                      ; F3BE  $48            
    JSR $FE00                ; F3BF  $20 $00 $FE    
    LDA #$02                 ; F3C2  $A9 $02        
    STA SpriteDma_4014       ; F3C4  $8D $14 $40    
    JSR L3C746               ; F3C7  $20 $46 $C7    
    PLA                      ; F3CA  $68            
    SEC                      ; F3CB  $38            
    SBC #$01                 ; F3CC  $E9 $01        
    BNE F3BE                 ; F3CE  $D0 $EE        
    RTS                      ; F3D0  $60            

F3D1:
    JSR $F3EB                ; F3D1  $20 $EB $F3    
    LDA $61                  ; F3D4  $A5 $61        
    CLC                      ; F3D6  $18            
    ADC #$08                 ; F3D7  $69 $08        
    STA $61                  ; F3D9  $85 $61        
    CMP #$20                 ; F3DB  $C9 $20        
    BCC F3D1                 ; F3DD  $90 $F2        
    AND #$1F                 ; F3DF  $29 $1F        
    CLC                      ; F3E1  $18            
    ADC #$01                 ; F3E2  $69 $01        
    STA $61                  ; F3E4  $85 $61        
    AND #$07                 ; F3E6  $29 $07        
    BNE F3D1                 ; F3E8  $D0 $E7        
    RTS                      ; F3EA  $60            

    JSR $FE00                ; F3EB  $20 $00 $FE    
    LDA $62                  ; F3EE  $A5 $62        
    STA PpuAddr_2006         ; F3F0  $8D $06 $20    
    LDA $61                  ; F3F3  $A5 $61        
    STA PpuAddr_2006         ; F3F5  $8D $06 $20    
    LDA #$00                 ; F3F8  $A9 $00        
    LDX #$80                 ; F3FA  $A2 $80        
F3FC:
    STA PpuData_2007         ; F3FC  $8D $07 $20    
    DEX                      ; F3FF  $CA            
    BNE F3FC                 ; F400  $D0 $FA        
    JSR $F453                ; F402  $20 $53 $F4    
    JMP L3C746               ; F405  $4C $46 $C7    
    JSR $C46E                ; F408  $20 $6E $C4    
    JSR $FE00                ; F40B  $20 $00 $FE    
    LDA #$1E                 ; F40E  $A9 $1E        
    STA PpuMask_2001         ; F410  $8D $01 $20    
    LDA #$02                 ; F413  $A9 $02        
    STA SpriteDma_4014       ; F415  $8D $14 $40    
    JSR $DC30                ; F418  $20 $30 $DC    
    BIT PpuStatus_2002       ; F41B  $2C $02 $20    
    LDA #$00                 ; F41E  $A9 $00        
    STA PpuScroll_2005       ; F420  $8D $05 $20    
    STA PpuScroll_2005       ; F423  $8D $05 $20    
    RTS                      ; F426  $60            

    LDX #$1F                 ; F427  $A2 $1F        
F429:
    LDA $F433,X              ; F429  $BD $33 $F4    
    STA $03C0,X              ; F42C  $9D $C0 $03    
    DEX                      ; F42F  $CA            
    BPL F429                 ; F430  $10 $F7        
    RTS                      ; F432  $60            

 ;data block---     
;; [F433 : 3F443]
.byte $12,$30,$0F,$0F,$12,$0F,$0F,$0F,$12,$0F,$18,$28,$12 
;; [F440 : 3F450]
.byte $0F,$02,$31,$12,$23,$16,$30,$0F,$17,$27,$30,$0F,$12,$17,$37,$0F 
.byte $0F,$02,$31,$2C,$02

    JSR $FFA5                ; F455  $20 $A5 $FF    
    STA PpuControl_2000      ; F458  $8D $00 $20    
    LDX $27                  ; F45B  $A6 $27        
    LDA $2D                  ; F45D  $A5 $2D        
    LSR A                    ; F45F  $4A            
    BCC F464                 ; F460  $90 $02        
    LDX $29                  ; F462  $A6 $29        
F464:
    TXA                      ; F464  $8A            
    ASL A                    ; F465  $0A            
    ASL A                    ; F466  $0A            
    ASL A                    ; F467  $0A            
    ASL A                    ; F468  $0A            
    STA PpuScroll_2005       ; F469  $8D $05 $20    
    LDA $2F                  ; F46C  $A5 $2F        
    ASL A                    ; F46E  $0A            
    ASL A                    ; F46F  $0A            
    ASL A                    ; F470  $0A            
    ASL A                    ; F471  $0A            
    STA PpuScroll_2005       ; F472  $8D $05 $20    
    RTS                      ; F475  $60            

    LDA #$88                 ; F476  $A9 $88        
    STA $FF                  ; F478  $85 $FF        
    STA PpuControl_2000      ; F47A  $8D $00 $20    
    LDA #$00                 ; F47D  $A9 $00        
    STA PpuMask_2001         ; F47F  $8D $01 $20    
    STA ApuStatus_4015       ; F482  $8D $15 $40    
    BIT PpuStatus_2002       ; F485  $2C $02 $20    
    LDY #$00                 ; F488  $A0 $00        
    LDX #$04                 ; F48A  $A2 $04        
    LDA #$20                 ; F48C  $A9 $20        
    STA PpuAddr_2006         ; F48E  $8D $06 $20    
    LDA #$00                 ; F491  $A9 $00        
    STA PpuAddr_2006         ; F493  $8D $06 $20    
F496:
    STA PpuData_2007         ; F496  $8D $07 $20    
    INY                      ; F499  $C8            
    BNE F496                 ; F49A  $D0 $FA        
    DEX                      ; F49C  $CA            
    BNE F496                 ; F49D  $D0 $F7        
    LDX #$0F                 ; F49F  $A2 $0F        
F4A1:
    STA $0350,X              ; F4A1  $9D $50 $03    
    DEX                      ; F4A4  $CA            
    BPL F4A1                 ; F4A5  $10 $FA        
    LDA #$00                 ; F4A7  $A9 $00        
    STA PpuAddr_2006         ; F4A9  $8D $06 $20    
    STA PpuAddr_2006         ; F4AC  $8D $06 $20    
    LDX #$09                 ; F4AF  $A2 $09        
F4B1:
    STA PpuData_2007         ; F4B1  $8D $07 $20    
    INY                      ; F4B4  $C8            
    BNE F4B1                 ; F4B5  $D0 $FA        
    DEX                      ; F4B7  $CA            
    BNE F4B1                 ; F4B8  $D0 $F7        
    JSR $FE00                ; F4BA  $20 $00 $FE    
    BIT PpuStatus_2002       ; F4BD  $2C $02 $20    
    LDA #$3F                 ; F4C0  $A9 $3F        
    STA PpuAddr_2006         ; F4C2  $8D $06 $20    
    LDA #$00                 ; F4C5  $A9 $00        
    STA PpuAddr_2006         ; F4C7  $8D $06 $20    
    LDA #$0F                 ; F4CA  $A9 $0F        
    STA PpuData_2007         ; F4CC  $8D $07 $20    
    LDA #$30                 ; F4CF  $A9 $30        
    STA PpuData_2007         ; F4D1  $8D $07 $20    
    LDX #$1E                 ; F4D4  $A2 $1E        
    LDA #$02                 ; F4D6  $A9 $02        
F4D8:
    STA PpuData_2007         ; F4D8  $8D $07 $20    
    DEX                      ; F4DB  $CA            
    BNE F4D8                 ; F4DC  $D0 $FA        
    LDA #$3F                 ; F4DE  $A9 $3F        
    STA PpuAddr_2006         ; F4E0  $8D $06 $20    
    LDA #$00                 ; F4E3  $A9 $00        
    STA PpuAddr_2006         ; F4E5  $8D $06 $20    
    STA PpuAddr_2006         ; F4E8  $8D $06 $20    
    STA PpuAddr_2006         ; F4EB  $8D $06 $20    
    LDA #$00                 ; F4EE  $A9 $00        
    STA PpuScroll_2005       ; F4F0  $8D $05 $20    
    STA PpuScroll_2005       ; F4F3  $8D $05 $20    
    LDA #$0A                 ; F4F6  $A9 $0A        
    STA PpuMask_2001         ; F4F8  $8D $01 $20    
    LDA #$92                 ; F4FB  $A9 $92        
    STA $3E                  ; F4FD  $85 $3E        
    LDA #$F6                 ; F4FF  $A9 $F6        
    STA $3F                  ; F501  $85 $3F        
    LDA #$02                 ; F503  $A9 $02        
    STA $61                  ; F505  $85 $61        
    LDA #$21                 ; F507  $A9 $21        
    STA $62                  ; F509  $85 $62        
    LDA #$01                 ; F50B  $A9 $01        
    STA $64                  ; F50D  $85 $64        
L3F50F:              
    LDY #$00                 ; F50F  $A0 $00        
    LDA ($3E),Y              ; F511  $B1 $3E        
    CMP #$FF                 ; F513  $C9 $FF        
    BEQ L3F534               ; F515  $F0 $1D        
    CMP #$FE                 ; F517  $C9 $FE        
    BNE L3F521               ; F519  $D0 $06        
    JSR $F562                ; F51B  $20 $62 $F5    
    JMP L3F524               ; F51E  $4C $24 $F5    
L3F521:              
    JSR $F59F                ; F521  $20 $9F $F5    
L3F524:              
    LDA $3E                  ; F524  $A5 $3E        
    CLC                      ; F526  $18            
    ADC #$01                 ; F527  $69 $01        
    STA $3E                  ; F529  $85 $3E        
    LDA $3F                  ; F52B  $A5 $3F        
    ADC #$00                 ; F52D  $69 $00        
    STA $3F                  ; F52F  $85 $3F        
    JMP L3F50F               ; F531  $4C $0F $F5    
L3F534:              
    LDA #$00                 ; F534  $A9 $00        
    STA $F1                  ; F536  $85 $F1        
    JSR $DBA9                ; F538  $20 $A9 $DB    
    LDA $20                  ; F53B  $A5 $20        
    STA $80                  ; F53D  $85 $80        
L3F53F:              
    JSR $FE00                ; F53F  $20 $00 $FE    
    JSR $DBA9                ; F542  $20 $A9 $DB    
    LDA $F0                  ; F545  $A5 $F0        
    CLC                      ; F547  $18            
    ADC #$01                 ; F548  $69 $01        
    STA $F0                  ; F54A  $85 $F0        
    LDA $F1                  ; F54C  $A5 $F1        
    ADC #$00                 ; F54E  $69 $00        
    STA $F1                  ; F550  $85 $F1        
    CMP #$03                 ; F552  $C9 $03        
    BCS L3F55C               ; F554  $B0 $06        
    LDA $20                  ; F556  $A5 $20        
    CMP $80                  ; F558  $C5 $80        
    BEQ L3F53F               ; F55A  $F0 $E3        
L3F55C:              
    LDA #$00                 ; F55C  $A9 $00        
    STA PpuMask_2001         ; F55E  $8D $01 $20    
    RTS                      ; F561  $60            

;; sub start ;;
    JSR $FE00                ; F562  $20 $00 $FE    
    LDA $62                  ; F565  $A5 $62        
    STA PpuAddr_2006         ; F567  $8D $06 $20    
    LDA $61                  ; F56A  $A5 $61        
    STA PpuAddr_2006         ; F56C  $8D $06 $20    
    LDA $61                  ; F56F  $A5 $61        
    STA $80                  ; F571  $85 $80        
    LDX #$00                 ; F573  $A2 $00        
L3F575:              
    STX PpuData_2007         ; F575  $8E $07 $20    
    INC $80                  ; F578  $E6 $80        
    LDA $80                  ; F57A  $A5 $80        
    AND #$1F                 ; F57C  $29 $1F        
    BNE L3F575               ; F57E  $D0 $F5        
    JSR $F689                ; F580  $20 $89 $F6    
    LDX #$0F                 ; F583  $A2 $0F        
    LDA #$00                 ; F585  $A9 $00        
L3F587:              
    STA $0350,X              ; F587  $9D $50 $03    
    DEX                      ; F58A  $CA            
    BPL L3F587               ; F58B  $10 $FA        
    LDA $61                  ; F58D  $A5 $61        
    AND #$E0                 ; F58F  $29 $E0        
    CLC                      ; F591  $18            
    ADC #$40                 ; F592  $69 $40        
    ORA #$02                 ; F594  $09 $02        
    STA $61                  ; F596  $85 $61        
    LDA $62                  ; F598  $A5 $62        
    ADC #$00                 ; F59A  $69 $00        
    STA $62                  ; F59C  $85 $62        
    RTS                      ; F59E  $60            

;; sub start ;;
    LDY #$00                 ; F59F  $A0 $00        
    LDA ($3E),Y              ; F5A1  $B1 $3E        
    LDX #$00                 ; F5A3  $A2 $00        
    STX $81                  ; F5A5  $86 $81        
    ASL A                    ; F5A7  $0A            
    ROL $81                  ; F5A8  $26 $81        
    ASL A                    ; F5AA  $0A            
    ROL $81                  ; F5AB  $26 $81        
    ASL A                    ; F5AD  $0A            
    ROL $81                  ; F5AE  $26 $81        
    ASL A                    ; F5B0  $0A            
    ROL $81                  ; F5B1  $26 $81        
    CLC                      ; F5B3  $18            
    ADC #$00                 ; F5B4  $69 $00        
    STA $80                  ; F5B6  $85 $80        
    LDA $81                  ; F5B8  $A5 $81        
    ADC #$B0                 ; F5BA  $69 $B0        
    STA $81                  ; F5BC  $85 $81        
    LDA #$09                 ; F5BE  $A9 $09        
    JSR L3FE03               ; F5C0  $20 $03 $FE    
    LDY #$0F                 ; F5C3  $A0 $0F        
L3F5C5:              
    LDA ($80),Y              ; F5C5  $B1 $80        
    STA $0340,Y              ; F5C7  $99 $40 $03    
    DEY                      ; F5CA  $88            
    BPL L3F5C5               ; F5CB  $10 $F8        
    LDA $61                  ; F5CD  $A5 $61        
    STA $80                  ; F5CF  $85 $80        
    JSR $FE00                ; F5D1  $20 $00 $FE    
    BIT PpuStatus_2002       ; F5D4  $2C $02 $20    
    LDA $62                  ; F5D7  $A5 $62        
    STA PpuAddr_2006         ; F5D9  $8D $06 $20    
    LDA $61                  ; F5DC  $A5 $61        
    STA PpuAddr_2006         ; F5DE  $8D $06 $20    
    LDX #$80                 ; F5E1  $A2 $80        
L3F5E3:              
    STX PpuData_2007         ; F5E3  $8E $07 $20    
    INC $80                  ; F5E6  $E6 $80        
    LDA $80                  ; F5E8  $A5 $80        
    AND #$1F                 ; F5EA  $29 $1F        
    BNE L3F5E3               ; F5EC  $D0 $F5        
    JSR $F689                ; F5EE  $20 $89 $F6    
    LDA #$04                 ; F5F1  $A9 $04        
    STA $65                  ; F5F3  $85 $65        
L3F5F5:              
    LDX #$05                 ; F5F5  $A2 $05        
L3F5F7:              
    LDA $0358,X              ; F5F7  $BD $58 $03    
    STA $035A,X              ; F5FA  $9D $5A $03    
    LDA $0350,X              ; F5FD  $BD $50 $03    
    STA $0352,X              ; F600  $9D $52 $03    
    DEX                      ; F603  $CA            
    BPL L3F5F7               ; F604  $10 $F1        
    LDA $034E                ; F606  $AD $4E $03    
    STA $0358                ; F609  $8D $58 $03    
    LDA $0346                ; F60C  $AD $46 $03    
    STA $0350                ; F60F  $8D $50 $03    
    LDA $034F                ; F612  $AD $4F $03    
    STA $0359                ; F615  $8D $59 $03    
    LDA $0347                ; F618  $AD $47 $03    
    STA $0351                ; F61B  $8D $51 $03    
    LDX #$05                 ; F61E  $A2 $05        
L3F620:              
    LDA $0348,X              ; F620  $BD $48 $03    
    STA $034A,X              ; F623  $9D $4A $03    
    LDA $0340,X              ; F626  $BD $40 $03    
    STA $0342,X              ; F629  $9D $42 $03    
    DEX                      ; F62C  $CA            
    BPL L3F620               ; F62D  $10 $F1        
    JSR $FE00                ; F62F  $20 $00 $FE    
    LDA #$08                 ; F632  $A9 $08        
    STA PpuAddr_2006         ; F634  $8D $06 $20    
    LDA #$00                 ; F637  $A9 $00        
    STA PpuAddr_2006         ; F639  $8D $06 $20    
    LDX #$00                 ; F63C  $A2 $00        
L3F63E:              
    LDA $0350,X              ; F63E  $BD $50 $03   
    STA PpuData_2007         ; F641  $8D $07 $20    
    INX                      ; F644  $E8            
    CPX #$10                 ; F645  $E0 $10        
    BCC L3F63E               ; F647  $90 $F5        
    JSR $F689                ; F649  $20 $89 $F6    
    DEC $65                  ; F64C  $C6 $65        
    BNE L3F5F5               ; F64E  $D0 $A5        
    JSR $FE00                ; F650  $20 $00 $FE    
    LDA $64                  ; F653  $A5 $64        
    LSR A                    ; F655  $4A            
    LSR A                    ; F656  $4A            
    LSR A                    ; F657  $4A            
    LSR A                    ; F658  $4A            
    STA PpuAddr_2006         ; F659  $8D $06 $20    
    LDA $64                  ; F65C  $A5 $64        
    ASL A                    ; F65E  $0A            
    ASL A                    ; F65F  $0A            
    ASL A                    ; F660  $0A            
    ASL A                    ; F661  $0A            
    STA PpuAddr_2006         ; F662  $8D $06 $20    
    LDX #$00                 ; F665  $A2 $00        
L3F667:              
    LDA $0350,X              ; F667  $BD $50 $03    
    STA PpuData_2007         ; F66A  $8D $07 $20    
    INX                      ; F66D  $E8            
    CPX #$10                 ; F66E  $E0 $10        
    BCC L3F667               ; F670  $90 $F5        
    LDA $62                  ; F672  $A5 $62        
    STA PpuAddr_2006         ; F674  $8D $06 $20    
    LDA $61                  ; F677  $A5 $61        
    STA PpuAddr_2006         ; F679  $8D $06 $20    
    LDA $64                  ; F67C  $A5 $64        
    STA PpuData_2007         ; F67E  $8D $07 $20    
    JSR $F689                ; F681  $20 $89 $F6    
    INC $64                  ; F684  $E6 $64        
    INC $61                  ; F686  $E6 $61        
    RTS                      ; F688  $60            

;; sub start ;;
    LDA #$00                 ; F689  $A9 $00        
    STA PpuScroll_2005       ; F68B  $8D $05 $20    
    STA PpuScroll_2005       ; F68E  $8D $05 $20    
    RTS                      ; F691  $60            

 ;data block---
;; [F692 : 3F6A2]
.byte $00,$00,$00,$00,$00,$00,$06,$09,$0E,$01,$0C,$00,$06,$01 
;; [F6A0 : 3F6B0]
.byte $0E,$14,$01,$13,$19,$00,$09,$09,$00,$FE,$FE,$FE,$FE,$FE,$00,$00 
.byte $00,$00,$00,$00,$00,$1D,$1E,$1F,$20,$21,$22,$22,$00,$13,$11,$15 
.byte $01,$12,$05,$00,$FE,$FE,$00,$00,$00,$00,$10,$12,$0F,$07,$12,$01 
.byte $0D,$0D,$05,$04,$00,$02,$19,$00,$0E,$01,$13,$09,$12,$00,$FE,$03 
.byte $08,$01,$12,$01,$03,$14,$05,$12,$00,$02,$19,$00,$19,$0F,$13,$08 
.byte $09,$14,$01,$0B,$01,$00,$01,$0D,$01,$0E,$0F,$00,$FE,$00,$00,$13 
.byte $03,$05,$0E,$01,$12,$09,$0F,$00,$02,$19,$00,$0B,$05,$0E,$0A,$09 
.byte $00,$14,$05,$12,$01,$04,$01,$00,$FE,$FF,$0A,$09,$00,$14,$05,$12 
.byte $01,$04,$01,$00,$FE,$FF,$0B,$01,$00,$01,$0D,$01,$0E,$0F,$00,$FE 
.byte $FE,$00,$00,$13,$03,$05,$0E,$01,$12,$09,$0F,$00,$02,$19,$00,$0B 
.byte $05,$0E,$0A,$09,$00,$14,$05,$12,$01,$04,$01,$00,$FE,$FF,$00,$00 

;; sub start ;;
    STA $32                  ; F750  $85 $32        
    STA $34                  ; F752  $85 $34        
    LDA $20                  ; F754  $A5 $20        
    AND #$40                 ; F756  $29 $40        
    BEQ L3F75C               ; F758  $F0 $02        
    INC $34                  ; F75A  $E6 $34        
L3F75C:              
    RTS                      ; F75C  $60            

 ;data block---

.byte $00,$00,$00 
;; [F760 : 3F770]
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00     

    BIT PpuStatus_2002       ; F800  $2C $02 $20    
    LDA $FF                  ; F803  $A5 $FF        
    STA PpuControl_2000      ; F805  $8D $00 $20    
    RTS                      ; F808  $60            

    CPY #$0A                 ; F809  $C0 $0A        
    ASL A                    ; F80B  $0A            
    STA $04                  ; F80C  $85 $04        
    LDX #$20                 ; F80E  $A2 $20        
    LDA $63                  ; F810  $A5 $63        
    CMP #$FF                 ; F812  $C9 $FF        
    BEQ F840                 ; F814  $F0 $2A        
    LDX #$20                 ; F816  $A2 $20        
    CMP #$AF                 ; F818  $C9 $AF        
    BEQ F81E                 ; F81A  $F0 $02        
    LDX #$10                 ; F81C  $A2 $10        
F81E:
    STX $05                  ; F81E  $86 $05        
    LDA $64                  ; F820  $A5 $64        
    LSR A                    ; F822  $4A            
    LSR A                    ; F823  $4A            
    CLC                      ; F824  $18            
    ADC $05                  ; F825  $65 $05        
    TAX                      ; F827  $AA            
    JMP $F840                ; F828  $4C $40 $F8    
  
  ;data block---
.byte $00,$00,$00,$00,$00 
;; [F830 : 3F840]
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 

F840:
    TXA                      ; F840  $8A            
    CLC                      ; F841  $18            
    ADC $04                  ; F842  $65 $04        
    STA PpuScroll_2005       ; F844  $8D $05 $20    
    RTS                      ; F847  $60            

 ;data block---
.byte $00,$00,$00,$00,$00,$00,$00,$00 
;; [F850 : 3F860]
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 

;; [F900 : 3F910]
.byte $1F,$A6,$DE,$BA,$CC,$12,$7D,$74,$1B,$F3,$B4,$88,$F8,$52,$F4,$07 

;; [F910 : 3F920]
.byte $90,$AB,$B3,$BD,$AA,$55,$28,$BC,$8A,$6D,$0E,$C4,$83,$A9,$3B,$76 

;; [F920 : 3F930]
.byte $20,$7C,$09,$92,$FD,$4A,$A8,$F0,$61,$E3,$F2,$69,$6C,$BB,$38,$C3 

;; [F930 : 3F940]
.byte $AE,$B7,$43,$84,$78,$23,$7B,$9B,$2D,$DB,$3E,$91,$CF,$02,$2A,$B6 

;; [F940 : 3F950]
.byte $86,$EE,$9C,$8E,$B8,$6F,$1A,$57,$05,$E9,$73,$31,$D2,$D9,$1D,$FB 

;; [F950 : 3F960]
.byte $94,$9D,$B1,$0A,$3A,$11,$5A,$47,$95,$2C,$44,$E0,$6A,$8C,$5B,$7A 

;; [F960 : 3F970]
.byte $A7,$5D,$36,$70,$E5,$C7,$49,$DC,$68,$97,$D8,$66,$A3,$0F,$B0,$9F 

;; [F970 : 3F980]
.byte $03,$D6,$77,$16,$13,$30,$25,$3C,$10,$17,$AD,$98,$6B,$2F,$D7,$A1 

;; [F980 : 3F990]
.byte $FF,$A4,$EB,$51,$FE,$27,$8D,$93,$D5,$3D,$F6,$08,$75,$E1,$A5,$46 

;; [F990 : 3F9A0]
.byte $63,$F5,$4D,$DA,$32,$AF,$40,$37,$D3,$C0,$89,$67,$06,$21,$6E,$81 

;; [F9A0 : 3F9B0]
.byte $B5,$A0,$4F,$0C,$2E,$E7,$1C,$58,$85,$E8,$59,$CE,$35,$CB,$1E,$C6 

;; [F9B0 : 3F9C0]
.byte $2B,$9A,$E6,$DD,$F1,$EC,$96,$CA,$AC,$00,$50,$C9,$4C,$FC,$14,$7E 

;; [F9C0 : 3F9D0]
.byte $56,$80,$D0,$79,$BF,$29,$87,$48,$24,$19,$C5,$22,$71,$7F,$72,$0D 

;; [F9D0 : 3F9E0]
.byte $CD,$8F,$BE,$3F,$9E,$34,$ED,$53,$54,$04,$62,$A2,$C2,$41,$5E,$82 

;; [F9E0 : 3F9F0]
.byte $4B,$26,$5C,$42,$65,$99,$4E,$60,$8B,$F7,$0B,$33,$DF,$D1,$64,$C8 

;; [F9F0 : 3FA00]
.byte $C1,$01,$EF,$F9,$FA,$E4,$5F,$18,$B9,$B2,$39,$D4,$15,$E2,$EA,$45 

;; sub start ;;
    JMP L3FA9E               ; FA00  $4C $9E $FA    

;; sub start ;;
    PHA                      ; FA03  $48            
    JSR $FA1F                ; FA04  $20 $1F $FA    
    LDA #$0E                 ; FA07  $A9 $0E        
    STA $3E                  ; FA09  $85 $3E        
    PLA                      ; FA0B  $68            
    JSR $FAFB                ; FA0C  $20 $FB $FA    
L3FA0F:              
    LDA #$0E                 ; FA0F  $A9 $0E        
    JSR Swap_PRG             ; FA11  $20 $1A $FE    
    LDX #$B0                 ; FA14  $A2 $B0        
L3FA16:              
    LDA $7BFF,X              ; FA16  $BD $FF $7B    
    STA $FF,X                ; FA19  $95 $FF        
    DEX                      ; FA1B  $CA            
    BNE L3FA16               ; FA1C  $D0 $F8        
    RTS                      ; FA1E  $60            

;; sub start ;;
    LDX #$B0                 ; FA1F  $A2 $B0        
L3FA21:              
    LDA $FF,X                ; FA21  $B5 $FF        
    STA $7BFF,X              ; FA23  $9D $FF $7B    
    DEX                      ; FA26  $CA            
    BNE L3FA21               ; FA27  $D0 $F8        
    RTS                      ; FA29  $60            

L3FA2A:              
    LDA #$3C                 ; FA2A  $A9 $3C        
    STA $0101                ; FA2C  $8D $01 $01    
    LDA #$FA                 ; FA2F  $A9 $FA        
    STA $0102                ; FA31  $8D $02 $01    
    LDA #$4C                 ; FA34  $A9 $4C        
    STA $0100                ; FA36  $8D $00 $01    
L3FA39:              
    JMP L3FA39               ; FA39  $4C $39 $FA    
L3FA3C:              
    LDA #$40                 ; FA3C  $A9 $40        
    STA $0100                ; FA3E  $8D $00 $01    
    LDA PpuStatus_2002       ; FA41  $AD $02 $20    
    PLA                      ; FA44  $68            
    PLA                      ; FA45  $68            
    PLA                      ; FA46  $68            
    RTS                      ; FA47  $60            

L3FA48:              
    JSR $FA6D                ; FA48  $20 $6D $FA    
    JSR $BA00                ; FA4B  $20 $00 $BA    
    LDA #$0D                 ; FA4E  $A9 $0D        
    JSR Swap_PRG             ; FA50  $20 $1A $FE    
    JSR $9800                ; FA53  $20 $00 $98    
    JMP L3FA84               ; FA56  $4C $84 $FA    
L3FA59:              
    JSR $FA6D                ; FA59  $20 $6D $FA    
    TXA                      ; FA5C  $8A            
    ORA #$40                 ; FA5D  $09 $40        
    JSR $BA03                ; FA5F  $20 $03 $BA    
    JMP L3FA84               ; FA62  $4C $84 $FA    
L3FA65:              
    LDA #$00                 ; FA65  $A9 $00        
    BEQ L3FA81               ; FA67  $F0 $18        
    LDA #$00                 ; FA69  $A9 $00        
    BEQ L3FA7F               ; FA6B  $F0 $12        
    LDA #$05                 ; FA6D  $A9 $05        
    BNE L3FA81               ; FA6F  $D0 $10        
    LDA #$05                 ; FA71  $A9 $05        
    BNE L3FA7F               ; FA73  $D0 $0A        
    LDA #$09                 ; FA75  $A9 $09        
    BNE L3FA81               ; FA77  $D0 $08        
L3FA79:              
    LDA #$0B                 ; FA79  $A9 $0B        
    BNE L3FA7F               ; FA7B  $D0 $02        
    LDA #$0C                 ; FA7D  $A9 $0C        
L3FA7F:              
    STA $3E                  ; FA7F  $85 $3E        
L3FA81:              
    JMP Swap_PRG             ; FA81  $4C $1A $FE    
L3FA84:              
    LDA $3E                  ; FA84  $A5 $3E        
    BPL L3FA81               ; FA86  $10 $F9        
L3FA88:              
    PHA                      ; FA88  $48            
    LDA $3E                  ; FA89  $A5 $3E        
    STA $3F                  ; FA8B  $85 $3F        
    PLA                      ; FA8D  $68            
    JSR L3FA7F               ; FA8E  $20 $7F $FA    
    LDA #$FA                 ; FA91  $A9 $FA        
    PHA                      ; FA93  $48            
    LDA #$99                 ; FA94  $A9 $99        
    PHA                      ; FA96  $48            
    JMP ($0040)              ; FA97  $6C $40 $00    
    LDA $3F                  ; FA9A  $A5 $3F        
    BPL L3FA7F               ; FA9C  $10 $E1        
L3FA9E:              
    STA $7B48                ; FA9E  $8D $48 $7B    
    TXA                      ; FAA1  $8A            
    AND #$0F                 ; FAA2  $29 $0F        
    STA $7B49                ; FAA4  $8D $49 $7B    
    JSR $FA1F                ; FAA7  $20 $1F $FA    
    STX $E5                  ; FAAA  $86 $E5        
    STX $6F60                ; FAAC  $8E $60 $6F    
    LDA #$40                 ; FAAF  $A9 $40        
    STA $E0                  ; FAB1  $85 $E0        
    JSR L3FA79               ; FAB3  $20 $79 $FA    
    JSR L3FA48               ; FAB6  $20 $48 $FA    
    JMP $9639                ; FAB9  $4C $39 $96    

    LDA #$12                 ; FABC  $A9 $12        
    BNE L3FAF0               ; FABE  $D0 $30        
    LDA #$15                 ; FAC0  $A9 $15        
    BNE L3FAF0               ; FAC2  $D0 $2C        
    LDA #$18                 ; FAC4  $A9 $18        
    BNE L3FAF0               ; FAC6  $D0 $28        
    LDA #$1B                 ; FAC8  $A9 $1B        
    BNE L3FAF0               ; FACA  $D0 $24        
    LDA #$1E                 ; FACC  $A9 $1E        
    BNE L3FAF0               ; FACE  $D0 $20        
    LDA #$21                 ; FAD0  $A9 $21        
    BNE L3FAF0               ; FAD2  $D0 $1C        
    LDA #$24                 ; FAD4  $A9 $24        
    BNE L3FAF0               ; FAD6  $D0 $18        
    LDA #$27                 ; FAD8  $A9 $27        
    BNE L3FAF0               ; FADA  $D0 $14        
    LDA #$2A                 ; FADC  $A9 $2A        
    BNE L3FAF0               ; FADE  $D0 $10        
    LDA #$2D                 ; FAE0  $A9 $2D        
    BNE L3FAF0               ; FAE2  $D0 $0C        
    LDA #$30                 ; FAE4  $A9 $30        
    BNE L3FAF0               ; FAE6  $D0 $08        
    LDA #$33                 ; FAE8  $A9 $33        
    BNE L3FAF0               ; FAEA  $D0 $04        
L3FAEC:              
    LDA #$36                 ; FAEC  $A9 $36        
    BNE L3FAF0               ; FAEE  $D0 $00        
L3FAF0:              
    STA $40                  ; FAF0  $85 $40        
    LDA #$96                 ; FAF2  $A9 $96        
    STA $41                  ; FAF4  $85 $41        
    LDA #$0B                 ; FAF6  $A9 $0B        
    JMP L3FA88               ; FAF8  $4C $88 $FA    
    
;; sub start ;;
    PHA                      ; FAFB  $48            
    JSR L3FA65               ; FAFC  $20 $65 $FA    
    PLA                      ; FAFF  $68            
    JSR $9880                ; FB00  $20 $80 $98    
    JMP L3FA84               ; FB03  $4C $84 $FA    
L3FB06:              
    JSR $FA7D                ; FB06  $20 $7D $FA    
    JMP $8F43                ; FB09  $4C $43 $8F    
    
;; sub start ;;
    PHA                      ; FB0C  $48            
    JSR $FA7D                ; FB0D  $20 $7D $FA    
    PLA                      ; FB10  $68            
    JSR $8F46                ; FB11  $20 $46 $8F    
    JMP L3FA79               ; FB14  $4C $79 $FA    
    
;; sub start ;;
    LDA #$49                 ; FB17  $A9 $49        
    BNE L3FB31               ; FB19  $D0 $16     
    LDA #$4C                 ; FB1B  $A9 $4C        
    BNE L3FB31               ; FB1D  $D0 $12        
    LDA #$4F                 ; FB1F  $A9 $4F        
    BNE L3FB31               ; FB21  $D0 $0E    
    LDA #$52                 ; FB23  $A9 $52        
    BNE L3FB31               ; FB25  $D0 $0A   
    LDA #$55                 ; FB27  $A9 $55        
    BNE L3FB31               ; FB29  $D0 $06        
    LDA #$58                 ; FB2B  $A9 $58        
    BNE L3FB31               ; FB2D  $D0 $02        
    LDA #$5B                 ; FB2F  $A9 $5B        
L3FB31:              
    STA $40                  ; FB31  $85 $40        
    LDA #$8F                 ; FB33  $A9 $8F        
    STA $41                  ; FB35  $85 $41        
    LDA #$0C                 ; FB37  $A9 $0C        
    JMP L3FA88               ; FB39  $4C $88 $FA    
L3FB3C:              
    JSR $FA71                ; FB3C  $20 $71 $FA    
    JMP $9F00                ; FB3F  $4C $00 $9F    
L3FB42:              
    LDA #$03                 ; FB42  $A9 $03        
    BNE L3FB48               ; FB44  $D0 $02        
L3FB46:              
    LDA #$06                 ; FB46  $A9 $06        
L3FB48:              
    STA $40                  ; FB48  $85 $40        
    LDA #$9F                 ; FB4A  $A9 $9F        
    STA $41                  ; FB4C  $85 $41        
    LDA #$05                 ; FB4E  $A9 $05        
    JMP L3FA88               ; FB50  $4C $88 $FA    
    
;; sub start ;;
    LDA $7B49                ; FB53  $AD $49 $7B    
    LSR A                    ; FB56  $4A            
    JSR $FB7C                ; FB57  $20 $7C $FB    
    TAY                      ; FB5A  $A8            
    TAX                      ; FB5B  $AA            
    JSR $FBF3                ; FB5C  $20 $F3 $FB    
    JMP L3FA84               ; FB5F  $4C $84 $FA    
    
;; sub start ;;
    LDA $7B4C                ; FB62  $AD $4C $7B    
    JSR $FB7C                ; FB65  $20 $7C $FB    
    LDA #$0E                 ; FB68  $A9 $0E        
    STA $04                  ; FB6A  $85 $04        
L3FB6C:              
    LDX #$00                 ; FB6C  $A2 $00        
    JSR L3FD6F               ; FB6E  $20 $6F $FD    
    INC $01                  ; FB71  $E6 $01        
    INC $03                  ; FB73  $E6 $03        
    DEC $04                  ; FB75  $C6 $04        
    BNE L3FB6C               ; FB77  $D0 $F3        
    JMP L3FA84               ; FB79  $4C $84 $FA    
    
;; sub start ;;
    LSR A                    ; FB7C  $4A            
    LSR A                    ; FB7D  $4A            
    CLC                      ; FB7E  $18            
    ADC #$07                 ; FB7F  $69 $07        
    JMP Swap_PRG             ; FB81  $4C $1A $FE    
    
;; sub start ;;
    JSR $FA75                ; FB84  $20 $75 $FA    
    LDA #$06                 ; FB87  $A9 $06        
    STA $01                  ; FB89  $85 $01        
    LDA #$E0                 ; FB8B  $A9 $E0        
    STA $00                  ; FB8D  $85 $00        
    LDA #$8A                 ; FB8F  $A9 $8A        
    STA $03                  ; FB91  $85 $03        
    LDA #$00                 ; FB93  $A9 $00        
    STA $02                  ; FB95  $85 $02        
    LDA #$09                 ; FB97  $A9 $09        
    STA $04                  ; FB99  $85 $04        
L3FB9B:              
    JSR L3FD6F               ; FB9B  $20 $6F $FD    
    INC $01                  ; FB9E  $E6 $01        
    INC $03                  ; FBA0  $E6 $03        
    DEC $04                  ; FBA2  $C6 $04        
    BNE L3FB9B               ; FBA4  $D0 $F5        
    LDX #$20                 ; FBA6  $A2 $20        
    JSR L3FD6F               ; FBA8  $20 $6F $FD    
    JMP L3FA84               ; FBAB  $4C $84 $FA    
L3FBAE:              
    JSR $FA75                ; FBAE  $20 $75 $FA    
    JSR L3FA2A               ; FBB1  $20 $2A $FA    
    JSR L3FD6F               ; FBB4  $20 $6F $FD    
    JMP L3FA84               ; FBB7  $4C $84 $FA   
    
;; sub start ;;
    JSR $FA75                ; FBBA  $20 $75 $FA    
    JSR $FBF3                ; FBBD  $20 $F3 $FB    
    JMP L3FA84               ; FBC0  $4C $84 $FA   
    
;; sub start ;;
    JSR $FA75                ; FBC3  $20 $75 $FA    
    LDA #$00                 ; FBC6  $A9 $00        
    STA $02                  ; FBC8  $85 $02        
    LDA #$9A                 ; FBCA  $A9 $9A        
    STA $03                  ; FBCC  $85 $03        
    LDA #$05                 ; FBCE  $A9 $05        
    STA $01                  ; FBD0  $85 $01        
    LDA #$00                 ; FBD2  $A9 $00        
    STA $00                  ; FBD4  $85 $00        
    TAX                      ; FBD6  $AA            
    JSR L3FD6F               ; FBD7  $20 $6F $FD    
    INC $01                  ; FBDA  $E6 $01        
    INC $03                  ; FBDC  $E6 $03        
    LDX #$C0                 ; FBDE  $A2 $C0        
    JSR L3FD6F               ; FBE0  $20 $6F $FD    
    JMP L3FA84               ; FBE3  $4C $84 $FA    
    
;; sub start ;;
    LDA #$0C                 ; FBE6  $A9 $0C        
    JSR Swap_PRG             ; FBE8  $20 $1A $FE    
    LDX #$00                 ; FBEB  $A2 $00        
    JSR $FBF3                ; FBED  $20 $F3 $FB    
    JMP L3FA65               ; FBF0  $4C $65 $FA    
    
;; sub start ;;
    STY $02                  ; FBF3  $84 $02        
    LDY #$00                 ; FBF5  $A0 $00        
L3FBF7:              
    LDA ($00),Y              ; FBF7  $B1 $00        
    STA $7600,X              ; FBF9  $9D $00 $76    
    INY                      ; FBFC  $C8            
    INX                      ; FBFD  $E8            
    CPY $02                  ; FBFE  $C4 $02        
    BNE L3FBF7               ; FC00  $D0 $F5        
    RTS                      ; FC02  $60            

;; sub start ;;
    LDA #$00                 ; FC03  $A9 $00        
    JSR Swap_PRG             ; FC05  $20 $1A $FE    
    LDA $9700,X              ; FC08  $BD $00 $97    
    STA $79A8,Y              ; FC0B  $99 $A8 $79    
    LDA $9780,X              ; FC0E  $BD $80 $97    
    STA $79A9,Y              ; FC11  $99 $A9 $79    
    LDA $9800,X              ; FC14  $BD $00 $98    
    STA $79AA,Y              ; FC17  $99 $AA $79    
    JMP L3FA84               ; FC1A  $4C $84 $FA    
    LDA #$00                 ; FC1D  $A9 $00        
    JSR Swap_PRG             ; FC1F  $20 $1A $FE    
    LDA $9700,X              ; FC22  $BD $00 $97    
    STA $00                  ; FC25  $85 $00        
    LDA $9780,X              ; FC27  $BD $80 $97    
    STA $01                  ; FC2A  $85 $01        
    LDA $9800,X              ; FC2C  $BD $00 $98    
    STA $02                  ; FC2F  $85 $02        
    JMP L3FA84               ; FC31  $4C $84 $FA    
    
;; sub start ;;
    LDA $35                  ; FC34  $A5 $35        
    STA $34                  ; FC36  $85 $34        
    LDA #$01                 ; FC38  $A9 $01        
    STA Ctrl1_4016           ; FC3A  $8D $16 $40    
    LDA #$00                 ; FC3D  $A9 $00        
    STA Ctrl1_4016           ; FC3F  $8D $16 $40    
    LDX #$08                 ; FC42  $A2 $08        
L3FC44:              
    LDA Ctrl1_4016           ; FC44  $AD $16 $40    
    ROR A                    ; FC47  $6A            
    BCS L3FC4B               ; FC48  $B0 $01        
    ROR A                    ; FC4A  $6A            
L3FC4B:              
    ROR $35                  ; FC4B  $66 $35        
    DEX                      ; FC4D  $CA            
    BNE L3FC44               ; FC4E  $D0 $F4        
    LDA $34                  ; FC50  $A5 $34        
    ORA $35                  ; FC52  $05 $35        
    BNE L3FC5D               ; FC54  $D0 $07        
    STA $34                  ; FC56  $85 $34        
    LDA #$08                 ; FC58  $A9 $08        
    STA $36                  ; FC5A  $85 $36        
    RTS                      ; FC5C  $60            

L3FC5D:              
    LDA $34                  ; FC5D  $A5 $34        
    AND $35                  ; FC5F  $25 $35        
    BNE L3FC6C               ; FC61  $D0 $09        
L3FC63:              
    LDA $34                  ; FC63  $A5 $34        
    EOR #$FF                 ; FC65  $49 $FF        
    AND $35                  ; FC67  $25 $35        
    STA $34                  ; FC69  $85 $34        
    RTS                      ; FC6B  $60            

L3FC6C:              
    DEC $36                  ; FC6C  $C6 $36        
    BNE L3FC63               ; FC6E  $D0 $F3        
    LDA #$04                 ; FC70  $A9 $04        
    STA $36                  ; FC72  $85 $36        
    LDA $35                  ; FC74  $A5 $35        
    STA $34                  ; FC76  $85 $34        
    RTS                      ; FC78  $60            

;; sub start ;;
    STA $00                  ; FC79  $85 $00        
    STX $01                  ; FC7B  $86 $01        
    LDX #$08                 ; FC7D  $A2 $08        
    LDA #$00                 ; FC7F  $A9 $00        
    STA $03                  ; FC81  $85 $03        
    STA $02                  ; FC83  $85 $02        
L3FC85:              
    ROR $01                  ; FC85  $66 $01        
    BCC L3FC90               ; FC87  $90 $07        
    CLC                      ; FC89  $18            
    LDA $00                  ; FC8A  $A5 $00        
    ADC $03                  ; FC8C  $65 $03        
    STA $03                  ; FC8E  $85 $03        
L3FC90:              
    ROR $03                  ; FC90  $66 $03        
    ROR $02                  ; FC92  $66 $02        
    DEX                      ; FC94  $CA            
    BNE L3FC85               ; FC95  $D0 $EE        
    RTS                      ; FC97  $60            

;; sub start ;;
    LDX #$10                 ; FC98  $A2 $10        
    LDA #$00                 ; FC9A  $A9 $00        
    STA $05                  ; FC9C  $85 $05        
    STA $04                  ; FC9E  $85 $04        
    STA $07                  ; FCA0  $85 $07        
    STA $06                  ; FCA2  $85 $06        
L3FCA4:              
    ROR $03                  ; FCA4  $66 $03        
    ROR $02                  ; FCA6  $66 $02        
    BCC L3FCB7               ; FCA8  $90 $0D        
    CLC                      ; FCAA  $18            
    LDA $00                  ; FCAB  $A5 $00        
    ADC $06                  ; FCAD  $65 $06        
    STA $06                  ; FCAF  $85 $06        
    LDA $01                  ; FCB1  $A5 $01        
    ADC $07                  ; FCB3  $65 $07        
    STA $07                  ; FCB5  $85 $07        
L3FCB7:              
    ROR $07                  ; FCB7  $66 $07        
    ROR $06                  ; FCB9  $66 $06        
    ROR $05                  ; FCBB  $66 $05        
    ROR $04                  ; FCBD  $66 $04        
    DEX                      ; FCBF  $CA            
    BNE L3FCA4               ; FCC0  $D0 $E2        
    RTS                      ; FCC2  $60            

;; sub start ;;
    LDA #$00                 ; FCC3  $A9 $00        
    STA $05                  ; FCC5  $85 $05        
    STA $04                  ; FCC7  $85 $04        
    STA $07                  ; FCC9  $85 $07        
    STA $06                  ; FCCB  $85 $06        
    LDA $00                  ; FCCD  $A5 $00        
    ORA $01                  ; FCCF  $05 $01        
    BEQ L3FD06               ; FCD1  $F0 $33        
    LDA $02                  ; FCD3  $A5 $02        
    ORA $03                  ; FCD5  $05 $03        
    BEQ L3FD06               ; FCD7  $F0 $2D        
    LDX #$10                 ; FCD9  $A2 $10        
L3FCDB:              
    ROL $00                  ; FCDB  $26 $00        
    ROL $01                  ; FCDD  $26 $01        
    ROL $06                  ; FCDF  $26 $06        
    ROL $07                  ; FCE1  $26 $07        
    SEC                      ; FCE3  $38            
    LDA $06                  ; FCE4  $A5 $06        
    SBC $02                  ; FCE6  $E5 $02        
    STA $06                  ; FCE8  $85 $06        
    LDA $07                  ; FCEA  $A5 $07        
    SBC $03                  ; FCEC  $E5 $03        
    STA $07                  ; FCEE  $85 $07        
    BCS L3FCFF               ; FCF0  $B0 $0D        
    LDA $06                  ; FCF2  $A5 $06        
    ADC $02                  ; FCF4  $65 $02        
    STA $06                  ; FCF6  $85 $06        
    LDA $07                  ; FCF8  $A5 $07        
    ADC $03                  ; FCFA  $65 $03        
    STA $07                  ; FCFC  $85 $07        
    CLC                      ; FCFE  $18            
L3FCFF:              
    ROL $04                  ; FCFF  $26 $04        
    ROL $05                  ; FD01  $26 $05        
    DEX                      ; FD03  $CA            
    BNE L3FCDB               ; FD04  $D0 $D5        
L3FD06:              
    RTS                      ; FD06  $60            

;; sub start ;;
    PHA                      ; FD07  $48            
    AND #$0F                 ; FD08  $29 $0F        
    TAX                      ; FD0A  $AA            
    PLA                      ; FD0B  $68            
    LSR A                    ; FD0C  $4A            
    LSR A                    ; FD0D  $4A            
    LSR A                    ; FD0E  $4A            
    LSR A                    ; FD0F  $4A            
    RTS                      ; FD10  $60            

;; sub start ;;
    STX $08                  ; FD11  $86 $08        
    CPX #$FF                 ; FD13  $E0 $FF        
    BNE L3FD1A               ; FD15  $D0 $03        
    TXA                      ; FD17  $8A            
    BNE L3FD45               ; FD18  $D0 $2B        
L3FD1A:              
    CMP #$00                 ; FD1A  $C9 $00        
    BEQ L3FD45               ; FD1C  $F0 $27        
    CMP $08                  ; FD1E  $C5 $08        
    BEQ L3FD45               ; FD20  $F0 $23        
    SEC                      ; FD22  $38            
    SBC $08                  ; FD23  $E5 $08        
    STA $00                  ; FD25  $85 $00        
    LDA #$80                 ; FD27  $A9 $80        
    STA $02                  ; FD29  $85 $02        
    ASL A                    ; FD2B  $0A            
    STA $01                  ; FD2C  $85 $01        
    LDX $42                  ; FD2E  $A6 $42        
    LDA $7A48,X              ; FD30  $BD $48 $7A    
    INC $42                  ; FD33  $E6 $42        
    STA $03                  ; FD35  $85 $03        
    JSR $FC98                ; FD37  $20 $98 $FC    
    LDX $06                  ; FD3A  $A6 $06        
    LDA $05                  ; FD3C  $A5 $05        
    BPL L3FD41               ; FD3E  $10 $01        
    INX                      ; FD40  $E8            
L3FD41:              
    TXA                      ; FD41  $8A            
    CLC                      ; FD42  $18            
    ADC $08                  ; FD43  $65 $08        
L3FD45:              
    RTS                      ; FD45  $60            

L3FD46:              
    BIT PpuStatus_2002       ; FD46  $2C $02 $20    
    BVS L3FD46               ; FD49  $70 $FB        
L3FD4B:              
    LDA $3B                  ; FD4B  $A5 $3B        
    STA PpuControl_2000      ; FD4D  $8D $00 $20    
    LDA $39                  ; FD50  $A5 $39        
    STA PpuScroll_2005       ; FD52  $8D $05 $20    
    LDA $37                  ; FD55  $A5 $37        
    STA PpuScroll_2005       ; FD57  $8D $05 $20    
    RTS                      ; FD5A  $60            

L3FD5B:              
    BIT PpuStatus_2002       ; FD5B  $2C $02 $20    
    BVC L3FD5B               ; FD5E  $50 $FB        
    LDA $3A                  ; FD60  $A5 $3A        
    AND #$EF                 ; FD62  $29 $EF        
    STA PpuControl_2000      ; FD64  $8D $00 $20    
    LDA $38                  ; FD67  $A5 $38        
    STA PpuScroll_2005       ; FD69  $8D $05 $20    
    JMP L3FA48               ; FD6C  $4C $48 $FA    
L3FD6F:              
    JSR $FD7E                ; FD6F  $20 $7E $FD    
    LDY #$00                 ; FD72  $A0 $00        
L3FD74:              
    LDA ($02),Y              ; FD74  $B1 $02        
    STA PpuData_2007         ; FD76  $8D $07 $20    
    INY                      ; FD79  $C8            
    DEX                      ; FD7A  $CA            
    BNE L3FD74               ; FD7B  $D0 $F7        
    RTS                      ; FD7D  $60            

;; sub start ;;
    LDA PpuStatus_2002       ; FD7E  $AD $02 $20    
    LDA $01                  ; FD81  $A5 $01        
    STA PpuAddr_2006         ; FD83  $8D $06 $20    
    LDA $00                  ; FD86  $A5 $00        
    STA PpuAddr_2006         ; FD88  $8D $06 $20    
    RTS                      ; FD8B  $60            

L3FD8C:              
    TXA                      ; FD8C  $8A            
    JSR Swap_PRG             ; FD8D  $20 $1A $FE    
    LDA #$00                 ; FD90  $A9 $00        
    TAY                      ; FD92  $A8            
    STA $65                  ; FD93  $85 $65        
    LDA $64                  ; FD95  $A5 $64        
    ASL A                    ; FD97  $0A            
    ROL $65                  ; FD98  $26 $65        
    CLC                      ; FD9A  $18            
    ADC $62                  ; FD9B  $65 $62        
    STA $64                  ; FD9D  $85 $64        
    LDA $65                  ; FD9F  $A5 $65        
    ADC $63                  ; FDA1  $65 $63        
    STA $65                  ; FDA3  $85 $65        
    LDA ($64),Y              ; FDA5  $B1 $64        
    PHA                      ; FDA7  $48            
    INY                      ; FDA8  $C8            
    LDA ($64),Y              ; FDA9  $B1 $64        
    STA $65                  ; FDAB  $85 $65        
    PLA                      ; FDAD  $68            
    STA $64                  ; FDAE  $85 $64        
    DEY                      ; FDB0  $88            
;    LDX $00AA                ; FDB1  $AE $AA $00    
;; JIGS - Mesen's debugger screwed up here. Replacing it with bytes.
    .byte $AE,$AA,$00

L3FDB4:              
    LDA ($64),Y              ; FDB4  $B1 $64        
    STA $7D47,X              ; FDB6  $9D $47 $7D    
    BEQ L3FDC1               ; FDB9  $F0 $06        
    INY                      ; FDBB  $C8            
    INX                      ; FDBC  $E8            
    CPX #$11                 ; FDBD  $E0 $11        
    BNE L3FDB4               ; FDBF  $D0 $F3        
L3FDC1:              
    STX $7CBF                ; FDC1  $8E $BF $7C    
    JMP L3FA84               ; FDC4  $4C $84 $FA    

;; sub start ;;
    LDA #$0C                 ; FDC7  $A9 $0C        
    JSR Swap_PRG             ; FDC9  $20 $1A $FE    
    LDA $D0                  ; FDCC  $A5 $D0        
    JSR $FDDF                ; FDCE  $20 $DF $FD    
    STA $1E                  ; FDD1  $85 $1E        
    LDA $D1                  ; FDD3  $A5 $D1        
    JSR $FDDF                ; FDD5  $20 $DF $FD    
    STA $1F                  ; FDD8  $85 $1F        
    LDA #$0B                 ; FDDA  $A9 $0B        
    JMP Swap_PRG             ; FDDC  $4C $1A $FE    

;; sub start ;;
    LDX #$09                 ; FDDF  $A2 $09        
    JSR $FC79                ; FDE1  $20 $79 $FC    
    LDA $02                  ; FDE4  $A5 $02        
    ADC #$F6                 ; FDE6  $69 $F6        
    STA $00                  ; FDE8  $85 $00        
    LDA $03                  ; FDEA  $A5 $03        
    ADC #$80                 ; FDEC  $69 $80        
    STA $01                  ; FDEE  $85 $01        
    LDY #$00                 ; FDF0  $A0 $00        
    LDA ($00),Y              ; FDF2  $B1 $00        
    RTS                      ; FDF4  $60            

 ;data block---        
;; [FDF5 : 3FE05]
.byte $11,$D0,$F3,$4C,$34,$FA,$00,$00,$00,$00,$00 
    
;; sub start ;;
    JMP L3FEAD               ; FE00  $4C $AD $FE    
L3FE03:              
    JMP Swap_PRG             ; FE03  $4C $1A $FE    
    STA $9FFF                ; FE06  $8D $FF $9F    
    LSR A                    ; FE09  $4A            
    STA $9FFF                ; FE0A  $8D $FF $9F    
    LSR A                    ; FE0D  $4A            
    STA $9FFF                ; FE0E  $8D $FF $9F    
    LSR A                    ; FE11  $4A            
    STA $9FFF                ; FE12  $8D $FF $9F    
    LSR A                    ; FE15  $4A            
    STA $9FFF                ; FE16  $8D $FF $9F    
    RTS                      ; FE19  $60            

Swap_PRG:              
    STA $FFF9                ; FE1A  $8D $F9 $FF    
    LSR A                    ; FE1D  $4A            
    STA $FFF9                ; FE1E  $8D $F9 $FF    
    LSR A                    ; FE21  $4A            
    STA $FFF9                ; FE22  $8D $F9 $FF    
    LSR A                    ; FE25  $4A            
    STA $FFF9                ; FE26  $8D $F9 $FF    
    LSR A                    ; FE29  $4A            
    STA $FFF9                ; FE2A  $8D $F9 $FF    
    RTS                      ; FE2D  $60            

OnReset:
    SEI                      ; FE2E  $78  
    LDA #$00                 ; FE2F  $A9 $00        
    STA PpuControl_2000      ; FE31  $8D $00 $20    
    STA $FF                  ; FE34  $85 $FF        
    STA $FE                  ; FE36  $85 $FE        
    LDA #$06                 ; FE38  $A9 $06        
    STA PpuMask_2001         ; FE3A  $8D $01 $20    
    CLD                      ; FE3D  $D8            
    LDX #$02                 ; FE3E  $A2 $02        
  : BIT PpuStatus_2002       ; FE40  $2C $02 $20    
    BPL :-                   ; FE43  $10 $FB        
    DEX                      ; FE45  $CA            
    BNE :-                   ; FE46  $D0 $F8        
    LDA #$80                 ; FE48  $A9 $80        
    STA $9FFF                ; FE4A  $8D $FF $9F    
    STA $BFFF                ; FE4D  $8D $FF $BF    
    STA $DFFF                ; FE50  $8D $FF $DF    
    STA $FFF9                ; FE53  $8D $F9 $FF    
    LDA #$0E                 ; FE56  $A9 $0E        
    JSR $FE06                ; FE58  $20 $06 $FE    
    STA $BFFF                ; FE5B  $8D $FF $BF    
    STA $BFFF                ; FE5E  $8D $FF $BF    
    STA $BFFF                ; FE61  $8D $FF $BF    
    STA $BFFF                ; FE64  $8D $FF $BF    
    STA $BFFF                ; FE67  $8D $FF $BF    
    STA $DFFF                ; FE6A  $8D $FF $DF    
    STA $DFFF                ; FE6D  $8D $FF $DF    
    STA $DFFF                ; FE70  $8D $FF $DF    
    STA $DFFF                ; FE73  $8D $FF $DF    
    STA $DFFF                ; FE76  $8D $FF $DF    
    LDA #$06                 ; FE79  $A9 $06        
    JSR Swap_PRG             ; FE7B  $20 $1A $FE    
    STA Ctrl1_4016           ; FE7E  $8D $16 $40    
    STA ApuStatus_4015       ; FE81  $8D $15 $40    
    STA DmcFreq_4010         ; FE84  $8D $10 $40    
    LDA #$C0                 ; FE87  $A9 $C0        
    STA Ctrl2_FrameCtr_4017  ; FE89  $8D $17 $40    
    DEX                      ; FE8C  $CA            
    TXS                      ; FE8D  $9A            
    STX $0100                ; FE8E  $8E $00 $01    
    JSR $FEBF                ; FE91  $20 $BF $FE    
    LDA #$06                 ; FE94  $A9 $06        
    JSR Swap_PRG             ; FE96  $20 $1A $FE    
    LDA #$40                 ; FE99  $A9 $40        
    STA $0100                ; FE9B  $8D $00 $01    
    JMP $C000                ; FE9E  $4C $00 $C0    
L3FEA1:              
    LDA PpuStatus_2002       ; FEA1  $AD $02 $20    
    LDA #$40                 ; FEA4  $A9 $40        
    STA $0100                ; FEA6  $8D $00 $01    
    PLA                      ; FEA9  $68            
    PLA                      ; FEAA  $68            
    PLA                      ; FEAB  $68            
    RTS                      ; FEAC  $60            

L3FEAD:              
    LDA #$A1                 ; FEAD  $A9 $A1        
    STA $0101                ; FEAF  $8D $01 $01    
    LDA #$FE                 ; FEB2  $A9 $FE        
    STA $0102                ; FEB4  $8D $02 $01    
    LDA #$4C                 ; FEB7  $A9 $4C        
    STA $0100                ; FEB9  $8D $00 $01    

OnIRQ:
L3FEBC:              
    JMP L3FEBC               ; FEBC  $4C $BC $FE    
    LDA #$00                 ; FEBF  $A9 $00        
    STA PpuMask_2001         ; FEC1  $8D $01 $20    
    LDA PpuStatus_2002       ; FEC4  $AD $02 $20    
    LDA #$3F                 ; FEC7  $A9 $3F        
    STA PpuAddr_2006         ; FEC9  $8D $06 $20    
    LDA #$00                 ; FECC  $A9 $00        
    STA PpuAddr_2006         ; FECE  $8D $06 $20    
    LDX #$10                 ; FED1  $A2 $10        
    LDA #$0F                 ; FED3  $A9 $0F        
FED5:
    STA PpuData_2007         ; FED5  $8D $07 $20    
    DEX                      ; FED8  $CA            
    BNE FED5                 ; FED9  $D0 $FA        
    LDA #$3F                 ; FEDB  $A9 $3F        
    STA PpuAddr_2006         ; FEDD  $8D $06 $20    
    LDA #$00                 ; FEE0  $A9 $00        
    STA PpuAddr_2006         ; FEE2  $8D $06 $20    
    STA PpuAddr_2006         ; FEE5  $8D $06 $20    
    STA PpuAddr_2006         ; FEE8  $8D $06 $20    
    RTS                      ; FEEB  $60            

 ;data block---
.byte $00,$00,$00,$00 
;; [FEF0 : 3FF00]
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 
.byte $0B,$0C,$0D,$0E,$00,$03,$03,$FE,$0F,$10,$11,$12,$13,$14,$15,$16 
.byte $00,$00,$0F,$10,$14,$15,$12,$13,$17,$18,$14,$15,$19,$1A,$1B,$1C 
.byte $00,$11,$11,$FE,$0F,$1D,$11,$1E,$1F,$20,$21,$16,$00,$00,$0F,$1D 
.byte $20,$21,$1E,$1F,$06,$22,$20,$21,$23,$24,$25,$00,$00,$11,$11,$FE 
.byte $0F,$26,$11,$27,$28,$29,$2A,$16,$2B,$00,$0F,$26,$29,$2A,$27,$28 
.byte $06,$22,$29,$2A,$2C,$2D,$2E,$00,$00,$11,$11,$FE,$2F,$30,$31,$32 
.byte $33,$34,$35,$36,$37,$00,$2F,$30,$34,$35,$32,$33,$38,$39,$34,$35 
.byte $3A,$3B,$3C,$00,$00,$31,$31,$FF,$A9,$23

STA PpuAddr_2006         ; FF7A  $8D $06 $20    
    LDA #$E0                 ; FF7D  $A9 $E0        
    STA PpuAddr_2006         ; FF7F  $8D $06 $20    
    LDX #$08                 ; FF82  $A2 $08        
    LDA #$55                 ; FF84  $A9 $55       
FF86:    
    STA PpuData_2007         ; FF86  $8D $07 $20    
    DEX                      ; FF89  $CA            
    BNE FF86                 ; FF8A  $D0 $FA        
    LDX #$18                 ; FF8C  $A2 $18        
    LDA #$AA                 ; FF8E  $A9 $AA        
FF90:
    STA PpuData_2007         ; FF90  $8D $07 $20    
    DEX                      ; FF93  $CA            
    BNE FF90                 ; FF94  $D0 $FA        
    RTS                      ; FF96  $60            


FF97:
    STA PpuData_2007         ; FF97  $8D $07 $20    
    DEY                      ; FF9A  $88            
    BNE FF97                 ; FF9B  $D0 $FA        
    INX                      ; FF9D  $E8            
    INX                      ; FF9E  $E8            
    RTS                      ; FF9F  $60            

 ;data block---       
;; [FFA0 : 3FFB0]
.byte $0F,$0F,$0F,$00,$0F,$00,$10,$0F,$10,$30,$0F,$30,$00,$00,$00,$00 
;; [FFB0 : 3FFC0]
.byte $A9,$00,$20,$03,$FE,$20,$09,$9C,$A9,$0E,$4C,$03,$FE,$00,$00,$00 
;; [FFC0 : 3FFD0]
.byte $A9,$01,$20,$03,$FE,$20,$B0,$BF,$A9,$09,$4C,$03,$FE,$00,$00,$00 
;; [FFD0 : 3FFE0]
.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00     
;; [FFE0 : 3FFF0]
.byte $20    

 .byte "F2eBETAv93-Demi"

;; [FFF0 : 40000]
.byte $14,$58,$00,$00,$48,$04,$01,$0E,$C3,$E2      

.segment "VECTORS"
    .byte $00, $01 ;.WORD OnNMI
    .WORD OnReset
    .WORD OnIRQ
