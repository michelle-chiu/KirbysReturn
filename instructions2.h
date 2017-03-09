
//{{BLOCK(instructions2)

//======================================================================
//
//	instructions2, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 1024 tiles not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 65536 + 2048 = 68096
//
//	Time-stamp: 2016-12-03, 23:25:37
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONS2_H
#define GRIT_INSTRUCTIONS2_H

#define instructions2TilesLen 65536
extern const unsigned short instructions2Tiles[32768];

#define instructions2MapLen 2048
extern const unsigned short instructions2Map[1024];

#define instructions2PalLen 512
extern const unsigned short instructions2Pal[256];

#endif // GRIT_INSTRUCTIONS2_H

//}}BLOCK(instructions2)
