// Includes
#include "/config/settings.glsl"

// Constants
#ifdef FAST_BLOOM
#define KERNEL_SIZE 9
#else
#define KERNEL_SIZE 24
#endif // FAST_BLOOM

const float weights[] = float[]
(
	#ifdef FAST_BLOOM // 1d array
	// Sigma 3
0.063327, 0.093095, 0.122589, 0.144599, 0.152781, 0.144599, 0.122589, 0.093095, 0.063327
	#else // 2d array
	// Sigma 3 (single)
// 0.106595,	0.140367,	0.165569,	0.174938,	0.165569,	0.140367,	0.106595
	// Sigma 16
// 0.039688, 0.039921, 0.039999, 0.039921, 0.039688,
// 0.039921, 0.040156, 0.040235, 0.040156, 0.039921,
// 0.039999, 0.040235, 0.040313, 0.040235, 0.039999,
// 0.039921, 0.040156, 0.040235, 0.040156, 0.039921,
// 0.039688, 0.039921, 0.039999, 0.039921, 0.039688
	// Sigma 5
// 0.036894, 0.039167, 0.039956, 0.039167, 0.036894,
// 0.039167, 0.041581, 0.042418, 0.041581, 0.039167,
// 0.039956, 0.042418, 0.043272, 0.042418, 0.039956,
// 0.039167, 0.041581, 0.042418, 0.041581, 0.039167,
// 0.036894, 0.039167, 0.039956, 0.039167, 0.03689
	// Sigma 3
0.031827, 0.037541, 0.039665, 0.037541, 0.031827,
0.037541, 0.044281, 0.046787, 0.044281, 0.037541,
0.039665, 0.046787, 0.049434, 0.046787, 0.039665,
0.037541, 0.044281, 0.046787, 0.044281, 0.037541,
0.031827, 0.037541, 0.039665, 0.037541, 0.031827
	// Sigma 1
// 0.003765, 0.015019, 0.023792, 0.015019, 0.003765,
// 0.015019, 0.059912, 0.094907, 0.059912, 0.015019,
// 0.023792, 0.094907, 0.150342, 0.094907, 0.023792,
// 0.015019, 0.059912, 0.094907, 0.059912, 0.015019,
// 0.003765, 0.015019, 0.023792, 0.015019, 0.003765
	#endif // FAST_BLOOM
);
