# Pokémon Crystal - Solo Challenge Patches

This is a disassembly of Pokémon Crystal with patches for making the challenge running experience more consistent. This
can be used alone, but it is intended to be used with the challenge running patcher (WIP; unreleased).

The original disassembly can be found at: https://github.com/pret/pokecrystal

## This includes the following:

* **Anti-spinner:** Random spinners will face away from the player at all times and never initiate a battle. You can
  still challenge them by talking to them. Note that this does not affect spinners that spin in one direction, only the
  ones that change directions **randomly**. Enabled with `MOD_RNG_SPINNERS_DISABLED`

* **Solo mode:** Enables features tailored for a convenient solo running experience:
  * `MOD_SOLO_MOD_VISUAL` - The first ball in your party is displayed when entering battle
  * `MOD_SOLO_MOD_BLACKOUT_AUTOMATICALLY` - The battle is considered lost if your first party member faints
  * `MOD_SOLO_MOD_AI_MODIFICATIONS` - The AI behaves as if you have only one party member
  * `MOD_SOLO_MOD_BEAT_UP_MODIFICATIONS` - Beat Up only uses your first party member
  * `MOD_SOLO_MOD_PHASING_MODIFICATIONS` - The moves Roar, Whirlwind, and Baton Pass assume you have one party member
    and thus fail if used to switch your Pokemon out.

* **Master Ball:** All balls work like Master Balls and catch without fail. Enabled with `MOD_RNG_GUARANTEE_CATCHES`

* **Guarantee rods:** Guarantees all fishing encounters. Enabled with `MOD_RNG_GUARANTEE_RODS`

* **No early encounters:** Encounters are turned off in Routes 29-32 and Sprout Tower until you talk to Kurt. Caves
  and optional areas are left on for you to train in. Note that you can obtain a Repel in Route 31 if you want to turn
  off encounters for Union Cave. Enabled with `MOD_RNG_EARLY_ENCOUNTERS_DISABLED`

* **Modify starters:** You can modify your starter species as well as their IVs (with `MOD_RNG_GUARANTEE_STARTER_IVS`)

* **Disable evolutions:** You can disable evolutions on level-up with `MOD_MISC_LEVEL_EVOLUTIONS_DISABLED`

* **Pokérus:** You can enable, disable, or guarantee Pokérus.

* **Experience scaling:** You can scale experience up to 6375% or as low as 0%, in 25% increments.

## How do I find things or turn things on/off?

Go to `mods/mod_enables.asm` to configure the mod, and `mods/mod_features.asm` to look at the different settings. You
can look in the source code for constants defined in mod_features if you want to integrate the code into your own repo.
