﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Core\GUI_CursorHeaderM.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_GUI_CursorHeaderM
EXTRN	_GUI_CursorPal:BYTE
EXTRN	_GUI_PixelsHeaderM:BYTE
CONST	SEGMENT
__BitmapHeaderM DW 011H
	DW	011H
	DW	05H
	DW	02H
	DD	FLAT:_GUI_PixelsHeaderM
	DD	FLAT:_GUI_CursorPal
	ORG $+4
_GUI_CursorHeaderM DD FLAT:__BitmapHeaderM
	DD	08H
	DD	08H
CONST	ENDS
END