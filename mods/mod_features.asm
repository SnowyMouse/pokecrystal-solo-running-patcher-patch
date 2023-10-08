; Emulate a solo run for battles
DEF MOD_SOLO_MOD_VISUAL                 EQU 0 ; show 1 ball when entering battle
DEF MOD_SOLO_MOD_BLACKOUT_AUTOMATICALLY EQU 1 ; blackout if your leader faints
DEF MOD_SOLO_MOD_AI_MODIFICATIONS       EQU 2 ; AI ignore other party members for choosing moves
DEF MOD_SOLO_MOD_BEAT_UP_MODIFICATIONS  EQU 3 ; beat up only uses slot 1
DEF MOD_SOLO_MOD_PHASING_MODIFICATIONS  EQU 4 ; block roar/whirlwind/baton pass

; Change RNG settings
DEF MOD_RNG_EARLY_ENCOUNTERS_DISABLED   EQU 0 ; disable early encounters in requires routes until Kurt is spoken to
DEF MOD_RNG_SPINNERS_DISABLED           EQU 1 ; random spinners will ignore you
DEF MOD_RNG_GUARANTEE_RODS              EQU 2 ; rods always work
DEF MOD_RNG_GUARANTEE_CATCHES           EQU 3 ; balls always work
DEF MOD_RNG_GUARANTEE_STARTER_IVS       EQU 4 ; starter IVs are fixed

; Misc. changed
DEF MOD_MISC_LEVEL_EVOLUTIONS_DISABLED  EQU 0 ; evolution is disabled

; Pokerus settings
DEF MOD_RNG_POKERUS_NORMAL              EQU 0 ; normal behavior
DEF MOD_RNG_POKERUS_DISABLED            EQU 1 ; disabled
DEF MOD_RNG_POKERUS_GUARANTEED          EQU 2 ; guaranteed pokerus (requires visiting goldenrod still)



; Macros for configuration

MACRO mod_config_flags
    DEF FLAGV=0
    FOR i, _NARG
        DEF FLAGV = FLAGV | (1 << \1)
        SHIFT
    ENDR
    DB FLAGV
ENDM

; Takes: atk, def, special, speed
; (in-game it's stored as (speed | special | attack | defense))
MACRO mod_config_ivs
    dw (\4 << 12) | (\3 << 8) | (\1 << 4) | (\2)
ENDM
