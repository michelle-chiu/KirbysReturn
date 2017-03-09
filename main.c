/*
    KIRBY'S RETURN

    The goal of my game is to "help Kirby return home" by collecting orbs which
    have been stolen from him. In addition to collecting 10 orbs in order to
    win the game, the player must dodge the enemy attacks (falling rockets) by
    either attacking or moving away. Also, the player must be aware of his
    current position as the cloud platforms steadily descend. The player has
    three lives and a life is taken everytime Kirby is hit by a rocket
    or if Kirby falls to the bottom edge of the screen.

    KNOWN BUGS
    Unfortunately, for some odd reason on *rare occasions*,
    Kirby will occasionally collides with objects on the screen
    although there are no existing sprites that are shown.

    EXTRA CREDIT
    Extra attention and detail to the appearance, graphics, and look of my game!
*/

#include <stdlib.h>
#include "myLib.h"
#include "sound.h"
#include "startscreen.h"
#include "storyscreen.h"
#include "storyscreen2.h"
#include "color.h"
#include "instructions.h"
#include "instructions2.h"
#include "gamescreen.h"
#include "pausescreen.h"
#include "losescreen.h"
#include "kirby_sprites.h"
#include "stageonebackground.h"
#include "jungle.h"
#include "winscreen.h"
#include "story-mode.h"
#include "opening.h"
#include "gameover.h"
#include "bubblyclouds.h"
#include "jump.h"
#include "hit.h"
#include "winner.h"
#include "lifelost.h"

unsigned int buttons;
unsigned int oldButtons;

int hOff = 0;
int vOff = 0;

OBJ_ATTR shadowOAM[128];

#define ROWMASK 0xFF
#define COLMASK 0x1FF

typedef struct {
    int row;
    int col;
    int rdel;
    int racc;
    int cdel;
    int width;
    int height;
    int kirbyDirection;
    int attacking;
    int color;
} KIRBY;

typedef struct {
    int row;
    int col;
    int height;
    int width;
    int active;
} PLATFORM;

typedef struct {
    int row;
    int col;
    int height;
    int width;
    int active;
} ORB;

typedef struct {
    int row;
    int col;
    int height;
    int width;
    int active;
    int direction;
} ENEMY;

typedef struct {
    int row;
    int col;
    int height;
    int width;
    int active;
} ROCKET;

typedef struct {
    int row;
    int col;
    int height;
    int width;
    int active;
} ARROW;

typedef struct {
    int row;
    int col;
    int width;
    int height;
    int active;
} LIFE;

KIRBY kirby;
ENEMY boo;
LIFE playerLives[3];

int numPlatforms = 20;
PLATFORM platforms[20];

int numSpikePlatforms = 10;
PLATFORM spikePlatforms[10];

int numOrbs = 5;
ORB orbs[5];

int numRockets = 10;
ROCKET rockets[10];

int numArrows = 15;
ARROW arrows[15];

int lives;
int state;
int direction;
int timer;
int jumpTimer;
int collisionTimer;
int firstCollision;
int numOrbsCollected;
int gameStarted;
int cheatMode;

void hideSprites();
void initialize();
void updateBullet();
void start();
void story();
void story2();
void color();
void instructions();
void instructions2();
void game();
void pause();
void win();
void lose();
void goToStart();
void goToStory();
void goToStory2();
void goToColor();
void goToInstructions();
void goToInstructions2();
void goToGame();
void goToPause();
void goToLose();
void updatePlayer();
void generatePlatforms();
void generateRockets();
void generateOrbs();
void unpauseBoo();
void moveActivePlatforms();
void moveActiveOrbs();
void moveActiveBoo();
void moveActiveRockets();
void moveActiveArrows();
void attackEnemies();
void collisionCheckKirbyPlatform();
void collisionCheckKirbyOrb();
void collisionCheckKirbyRocket();
void collisionCheckKirbyBoo();
void collisionCheckArrowsBoo();
void checkKirbyOutOfBounds();
void checkWin();
void checkLose();

enum { STARTSCREEN, STORYSCREEN, STORYSCREEN2, COLOR, INSTRUCTIONS, INSTRUCTIONS2,
    GAMESCREEN, PAUSESCREEN, LOSESCREEN, WINSCREEN };

int main() {

    goToStart();

	while(1) {
        oldButtons = buttons;
        buttons = BUTTONS;

        switch(state) {
            case STARTSCREEN:
                start();
                break;
            case STORYSCREEN:
                story();
                break;
            case STORYSCREEN2:
                story2();
                break;
            case COLOR:
                color();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case INSTRUCTIONS2:
                instructions2();
                break;
            case GAMESCREEN:
                game();
                break;
            case PAUSESCREEN:
                pause();
                break;
            case LOSESCREEN:
                lose();
                break;
            case WINSCREEN:
                win();
                break;
        }

        REG_BG0HOFS = hOff;
        REG_BG0VOFS = vOff;

        DMANow(3, shadowOAM, OAM, 128 * 4);

		waitForVblank();
	}
}


void hideSprites() {
    for (int i=0; i<128; i++) {
        shadowOAM[i].attr0 = ATTR0_HIDE;
    }
    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void initialize() {
    lives = 3;
    timer = 0;
    jumpTimer = 0;
    collisionTimer = 0;
    firstCollision = 0;
    gameStarted = 1;
    numOrbsCollected = 0;
    cheatMode = 0;

    DMANow(3, kirby_spritesPal, SPRITE_PALETTE, 256);
    DMANow(3, kirby_spritesTiles, &CHARBLOCKBASE[4], (kirby_spritesTilesLen / 2));

    kirby.width = 24;
    kirby.height = 26;
    kirby.rdel = 0;
    kirby.racc = 30;
    kirby.cdel = 1;
    kirby.row = SHIFTUP(35);
    kirby.col = SHIFTUP(240/2-kirby.height/2);
    kirby.kirbyDirection = 0;
    kirby.attacking = 12;
    kirby.color = 0;

    for(int i = 0; i < numPlatforms; i++) {
        platforms[i].row = 0;
        int randomCol = rand() % ((208) + 1);
        platforms[i].col = randomCol;
        platforms[i].active = 0;
        platforms[i].width = 29;
        platforms[i].height = 22;
    }

    for (int o = 0; o < numOrbs; o++) {
        orbs[o].row = 0;
        int randomCol = rand() % (6);
        orbs[o].col = randomCol;
        orbs[o].active = 0;
        orbs[o].height = 15;
        orbs[o].width = 16;
    }

    boo.row = 10;
    boo.col = 30;
    boo.height = 15;
    boo.width = 25;
    boo.active = 1;
    boo.direction = 1;

    for (int r=0; r<numRockets; r++) {
        rockets[r].row = boo.row;
        rockets[r].col = boo.col;
        rockets[r].active = 0;
        rockets[r].height = 24;
        rockets[r].width = 15;
    }

    for (int a=0; a<numArrows; a++) {
        arrows[a].row = SHIFTDOWN(kirby.row);
        arrows[a].col = SHIFTDOWN(kirby.col);
        arrows[a].active = 0;
        arrows[a].height = 10;
        arrows[a].width = 4;
    }

    int lifeCol = 0;
    for (int l=0; l<lives; l++) {
        playerLives[l].row = 3;
        playerLives[l].col = (lifeCol*21)+5;
        playerLives[l].width = 27;
        playerLives[l].height = 22;
        playerLives[l].active = 1;
        lifeCol++;
    }

    for(int s = 0; s < numSpikePlatforms; s++) {
        spikePlatforms[s].row = 0;
        int randomCol = rand() % ((208) + 1);
        spikePlatforms[s].col = randomCol;
        spikePlatforms[s].active = 0;
        spikePlatforms[s].width = 32;
        spikePlatforms[s].height = 16;
    }
    setupSounds();
    setupInterrupts();
    playSoundA(bubblyclouds, BUBBLYCLOUDSLEN, BUBBLYCLOUDSFREQ, 1);
}

void goToStart() {
    initialize();
    REG_DISPCTL = MODE0 | BG0_ENABLE  | SPRITE_ENABLE;
    REG_BG0CNT = CBB(0) | SBB(20) | BG_SIZE0 | COLOR256;
    hideSprites();
    loadPalette(startscreenPal);
    DMANow(3, startscreenTiles, &CHARBLOCKBASE[0], (startscreenTilesLen / 2));
    DMANow(3, startscreenMap, &SCREENBLOCKBASE[20], (startscreenMapLen / 2));
    state = STARTSCREEN;
}

void start() {
    waitForVblank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStory();
    }
}

void goToStory() {
    REG_BG0CNT = CBB(0) | SBB(25) | BG_SIZE0 | COLOR256;
    loadPalette(storyscreenPal);
    DMANow(3, storyscreenTiles, &CHARBLOCKBASE[0], (storyscreenTilesLen / 2));
    DMANow(3, storyscreenMap, &SCREENBLOCKBASE[25], (storyscreenMapLen / 2));
    state = STORYSCREEN;
}

void story() {
    waitForVblank();
    if(BUTTON_PRESSED(BUTTON_START)) {
        goToStory2();
    }
}

void goToStory2() {
    REG_BG0CNT = CBB(0) | SBB(24) | BG_SIZE0 | COLOR256;
    loadPalette(storyscreen2Pal);
    DMANow(3, storyscreen2Tiles, &CHARBLOCKBASE[0], (storyscreen2TilesLen / 2));
    DMANow(3, storyscreen2Map, &SCREENBLOCKBASE[24], (storyscreen2MapLen / 2));
    state = STORYSCREEN2;
}

void story2() {
    waitForVblank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToColor();
    }
}

void goToColor() {
    REG_BG0CNT = CBB(0) | SBB(25) | BG_SIZE0 | COLOR256;
    loadPalette(colorPal);
    DMANow(3, colorTiles, &CHARBLOCKBASE[0], (colorTilesLen / 2));
    DMANow(3, colorMap, &SCREENBLOCKBASE[25], (colorMapLen / 2));
    state = COLOR;
}

void color() {
    waitForVblank();
    shadowOAM[0].attr0 = 70 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = 110 | ATTR1_SIZE32;
    shadowOAM[0].attr2 = SPRITEOFFSET16(12, kirby.color);
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        if (kirby.color >= 8) {
            kirby.color = kirby.color - 8;
        } else {
            kirby.color = 24;
        }
    } else if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        if (kirby.color <= 16) {
            kirby.color = kirby.color + 8;
        } else {
            kirby.color = 0;
        }
    } else if (BUTTON_PRESSED(BUTTON_START)) {
        goToInstructions();
    }
}

void goToInstructions() {
    shadowOAM[0].attr0 = ATTR0_HIDE;
    REG_BG0CNT = CBB(0) | SBB(22) | BG_SIZE0 | COLOR256;
    loadPalette(instructionsPal);
    DMANow(3, instructionsTiles, &CHARBLOCKBASE[0], (instructionsTilesLen / 2));
    DMANow(3, instructionsMap, &SCREENBLOCKBASE[22], (instructionsMapLen / 2));
    state = INSTRUCTIONS;
}

void instructions() {
    shadowOAM[0].attr0 = ATTR0_HIDE;
    waitForVblank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToInstructions2();
    }
}

void goToInstructions2() {
    shadowOAM[0].attr0 = ATTR0_HIDE;
    REG_BG0CNT = CBB(0) | SBB(23) | BG_SIZE0 | COLOR256;
    loadPalette(instructions2Pal);
    DMANow(3, instructions2Tiles, &CHARBLOCKBASE[0], (instructions2TilesLen / 2));
    DMANow(3, instructions2Map, &SCREENBLOCKBASE[23], (instructions2MapLen / 2));
    state = INSTRUCTIONS2;
}

void instructions2() {
    waitForVblank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
}

void goToGame() {
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;
    REG_BG1CNT = CBB(1) | SBB(30) | BG_SIZE0;
    REG_BG0CNT = CBB(0) | SBB(31) | BG_SIZE0;
    loadPalette(junglePal);
    DMANow(3, stageonebackgroundTiles, &CHARBLOCKBASE[1], (stageonebackgroundTilesLen / 2));
    DMANow(3, stageonebackgroundMap, &SCREENBLOCKBASE[30], (stageonebackgroundMapLen / 2));
    DMANow(3, jungleTiles, &CHARBLOCKBASE[0], (jungleTilesLen /2));
    DMANow(3, jungleMap, &SCREENBLOCKBASE[31], (jungleMapLen / 2));
    state = GAMESCREEN;
}

void game() {
    vOff--;
    timer++;
    jumpTimer++;
    collisionTimer++;

    //playSoundA(story_mode, STORY_MODELEN, STORY_MODEFREQ, 1);

    shadowOAM[0].attr0 = (ROWMASK & SHIFTDOWN(kirby.row)) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (COLMASK & SHIFTDOWN(kirby.col)) | ATTR1_SIZE32;
    shadowOAM[0].attr2 = SPRITEOFFSET16(kirby.attacking, kirby.color + kirby.kirbyDirection);

    for (int p = 1; p < numPlatforms+1; p++) {
        if (platforms[p-1].active == 0) {
            shadowOAM[p].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[p].attr0 = platforms[p-1].row | ATTR0_4BPP | ATTR0_SQUARE;
        }
        shadowOAM[p].attr1 = platforms[p-1].col | ATTR1_SIZE32;
        shadowOAM[p].attr2 = SPRITEOFFSET16(0, 16);
    }

    for (int o = 22; o < numOrbs+22; o++) {
        if (orbs[o-22].active == 0) {
            shadowOAM[o].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[o].attr0 = orbs[o-22].row | ATTR0_4BPP | ATTR0_SQUARE;
        }
        shadowOAM[o].attr1 = orbs[o-22].col | ATTR1_SIZE32;
        shadowOAM[o].attr2 = SPRITEOFFSET16(0, 24);
    }
    if (boo.active) {
        shadowOAM[45].attr0 = boo.row | ATTR0_4BPP | ATTR0_SQUARE;
    } else {
        shadowOAM[45].attr0 = ATTR0_HIDE;
    }
    shadowOAM[45].attr1 = boo.col | ATTR1_SIZE32;
    if (boo.direction == 0) {
        shadowOAM[45].attr2 = SPRITEOFFSET16(4, 8);
    } else if (boo.direction == 1) {
        shadowOAM[45].attr2 = SPRITEOFFSET16(8, 8);
    } else if (boo.direction == 2) {
        shadowOAM[45].attr2 = SPRITEOFFSET16(0, 8);
    }


    for (int r = 46; r < 46+numRockets; r++) {
        if (rockets[r-46].active == 0) {
            shadowOAM[r].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[r].attr0 = rockets[r-46].row | ATTR0_4BPP | ATTR0_SQUARE;
        }
        shadowOAM[r].attr1 = rockets[r-46].col | ATTR1_SIZE32;
        shadowOAM[r].attr2 = SPRITEOFFSET16(0, 12);
    }

    for (int a = 57; a < 57+numArrows; a++) {
        if (arrows[a-57].active == 0) {
            shadowOAM[a].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[a].attr0 = arrows[a-57].row | ATTR0_4BPP | ATTR0_SQUARE;
        }
        shadowOAM[a].attr1 = arrows[a-57].col | ATTR1_SIZE32;
        shadowOAM[a].attr2 = SPRITEOFFSET16(24, kirby.color);
    }

    for (int l = 73; l < 76; l++) {
        if (playerLives[l-73].active) {
            shadowOAM[l].attr0 = playerLives[l-73].row | ATTR0_4BPP | ATTR0_SQUARE;
        } else {
            shadowOAM[l].attr0 = ATTR0_HIDE;
        }
        shadowOAM[l].attr1 = playerLives[l-73].col | ATTR1_SIZE32;
        shadowOAM[l].attr2 = SPRITEOFFSET16(28, kirby.color);
    }

    shadowOAM[77].attr0 = 30 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[77].attr1 = 8 | ATTR1_SIZE32;
    shadowOAM[77].attr2 = SPRITEOFFSET16(0, 24);

    shadowOAM[78].attr0 = 34 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[78].attr1 = 30 | ATTR1_SIZE8;
    shadowOAM[78].attr2 = SPRITEOFFSET16(8, numOrbsCollected+12);

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        cheatMode = 1;
    }

    if (gameStarted) {
        platforms[0].row = 100;
        platforms[0].col = 0;
        platforms[0].active = 1;

        platforms[1].row = 100;
        platforms[1].col = 60;
        platforms[1].active = 1;

        platforms[2].row = 100;
        platforms[2].col = 120;
        platforms[2].active = 1;

        platforms[3].row = 100;
        platforms[3].col = 180;
        platforms[3].active = 1;

        platforms[4].row = 100;
        platforms[4].col = 30;
        platforms[4].active = 1;

        platforms[5].row = 100;
        platforms[5].col = 90;
        platforms[5].active = 1;

        platforms[6].row = 100;
        platforms[6].col = 150;
        platforms[6].active = 1;

        platforms[7].row = 100;
        platforms[7].col = 210;
        platforms[7].active = 1;

        platforms[8].row = 60;
        platforms[8].col = 40;
        platforms[8].active = 1;

        platforms[9].row = 60;
        platforms[9].col = 170;
        platforms[9].active = 1;

        platforms[10].row = 30;
        platforms[10].col = 100;
        platforms[10].active = 1;

        gameStarted = 0;
    }

    if (cheatMode) {
        if (timer == 10) {
            generatePlatforms();
            generateOrbs();
            if (boo.active) {
                generateRockets();
            }
        } else if (timer == 30) {
            generatePlatforms();
        } else if (timer == 50) {
            generatePlatforms();
            generatePlatforms();
            generateOrbs();
        } else if (timer == 60) {
            generatePlatforms();
            generatePlatforms();
        } else if (timer == 75) {
            generatePlatforms();
        } else if (timer == 100) {
            generatePlatforms();
            generateOrbs();
        } else if (timer == 125) {
            generatePlatforms();
        } else if (timer == 150) {
            timer = 0;
            generatePlatforms();
            generateOrbs();
        } else if (timer == 150 && jumpTimer > 20) {
            boo.row = 0;
            boo.active = 1;
            timer = 0;
            generatePlatforms();
            generateOrbs();
        }
    } else {
        if (timer == 25) {
            generatePlatforms();
            generateOrbs();
            if (boo.active) {
                generateRockets();
            }
        } else if (timer == 65) {
            generateOrbs();
        } else if (timer == 100) {
            generatePlatforms();
            generateOrbs();
        } else if (timer == 150) {
            timer = 0;
            generatePlatforms();
            generateOrbs();
            if (boo.active == 0) {
                boo.row = 0;
                boo.active = 1;
            }

        }
    }

    updatePlayer();
    moveActivePlatforms();
    moveActiveOrbs();
    moveActiveBoo();
    moveActiveRockets();
    moveActiveArrows();
    collisionCheckKirbyPlatform();
    collisionCheckKirbyOrb();
    collisionCheckArrowsBoo();
    checkKirbyOutOfBounds();
    collisionCheckKirbyRocket();
    unpauseBoo();
    checkWin();
    checkLose();
    waitForVblank();
}

void goToPause() {
    vOff = 0;
    REG_BG0CNT = CBB(0) | SBB(22) | BG_SIZE0 | COLOR256;
    loadPalette(pausescreenPal);
    DMANow(3, pausescreenTiles, &CHARBLOCKBASE[0], (pausescreenTilesLen / 2));
    DMANow(3, pausescreenMap, &SCREENBLOCKBASE[22], (pausescreenMapLen / 2));
    hideSprites();
    state = PAUSESCREEN;
}

void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

void goToWin() {
    vOff = 0;
    REG_BG0CNT = CBB(0) | SBB(20) | BG_SIZE0 | COLOR256;
    loadPalette(winscreenPal);
    DMANow(3, winscreenTiles, &CHARBLOCKBASE[0], (winscreenTilesLen / 2));
    DMANow(3, winscreenMap, &SCREENBLOCKBASE[20], (winscreenMapLen / 2));
    hideSprites();
    state = WINSCREEN;

}

void win() {
    stopSound();
    //playSoundB(winner, WINNERLEN, WINNERFREQ, 0);
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToLose() {
    vOff = 0;
    hideSprites();
    REG_BG0CNT = CBB(0) | SBB(20) | BG_SIZE0 | COLOR256;
    loadPalette(losescreenPal);
    DMANow(3, losescreenTiles, &CHARBLOCKBASE[0], (losescreenTilesLen / 2));
    DMANow(3, losescreenMap, &SCREENBLOCKBASE[20], (losescreenMapLen / 2));
    state=LOSESCREEN;
}

void lose() {
    stopSound();
    //playSoundB(gameover, GAMEOVERLEN, GAMEOVERFREQ, 0);

    if(BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void updatePlayer() {
    kirby.rdel += kirby.racc;

    if(SHIFTDOWN(kirby.row)+kirby.height >= 160) {
        kirby.rdel = 0;
        kirby.row = SHIFTUP(160-kirby.height);
    }

    if(SHIFTDOWN(kirby.row) < 0) {
        kirby.rdel = 0;
        kirby.row = kirby.height;
    }

    if(BUTTON_PRESSED(BUTTON_UP) && jumpTimer > 46) {
        playSoundB(jump, JUMPLEN, JUMPFREQ, 0);
        kirby.rdel = -700;
        jumpTimer = 0;
    }

    if(BUTTON_PRESSED(BUTTON_A)) {
        attackEnemies();
    }

    if(BUTTON_HELD(BUTTON_LEFT)) {
        kirby.attacking = 12;
        if(SHIFTDOWN(kirby.col) > -4) {
            kirby.col = kirby.col-200;
        }

        kirby.kirbyDirection = 4;
        shadowOAM[0].attr2 = SPRITEOFFSET16(kirby.attacking, kirby.color + kirby.kirbyDirection);

    }

    if(BUTTON_HELD(BUTTON_RIGHT)) {
        kirby.attacking = 12;
        if(SHIFTDOWN(kirby.col) < 240-kirby.width) {
            kirby.col = kirby.col+200;
        }

        kirby.kirbyDirection = 0;
        shadowOAM[0].attr2 = SPRITEOFFSET16(kirby.attacking, kirby.color + kirby.kirbyDirection);
    }

    if (kirby.rdel < 0) {
        shadowOAM[0].attr2 = SPRITEOFFSET16(16, kirby.color + kirby.kirbyDirection);
    }

    kirby.row += kirby.rdel;
}

void generatePlatforms() {
    for(int i=0; i<numPlatforms; i++) {
        if(platforms[i].active == 0) {
            platforms[i].active = 1;
            platforms[i].row = 0;
            break;
        }
    }
}

void generateSpikePlatforms() {
    for(int i=0; i<numSpikePlatforms; i++) {
        if(spikePlatforms[i].active == 0) {
            spikePlatforms[i].active = 1;
            spikePlatforms[i].row = 0;
            break;
        }
    }
}

void generateOrbs() {
    for(int i=0; i<numOrbs; i++) {
        if(orbs[i].active == 0) {
            orbs[i].active = 1;
            for (int j=0; j<numPlatforms; j++) {
                int randActivePlatform = rand() % 21;
                if (platforms[randActivePlatform].active == 1) {
                    orbs[i].col = platforms[randActivePlatform].col/2;
                }
            }
            orbs[i].row = 0;
            break;
        }
    }
}

void generateRockets() {
    if (boo.active == 1) {
        boo.direction = 2;
        shadowOAM[45].attr2 = SPRITEOFFSET16(0, 8);
        for (int i=0; i<numRockets; i++) {
            if(rockets[i].active == 0) {
                rockets[i].active = 1;
                rockets[i].row = boo.row;
                rockets[i].col = boo.col;
                break;
            }
        }
    }
}

void unpauseBoo() {
    if (boo.direction == 2) {
        if (timer % 100 == 0) {
            boo.direction = rand() % 2;
        }
    }
}

void moveActivePlatforms() {
    for(int i=0; i<numPlatforms; i++) {
        if(platforms[i].active == 1 && timer % 3 == 0) {
            platforms[i].row++;
            if(platforms[i].row > 160) {
                platforms[i].active = 0;
            }
        }
    }
}

void moveActiveOrbs() {
    for(int i=0; i<numOrbs; i++) {
        if(orbs[i].active == 1) { //&& timer % 3 == 0) {
            orbs[i].row++;
            if(orbs[i].row > 160) {
                orbs[i].active = 0;
            }
        }
    }
}

void moveActiveBoo() {
    if (timer % 3 == 0) {
        boo.row++;
    }

    if(boo.active == 1 && boo.direction == 1) {
        if (boo.col >= 240-boo.width) {
            boo.col--;
            boo.direction = 0;
        } else {
            boo.col++;
        }
    } else if (boo.active == 1 && boo.direction == 0) {
        if (boo.col <= 0) {
            boo.col++;
            boo.direction = 1;
        } else {
            boo.col--;
        }
    }

    if(boo.direction == 0) {
        shadowOAM[45].attr2 = SPRITEOFFSET16(4, 8);
    } else if (boo.direction == 1) {
        shadowOAM[45].attr2 = SPRITEOFFSET16(8, 8);
    }

    if(boo.row > 240) {
        boo.active = 0;
        boo.row = 0;
    }
}

void moveActiveRockets() {
    for(int i=0; i<numRockets; i++) {
        if(rockets[i].active == 1) { //&& timer % 3 == 0) {
            rockets[i].row++;
            if(rockets[i].row > 160) {
                rockets[i].active = 0;
            }
        }
    }
}

void moveActiveArrows() {
    for(int i=0; i<numArrows; i++) {
        if(arrows[i].active == 1) {
            arrows[i].row--;
            if(arrows[i].row < 0) {
                arrows[i].active = 0;
            }
        }
    }
}

void attackEnemies() {
    if (timer % 2 == 0) {
        kirby.attacking = 20;
        playSoundB(hit, HITLEN, HITFREQ, 0);
        for(int i=0; i<numArrows; i++) {
            if(arrows[i].active == 0) {
                arrows[i].active = 1;
                arrows[i].row = SHIFTDOWN(kirby.row);
                arrows[i].col = SHIFTDOWN(kirby.col);
                shadowOAM[i+57].attr0 = arrows[i].row | ATTR0_4BPP | ATTR0_SQUARE;
                shadowOAM[i+57].attr1 = arrows[i].col;
                break;
            }
        }
    }
}

void collisionCheckKirbyPlatform() {
    for (int i=0; i<numPlatforms; i++) {
        if(platforms[i].active &&
            platforms[i].col <= SHIFTDOWN(kirby.col) + kirby.width &&
            platforms[i].col + platforms[i].width >= SHIFTDOWN(kirby.col) &&
            platforms[i].row <= (SHIFTDOWN(kirby.row)+kirby.height) &&
            platforms[i].row >= (SHIFTDOWN(kirby.row)+kirby.height-SHIFTDOWN(kirby.rdel))) {
            if (kirby.rdel > 0) {
                kirby.rdel = 0;
                kirby.row = SHIFTUP(platforms[i].row)-SHIFTUP(kirby.height);
            }
        }
    }
}

void collisionCheckKirbyOrb() {
    for (int i=0; i<numOrbs; i++) {
        if(orbs[i].active &&
        orbs[i].col <= SHIFTDOWN(kirby.col) + kirby.width &&
        orbs[i].col + orbs[i].width >= SHIFTDOWN(kirby.col) &&
        orbs[i].row + orbs[i].height >= SHIFTDOWN(kirby.row)) {
            numOrbsCollected++;
            orbs[i].active = 0;
        }
    }
}

void collisionCheckKirbyRocket() {
    for (int i=0; i<numRockets; i++) {
        if(rockets[i].active &&
        rockets[i].col <= SHIFTDOWN(kirby.col) + kirby.width &&
        rockets[i].col + rockets[i].width >= SHIFTDOWN(kirby.col) &&
        rockets[i].row + rockets[i].height >= SHIFTDOWN(kirby.row)) {
            if (firstCollision == 0) {
                playSoundB(lifelost, LIFELOSTLEN, LIFELOSTFREQ, 0);
                rockets[i].active = 0;
                lives = lives - 1;
                playerLives[lives].active = 0;
                shadowOAM[lives+73].attr0 = ATTR0_HIDE;
                firstCollision = 1;
            } else if (collisionTimer > 100 && firstCollision == 1) {
                playSoundB(lifelost, LIFELOSTLEN, LIFELOSTFREQ, 0);
                rockets[i].active = 0;
                lives = lives - 1;
                playerLives[lives].active = 0;
                shadowOAM[lives+73].attr0 = ATTR0_HIDE;
                collisionTimer = 0;
            }
        }
    }
}

void collisionCheckArrowsBoo() {
    for (int i=0; i<numOrbs; i++) {
        if(arrows[i].active &&
        arrows[i].col <= boo.col + boo.width &&
        arrows[i].col + arrows[i].width >= boo.col &&
        arrows[i].row + arrows[i].height >= boo.row) {
            boo.active = 0;
            boo.row = 0;
        }
    }
}

void collisionCheckKirbyBoo() {
    if(boo.active &&
    boo.col <= SHIFTDOWN(kirby.col) + kirby.width &&
    boo.col + boo.width >= SHIFTDOWN(kirby.col) &&
    boo.row + boo.height >= SHIFTDOWN(kirby.row)) {
        if (collisionTimer > 150) {
            playSoundB(lifelost, LIFELOSTLEN, LIFELOSTFREQ, 0);
            lives = lives - 1;
            playerLives[lives].active = 0;
            collisionTimer = 0;
        }
    }
}

void checkKirbyOutOfBounds() {
    if((SHIFTDOWN(kirby.row)+kirby.height >= 160) && collisionTimer > 150) {
        playSoundB(lifelost, LIFELOSTLEN, LIFELOSTFREQ, 0);
        lives = lives - 1;
        playerLives[lives].active = 0;
        collisionTimer = 0;
    }
}

void checkWin() {
    if (numOrbsCollected >= 10) {
        goToWin();
    }
}

void checkLose() {
    if (lives == 0) {
        goToLose();
    }
}