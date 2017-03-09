
//{{BLOCK(gamescreen)

//======================================================================
//
//	gamescreen, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 479 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 30656 + 2048 = 33216
//
//	Time-stamp: 2016-11-14, 17:26:55
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN_H
#define GRIT_GAMESCREEN_H

#define gamescreenTilesLen 30656
extern const unsigned short gamescreenTiles[15328];

#define gamescreenMapLen 2048
extern const unsigned short gamescreenMap[1024];

#define gamescreenPalLen 512
extern const unsigned short gamescreenPal[256];

#endif // GRIT_GAMESCREEN_H

//}}BLOCK(gamescreen)
