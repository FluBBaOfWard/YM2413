/*
*/

#ifndef YM2413_HEADER
#define YM2413_HEADER

typedef struct {
	u16 ch0Freq;
	u16 ch0Addr;
	u16 ch1Freq;
	u16 ch1Addr;
	u16 ch2Freq;
	u16 ch2Addr;
	u16 ch3Freq;
	u16 ch3Addr;

	u32 rng;
	u32 envFreq;
	u8 chState;
	u8 chDisable;
	u8 envType;
	u8 envAddr;

	u8 ayRegs[0x10];
	u8 ayPortAOut;
	u8 ayPortBOut;
	u8 ayPortAIn;
	u8 ayPortBIn;
	u8 regIndex;
	u8 ayPadding1[3];
	u32 ayPortAInFptr;
	u32 ayPortBInFptr;
	u32 ayPortAOutFptr;
	u32 ayPortBOutFptr;

} ym2413;


void YM2413Reset(ym2413 *chip, int chiptype);
void YM2413Mixer(ym2413 *chip, int len, void *dest);
void YM2413W(ym2413 *chip, u8 value);


#endif
