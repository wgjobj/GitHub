﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\Config\SIMConf.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

_BSS	SEGMENT
_exit	DD	01H DUP (?)
_BSS	ENDS
PUBLIC	_SIM_X_Config
EXTRN	_SIM_GUI_SetTransColor:PROC
EXTRN	_SIM_GUI_SetLCDPos:PROC
EXTRN	_SIM_GUI_UseCustomBitmaps:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\config\simconf.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _SIM_X_Config
_TEXT	SEGMENT
_SIM_X_Config PROC					; COMDAT
; Line 47
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 49
	call	_SIM_GUI_UseCustomBitmaps
; Line 50
	push	127					; 0000007fH
	push	87					; 00000057H
	call	_SIM_GUI_SetLCDPos
	add	esp, 8
; Line 51
	push	255					; 000000ffH
	call	_SIM_GUI_SetTransColor
	add	esp, 4
; Line 53
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_SIM_X_Config ENDP
_TEXT	ENDS
PUBLIC	_SIM_Powerkey_CB
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SIM_Powerkey_CB
_TEXT	SEGMENT
_KeyIndex$ = 8						; size = 4
_State$ = 12						; size = 4
_SIM_Powerkey_CB PROC					; COMDAT
; Line 63
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 64
	cmp	DWORD PTR _KeyIndex$[ebp], 7
	jne	SHORT $LN4@SIM_Powerk
; Line 71
	cmp	DWORD PTR _State$[ebp], 0
	jne	SHORT $LN4@SIM_Powerk
; Line 72
	mov	DWORD PTR _exit, 1
$LN4@SIM_Powerk:
; Line 74
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_SIM_Powerkey_CB ENDP
_TEXT	ENDS
PUBLIC	_SIM_Init
EXTRN	_SIM_HARDKEY_SetCallback:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SIM_Init
_TEXT	SEGMENT
_SIM_Init PROC						; COMDAT
; Line 78
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 79
	push	OFFSET _SIM_Powerkey_CB
	push	7
	call	_SIM_HARDKEY_SetCallback
	add	esp, 8
; Line 80
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_SIM_Init ENDP
_TEXT	ENDS
PUBLIC	_SIM_Tick
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SIM_Tick
_TEXT	SEGMENT
_SIM_Tick PROC						; COMDAT
; Line 83
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 84
	mov	eax, DWORD PTR _exit
; Line 85
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_SIM_Tick ENDP
_TEXT	ENDS
END
