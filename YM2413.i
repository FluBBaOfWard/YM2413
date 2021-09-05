;@ ASM header for the YM2413 emulator
;@

	ymptr			.req r12

							;@ YM2413.s
	.struct 0
	phase:			.long 0
	frequency:		.long 0
	ymSlotSize:

	.struct 0
	slot0:			.space ymSlotSize
	slot1:			.space ymSlotSize
	ymChannelSize:

	.struct 0
	channel0:		.space ymChannelSize
	channel1:		.space ymChannelSize
	channel2:		.space ymChannelSize
	channel3:		.space ymChannelSize
	channel4:		.space ymChannelSize
	channel5:		.space ymChannelSize
	channel6:		.space ymChannelSize
	channel7:		.space ymChannelSize
	channel8:		.space ymChannelSize
	ymCh0Freq:		.short 0
	ymCh0Addr:		.short 0
	ymCh1Freq:		.short 0
	ymCh1Addr:		.short 0
	ymCh2Freq:		.short 0
	ymCh2Addr:		.short 0
	ymCh3Freq:		.short 0
	ymCh3Addr:		.short 0

	ymRng:			.long 0
	ymEnvFreq:		.long 0
	ymChState:		.byte 0
	ymChDisable:	.byte 0
	ymEnvType:		.byte 0
	ymEnvAddr:		.byte 0

	ymRegs:			.space 0x40
	ymPortAOut:		.byte 0
	ymPortBOut:		.byte 0
	ymPortAIn:		.byte 0
	ymPortBIn:		.byte 0
	ymAddress:		.byte 0
	ymStatus:		.byte 0
	ymPadding1:		.space 2
	ymPortAInFptr:	.long 0
	ymPortBInFptr:	.long 0
	ymPortAOutFptr:	.long 0
	ymPortBOutFptr:	.long 0

	ymSize:

;@----------------------------------------------------------------------------

