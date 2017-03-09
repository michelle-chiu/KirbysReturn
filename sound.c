#include "myLib.h"
#include <stdlib.h>
#include <stdio.h>
#include "sound.h"
#include "story-mode.h"
#include "opening.h"
#include "gameover.h"
#include "bubblyclouds.h"
#include "jump.h"
#include "hit.h"
#include "winner.h"
#include "lifelost.h"

SOUND soundA;
SOUND soundB;

void setupSounds() {
    REG_SOUNDCNT_X = SND_ENABLED;

    REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_TO_BOTH |
                     DSA_TIMER0 |
                     DSA_FIFO_RESET |
                     DSB_OUTPUT_RATIO_100 |
                     DSB_OUTPUT_TO_BOTH |
                     DSB_TIMER1 |
                     DSB_FIFO_RESET;

    REG_SOUNDCNT_L = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        dma[1].cnt = 0;

        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;

        DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

        REG_TM0CNT = 0;

        REG_TM0D = -ticks;
        REG_TM0CNT = TIMER_ON;

        soundA.data = sound;
        soundA.length = length;
        soundA.frequency = frequency;
        soundA.isPlaying = 1;
        soundA.loops = loops;
        soundA.duration = ((VBLANK_FREQ*length)/frequency);
        soundA.vbCount = 0;
}


void playSoundB(const unsigned char* sound, int length, int frequency, int loops) {

        dma[2].cnt = 0;
        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;
        DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

        REG_TM1CNT = 0;
        REG_TM1D = -ticks;
        REG_TM1CNT = TIMER_ON;

        soundB.data = sound;
        soundB.length = length;
        soundB.frequency = frequency;
        soundB.isPlaying = 1;
        soundB.loops = loops;
        soundB.duration = ((VBLANK_FREQ*length)/frequency);
        soundB.vbCount = 0;
}

void pauseSound() {
    soundA.isPlaying = 0;
    REG_TM0CNT = 0;
    soundB.isPlaying = 0;
    REG_TM1CNT = 0;
}

void unpauseSound() {
    soundA.isPlaying = 1;
    REG_TM0CNT = TIMER_ON;
    soundB.isPlaying = 1;
    REG_TM1CNT = TIMER_ON;
}

void stopSound() {
    dma[1].cnt = 0;
    dma[2].cnt = 0;
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
}

void setupInterrupts() {
    REG_IME = 0;
    REG_INTERRUPT = (unsigned int) interruptHandler;
    REG_IE |= INT_VBLANK;
    REG_DISPSTAT |= INT_VBLANK_ENABLE;
    REG_IME = 1;
}

void interruptHandler() {
    REG_IME = 0;
    if(REG_IF & INT_VBLANK) {
        if(soundA.isPlaying) {
            soundA.vbCount++;
            if(soundA.vbCount >= soundA.duration) {
                if(soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.frequency, soundA.loops);
                } else {
                    dma[1].cnt = 0;
                    soundA.isPlaying = 0;
                    REG_TM0CNT = 0;
                }
            }
        }
        if(soundB.isPlaying) {
            soundB.vbCount++;
            if(soundB.vbCount >= soundB.duration) {
                if(soundB.loops) {
                    playSoundA(soundB.data, soundB.length, soundB.frequency, soundB.loops);
                } else {
                    dma[2].cnt = 0;
                    soundB.isPlaying = 0;
                    REG_TM1CNT = 0;
                }
            }
        }
        REG_IF = INT_VBLANK;
    }
    REG_IME = 1;
}