
//{{BLOCK(pregame)

//======================================================================
//
//	pregame, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 1024 tiles not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 65536 + 2048 = 68096
//
//	Time-stamp: 2016-12-03, 18:10:16
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PREGAME_H
#define GRIT_PREGAME_H

#define pregameTilesLen 65536
extern const unsigned short pregameTiles[32768];

#define pregameMapLen 2048
extern const unsigned short pregameMap[1024];

#define pregamePalLen 512
extern const unsigned short pregamePal[256];

#endif // GRIT_PREGAME_H

//}}BLOCK(pregame)
