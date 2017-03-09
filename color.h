
//{{BLOCK(color)

//======================================================================
//
//	color, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 423 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 27072 + 2048 = 29632
//
//	Time-stamp: 2016-12-12, 23:09:55
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_COLOR_H
#define GRIT_COLOR_H

#define colorTilesLen 27072
extern const unsigned short colorTiles[13536];

#define colorMapLen 2048
extern const unsigned short colorMap[1024];

#define colorPalLen 512
extern const unsigned short colorPal[256];

#endif // GRIT_COLOR_H

//}}BLOCK(color)
