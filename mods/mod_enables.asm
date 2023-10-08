; base settings
ModPokerusSettings:: db MOD_RNG_POKERUS_NORMAL
ModSoloModSettings:: mod_config_flags MOD_SOLO_MOD_VISUAL, MOD_SOLO_MOD_BLACKOUT_AUTOMATICALLY, MOD_SOLO_MOD_AI_MODIFICATIONS, MOD_SOLO_MOD_BEAT_UP_MODIFICATIONS, MOD_SOLO_MOD_PHASING_MODIFICATIONS
ModRNGSettings::     mod_config_flags MOD_RNG_EARLY_ENCOUNTERS_DISABLED, MOD_RNG_SPINNERS_DISABLED, MOD_RNG_GUARANTEE_RODS, MOD_RNG_GUARANTEE_CATCHES, MOD_RNG_GUARANTEE_STARTER_IVS
ModMiscSettings::    mod_config_flags MOD_MISC_LEVEL_EVOLUTIONS_DISABLED

; if MOD_RNG_GUARANTEE_STARTER_IVS is set, this will be the IVs of your starter
; order = attack, defence, special, speed
ModFixedIVs::        mod_config_ivs 15, 15, 15, 15

; Control what starter is in each Pokeball in Kurt's lab (NOTE: does not control the rival's starter)
ModGrassStarter::    db CHIKORITA
ModWaterStarter::    db TOTODILE
ModFireStarter::     db CYNDAQUIL

; Experience rates for trainers vs. wild encounters
; 1.0q2 = 1.0x, 1.5q2 = 1.5x, 2.0q2 = 2.0x, etc.
ModExpRateTrainer::  db 1.5q2
ModExpRateWild::     db 1.0q2
