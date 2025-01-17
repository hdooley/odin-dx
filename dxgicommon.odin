package dx

DXGI_RATIONAL :: struct {
    Numerator: UINT,
    Denominator: UINT,
}

DXGI_SAMPLE_DESC :: struct {
    Count: UINT,
    Quality: UINT,
}

//DXGI_COLOR_SPACE_TYPE
DXGI_COLOR_SPACE_RGB_FULL_G22_NONE_P709 : u32 :  0;
DXGI_COLOR_SPACE_RGB_FULL_G10_NONE_P709 : u32 :  1;
DXGI_COLOR_SPACE_RGB_STUDIO_G22_NONE_P709 : u32 :  2;
DXGI_COLOR_SPACE_RGB_STUDIO_G22_NONE_P2020 : u32 :  3;
DXGI_COLOR_SPACE_RESERVED : u32 :  4;
DXGI_COLOR_SPACE_YCBCR_FULL_G22_NONE_P709_X601 : u32 :  5;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_LEFT_P601 : u32 :  6;
DXGI_COLOR_SPACE_YCBCR_FULL_G22_LEFT_P601 : u32 :  7;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_LEFT_P709 : u32 :  8;
DXGI_COLOR_SPACE_YCBCR_FULL_G22_LEFT_P709 : u32 :  9;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_LEFT_P2020 : u32 :  10;
DXGI_COLOR_SPACE_YCBCR_FULL_G22_LEFT_P2020 : u32 :  11;
DXGI_COLOR_SPACE_RGB_FULL_G2084_NONE_P2020 : u32 :  12;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G2084_LEFT_P2020 : u32 :  13;
DXGI_COLOR_SPACE_RGB_STUDIO_G2084_NONE_P2020 : u32 :  14;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G22_TOPLEFT_P2020 : u32 :  15;
DXGI_COLOR_SPACE_YCBCR_STUDIO_G2084_TOPLEFT_P2020 : u32 :  16;
DXGI_COLOR_SPACE_RGB_FULL_G22_NONE_P2020 : u32 :  17;
DXGI_COLOR_SPACE_YCBCR_STUDIO_GHLG_TOPLEFT_P2020 : u32 :  18;
DXGI_COLOR_SPACE_YCBCR_FULL_GHLG_TOPLEFT_P2020 : u32 :  19;
DXGI_COLOR_SPACE_CUSTOM : u32 :  0xFFFFFFFF;
