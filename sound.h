#ifndef SOUND_H
#define SOUND_H

void setupSounds();
void playSoundA(const unsigned char* sound, int length, int frequency, int loops);
void playSoundB(const unsigned char* sound, int length, int frequency, int loops);
void muteSound();
void unmuteSound();
void stopSound();

void setupInterrupts();
void interruptHandler();

typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vbCount;
} SOUND;

#endif