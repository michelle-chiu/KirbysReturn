
//{{BLOCK(storyscreen)

//======================================================================
//
//	storyscreen, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 1024 tiles not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 65536 + 2048 = 68096
//
//	Time-stamp: 2016-12-01, 23:26:45
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STORYSCREEN_H
#define GRIT_STORYSCREEN_H

#define storyscreenTilesLen 65536
extern const unsigned short storyscreenTiles[32768];

#define storyscreenMapLen 2048
extern const unsigned short storyscreenMap[1024];

#define storyscreenPalLen 512
extern const unsigned short storyscreenPal[256];

#endif // GRIT_STORYSCREEN_H

//}}BLOCK(storyscreen)
