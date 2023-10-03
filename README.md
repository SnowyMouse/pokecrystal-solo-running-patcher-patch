# Pokémon Crystal - Solo Challenge Patches

This is a disassembly of Pokémon Crystal with patches for making the challenge running experience more consistent. This
can be used alone, but it is intended to be used with the challenge running patcher (WIP; unreleased).

The original disassembly can be found at: https://github.com/pret/pokecrystal

## This includes the following:

* **Anti-spinner:** Random spinners will face away from the player at all times and never initiate a battle. You can
  still challenge them by talking to them. Note that this does not affect spinners that spin in one direction, only the
  ones that change directions **randomly**.

* **True-solo:** You black out if your first party member faints. Additionally, the AI will make choices assuming you
  only have one party member now, and you can no longer be roared out. However, Beat Up only works with your first
  party member, and Baton Pass will fail.

* **Master Ball:** All balls work like Master Balls and catch without fail.

* **No early encounters:** Encounters are turned off in Routes 29-32 and Sprout Tower until you talk to Kurt. Caves
  and optional areas are left on for you to train in. Note that you can obtain a Repel in Route 31 if you want to turn
  off encounters for Union Cave.

## How do I find things or turn things on/off?

Go to `mods/mod_enables.asm` to configure the mod, and `mods/mod_features.asm` to look at the different settings. You
can look in the source code for constants defined in mod_features if you want to integrate the code into your own repo.
