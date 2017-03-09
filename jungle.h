
//{{BLOCK(jungle)

//======================================================================
//
//	jungle, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 10 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 320 + 2048 = 2880
//
//	Time-stamp: 2016-11-21, 17:05:32
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_JUNGLE_H
#define GRIT_JUNGLE_H

#define jungleTilesLen 320
extern const unsigned short jungleTiles[160];

#define jungleMapLen 2048
extern const unsigned short jungleMap[1024];

#define junglePalLen 512
extern const unsigned short junglePal[256];

#endif // GRIT_JUNGLE_H

//}}BLOCK(jungle)
