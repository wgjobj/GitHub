﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Core\GUI_DrawGradientRounded.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_GUI_DrawGradientRoundedV
EXTRN	_WM__GetNextIVR:PROC
EXTRN	_LCD_DrawHLine:PROC
EXTRN	_WM__InitIVRSearch:PROC
EXTRN	_GUI_Context:BYTE
EXTRN	__RTC_CheckEsp:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\core\gui_drawgradientrounded.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _GUI_DrawGradientRoundedV
_TEXT	SEGMENT
_r$ = -12						; size = 8
_x0$ = 8						; size = 4
_y0$ = 12						; size = 4
_x1$ = 16						; size = 4
_y1$ = 20						; size = 4
_rd$ = 24						; size = 4
_Color0$ = 28						; size = 4
_Color1$ = 32						; size = 4
_GUI_DrawGradientRoundedV PROC				; COMDAT
; Line 141
	push	ebp
	mov	ebp, esp
	sub	esp, 208				; 000000d0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-208]
	mov	ecx, 52					; 00000034H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 147
	mov	eax, DWORD PTR _x0$[ebp]
	add	eax, DWORD PTR _GUI_Context+64
	mov	DWORD PTR _x0$[ebp], eax
	mov	eax, DWORD PTR _y0$[ebp]
	add	eax, DWORD PTR _GUI_Context+68
	mov	DWORD PTR _y0$[ebp], eax
; Line 148
	mov	eax, DWORD PTR _x1$[ebp]
	add	eax, DWORD PTR _GUI_Context+64
	mov	DWORD PTR _x1$[ebp], eax
	mov	eax, DWORD PTR _y1$[ebp]
	add	eax, DWORD PTR _GUI_Context+68
	mov	DWORD PTR _y1$[ebp], eax
; Line 149
	mov	ax, WORD PTR _x0$[ebp]
	mov	WORD PTR _r$[ebp], ax
; Line 150
	mov	ax, WORD PTR _x1$[ebp]
	mov	WORD PTR _r$[ebp+4], ax
; Line 151
	mov	ax, WORD PTR _y0$[ebp]
	mov	WORD PTR _r$[ebp+2], ax
; Line 152
	mov	ax, WORD PTR _y1$[ebp]
	mov	WORD PTR _r$[ebp+6], ax
; Line 153
	lea	eax, DWORD PTR _r$[ebp]
	push	eax
	call	_WM__InitIVRSearch
	add	esp, 4
	test	eax, eax
	je	SHORT $LN5@GUI_DrawGr
$LN3@GUI_DrawGr:
; Line 155
	push	1
	push	OFFSET _LCD_DrawHLine
	mov	eax, DWORD PTR _Color1$[ebp]
	push	eax
	mov	ecx, DWORD PTR _Color0$[ebp]
	push	ecx
	mov	edx, DWORD PTR _rd$[ebp]
	push	edx
	mov	eax, DWORD PTR _y1$[ebp]
	push	eax
	mov	ecx, DWORD PTR _x1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _y0$[ebp]
	push	edx
	mov	eax, DWORD PTR _x0$[ebp]
	push	eax
	call	__DrawGradientRounded
	add	esp, 36					; 00000024H
; Line 157
	call	_WM__GetNextIVR
	test	eax, eax
	jne	SHORT $LN3@GUI_DrawGr
$LN5@GUI_DrawGr:
; Line 160
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN9@GUI_DrawGr
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 208				; 000000d0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN9@GUI_DrawGr:
	DD	1
	DD	$LN8@GUI_DrawGr
$LN8@GUI_DrawGr:
	DD	-12					; fffffff4H
	DD	8
	DD	$LN7@GUI_DrawGr
$LN7@GUI_DrawGr:
	DB	114					; 00000072H
	DB	0
_GUI_DrawGradientRoundedV ENDP
_TEXT	ENDS
EXTRN	_LCD_SetColor:PROC
EXTRN	_GUI__sqrt32:PROC
EXTRN	_GUI_GetColor:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __DrawGradientRounded
_TEXT	SEGMENT
tv70 = -448						; size = 4
_OldColor$ = -248					; size = 4
_Color$ = -236						; size = 4
_ySize1$ = -224						; size = 4
_ySize$ = -212						; size = 4
_dx$ = -200						; size = 4
_d$ = -188						; size = 4
_y$ = -176						; size = 4
_yy$ = -164						; size = 4
_rr$ = -152						; size = 4
_b1$ = -140						; size = 4
_g1$ = -128						; size = 4
_r1$ = -116						; size = 4
_a1$ = -104						; size = 4
_b0$ = -92						; size = 4
_g0$ = -80						; size = 4
_r0$ = -68						; size = 4
_a0$ = -56						; size = 4
_b$ = -44						; size = 4
_g$ = -32						; size = 4
_r$ = -20						; size = 4
_a$ = -8						; size = 4
_x0$ = 8						; size = 4
_y0$ = 12						; size = 4
_x1$ = 16						; size = 4
_y1$ = 20						; size = 4
_rd$ = 24						; size = 4
_Color0$ = 28						; size = 4
_Color1$ = 32						; size = 4
_pFunc$ = 36						; size = 4
_v$ = 40						; size = 4
__DrawGradientRounded PROC				; COMDAT
; Line 35
	push	ebp
	mov	ebp, esp
	sub	esp, 448				; 000001c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-448]
	mov	ecx, 112				; 00000070H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 88
	call	_GUI_GetColor
	mov	DWORD PTR _OldColor$[ebp], eax
; Line 89
	mov	eax, DWORD PTR _y1$[ebp]
	sub	eax, DWORD PTR _y0$[ebp]
	add	eax, 1
	mov	DWORD PTR _ySize$[ebp], eax
; Line 90
	mov	eax, DWORD PTR _ySize$[ebp]
	sub	eax, 1
	je	SHORT $LN14@DrawGradie
	mov	ecx, DWORD PTR _ySize$[ebp]
	sub	ecx, 1
	mov	DWORD PTR tv70[ebp], ecx
	jmp	SHORT $LN15@DrawGradie
$LN14@DrawGradie:
	mov	DWORD PTR tv70[ebp], 1
$LN15@DrawGradie:
	mov	edx, DWORD PTR tv70[ebp]
	mov	DWORD PTR _ySize1$[ebp], edx
; Line 91
	mov	eax, DWORD PTR _Color0$[ebp]
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _r0$[ebp], eax
; Line 92
	mov	eax, DWORD PTR _Color0$[ebp]
	shr	eax, 8
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _g0$[ebp], eax
; Line 93
	mov	eax, DWORD PTR _Color0$[ebp]
	shr	eax, 16					; 00000010H
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _b0$[ebp], eax
; Line 94
	mov	eax, DWORD PTR _Color0$[ebp]
	shr	eax, 24					; 00000018H
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _a0$[ebp], eax
; Line 95
	mov	eax, DWORD PTR _Color1$[ebp]
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _r1$[ebp], eax
; Line 96
	mov	eax, DWORD PTR _Color1$[ebp]
	shr	eax, 8
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _g1$[ebp], eax
; Line 97
	mov	eax, DWORD PTR _Color1$[ebp]
	shr	eax, 16					; 00000010H
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _b1$[ebp], eax
; Line 98
	mov	eax, DWORD PTR _Color1$[ebp]
	shr	eax, 24					; 00000018H
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _a1$[ebp], eax
; Line 99
	mov	eax, DWORD PTR _rd$[ebp]
	imul	eax, DWORD PTR _rd$[ebp]
	mov	DWORD PTR _rr$[ebp], eax
; Line 100
	mov	eax, DWORD PTR _y0$[ebp]
	mov	DWORD PTR _y$[ebp], eax
	jmp	SHORT $LN11@DrawGradie
$LN10@DrawGradie:
	mov	eax, DWORD PTR _y$[ebp]
	add	eax, 1
	mov	DWORD PTR _y$[ebp], eax
$LN11@DrawGradie:
	mov	eax, DWORD PTR _y$[ebp]
	cmp	eax, DWORD PTR _y1$[ebp]
	jg	$LN9@DrawGradie
; Line 101
	mov	eax, DWORD PTR _y$[ebp]
	sub	eax, DWORD PTR _y0$[ebp]
	cmp	eax, DWORD PTR _rd$[ebp]
	jge	SHORT $LN8@DrawGradie
; Line 102
	mov	eax, DWORD PTR _y$[ebp]
	sub	eax, DWORD PTR _y0$[ebp]
	mov	ecx, DWORD PTR _rd$[ebp]
	sub	ecx, eax
	mov	DWORD PTR _yy$[ebp], ecx
	jmp	SHORT $LN7@DrawGradie
$LN8@DrawGradie:
; Line 103
	mov	eax, DWORD PTR _y1$[ebp]
	sub	eax, DWORD PTR _y$[ebp]
	cmp	eax, DWORD PTR _rd$[ebp]
	jge	SHORT $LN6@DrawGradie
; Line 104
	mov	eax, DWORD PTR _y1$[ebp]
	sub	eax, DWORD PTR _y$[ebp]
	mov	ecx, DWORD PTR _rd$[ebp]
	sub	ecx, eax
	mov	DWORD PTR _yy$[ebp], ecx
; Line 105
	jmp	SHORT $LN7@DrawGradie
$LN6@DrawGradie:
; Line 106
	mov	DWORD PTR _yy$[ebp], 0
$LN7@DrawGradie:
; Line 108
	cmp	DWORD PTR _yy$[ebp], 0
	je	SHORT $LN4@DrawGradie
; Line 109
	mov	eax, DWORD PTR _yy$[ebp]
	imul	eax, DWORD PTR _yy$[ebp]
	mov	ecx, DWORD PTR _rr$[ebp]
	sub	ecx, eax
	push	ecx
	call	_GUI__sqrt32
	add	esp, 4
	mov	edx, DWORD PTR _rd$[ebp]
	sub	edx, eax
	mov	DWORD PTR _dx$[ebp], edx
; Line 110
	jmp	SHORT $LN3@DrawGradie
$LN4@DrawGradie:
; Line 111
	mov	DWORD PTR _dx$[ebp], 0
$LN3@DrawGradie:
; Line 113
	mov	eax, DWORD PTR _y$[ebp]
	sub	eax, DWORD PTR _y0$[ebp]
	mov	DWORD PTR _d$[ebp], eax
; Line 114
	mov	eax, DWORD PTR _r1$[ebp]
	sub	eax, DWORD PTR _r0$[ebp]
	imul	eax, DWORD PTR _d$[ebp]
	cdq
	idiv	DWORD PTR _ySize1$[ebp]
	add	eax, DWORD PTR _r0$[ebp]
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _r$[ebp], eax
; Line 115
	mov	eax, DWORD PTR _g1$[ebp]
	sub	eax, DWORD PTR _g0$[ebp]
	imul	eax, DWORD PTR _d$[ebp]
	cdq
	idiv	DWORD PTR _ySize1$[ebp]
	add	eax, DWORD PTR _g0$[ebp]
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _g$[ebp], eax
; Line 116
	mov	eax, DWORD PTR _b1$[ebp]
	sub	eax, DWORD PTR _b0$[ebp]
	imul	eax, DWORD PTR _d$[ebp]
	cdq
	idiv	DWORD PTR _ySize1$[ebp]
	add	eax, DWORD PTR _b0$[ebp]
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _b$[ebp], eax
; Line 117
	mov	eax, DWORD PTR _a1$[ebp]
	sub	eax, DWORD PTR _a0$[ebp]
	imul	eax, DWORD PTR _d$[ebp]
	cdq
	idiv	DWORD PTR _ySize1$[ebp]
	add	eax, DWORD PTR _a0$[ebp]
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _a$[ebp], eax
; Line 118
	mov	eax, DWORD PTR _g$[ebp]
	shl	eax, 8
	or	eax, DWORD PTR _r$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	shl	ecx, 16					; 00000010H
	or	eax, ecx
	mov	edx, DWORD PTR _a$[ebp]
	shl	edx, 24					; 00000018H
	or	eax, edx
	mov	DWORD PTR _Color$[ebp], eax
; Line 119
	mov	eax, DWORD PTR _Color$[ebp]
	push	eax
	call	_LCD_SetColor
	add	esp, 4
; Line 120
	cmp	DWORD PTR _v$[ebp], 0
	je	SHORT $LN2@DrawGradie
; Line 121
	mov	eax, DWORD PTR _x1$[ebp]
	sub	eax, DWORD PTR _dx$[ebp]
	mov	esi, esp
	push	eax
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x0$[ebp]
	add	edx, DWORD PTR _dx$[ebp]
	push	edx
	call	DWORD PTR _pFunc$[ebp]
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 122
	jmp	SHORT $LN1@DrawGradie
$LN2@DrawGradie:
; Line 123
	mov	eax, DWORD PTR _x1$[ebp]
	sub	eax, DWORD PTR _dx$[ebp]
	mov	esi, esp
	push	eax
	mov	ecx, DWORD PTR _x0$[ebp]
	add	ecx, DWORD PTR _dx$[ebp]
	push	ecx
	mov	edx, DWORD PTR _y$[ebp]
	push	edx
	call	DWORD PTR _pFunc$[ebp]
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN1@DrawGradie:
; Line 125
	jmp	$LN10@DrawGradie
$LN9@DrawGradie:
; Line 126
	mov	eax, DWORD PTR _OldColor$[ebp]
	push	eax
	call	_LCD_SetColor
	add	esp, 4
; Line 129
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 448				; 000001c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__DrawGradientRounded ENDP
_TEXT	ENDS
PUBLIC	_GUI_DrawGradientRoundedH
EXTRN	_LCD_DrawVLine:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUI_DrawGradientRoundedH
_TEXT	SEGMENT
_r$ = -12						; size = 8
_x0$ = 8						; size = 4
_y0$ = 12						; size = 4
_x1$ = 16						; size = 4
_y1$ = 20						; size = 4
_rd$ = 24						; size = 4
_Color0$ = 28						; size = 4
_Color1$ = 32						; size = 4
_GUI_DrawGradientRoundedH PROC				; COMDAT
; Line 166
	push	ebp
	mov	ebp, esp
	sub	esp, 208				; 000000d0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-208]
	mov	ecx, 52					; 00000034H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 172
	mov	eax, DWORD PTR _x0$[ebp]
	add	eax, DWORD PTR _GUI_Context+64
	mov	DWORD PTR _x0$[ebp], eax
	mov	eax, DWORD PTR _y0$[ebp]
	add	eax, DWORD PTR _GUI_Context+68
	mov	DWORD PTR _y0$[ebp], eax
; Line 173
	mov	eax, DWORD PTR _x1$[ebp]
	add	eax, DWORD PTR _GUI_Context+64
	mov	DWORD PTR _x1$[ebp], eax
	mov	eax, DWORD PTR _y1$[ebp]
	add	eax, DWORD PTR _GUI_Context+68
	mov	DWORD PTR _y1$[ebp], eax
; Line 174
	mov	ax, WORD PTR _x0$[ebp]
	mov	WORD PTR _r$[ebp], ax
; Line 175
	mov	ax, WORD PTR _x1$[ebp]
	mov	WORD PTR _r$[ebp+4], ax
; Line 176
	mov	ax, WORD PTR _y0$[ebp]
	mov	WORD PTR _r$[ebp+2], ax
; Line 177
	mov	ax, WORD PTR _y1$[ebp]
	mov	WORD PTR _r$[ebp+6], ax
; Line 178
	lea	eax, DWORD PTR _r$[ebp]
	push	eax
	call	_WM__InitIVRSearch
	add	esp, 4
	test	eax, eax
	je	SHORT $LN5@GUI_DrawGr@2
$LN3@GUI_DrawGr@2:
; Line 180
	push	0
	push	OFFSET _LCD_DrawVLine
	mov	eax, DWORD PTR _Color1$[ebp]
	push	eax
	mov	ecx, DWORD PTR _Color0$[ebp]
	push	ecx
	mov	edx, DWORD PTR _rd$[ebp]
	push	edx
	mov	eax, DWORD PTR _x1$[ebp]
	push	eax
	mov	ecx, DWORD PTR _y1$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x0$[ebp]
	push	edx
	mov	eax, DWORD PTR _y0$[ebp]
	push	eax
	call	__DrawGradientRounded
	add	esp, 36					; 00000024H
; Line 182
	call	_WM__GetNextIVR
	test	eax, eax
	jne	SHORT $LN3@GUI_DrawGr@2
$LN5@GUI_DrawGr@2:
; Line 185
	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN9@GUI_DrawGr@2
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 208				; 000000d0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN9@GUI_DrawGr@2:
	DD	1
	DD	$LN8@GUI_DrawGr@2
$LN8@GUI_DrawGr@2:
	DD	-12					; fffffff4H
	DD	8
	DD	$LN7@GUI_DrawGr@2
$LN7@GUI_DrawGr@2:
	DB	114					; 00000072H
	DB	0
_GUI_DrawGradientRoundedH ENDP
_TEXT	ENDS
END