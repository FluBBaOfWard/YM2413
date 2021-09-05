# YM2413
YM2413 sound chip emulator for ARM32.

First alloc chip struct, call init then set in/out function pointers.
Call YM2413Mixer with chip struct, length and destination.
Produces 16bit mono.
