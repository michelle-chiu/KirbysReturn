# KirbysReturn

This is a Game Boy Advance game programmed in C. To simulate it, run it on Boycott Advance.

# Instructions

The goal of my game is to "help Kirby return home" by collecting orbs which
have been stolen from him. In addition to collecting 10 orbs in order to
win the game, the player must dodge the enemy attacks (falling rockets) by
either attacking or moving away. Also, the player must be aware of his
current position as the cloud platforms steadily descend. The player has
three lives and a life is taken everytime Kirby is hit by a rocket
or if Kirby falls to the bottom edge of the screen.

* Left Arrow: Move Kirby left
* Right Arrow: Move Kirby right
* Up Arrow: Make Kirby jump
* A Button: Make Kirby attack
* Start Button: Advance to next screen
* Select Button: Activate cheat

# Requirements

The following are guidelines that I followed when developing and designing my game:
* 2 Sprites, with at least one being an animated sprite or one animated extra large sprite
* 2 simultaneous tiled backgrounds or 1 tiled background larger than 512x512 pixels
* Main game mode in Mode0
* Win/Lose states (as applicable) but there must be at least one
* Splash screen with menu and instructions
* Ability to pause the game
* At least 2 sounds that can play at the same time, with one sound looping at some point
* Cheat to make the game easier (not just to skip to the win state)
* Bug-Free Gameplay
* Good Game Design

# Code
If you're looking to comprehend most of the game's functionality and logic, please take a look at the main.c file.
