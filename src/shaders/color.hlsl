#ifndef SRC_SHADERS_COLOR_HLSL_
#define SRC_SHADERS_COLOR_HLSL_

#include "./math.hlsl"

namespace renodx {
namespace color {

static const float3x3 BT709_TO_XYZ_MAT = float3x3(
    0.4123907993f, 0.3575843394f, 0.1804807884f,
    0.2126390059f, 0.7151686788f, 0.0721923154f,
    0.0193308187f, 0.1191947798f, 0.9505321522f);

static const float3x3 XYZ_TO_BT709_MAT = float3x3(
    3.2409699419f, -1.5373831776f, -0.4986107603f,
    -0.9692436363f, 1.8759675015f, 0.0415550574f,
    0.0556300797f, -0.2039769589f, 1.0569715142f);

static const float3x3 BT2020_TO_XYZ_MAT = float3x3(
    0.6369580483f, 0.1446169036f, 0.1688809752f,
    0.2627002120f, 0.6779980715f, 0.0593017165f,
    0.0000000000f, 0.0280726930f, 1.0609850577f);

static const float3x3 XYZ_TO_BT2020_MAT = float3x3(
    1.7166511880f, -0.3556707838f, -0.2533662814f,
    -0.6666843518f, 1.6164812366f, 0.0157685458f,
    0.0176398574f, -0.0427706133f, 0.9421031212f);

static const float3x3 AP0_TO_XYZ_MAT = float3x3(
    0.9525523959f, 0.0000000000f, 0.0000936786f,
    0.3439664498f, 0.7281660966f, -0.0721325464f,
    0.0000000000f, 0.0000000000f, 1.0088251844f);

static const float3x3 XYZ_TO_AP0_MAT = float3x3(
    1.0498110175f, 0.0000000000f, -0.0000974845f,
    -0.4959030231f, 1.3733130458f, 0.0982400361f,
    0.0000000000f, 0.0000000000f, 0.9912520182f);

static const float3x3 AP1_TO_XYZ_MAT = float3x3(
    0.6624541811f, 0.1340042065f, 0.1561876870f,
    0.2722287168f, 0.6740817658f, 0.0536895174f,
    -0.0055746495f, 0.0040607335f, 1.0103391003f);

static const float3x3 XYZ_TO_AP1_MAT = float3x3(
    1.6410233797f, -0.3248032942f, -0.2364246952f,
    -0.6636628587f, 1.6153315917f, 0.0167563477f,
    0.0117218943f, -0.0082844420f, 0.9883948585f);

static const float3x3 XYZ_TO_ICTCP_LMS_MAT = float3x3(
    0.359168797f, 0.697604775f, -0.0357883982f,
    -0.192186400f, 1.10039842f, 0.0755404010f,
    0.00695759989f, 0.0749168023f, 0.843357980f);

static const float3x3 ICTCP_LMS_TO_XYZ_MAT = float3x3(
    2.07036161f, -1.32659053f, 0.206681042f,
    0.364990383f, 0.680468797f, -0.0454616732f,
    -0.0495028905f, -0.0495028905f, 1.18806946f);

static const float3x3 BT709_TO_ICTCP_LMS_MAT = float3x3(
    0.295764088f, 0.623072445f, 0.0811667516f,
    0.156191974f, 0.727251648f, 0.116557933f,
    0.0351022854f, 0.156589955f, 0.808302998f);

static const float3x3 ICTCP_LMS_TO_BT709_MAT = float3x3(
    6.17353248f, -5.32089900f, 0.147354885f,
    -1.32403194f, 2.56026983f, -0.236238613f,
    -0.0115983877f, -0.264921456f, 1.27652633f);

static const float3x3 DISPLAYP3_TO_XYZ_MAT = float3x3(
    0.4865709486f, 0.2656676932f, 0.1982172852f,
    0.2289745641f, 0.6917385218f, 0.0792869141f,
    0.0000000000f, 0.0451133819f, 1.0439443689f);

static const float3x3 XYZ_TO_DISPLAYP3_MAT = float3x3(
    2.4934969119f, -0.9313836179f, -0.4027107845f,
    -0.8294889696f, 1.7626640603f, 0.0236246858f,
    0.0358458302f, -0.0761723893f, 0.9568845240);

// With Bradford
static const float3x3 D65_TO_D60_CAT = float3x3(
    1.01303, 0.00610531, -0.014971,
    0.00769823, 0.998165, -0.00503203,
    -0.00284131, 0.00468516, 0.924507);

// With Bradford
static const float3x3 D60_TO_D65_MAT = float3x3(
    0.98722400, -0.00611327, 0.0159533,
    -0.00759836, 1.00186000, 0.0053302,
    0.00307257, -0.00509595, 1.0816800);

static const float3x3 IDENTITY_MAT = float3x3(
    1.0f, 0.0f, 0.0f,
    0.0f, 1.0f, 0.0f,
    0.0f, 0.0f, 1.0f);

static const float3x3 BT709_TO_AP0_MAT = mul(XYZ_TO_AP0_MAT, mul(D65_TO_D60_CAT, BT709_TO_XYZ_MAT));

// With Bradford
static const float3x3 BT709_TO_AP1_MAT = float3x3(
    0.6130974024, 0.3395231462, 0.0473794514,
    0.0701937225, 0.9163538791, 0.0134523985,
    0.0206155929, 0.1095697729, 0.8698146342);

static const float3x3 BT709_TO_BT2020_MAT = mul(XYZ_TO_BT2020_MAT, BT709_TO_XYZ_MAT);
static const float3x3 BT709_TO_BT709D60_MAT = mul(XYZ_TO_BT709_MAT, mul(D65_TO_D60_CAT, BT709_TO_XYZ_MAT));
static const float3x3 BT709_TO_BT2020D60_MAT = mul(XYZ_TO_BT2020_MAT, mul(D65_TO_D60_CAT, BT709_TO_XYZ_MAT));
static const float3x3 BT709_TO_DISPLAYP3_MAT = mul(XYZ_TO_DISPLAYP3_MAT, BT709_TO_XYZ_MAT);
static const float3x3 BT709_TO_DISPLAYP3D60_MAT = mul(XYZ_TO_DISPLAYP3_MAT, mul(D65_TO_D60_CAT, BT709_TO_XYZ_MAT));

static const float3x3 BT2020_TO_AP0_MAT = mul(XYZ_TO_AP0_MAT, mul(D65_TO_D60_CAT, BT2020_TO_XYZ_MAT));
static const float3x3 BT2020_TO_BT709_MAT = mul(XYZ_TO_BT709_MAT, BT2020_TO_XYZ_MAT);

static const float3x3 DISPLAYP3_TO_AP0_MAT = mul(XYZ_TO_AP0_MAT, mul(D65_TO_D60_CAT, DISPLAYP3_TO_XYZ_MAT));
static const float3x3 DISPLAYP3_TO_BT709_MAT = mul(XYZ_TO_BT709_MAT, DISPLAYP3_TO_XYZ_MAT);

static const float3x3 AP0_TO_AP1_MAT = mul(XYZ_TO_AP1_MAT, AP0_TO_XYZ_MAT);

static const float3x3 AP1_TO_AP0_MAT = mul(XYZ_TO_AP0_MAT, AP1_TO_XYZ_MAT);

// With Bradford
static const float3x3 AP1_TO_BT709_MAT = float3x3(
    1.7050509927, -0.6217921207, -0.0832588720,
    -0.1302564175, 1.1408047366, -0.0105483191,
    -0.0240033568, -0.1289689761, 1.1529723329);

static const float3x3 AP1_TO_BT2020_MAT = mul(XYZ_TO_BT2020_MAT, mul(D60_TO_D65_MAT, AP1_TO_XYZ_MAT));

static const float3x3 AP1_TO_BT709D60_MAT = mul(XYZ_TO_BT709_MAT, AP1_TO_XYZ_MAT);
static const float3x3 AP1_TO_BT2020D60_MAT = mul(XYZ_TO_BT2020_MAT, AP1_TO_XYZ_MAT);
static const float3x3 AP1_TO_AP1D65_MAT = mul(XYZ_TO_AP1_MAT, mul(D60_TO_D65_MAT, AP1_TO_XYZ_MAT));

static const float3 BT601_Y = float3(0.299, 0.587, 0.114);

// https://www.ilkeratalay.com/colorspacesfaq.php
static const float3 BOURGIN_D65_Y = float3(0.222015, 0.706655, 0.071330);

namespace XYZ {
namespace from {
float3 xyY(float3 xyY) {
  float3 XYZ;

  XYZ.xz = float2(xyY.x, (1.f - xyY.xy.x - xyY.xy.y)) / xyY.y * xyY[2];

  XYZ.y = xyY[2];

  return XYZ;
}

float3 BT709(float3 bt709) {
  return mul(BT709_TO_XYZ_MAT, bt709);
}
}  // namespace from
}  // namespace XYZ

namespace xyY {
namespace from {
float3 XYZ(float3 XYZ) {
  float xyz = XYZ.x + XYZ.y + XYZ.z;

  float3 xyY;

  xyY.xy = XYZ.xy / xyz;

  xyY[2] = XYZ.y;

  return xyY;
}

float3 BT709(float3 bt709) {
  float3 XYZ = XYZ::from::BT709(bt709);

  return xyY::from::XYZ(XYZ);
}
}  // namespace from
}  // namespace xyY

namespace bt709 {
namespace from {
float3 XYZ(float3 XYZ) {
  return mul(XYZ_TO_BT709_MAT, XYZ);
}

float3 xyY(float3 xyY) {
  float3 XYZ = XYZ::from::xyY(xyY);

  return bt709::from::XYZ(XYZ);
}
}  // namespace from
}  // namespace bt709

namespace bt709 {
static const float REFERENCE_WHITE = 100.f;
namespace from {
float3 AP1(float3 ap1) {
  return mul(AP1_TO_BT709_MAT, ap1);
}

float3 BT2020(float3 bt2020) {
  return mul(BT2020_TO_BT709_MAT, bt2020);
}

float3 OkLab(float3 oklab) {
  static const float3x3 OKLAB_2_OKLABLMS = {
    1.f, 0.3963377774f, 0.2158037573f,
    1.f, -0.1055613458f, -0.0638541728f,
    1.f, -0.0894841775f, -1.2914855480f
  };

  static const float3x3 OKLABLMS_2_BT709 = {
    4.0767416621f, -3.3077115913f, 0.2309699292f,
    -1.2684380046f, 2.6097574011f, -0.3413193965f,
    -0.0041960863f, -0.7034186147f, 1.7076147010f
  };

  float3 lms = mul(OKLAB_2_OKLABLMS, oklab);

  lms = lms * lms * lms;

  return mul(OKLABLMS_2_BT709, lms);
}
}  // namespace from
}  // namespace bt709

namespace bt2020 {
namespace from {
float3 BT709(float3 bt709) {
  return mul(BT709_TO_BT2020_MAT, bt709);
}
}  // namespace from
}  // namespace bt2020

namespace ap1 {
namespace from {
float3 BT709(float3 bt709) {
  return mul(BT709_TO_AP1_MAT, bt709);
}
}  // namespace from
}  // namespace ap1

namespace y {
namespace from {
float BT601(float3 bt601) {
  return dot(bt601, BT601_Y);
}
float BT709(float3 bt709) {
  return dot(bt709, BT709_TO_XYZ_MAT[1].rgb);
}
float BT2020(float3 bt2020) {
  return dot(bt2020, BT2020_TO_XYZ_MAT[1].rgb);
}
float AP1(float3 ap1) {
  return dot(ap1, AP1_TO_XYZ_MAT[1].rgb);
}
}  // namespace from
}  // namespace y

namespace pq {
static const float M1 = 2610.f / 16384.f;           // 0.1593017578125f;
static const float M2 = 128.f * (2523.f / 4096.f);  // 78.84375f;
static const float C1 = 3424.f / 4096.f;            // 0.8359375f;
static const float C2 = 32.f * (2413.f / 4096.f);   // 18.8515625f;
static const float C3 = 32.f * (2392.f / 4096.f);   // 18.6875f;

float3 Encode(float3 color, float scaling = 10000.f) {
  color *= (scaling / 10000.f);
  float3 y_m1 = pow(color, M1);
  return pow((C1 + C2 * y_m1) / (1.f + C3 * y_m1), M2);
}

float3 Decode(float3 in_color, float scaling = 10000.f) {
  float3 e_m12 = pow(in_color, 1.f / M2);
  float3 out_color = pow(max(e_m12 - C1, 0) / (C2 - C3 * e_m12), 1.f / M1);
  return out_color * (10000.f / scaling);
}

}  // namespace pq

namespace ictcp {
namespace from {
float3 BT709(float3 bt709_color) {
  float3 lms_color = mul(BT709_TO_ICTCP_LMS_MAT, bt709_color);

  // L'M'S' -> ICtCp
  float3x3 lms_to_ictcp = {
    0.5f, 0.5f, 0.f,
    1.61370003f, -3.32339620f, 1.70969617f,
    4.37806224f, -4.24553966f, -0.132522642f
  };

  return mul(lms_to_ictcp, pq::Encode(max(0, lms_color), 100.0f));
}
}  // namespace from
}  // namespace ictcp

namespace srgb {
static const float REFERENCE_WHITE = 80.f;

#if (!defined(__SHADER_TARGET_MAJOR) || __SHADER_TARGET_MAJOR <= 5)
#define ENCODE(T)                                        \
  T Encode(T c) {                                        \
    return (c <= 0.0031308f)                             \
               ? (c * 12.92f)                            \
               : (1.055f * pow(c, 1.f / 2.4f) - 0.055f); \
  }
#else
#define ENCODE(T)                                                                     \
  T Encode(T c) {                                                                     \
    return select(c <= 0.0031308f, c * 12.92f, 1.055f * pow(c, 1.f / 2.4f) - 0.055f); \
  }
#endif

ENCODE(float)
ENCODE(float2)
ENCODE(float3)

float4 Encode(float4 color) {
  return float4(Encode(color.rgb), color.a);
}

#define ENCODE_SAFE(T)                             \
  T EncodeSafe(T c) {                              \
    return renodx::math::Sign(c) * Encode(abs(c)); \
  }

ENCODE_SAFE(float)
ENCODE_SAFE(float2)
ENCODE_SAFE(float3)

float4 EncodeSafe(float4 color) {
  return float4(EncodeSafe(color.rgb), color.a);
}

#if (!defined(__SHADER_TARGET_MAJOR) || __SHADER_TARGET_MAJOR <= 5)
#define DECODE(T)                                    \
  T Decode(T c) {                                    \
    return (c <= 0.04045f)                           \
               ? (c / 12.92f)                        \
               : (pow((c + 0.055f) / 1.055f, 2.4f)); \
  }
#else
#define DECODE(T)                                                               \
  T Decode(T c) {                                                               \
    return select(c <= 0.04045f, c / 12.92f, pow((c + 0.055f) / 1.055f, 2.4f)); \
  }
#endif

DECODE(float)
DECODE(float2)
DECODE(float3)

float4 Decode(float4 color) {
  return float4(Decode(color.rgb), color.a);
}

#define DECODE_SAFE(T)                             \
  T DecodeSafe(T c) {                              \
    return renodx::math::Sign(c) * Decode(abs(c)); \
  }

DECODE_SAFE(float)
DECODE_SAFE(float2)
DECODE_SAFE(float3)

float4 DecodeSafe(float4 color) {
  return float4(DecodeSafe(color.rgb), color.a);
}

#undef ENCODE
#undef ENCODE_SAFE
#undef DECODE
#undef DECODE_SAFE

}  // namespace srgb

namespace srgba {

float4 Encode(float4 color) {
#if (!defined(__SHADER_TARGET_MAJOR) || __SHADER_TARGET_MAJOR <= 5)
  return (color <= 0.0031308f)
             ? (color * 12.92f)
             : (1.055f * pow(color, 1.f / 2.4f) - 0.055f);
#else
  return select(color <= 0.0031308f, color * 12.92f, 1.055f * pow(color, 1.f / 2.4f) - 0.055f);
#endif
}

float4 EncodeSafe(float4 color) {
  return renodx::math::Sign(color) * Encode(abs(color));
}

float4 Decode(float4 color) {
#if (!defined(__SHADER_TARGET_MAJOR) || __SHADER_TARGET_MAJOR <= 5)
  return (color <= 0.04045f)
             ? (color / 12.92f)
             : pow((color + 0.055f) / 1.055f, 2.4f);
#else
  return select(color <= 0.04045f, color / 12.92f, pow((color + 0.055f) / 1.055f, 2.4f));
#endif
}

float4 DecodeSafe(float4 color) {
  return renodx::math::Sign(color) * Decode(abs(color));
}

}  // namespace srgba

namespace gamma {

#define ENCODE(T)                     \
  T Encode(T c, float gamma = 2.2f) { \
    return pow(c, 1.f / gamma);       \
  }

ENCODE(float)
ENCODE(float2)
ENCODE(float3)

#define ENCODE_SAFE(T)                            \
  T EncodeSafe(T c, float gamma = 2.2f) {         \
    return renodx::math::SignPow(c, 1.f / gamma); \
  }

ENCODE_SAFE(float)
ENCODE_SAFE(float2)
ENCODE_SAFE(float3)

#define DECODE(T)                     \
  T Decode(T c, float gamma = 2.2f) { \
    return pow(c, gamma);             \
  }

DECODE(float)
DECODE(float2)
DECODE(float3)

#define DECODE_SAFE(T)                      \
  T DecodeSafe(T c, float gamma = 2.2f) {   \
    return renodx::math::SignPow(c, gamma); \
  }

DECODE_SAFE(float)
DECODE_SAFE(float2)
DECODE_SAFE(float3)

#undef ENCODE
#undef ENCODE_SAFE
#undef DECODE
#undef DECODE_SAFE

}  // namespace gamma

namespace arri {
namespace logc {

struct EncodingParams {
  float a;
  float b;
  float c;
  float d;
  float e;
  float f;
  float cut;
};

#define ENCODE_CONDS      (c > params.cut)
#define ENCODE_COND_TRUE  (params.c * log10((params.a * c) + params.b) + params.d)
#define ENCODE_COND_FALSE (params.e * c + params.f)

#if (!defined(__SHADER_TARGET_MAJOR) || __SHADER_TARGET_MAJOR <= 5)
#define ENCODE(T)                                             \
  T Encode(T c, EncodingParams params, bool use_cut = true) { \
    if (!use_cut) {                                           \
      return ENCODE_COND_TRUE;                                \
    } else {                                                  \
      return ENCODE_CONDS                                     \
                 ? ENCODE_COND_TRUE                           \
                 : ENCODE_COND_FALSE;                         \
    }                                                         \
  }
#else
#define ENCODE(T)                                                     \
  T Encode(T c, EncodingParams params, bool use_cut = true) {         \
    if (!use_cut) {                                                   \
      return ENCODE_COND_TRUE;                                        \
    }                                                                 \
    return select(ENCODE_CONDS, ENCODE_COND_TRUE, ENCODE_COND_FALSE); \
  }
#endif

ENCODE(float)
ENCODE(float2)
ENCODE(float3)

#define DECODE_CONDS_CUT    (c > (params.e * params.cut + params.f))
#define DECODE_CONDS_NO_CUT (c > params.f)
#define DECODE_COND_TRUE    ((pow(10.f, (c - params.d) / params.c) - params.b) / params.a)
#define DECODE_COND_FALSE   ((c - params.f) / params.e)

#if (!defined(__SHADER_TARGET_MAJOR) || __SHADER_TARGET_MAJOR <= 5)
#define DECODE(T)                                             \
  T Decode(T c, EncodingParams params, bool use_cut = true) { \
    if (use_cut) {                                            \
      return DECODE_CONDS_CUT                                 \
                 ? DECODE_COND_TRUE                           \
                 : DECODE_COND_FALSE;                         \
    }                                                         \
    return DECODE_CONDS_NO_CUT                                \
               ? DECODE_COND_TRUE                             \
               : DECODE_COND_FALSE;                           \
  }
#else
#define DECODE(T)                                                            \
  T Decode(T c, EncodingParams params, bool use_cut = true) {                \
    if (use_cut) {                                                           \
      return select(DECODE_CONDS_CUT, DECODE_COND_TRUE, DECODE_COND_FALSE);  \
    }                                                                        \
    return select(DECODE_CONDS_NO_CUT, DECODE_COND_TRUE, DECODE_COND_FALSE); \
  }
#endif

DECODE(float)
DECODE(float2)
DECODE(float3)

#undef ENCODE
#undef ENCODE_CONDS
#undef ENCODE_COND_TRUE
#undef ENCODE_COND_FALSE
#undef DECODE
#undef DECODE_CONDS_CUT
#undef DECODE_CONDS_NO_CUT
#undef DECODE_COND_TRUE
#undef DECODE_COND_FALSE

#define GENERATE_ARRI_LOGC_FUNCTIONS(T)      \
  T Encode(T c, bool use_cut = true) {       \
    return logc::Encode(c, PARAMS, use_cut); \
  }                                          \
  T Decode(T c, bool use_cut = true) {       \
    return logc::Decode(c, PARAMS, use_cut); \
  }

namespace c800 {
static const EncodingParams PARAMS = {
  5.555556f,
  0.052272f,
  0.247190f,
  0.385537f,
  5.367655f,
  0.092809f,
  0.010591f,
};

GENERATE_ARRI_LOGC_FUNCTIONS(float)
GENERATE_ARRI_LOGC_FUNCTIONS(float2)
GENERATE_ARRI_LOGC_FUNCTIONS(float3)

}  // namespace c800

namespace c1000 {

static const EncodingParams PARAMS = {
  5.555556f,
  0.047996f,
  0.244161f,
  0.386036f,
  5.301883f,
  0.092814f,
  0.011361f
};

GENERATE_ARRI_LOGC_FUNCTIONS(float)
GENERATE_ARRI_LOGC_FUNCTIONS(float2)
GENERATE_ARRI_LOGC_FUNCTIONS(float3)

}  // namespace c1000

#undef GENERATE_ARRI_LOGC_FUNCTIONS

}  // namespace logc
}  // namespace arri

namespace bt2020 {
namespace from {
/// @deprecated - Use pq::Decode
float3 PQ(float3 pq_color, float scaling = 10000.f) {
  return pq::Decode(pq_color, scaling);
}
}  // namespace from
}  // namespace bt2020

namespace oklab {
namespace from {
float3 BT709(float3 bt709) {
  static const float3x3 BT709_2_OKLABLMS = {
    0.4122214708f, 0.5363325363f, 0.0514459929f,
    0.2119034982f, 0.6806995451f, 0.1073969566f,
    0.0883024619f, 0.2817188376f, 0.6299787005f
  };
  static const float3x3 OKLABLMS_2_OKLAB = {
    0.2104542553f, 0.7936177850f, -0.0040720468f,
    1.9779984951f, -2.4285922050f, 0.4505937099f,
    0.0259040371f, 0.7827717662f, -0.8086757660f
  };

  float3 lms = mul(BT709_2_OKLABLMS, bt709);

  lms = renodx::math::Cbrt(lms);

  return mul(OKLABLMS_2_OKLAB, lms);
}

float3 OkLCh(float3 oklch) {
  float l = oklch[0];
  float c = oklch[1];
  float h = oklch[2];
  return float3(l, c * cos(h), c * sin(h));
}
}  // namespace from
}  // namespace oklab

//  Copyright 2022 - Aurélien PIERRE / darktable project
//  URL: https://eng.aurelienpierre.com/2022/02/color-saturation-control-for-the-21th-century/
//  The following source code is released under the MIT license
//  (https://opensource.org/licenses/MIT) with the following addenda:
//  * Any reuse of this code shall include the names of the author and of the project, as well as the source URL,
//  * Any implementation of this colour space MUST call it "darktable Uniform Color Space" or
//    "darktable UCS" in the end - user interface of the software.
namespace dtucs {
const static float L_WHITE_VALUE = 1.f;
const static float L_WHITE_HAT = pow(L_WHITE_VALUE, 0.631651345306265f);
const static float L_WHITE = (2.098883786377f * L_WHITE_HAT) / (L_WHITE_HAT + 1.12426773749357f);

namespace uvY {
namespace from {
static const float3x3 xyToUVD = {
  -0.783941002840055f, 0.277512987809202f, 0.153836578598858f,
  0.745273540913283f, -0.205375866083878f, -0.165478376301988f,
  0.318707282433486f, 2.16743692732158f, 0.291320554395942f
};

static const float2x2 UVStarToUVStarPrime = {
  -1.124983854323892f, -0.980483721769325f,
  1.86323315098672f, 1.971853092390862f
};

float3 BT709(float3 bt709) {
  float3 xyY = xyY::from::BT709(bt709);

  float3 UVD = mul(xyToUVD, float3(xyY.xy, 1.f));

  float2 UV = UVD.xy /= UVD.z;

  float2 UVStar = float2(1.39656225667f, 1.4513954287f) * UV / (abs(UV) + float2(1.49217352929f, 1.52488637914f));

  float2 UVStarPrime = mul(UVStarToUVStarPrime, UVStar);

  return float3(UVStarPrime, xyY[2]);
}
}  // namespace from
}  // namespace uvY

namespace jch {
namespace from {
float3 BT709(float3 bt709, float cz = 1.f) {
  float3 uvY = uvY::from::BT709(bt709);

  float L_star_hat = pow(uvY[2], 0.631651345306265f);
  float L_star = 2.098883786377f * L_star_hat / (L_star_hat + 1.12426773749357f);

  float M2 = dot(uvY.xy, uvY.xy);

  float C = 15.932993652962535 * pow(L_star, 0.6523997524738018) * pow(M2, 0.6007557017508491) / L_WHITE;
  float J = pow(L_star / L_WHITE, cz);
  float H = atan2(uvY[1], uvY[0]);

  return float3(J, C, H);
}
}  // from
}  // jch

namespace hcb {
namespace from {
float3 BT709(float3 bt709, float cz = 1.f) {
  float3 jch = jch::from::BT709(bt709);
  float J = jch[0];
  float C = jch[1];
  float H = jch[2];

  float B = J * (pow(C, 1.33654221029386) + 1.f);

  return float3(H, C, B);
}
}  // from
}  // hcb

namespace hsb {
namespace from {
float3 BT709(float3 bt709, float cz = 1.f) {
  float3 hcb = hcb::from::BT709(bt709);
  float H = hcb[0];
  float C = hcb[1];
  float B = hcb[2];

  float S = C / B;

  return float3(H, S, B);
}
}  // from
}  // hsb

}  // namespace dtucs

namespace bt709 {
namespace from {
namespace dtucs {
static const float2x2 UVStarPrimeToUVStar = {
  -5.037522385190711f, -2.504856328185843f,
  4.760029407436461f, 2.874012963239247f
};

static const float3x3 UVToxyD = {
  0.167171472114775f, 0.141299802443708f, -0.00801531300850582f,
  -0.150959086409163f, -0.155185060382272f, -0.00843312433578007f,
  0.940254742367256f, 1.f, -0.0256325967652889f
};

float3 uvY(float3 uvY) {
  float2 UVStar = mul(UVStarPrimeToUVStar, uvY.xy);

  float2 UV = float2(-1.49217352929f, -1.52488637914f) * UVStar / (abs(UVStar) - float2(1.39656225667f, 1.4513954287f));

  float3 xyD = mul(UVToxyD, float3(UV, 1.f));

  float3 xyY;

  xyY.xy = xyD.xy / xyD.z;

  xyY[2] = uvY[2];

  return bt709::from::xyY(xyY);
}

float3 JCH(float3 jch, float cz = 1.f) {
  float J = jch[0];
  float C = jch[1];
  float H = jch[2];

  float L_star = pow(J, (1 / cz)) * color::dtucs::L_WHITE;

  float M = pow(C * color::dtucs::L_WHITE / (15.932993652962535 * pow(L_star, 0.6523997524738018)), 0.8322850678616855);

  float Y = pow(-1.12426773749357f * L_star / (L_star - 2.098883786377), 1.5831518565279648f);

  return bt709::from::dtucs::uvY(float3(M * cos(H), M * sin(H), Y));
}

float3 HCB(float3 hcb, float cz = 1.f) {
  float H = hcb[0];
  float C = hcb[1];
  float B = hcb[2];

  float J = B / (pow(C, 1.33654221029386) + 1.f);

  return bt709::from::dtucs::JCH(float3(J, C, H), cz);
}

float3 HSB(float3 hsb, float cz = 1.f) {
  float H = hsb[0];
  float S = hsb[1];
  float B = hsb[2];

  float C = S * B;

  return bt709::from::dtucs::HCB(float3(H, C, B), cz);
}

}  // dtucs
}  // namespace from
}  // namespace bt709

namespace bt2408 {
static const float REFERENCE_WHITE = 203.f;
}  // namespace bt2408

namespace oklch {
namespace from {
float3 OkLab(float3 oklab) {
  float l = oklab[0];
  float a = oklab[1];
  float b = oklab[2];
  return float3(l, distance(oklab.yz, 0), atan2(b, a));
}
float3 BT709(float3 bt709) {
  float3 ok_lab = renodx::color::oklab::from::BT709(bt709);
  return OkLab(ok_lab);
}
}  // namespace from
}  // namespace oklch

namespace bt709 {
namespace from {
float3 OkLCh(float3 oklch) {
  float3 ok_lab = renodx::color::oklab::from::OkLCh(oklch);
  return OkLab(ok_lab);
}

float3 ICtCp(float3 col) {
  // ICtCp -> L'M'S'
  float3x3 ictcp_to_lms = float3x3(
      1.f, 0.00860647484f, 0.111033529f,
      1.f, -0.00860647484f, -0.111033529f,
      1.f, 0.560046315f, -0.320631951f);

  col = mul(ictcp_to_lms, col);

  // 1.0f = 100 nits, 100.0f = 10k nits
  col = pq::Decode(max(0, col), 100.f);
  return mul(ICTCP_LMS_TO_BT709_MAT, col);
}

}  // namespace from

namespace clamp {
float3 BT709(float3 bt709) {
  return max(0, bt709);
}
float3 BT2020(float3 bt709) {
  float3 bt2020 = renodx::color::bt2020::from::BT709(bt709);
  bt2020 = max(0, bt2020);
  return renodx::color::bt709::from::BT2020(bt2020);
}

float3 AP1(float3 bt709) {
  float3 ap1 = renodx::color::ap1::from::BT709(bt709);
  ap1 = max(0, ap1);
  return renodx::color::bt709::from::AP1(ap1);
}
}  // namespace clamp
}  // namespace bt709

}  // namespace color
}  // namespace renodx

#endif  // SRC_COMMON_COLOR_HLSL_
