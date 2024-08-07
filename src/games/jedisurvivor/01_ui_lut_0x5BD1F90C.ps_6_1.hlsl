cbuffer _10_12 : register(b0, space0) {
  float4 _12_m0[13] : packoffset(c0);
};

static uint gl_Layer;
static float2 TEXCOORD;
static float4 SV_Target;

struct SPIRV_Cross_Input {
  noperspective float2 TEXCOORD : TEXCOORD0;
  float4 gl_FragCoord : SV_Position;
  uint gl_Layer : SV_RenderTargetArrayIndex;
};

struct SPIRV_Cross_Output {
  float4 SV_Target : SV_Target0;
};

void frag_main() {
  float _40 = (TEXCOORD.x + (-0.015625f)) * 1.03225803375244140625f;
  float _42 = (TEXCOORD.y + (-0.015625f)) * 1.03225803375244140625f;
  float _44 = float(uint(gl_Layer)) * 0.0322580635547637939453125f;
  uint4 _51 = asuint(_12_m0[10u]);
  uint _52 = _51.z;
  float _55;
  float _60;
  float _65;
  float _70;
  float _75;
  float _80;
  float _85;
  float _90;
  float _95;
  if (_52 == 1u) {
    _55 = 1.37915885448455810546875f;
    _60 = -0.308850705623626708984375f;
    _65 = -0.070346772670745849609375f;
    _70 = -0.069335289299488067626953125f;
    _75 = 1.08229219913482666015625f;
    _80 = -0.0129620470106601715087890625f;
    _85 = -0.002159259282052516937255859375f;
    _90 = -0.0454653911292552947998046875f;
    _95 = 1.04775965213775634765625f;
  } else {
    float frontier_phi_1_2_ladder;
    float frontier_phi_1_2_ladder_1;
    float frontier_phi_1_2_ladder_2;
    float frontier_phi_1_2_ladder_3;
    float frontier_phi_1_2_ladder_4;
    float frontier_phi_1_2_ladder_5;
    float frontier_phi_1_2_ladder_6;
    float frontier_phi_1_2_ladder_7;
    float frontier_phi_1_2_ladder_8;
    if (_52 == 2u) {
      frontier_phi_1_2_ladder = 1.025799274444580078125f;
      frontier_phi_1_2_ladder_1 = -0.0200525037944316864013671875f;
      frontier_phi_1_2_ladder_2 = -0.0057713985443115234375f;
      frontier_phi_1_2_ladder_3 = -0.002235011197626590728759765625f;
      frontier_phi_1_2_ladder_4 = 1.00458252429962158203125f;
      frontier_phi_1_2_ladder_5 = -0.00235230661928653717041015625f;
      frontier_phi_1_2_ladder_6 = -0.00501400418579578399658203125f;
      frontier_phi_1_2_ladder_7 = -0.02529338560998439788818359375f;
      frontier_phi_1_2_ladder_8 = 1.03044021129608154296875f;
    } else {
      float frontier_phi_1_2_ladder_5_ladder;
      float frontier_phi_1_2_ladder_5_ladder_1;
      float frontier_phi_1_2_ladder_5_ladder_2;
      float frontier_phi_1_2_ladder_5_ladder_3;
      float frontier_phi_1_2_ladder_5_ladder_4;
      float frontier_phi_1_2_ladder_5_ladder_5;
      float frontier_phi_1_2_ladder_5_ladder_6;
      float frontier_phi_1_2_ladder_5_ladder_7;
      float frontier_phi_1_2_ladder_5_ladder_8;
      if (_52 == 3u) {
        frontier_phi_1_2_ladder_5_ladder = 0.695452213287353515625f;
        frontier_phi_1_2_ladder_5_ladder_1 = 0.140678703784942626953125f;
        frontier_phi_1_2_ladder_5_ladder_2 = 0.16386906802654266357421875f;
        frontier_phi_1_2_ladder_5_ladder_3 = 0.0447945632040500640869140625f;
        frontier_phi_1_2_ladder_5_ladder_4 = 0.859671115875244140625f;
        frontier_phi_1_2_ladder_5_ladder_5 = 0.095534317195415496826171875f;
        frontier_phi_1_2_ladder_5_ladder_6 = -0.0055258828215301036834716796875f;
        frontier_phi_1_2_ladder_5_ladder_7 = 0.0040252101607620716094970703125f;
        frontier_phi_1_2_ladder_5_ladder_8 = 1.00150072574615478515625f;
      } else {
        bool _491 = _52 == 4u;
        frontier_phi_1_2_ladder_5_ladder = _491 ? 1.0f : 1.70505154132843017578125f;
        frontier_phi_1_2_ladder_5_ladder_1 = _491 ? 0.0f : (-0.621790587902069091796875f);
        frontier_phi_1_2_ladder_5_ladder_2 = _491 ? 0.0f : (-0.0832584798336029052734375f);
        frontier_phi_1_2_ladder_5_ladder_3 = _491 ? 0.0f : (-0.130257189273834228515625f);
        frontier_phi_1_2_ladder_5_ladder_4 = _491 ? 1.0f : 1.14080274105072021484375f;
        frontier_phi_1_2_ladder_5_ladder_5 = _491 ? 0.0f : (-0.0105485282838344573974609375f);
        frontier_phi_1_2_ladder_5_ladder_6 = _491 ? 0.0f : (-0.0240032784640789031982421875f);
        frontier_phi_1_2_ladder_5_ladder_7 = _491 ? 0.0f : (-0.12896876037120819091796875f);
        frontier_phi_1_2_ladder_5_ladder_8 = _491 ? 1.0f : 1.15297186374664306640625f;
      }
      frontier_phi_1_2_ladder = frontier_phi_1_2_ladder_5_ladder;
      frontier_phi_1_2_ladder_1 = frontier_phi_1_2_ladder_5_ladder_1;
      frontier_phi_1_2_ladder_2 = frontier_phi_1_2_ladder_5_ladder_2;
      frontier_phi_1_2_ladder_3 = frontier_phi_1_2_ladder_5_ladder_3;
      frontier_phi_1_2_ladder_4 = frontier_phi_1_2_ladder_5_ladder_4;
      frontier_phi_1_2_ladder_5 = frontier_phi_1_2_ladder_5_ladder_5;
      frontier_phi_1_2_ladder_6 = frontier_phi_1_2_ladder_5_ladder_6;
      frontier_phi_1_2_ladder_7 = frontier_phi_1_2_ladder_5_ladder_7;
      frontier_phi_1_2_ladder_8 = frontier_phi_1_2_ladder_5_ladder_8;
    }
    _55 = frontier_phi_1_2_ladder;
    _60 = frontier_phi_1_2_ladder_1;
    _65 = frontier_phi_1_2_ladder_2;
    _70 = frontier_phi_1_2_ladder_3;
    _75 = frontier_phi_1_2_ladder_4;
    _80 = frontier_phi_1_2_ladder_5;
    _85 = frontier_phi_1_2_ladder_6;
    _90 = frontier_phi_1_2_ladder_7;
    _95 = frontier_phi_1_2_ladder_8;
  }
  float _101 = max(6.1035199905745685100555419921875e-05f, _40);
  float _103 = max(6.1035199905745685100555419921875e-05f, _42);
  float _104 = max(6.1035199905745685100555419921875e-05f, _44);
  float _131 = (_101 > 0.040449999272823333740234375f) ? exp2(log2((_101 * 0.94786727428436279296875f) + 0.0521326996386051177978515625f) * 2.400000095367431640625f) : (_101 * 0.077399380505084991455078125f);
  float _132 = (_103 > 0.040449999272823333740234375f) ? exp2(log2((_103 * 0.94786727428436279296875f) + 0.0521326996386051177978515625f) * 2.400000095367431640625f) : (_103 * 0.077399380505084991455078125f);
  float _133 = (_104 > 0.040449999272823333740234375f) ? exp2(log2((_104 * 0.94786727428436279296875f) + 0.0521326996386051177978515625f) * 2.400000095367431640625f) : (_104 * 0.077399380505084991455078125f);
  uint _134 = _51.y;
  float _473;
  float _476;
  float _479;
  if ((_134 == 3u) || (_134 == 5u)) {
    float _149 = _132 * 1.5f;
    float _151 = _133 * 1.5f;
    float _156 = mad(0.1773348152637481689453125f, _151, mad(0.38297808170318603515625f, _149, _131 * 0.659551203250885009765625f));
    float _162 = mad(0.096761621534824371337890625f, _151, mad(0.81342315673828125f, _149, _131 * 0.13468848168849945068359375f));
    float _168 = mad(0.870704174041748046875f, _151, mad(0.11154405772686004638671875f, _149, _131 * 0.0263159833848476409912109375f));
    float _170 = log2(_12_m0[11u].x);
    float _182 = exp2((clamp((_170 * 0.13082401454448699951171875f) + 1.7383518218994140625f, 0.0f, 1.0f) * 8.5f) + (-15.0f));
    float _185 = log2(_12_m0[11u].y);
    float _195 = exp2((clamp((_185 * 0.1298237740993499755859375f) + (-0.725060939788818359375f), 0.0f, 1.0f) * 11.5f) + 6.5f);
    float _197 = log2(_182 * 0.180000007152557373046875f);
    float _198 = _170 * 0.3010300099849700927734375f;
    float _200 = _197 * 0.077766083180904388427734375f;
    float _204 = 0.48885345458984375f - _200;
    float _219 = log2(_195 * 0.180000007152557373046875f);
    float _220 = _219 * 0.077766083180904388427734375f;
    float _223 = _219 * 0.3010300099849700927734375f;
    float _224 = _219 * 0.0501716695725917816162109375f;
    float _231 = _185 * 0.3010300099849700927734375f;
    float _234 = _231 + (_219 * 0.060206003487110137939453125f);
    float _240 = _234 - (((_224 + 0.124121248722076416015625f) + _223) * 0.20000000298023223876953125f);
    float _259 = exp2((-2.4739310741424560546875f) - _12_m0[11u].w);
    float _33[6];
    _33[0u] = _198;
    _33[1u] = _198;
    _33[2u] = ((0.681241333484649658203125f - _198) * ((clamp((log2(_182) + 15.0f) * 0.117647059261798858642578125f, 0.0f, 1.0f) * 0.1699999868869781494140625f) + 0.180000007152557373046875f)) + _198;
    _33[3u] = _200 + 0.873629271984100341796875f;
    _33[4u] = _204;
    _33[5u] = _204;
    float _34[6];
    _34[0u] = 0.48885345458984375f - _220;
    _34[1u] = _220 + 0.873629271984100341796875f;
    _34[2u] = ((_231 + (-0.681241333484649658203125f)) * ((clamp((log2(_195) + (-6.5f)) * 0.086956523358821868896484375f, 0.0f, 1.0f) * 0.0099999904632568359375f) + 0.88999998569488525390625f)) + 0.681241333484649658203125f;
    _34[3u] = _234 - ((((-0.124121248722076416015625f) - _224) + _223) * 0.20000000298023223876953125f);
    _34[4u] = _240;
    _34[5u] = _240;
    float _277 = max(max(_156, _162), _168);
    float _284 = (max(_277, 1.0000000133514319600180897396058e-10f) - max(min(min(_156, _162), _168), 1.0000000133514319600180897396058e-10f)) / max(_277, 0.00999999977648258209228515625f);
    float _298 = ((_162 + _156) + _168) + (sqrt((((_168 - _162) * _168) + ((_162 - _156) * _162)) + ((_156 - _168) * _156)) * 1.75f);
    float _299 = _298 * 0.3333333432674407958984375f;
    float _301 = _284 + (-0.4000000059604644775390625f);
    float _303 = _301 * 5.0f;
    float _309 = max(1.0f - abs(_301 * 2.5f), 0.0f);
    float _320 = ((float(int(uint(_303 > 0.0f) - uint(_303 < 0.0f))) * (1.0f - (_309 * _309))) + 1.0f) * 0.02500000037252902984619140625f;
    float _330;
    if (_299 > 0.053333334624767303466796875f) {
      float frontier_phi_7_6_ladder;
      if (_299 < 0.1599999964237213134765625f) {
        frontier_phi_7_6_ladder = ((0.23999999463558197021484375f / _298) + (-0.5f)) * _320;
      } else {
        frontier_phi_7_6_ladder = 0.0f;
      }
      _330 = frontier_phi_7_6_ladder;
    } else {
      _330 = _320;
    }
    float _332 = _330 + 1.0f;
    float _333 = _332 * _156;
    float _334 = _332 * _162;
    float _335 = _332 * _168;
    float _505;
    if ((_333 == _334) && (_334 == _335)) {
      _505 = 0.0f;
    } else {
      float _518 = ((_333 * 2.0f) - _334) - _335;
      float _522 = ((_162 - _168) * 1.73205077648162841796875f) * _332;
      float _524 = atan(_522 / _518);
      bool _529 = _518 < 0.0f;
      bool _530 = _518 == 0.0f;
      bool _531 = _522 >= 0.0f;
      bool _532 = _522 < 0.0f;
      _505 = (_531 && _530) ? 90.0f : ((_532 && _530) ? (-90.0f) : (((_532 && _529) ? (_524 + (-3.1415927410125732421875f)) : ((_531 && _529) ? (_524 + 3.1415927410125732421875f) : _524)) * 57.2957763671875f));
    }
    float _512 = min(max((_505 < 0.0f) ? (_505 + 360.0f) : _505, 0.0f), 360.0f);
    float _589;
    if (_512 < (-180.0f)) {
      _589 = _512 + 360.0f;
    } else {
      float frontier_phi_21_17_ladder;
      if (_512 > 180.0f) {
        frontier_phi_21_17_ladder = _512 + (-360.0f);
      } else {
        frontier_phi_21_17_ladder = _512;
      }
      _589 = frontier_phi_21_17_ladder;
    }
    float _608;
    if ((_589 > (-67.5f)) && (_589 < 67.5f)) {
      float _600 = (_589 + 67.5f) * 0.0296296291053295135498046875f;
      uint _602 = uint(int(_600));
      float _604 = _600 - float(int(_602));
      float _605 = _604 * _604;
      float _606 = _605 * _604;
      float frontier_phi_26_25_ladder;
      if (_602 == 3u) {
        frontier_phi_26_25_ladder = ((0.16666667163372039794921875f - (_604 * 0.5f)) + (_605 * 0.5f)) - (_606 * 0.16666667163372039794921875f);
      } else {
        float frontier_phi_26_25_ladder_30_ladder;
        if (_602 == 2u) {
          frontier_phi_26_25_ladder_30_ladder = (0.666666686534881591796875f - _605) + (_606 * 0.5f);
        } else {
          float frontier_phi_26_25_ladder_30_ladder_36_ladder;
          if (_602 == 1u) {
            frontier_phi_26_25_ladder_30_ladder_36_ladder = ((_606 * (-0.5f)) + 0.16666667163372039794921875f) + ((_605 + _604) * 0.5f);
          } else {
            frontier_phi_26_25_ladder_30_ladder_36_ladder = (_602 == 0u) ? (_606 * 0.16666667163372039794921875f) : 0.0f;
          }
          frontier_phi_26_25_ladder_30_ladder = frontier_phi_26_25_ladder_30_ladder_36_ladder;
        }
        frontier_phi_26_25_ladder = frontier_phi_26_25_ladder_30_ladder;
      }
      _608 = frontier_phi_26_25_ladder;
    } else {
      _608 = 0.0f;
    }
    float _623 = min(max((((_284 * 0.2700000107288360595703125f) * (0.02999999932944774627685546875f - _333)) * _608) + _333, 0.0f), 65535.0f);
    float _625 = min(max(_334, 0.0f), 65535.0f);
    float _626 = min(max(_335, 0.0f), 65535.0f);
    float _648 = min(max(mad(-0.214928567409515380859375f, _626, mad(-0.236510753631591796875f, _625, _623 * 1.45143926143646240234375f)), 0.0f), 65504.0f);
    float _650 = min(max(mad(-0.0996759235858917236328125f, _626, mad(1.1762297153472900390625f, _625, _623 * (-0.07655377686023712158203125f))), 0.0f), 65504.0f);
    float _651 = min(max(mad(0.99771630764007568359375f, _626, mad(-0.0060324496589601039886474609375f, _625, _623 * 0.0083161480724811553955078125f)), 0.0f), 65504.0f);
    float _652 = dot(float3(_648, _650, _651), float3(0.272228717803955078125f, 0.674081742763519287109375f, 0.053689517080783843994140625f));
    float _670 = log2(max(((_648 - _652) * 0.959999978542327880859375f) + _652, 1.0000000133514319600180897396058e-10f));
    float _671 = _670 * 0.3010300099849700927734375f;
    float _672 = log2(exp2(_197 - _12_m0[11u].z));
    float _673 = _672 * 0.3010300099849700927734375f;
    float _693;
    if (_671 > _673) {
      float _689 = log2(_259);
      float _690 = _689 * 0.3010300099849700927734375f;
      float frontier_phi_32_31_ladder;
      if ((_671 > _673) && (_671 < _690)) {
        float _770 = ((_670 - _672) * 0.903090000152587890625f) / ((_689 - _672) * 0.3010300099849700927734375f);
        uint _771 = uint(int(_770));
        float _773 = _770 - float(int(_771));
        uint _776 = _771 + 1u;
        float _783 = _33[_771] * 0.5f;
        frontier_phi_32_31_ladder = dot(float3(_773 * _773, _773, 1.0f), float3(mad(_33[_771 + 2u], 0.5f, mad(_33[_776], -1.0f, _783)), _33[_776] - _33[_771], mad(_33[_776], 0.5f, _783)));
      } else {
        float frontier_phi_32_31_ladder_38_ladder;
        if ((_671 >= _690) && (_671 < _223)) {
          float _840 = ((_670 - _689) * 0.903090000152587890625f) / ((_219 - _689) * 0.3010300099849700927734375f);
          uint _841 = uint(int(_840));
          float _843 = _840 - float(int(_841));
          uint _846 = _841 + 1u;
          float _853 = _34[_841] * 0.5f;
          frontier_phi_32_31_ladder_38_ladder = dot(float3(_843 * _843, _843, 1.0f), float3(mad(_34[_841 + 2u], 0.5f, mad(_34[_846], -1.0f, _853)), _34[_846] - _34[_841], mad(_34[_846], 0.5f, _853)));
        } else {
          frontier_phi_32_31_ladder_38_ladder = _234 - (_670 * 0.060206003487110137939453125f);
        }
        frontier_phi_32_31_ladder = frontier_phi_32_31_ladder_38_ladder;
      }
      _693 = frontier_phi_32_31_ladder;
    } else {
      _693 = _198;
    }
    float _701 = log2(max(((_650 - _652) * 0.959999978542327880859375f) + _652, 1.0000000133514319600180897396058e-10f));
    float _702 = _701 * 0.3010300099849700927734375f;
    float _799;
    if (_702 > _673) {
      float _795 = log2(_259);
      float _796 = _795 * 0.3010300099849700927734375f;
      float frontier_phi_40_39_ladder;
      if ((_702 > _673) && (_702 < _796)) {
        float _865 = ((_701 - _672) * 0.903090000152587890625f) / ((_795 - _672) * 0.3010300099849700927734375f);
        uint _866 = uint(int(_865));
        float _868 = _865 - float(int(_866));
        uint _871 = _866 + 1u;
        float _878 = _33[_866] * 0.5f;
        frontier_phi_40_39_ladder = dot(float3(_868 * _868, _868, 1.0f), float3(mad(_33[_866 + 2u], 0.5f, mad(_33[_871], -1.0f, _878)), _33[_871] - _33[_866], mad(_33[_871], 0.5f, _878)));
      } else {
        float frontier_phi_40_39_ladder_50_ladder;
        if ((_702 >= _796) && (_702 < _223)) {
          float _1078 = ((_701 - _795) * 0.903090000152587890625f) / ((_219 - _795) * 0.3010300099849700927734375f);
          uint _1079 = uint(int(_1078));
          float _1081 = _1078 - float(int(_1079));
          uint _1084 = _1079 + 1u;
          float _1091 = _34[_1079] * 0.5f;
          frontier_phi_40_39_ladder_50_ladder = dot(float3(_1081 * _1081, _1081, 1.0f), float3(mad(_34[_1079 + 2u], 0.5f, mad(_34[_1084], -1.0f, _1091)), _34[_1084] - _34[_1079], mad(_34[_1084], 0.5f, _1091)));
        } else {
          frontier_phi_40_39_ladder_50_ladder = _234 - (_701 * 0.060206003487110137939453125f);
        }
        frontier_phi_40_39_ladder = frontier_phi_40_39_ladder_50_ladder;
      }
      _799 = frontier_phi_40_39_ladder;
    } else {
      _799 = _198;
    }
    float _806 = log2(max(((_651 - _652) * 0.959999978542327880859375f) + _652, 1.0000000133514319600180897396058e-10f));
    float _807 = _806 * 0.3010300099849700927734375f;
    float _893;
    if (_807 > _673) {
      float _889 = log2(_259);
      float _890 = _889 * 0.3010300099849700927734375f;
      float frontier_phi_52_51_ladder;
      if ((_807 > _673) && (_807 < _890)) {
        float _1103 = ((_806 - _672) * 0.903090000152587890625f) / ((_889 - _672) * 0.3010300099849700927734375f);
        uint _1104 = uint(int(_1103));
        float _1106 = _1103 - float(int(_1104));
        uint _1109 = _1104 + 1u;
        float _1116 = _33[_1104] * 0.5f;
        frontier_phi_52_51_ladder = dot(float3(_1106 * _1106, _1106, 1.0f), float3(mad(_33[_1104 + 2u], 0.5f, mad(_33[_1109], -1.0f, _1116)), _33[_1109] - _33[_1104], mad(_33[_1109], 0.5f, _1116)));
      } else {
        float frontier_phi_52_51_ladder_62_ladder;
        if ((_807 >= _890) && (_807 < _223)) {
          float _1308 = ((_806 - _889) * 0.903090000152587890625f) / ((_219 - _889) * 0.3010300099849700927734375f);
          uint _1309 = uint(int(_1308));
          float _1311 = _1308 - float(int(_1309));
          uint _1314 = _1309 + 1u;
          float _1321 = _34[_1309] * 0.5f;
          frontier_phi_52_51_ladder_62_ladder = dot(float3(_1311 * _1311, _1311, 1.0f), float3(mad(_34[_1309 + 2u], 0.5f, mad(_34[_1314], -1.0f, _1321)), _34[_1314] - _34[_1309], mad(_34[_1314], 0.5f, _1321)));
        } else {
          frontier_phi_52_51_ladder_62_ladder = _234 - (_806 * 0.060206003487110137939453125f);
        }
        frontier_phi_52_51_ladder = frontier_phi_52_51_ladder_62_ladder;
      }
      _893 = frontier_phi_52_51_ladder;
    } else {
      _893 = _198;
    }
    float _900 = _12_m0[11u].y - _12_m0[11u].x;
    float _901 = (exp2(_693 * 3.3219280242919921875f) - _12_m0[11u].x) / _900;
    float _903 = (exp2(_799 * 3.3219280242919921875f) - _12_m0[11u].x) / _900;
    float _905 = (exp2(_893 * 3.3219280242919921875f) - _12_m0[11u].x) / _900;
    float _910 = mad(0.1561876833438873291015625f, _905, mad(0.1340042054653167724609375f, _903, _901 * 0.662454187870025634765625f));
    float _914 = mad(0.053689517080783843994140625f, _905, mad(0.674081742763519287109375f, _903, _901 * 0.272228717803955078125f));
    float _919 = mad(1.01033914089202880859375f, _905, mad(0.0040607335977256298065185546875f, _903, _901 * (-0.0055746496655046939849853515625f)));
    float _942 = min(max(mad(-0.23642469942569732666015625f, _919, mad(-0.324803292751312255859375f, _914, _910 * 1.6410233974456787109375f)), 0.0f), 1.0f);
    float _943 = min(max(mad(0.016756348311901092529296875f, _919, mad(1.6153316497802734375f, _914, _910 * (-0.663662850856781005859375f))), 0.0f), 1.0f);
    float _944 = min(max(mad(0.98839485645294189453125f, _919, mad(-0.008284442126750946044921875f, _914, _910 * 0.01172189414501190185546875f)), 0.0f), 1.0f);
    float _947 = mad(0.1561876833438873291015625f, _944, mad(0.1340042054653167724609375f, _943, _942 * 0.662454187870025634765625f));
    float _950 = mad(0.053689517080783843994140625f, _944, mad(0.674081742763519287109375f, _943, _942 * 0.272228717803955078125f));
    float _953 = mad(1.01033914089202880859375f, _944, mad(0.0040607335977256298065185546875f, _943, _942 * (-0.0055746496655046939849853515625f)));
    float _975 = min(max(min(max(mad(-0.23642469942569732666015625f, _953, mad(-0.324803292751312255859375f, _950, _947 * 1.6410233974456787109375f)), 0.0f), 65535.0f) * _12_m0[11u].y, 0.0f), 65535.0f);
    float _976 = min(max(min(max(mad(0.016756348311901092529296875f, _953, mad(1.6153316497802734375f, _950, _947 * (-0.663662850856781005859375f))), 0.0f), 65535.0f) * _12_m0[11u].y, 0.0f), 65535.0f);
    float _977 = min(max(min(max(mad(0.98839485645294189453125f, _953, mad(-0.008284442126750946044921875f, _950, _947 * 0.01172189414501190185546875f)), 0.0f), 65535.0f) * _12_m0[11u].y, 0.0f), 65535.0f);
    float _998 = exp2(log2(mad(_65, _977, mad(_60, _976, _975 * _55)) * 9.9999997473787516355514526367188e-05f) * 0.1593017578125f);
    float _999 = exp2(log2(mad(_80, _977, mad(_75, _976, _975 * _70)) * 9.9999997473787516355514526367188e-05f) * 0.1593017578125f);
    float _1000 = exp2(log2(mad(_95, _977, mad(_90, _976, _975 * _85)) * 9.9999997473787516355514526367188e-05f) * 0.1593017578125f);
    _473 = exp2(log2((1.0f / ((_998 * 18.6875f) + 1.0f)) * ((_998 * 18.8515625f) + 0.8359375f)) * 78.84375f);
    _476 = exp2(log2((1.0f / ((_999 * 18.6875f) + 1.0f)) * ((_999 * 18.8515625f) + 0.8359375f)) * 78.84375f);
    _479 = exp2(log2((1.0f / ((_1000 * 18.6875f) + 1.0f)) * ((_1000 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  } else {
    float frontier_phi_9_4_ladder;
    float frontier_phi_9_4_ladder_1;
    float frontier_phi_9_4_ladder_2;
    if ((_134 & 4294967293u) == 4u) {
      float _345 = _132 * 1.5f;
      float _346 = _133 * 1.5f;
      float _349 = mad(0.1773348152637481689453125f, _346, mad(0.38297808170318603515625f, _345, _131 * 0.659551203250885009765625f));
      float _352 = mad(0.096761621534824371337890625f, _346, mad(0.81342315673828125f, _345, _131 * 0.13468848168849945068359375f));
      float _355 = mad(0.870704174041748046875f, _346, mad(0.11154405772686004638671875f, _345, _131 * 0.0263159833848476409912109375f));
      float _356 = log2(_12_m0[11u].x);
      float _362 = exp2((clamp((_356 * 0.13082401454448699951171875f) + 1.7383518218994140625f, 0.0f, 1.0f) * 8.5f) + (-15.0f));
      float _364 = log2(_12_m0[11u].y);
      float _370 = exp2((clamp((_364 * 0.1298237740993499755859375f) + (-0.725060939788818359375f), 0.0f, 1.0f) * 11.5f) + 6.5f);
      float _372 = log2(_362 * 0.180000007152557373046875f);
      float _373 = _356 * 0.3010300099849700927734375f;
      float _374 = _372 * 0.077766083180904388427734375f;
      float _377 = 1.48885345458984375f - _374;
      float _389 = log2(_370 * 0.180000007152557373046875f);
      float _390 = _389 * 0.077766083180904388427734375f;
      float _393 = _389 * 0.3010300099849700927734375f;
      float _394 = _389 * 0.0501716695725917816162109375f;
      float _398 = _364 * 0.3010300099849700927734375f;
      float _400 = _398 + (_389 * 0.060206003487110137939453125f);
      float _405 = _400 - (((_394 + 0.124121248722076416015625f) + _393) * 0.20000000298023223876953125f);
      float _419 = exp2((-2.4739310741424560546875f) - _12_m0[11u].w);
      float _35[6];
      _35[0u] = _373;
      _35[1u] = _373;
      _35[2u] = ((1.6812412738800048828125f - _373) * ((clamp((log2(_362) + 15.0f) * 0.117647059261798858642578125f, 0.0f, 1.0f) * 0.1699999868869781494140625f) + 0.180000007152557373046875f)) + _373;
      _35[3u] = _374 + 1.8736293315887451171875f;
      _35[4u] = _377;
      _35[5u] = _377;
      float _36[6];
      _36[0u] = 1.48885345458984375f - _390;
      _36[1u] = _390 + 1.8736293315887451171875f;
      _36[2u] = ((_398 + (-1.6812412738800048828125f)) * ((clamp((log2(_370) + (-6.5f)) * 0.086956523358821868896484375f, 0.0f, 1.0f) * 0.0099999904632568359375f) + 0.88999998569488525390625f)) + 1.6812412738800048828125f;
      _36[3u] = _400 - ((((-0.124121248722076416015625f) - _394) + _393) * 0.20000000298023223876953125f);
      _36[4u] = _405;
      _36[5u] = _405;
      float _435 = max(max(_349, _352), _355);
      float _440 = (max(_435, 1.0000000133514319600180897396058e-10f) - max(min(min(_349, _352), _355), 1.0000000133514319600180897396058e-10f)) / max(_435, 0.00999999977648258209228515625f);
      float _453 = ((_352 + _349) + _355) + (sqrt((((_355 - _352) * _355) + ((_352 - _349) * _352)) + ((_349 - _355) * _349)) * 1.75f);
      float _454 = _453 * 0.3333333432674407958984375f;
      float _455 = _440 + (-0.4000000059604644775390625f);
      float _456 = _455 * 5.0f;
      float _460 = max(1.0f - abs(_455 * 2.5f), 0.0f);
      float _471 = ((float(int(uint(_456 > 0.0f) - uint(_456 < 0.0f))) * (1.0f - (_460 * _460))) + 1.0f) * 0.02500000037252902984619140625f;
      float _545;
      if (_454 > 0.053333334624767303466796875f) {
        float frontier_phi_15_14_ladder;
        if (_454 < 0.1599999964237213134765625f) {
          frontier_phi_15_14_ladder = ((0.23999999463558197021484375f / _453) + (-0.5f)) * _471;
        } else {
          frontier_phi_15_14_ladder = 0.0f;
        }
        _545 = frontier_phi_15_14_ladder;
      } else {
        _545 = _471;
      }
      float _547 = _545 + 1.0f;
      float _548 = _547 * _349;
      float _549 = _547 * _352;
      float _550 = _547 * _355;
      float _559;
      if ((_548 == _549) && (_549 == _550)) {
        _559 = 0.0f;
      } else {
        float _569 = ((_548 * 2.0f) - _549) - _550;
        float _572 = ((_352 - _355) * 1.73205077648162841796875f) * _547;
        float _574 = atan(_572 / _569);
        bool _577 = _569 < 0.0f;
        bool _578 = _569 == 0.0f;
        bool _579 = _572 >= 0.0f;
        bool _580 = _572 < 0.0f;
        _559 = (_579 && _578) ? 90.0f : ((_580 && _578) ? (-90.0f) : (((_580 && _577) ? (_574 + (-3.1415927410125732421875f)) : ((_579 && _577) ? (_574 + 3.1415927410125732421875f) : _574)) * 57.2957763671875f));
      }
      float _565 = min(max((_559 < 0.0f) ? (_559 + 360.0f) : _559, 0.0f), 360.0f);
      float _675;
      if (_565 < (-180.0f)) {
        _675 = _565 + 360.0f;
      } else {
        float frontier_phi_27_24_ladder;
        if (_565 > 180.0f) {
          frontier_phi_27_24_ladder = _565 + (-360.0f);
        } else {
          frontier_phi_27_24_ladder = _565;
        }
        _675 = frontier_phi_27_24_ladder;
      }
      float _712;
      if ((_675 > (-67.5f)) && (_675 < 67.5f)) {
        float _705 = (_675 + 67.5f) * 0.0296296291053295135498046875f;
        uint _706 = uint(int(_705));
        float _708 = _705 - float(int(_706));
        float _709 = _708 * _708;
        float _710 = _709 * _708;
        float frontier_phi_34_33_ladder;
        if (_706 == 3u) {
          frontier_phi_34_33_ladder = ((0.16666667163372039794921875f - (_708 * 0.5f)) + (_709 * 0.5f)) - (_710 * 0.16666667163372039794921875f);
        } else {
          float frontier_phi_34_33_ladder_42_ladder;
          if (_706 == 2u) {
            frontier_phi_34_33_ladder_42_ladder = (0.666666686534881591796875f - _709) + (_710 * 0.5f);
          } else {
            float frontier_phi_34_33_ladder_42_ladder_54_ladder;
            if (_706 == 1u) {
              frontier_phi_34_33_ladder_42_ladder_54_ladder = ((_710 * (-0.5f)) + 0.16666667163372039794921875f) + ((_709 + _708) * 0.5f);
            } else {
              frontier_phi_34_33_ladder_42_ladder_54_ladder = (_706 == 0u) ? (_710 * 0.16666667163372039794921875f) : 0.0f;
            }
            frontier_phi_34_33_ladder_42_ladder = frontier_phi_34_33_ladder_42_ladder_54_ladder;
          }
          frontier_phi_34_33_ladder = frontier_phi_34_33_ladder_42_ladder;
        }
        _712 = frontier_phi_34_33_ladder;
      } else {
        _712 = 0.0f;
      }
      float _725 = min(max((((_440 * 0.2700000107288360595703125f) * (0.02999999932944774627685546875f - _548)) * _712) + _548, 0.0f), 65535.0f);
      float _726 = min(max(_549, 0.0f), 65535.0f);
      float _727 = min(max(_550, 0.0f), 65535.0f);
      float _740 = min(max(mad(-0.214928567409515380859375f, _727, mad(-0.236510753631591796875f, _726, _725 * 1.45143926143646240234375f)), 0.0f), 65504.0f);
      float _741 = min(max(mad(-0.0996759235858917236328125f, _727, mad(1.1762297153472900390625f, _726, _725 * (-0.07655377686023712158203125f))), 0.0f), 65504.0f);
      float _742 = min(max(mad(0.99771630764007568359375f, _727, mad(-0.0060324496589601039886474609375f, _726, _725 * 0.0083161480724811553955078125f)), 0.0f), 65504.0f);
      float _743 = dot(float3(_740, _741, _742), float3(0.272228717803955078125f, 0.674081742763519287109375f, 0.053689517080783843994140625f));
      float _756 = log2(max(((_740 - _743) * 0.959999978542327880859375f) + _743, 1.0000000133514319600180897396058e-10f));
      float _757 = _756 * 0.3010300099849700927734375f;
      float _758 = log2(exp2(_372 - _12_m0[11u].z));
      float _759 = _758 * 0.3010300099849700927734375f;
      float _820;
      if (_757 > _759) {
        float _816 = log2(_419);
        float _817 = _816 * 0.3010300099849700927734375f;
        float frontier_phi_44_43_ladder;
        if ((_757 > _759) && (_757 < _817)) {
          float _1036 = ((_756 - _758) * 0.903090000152587890625f) / ((_816 - _758) * 0.3010300099849700927734375f);
          uint _1037 = uint(int(_1036));
          float _1039 = _1036 - float(int(_1037));
          uint _1042 = _1037 + 1u;
          float _1049 = _35[_1037] * 0.5f;
          frontier_phi_44_43_ladder = dot(float3(_1039 * _1039, _1039, 1.0f), float3(mad(_35[_1037 + 2u], 0.5f, mad(_35[_1042], -1.0f, _1049)), _35[_1042] - _35[_1037], mad(_35[_1042], 0.5f, _1049)));
        } else {
          float frontier_phi_44_43_ladder_56_ladder;
          if ((_757 >= _817) && (_757 < _393)) {
            float _1136 = ((_756 - _816) * 0.903090000152587890625f) / ((_389 - _816) * 0.3010300099849700927734375f);
            uint _1137 = uint(int(_1136));
            float _1139 = _1136 - float(int(_1137));
            uint _1142 = _1137 + 1u;
            float _1149 = _36[_1137] * 0.5f;
            frontier_phi_44_43_ladder_56_ladder = dot(float3(_1139 * _1139, _1139, 1.0f), float3(mad(_36[_1137 + 2u], 0.5f, mad(_36[_1142], -1.0f, _1149)), _36[_1142] - _36[_1137], mad(_36[_1142], 0.5f, _1149)));
          } else {
            frontier_phi_44_43_ladder_56_ladder = _400 - (_756 * 0.060206003487110137939453125f);
          }
          frontier_phi_44_43_ladder = frontier_phi_44_43_ladder_56_ladder;
        }
        _820 = frontier_phi_44_43_ladder;
      } else {
        _820 = _373;
      }
      float _827 = log2(max(((_741 - _743) * 0.959999978542327880859375f) + _743, 1.0000000133514319600180897396058e-10f));
      float _828 = _827 * 0.3010300099849700927734375f;
      float _1064;
      if (_828 > _759) {
        float _1060 = log2(_419);
        float _1061 = _1060 * 0.3010300099849700927734375f;
        float frontier_phi_58_57_ladder;
        if ((_828 > _759) && (_828 < _1061)) {
          float _1161 = ((_827 - _758) * 0.903090000152587890625f) / ((_1060 - _758) * 0.3010300099849700927734375f);
          uint _1162 = uint(int(_1161));
          float _1164 = _1161 - float(int(_1162));
          uint _1167 = _1162 + 1u;
          float _1174 = _35[_1162] * 0.5f;
          frontier_phi_58_57_ladder = dot(float3(_1164 * _1164, _1164, 1.0f), float3(mad(_35[_1162 + 2u], 0.5f, mad(_35[_1167], -1.0f, _1174)), _35[_1167] - _35[_1162], mad(_35[_1167], 0.5f, _1174)));
        } else {
          float frontier_phi_58_57_ladder_68_ladder;
          if ((_828 >= _1061) && (_828 < _393)) {
            float _1333 = ((_827 - _1060) * 0.903090000152587890625f) / ((_389 - _1060) * 0.3010300099849700927734375f);
            uint _1334 = uint(int(_1333));
            float _1336 = _1333 - float(int(_1334));
            uint _1339 = _1334 + 1u;
            float _1346 = _36[_1334] * 0.5f;
            frontier_phi_58_57_ladder_68_ladder = dot(float3(_1336 * _1336, _1336, 1.0f), float3(mad(_36[_1334 + 2u], 0.5f, mad(_36[_1339], -1.0f, _1346)), _36[_1339] - _36[_1334], mad(_36[_1339], 0.5f, _1346)));
          } else {
            frontier_phi_58_57_ladder_68_ladder = _400 - (_827 * 0.060206003487110137939453125f);
          }
          frontier_phi_58_57_ladder = frontier_phi_58_57_ladder_68_ladder;
        }
        _1064 = frontier_phi_58_57_ladder;
      } else {
        _1064 = _373;
      }
      float _1071 = log2(max(((_742 - _743) * 0.959999978542327880859375f) + _743, 1.0000000133514319600180897396058e-10f));
      float _1072 = _1071 * 0.3010300099849700927734375f;
      float _1189;
      if (_1072 > _759) {
        float _1185 = log2(_419);
        float _1186 = _1185 * 0.3010300099849700927734375f;
        float frontier_phi_70_69_ladder;
        if ((_1072 > _759) && (_1072 < _1186)) {
          float _1358 = ((_1071 - _758) * 0.903090000152587890625f) / ((_1185 - _758) * 0.3010300099849700927734375f);
          uint _1359 = uint(int(_1358));
          float _1361 = _1358 - float(int(_1359));
          uint _1364 = _1359 + 1u;
          float _1371 = _35[_1359] * 0.5f;
          frontier_phi_70_69_ladder = dot(float3(_1361 * _1361, _1361, 1.0f), float3(mad(_35[_1359 + 2u], 0.5f, mad(_35[_1364], -1.0f, _1371)), _35[_1364] - _35[_1359], mad(_35[_1364], 0.5f, _1371)));
        } else {
          float frontier_phi_70_69_ladder_76_ladder;
          if ((_1072 >= _1186) && (_1072 < _393)) {
            float _1385 = ((_1071 - _1185) * 0.903090000152587890625f) / ((_389 - _1185) * 0.3010300099849700927734375f);
            uint _1386 = uint(int(_1385));
            float _1388 = _1385 - float(int(_1386));
            uint _1391 = _1386 + 1u;
            float _1398 = _36[_1386] * 0.5f;
            frontier_phi_70_69_ladder_76_ladder = dot(float3(_1388 * _1388, _1388, 1.0f), float3(mad(_36[_1386 + 2u], 0.5f, mad(_36[_1391], -1.0f, _1398)), _36[_1391] - _36[_1386], mad(_36[_1391], 0.5f, _1398)));
          } else {
            frontier_phi_70_69_ladder_76_ladder = _400 - (_1071 * 0.060206003487110137939453125f);
          }
          frontier_phi_70_69_ladder = frontier_phi_70_69_ladder_76_ladder;
        }
        _1189 = frontier_phi_70_69_ladder;
      } else {
        _1189 = _373;
      }
      float _1196 = _12_m0[11u].y - _12_m0[11u].x;
      float _1197 = (exp2(_820 * 3.3219280242919921875f) - _12_m0[11u].x) / _1196;
      float _1199 = (exp2(_1064 * 3.3219280242919921875f) - _12_m0[11u].x) / _1196;
      float _1201 = (exp2(_1189 * 3.3219280242919921875f) - _12_m0[11u].x) / _1196;
      float _1204 = mad(0.1561876833438873291015625f, _1201, mad(0.1340042054653167724609375f, _1199, _1197 * 0.662454187870025634765625f));
      float _1207 = mad(0.053689517080783843994140625f, _1201, mad(0.674081742763519287109375f, _1199, _1197 * 0.272228717803955078125f));
      float _1210 = mad(1.01033914089202880859375f, _1201, mad(0.0040607335977256298065185546875f, _1199, _1197 * (-0.0055746496655046939849853515625f)));
      float _1223 = min(max(mad(-0.23642469942569732666015625f, _1210, mad(-0.324803292751312255859375f, _1207, _1204 * 1.6410233974456787109375f)), 0.0f), 1.0f);
      float _1224 = min(max(mad(0.016756348311901092529296875f, _1210, mad(1.6153316497802734375f, _1207, _1204 * (-0.663662850856781005859375f))), 0.0f), 1.0f);
      float _1225 = min(max(mad(0.98839485645294189453125f, _1210, mad(-0.008284442126750946044921875f, _1207, _1204 * 0.01172189414501190185546875f)), 0.0f), 1.0f);
      float _1228 = mad(0.1561876833438873291015625f, _1225, mad(0.1340042054653167724609375f, _1224, _1223 * 0.662454187870025634765625f));
      float _1231 = mad(0.053689517080783843994140625f, _1225, mad(0.674081742763519287109375f, _1224, _1223 * 0.272228717803955078125f));
      float _1234 = mad(1.01033914089202880859375f, _1225, mad(0.0040607335977256298065185546875f, _1224, _1223 * (-0.0055746496655046939849853515625f)));
      float _1256 = min(max(min(max(mad(-0.23642469942569732666015625f, _1234, mad(-0.324803292751312255859375f, _1231, _1228 * 1.6410233974456787109375f)), 0.0f), 65535.0f) * _12_m0[11u].y, 0.0f), 65535.0f);
      float _1257 = min(max(min(max(mad(0.016756348311901092529296875f, _1234, mad(1.6153316497802734375f, _1231, _1228 * (-0.663662850856781005859375f))), 0.0f), 65535.0f) * _12_m0[11u].y, 0.0f), 65535.0f);
      float _1258 = min(max(min(max(mad(0.98839485645294189453125f, _1234, mad(-0.008284442126750946044921875f, _1231, _1228 * 0.01172189414501190185546875f)), 0.0f), 65535.0f) * _12_m0[11u].y, 0.0f), 65535.0f);
      float _1277 = exp2(log2(mad(_65, _1258, mad(_60, _1257, _1256 * _55)) * 9.9999997473787516355514526367188e-05f) * 0.1593017578125f);
      float _1278 = exp2(log2(mad(_80, _1258, mad(_75, _1257, _1256 * _70)) * 9.9999997473787516355514526367188e-05f) * 0.1593017578125f);
      float _1279 = exp2(log2(mad(_95, _1258, mad(_90, _1257, _1256 * _85)) * 9.9999997473787516355514526367188e-05f) * 0.1593017578125f);
      frontier_phi_9_4_ladder = exp2(log2((1.0f / ((_1277 * 18.6875f) + 1.0f)) * ((_1277 * 18.8515625f) + 0.8359375f)) * 78.84375f);
      frontier_phi_9_4_ladder_1 = exp2(log2((1.0f / ((_1278 * 18.6875f) + 1.0f)) * ((_1278 * 18.8515625f) + 0.8359375f)) * 78.84375f);
      frontier_phi_9_4_ladder_2 = exp2(log2((1.0f / ((_1279 * 18.6875f) + 1.0f)) * ((_1279 * 18.8515625f) + 0.8359375f)) * 78.84375f);
    } else {
      frontier_phi_9_4_ladder = _40;
      frontier_phi_9_4_ladder_1 = _42;
      frontier_phi_9_4_ladder_2 = _44;
    }
    _473 = frontier_phi_9_4_ladder;
    _476 = frontier_phi_9_4_ladder_1;
    _479 = frontier_phi_9_4_ladder_2;
  }
  SV_Target.x = _473 * 0.95238101482391357421875f;
  SV_Target.y = _476 * 0.95238101482391357421875f;
  SV_Target.z = _479 * 0.95238101482391357421875f;
  SV_Target.w = 0.0f;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input) {
  gl_Layer = stage_input.gl_Layer;
  TEXCOORD = stage_input.TEXCOORD;
  frag_main();
  SPIRV_Cross_Output stage_output;
  stage_output.SV_Target = SV_Target;
  return stage_output;
}
