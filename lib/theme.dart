import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// Colors
class AppColor {
  final Color value;

  AppColor(this.value);

  static AppColor fromHex(String hexColor) {
    return AppColor(HexColor(hexColor));
  }

  // neutral
  static AppColor neutral900 = AppColor.fromHex('#0F172A');
  static AppColor neutral800 = AppColor.fromHex('#1E293B');
  static AppColor neutral700 = AppColor.fromHex('#334155');
  static AppColor neutral600 = AppColor.fromHex('#475569');
  static AppColor neutral500 = AppColor.fromHex('#66748B');
  static AppColor neutral400 = AppColor.fromHex('#94A3B8');
  static AppColor neutral300 = AppColor.fromHex('#CBD5E1');
  static AppColor neutral200 = AppColor.fromHex('#E3E8F0');
  static AppColor neutral100 = AppColor.fromHex('#F1F5F9');
  static AppColor neutral50 = AppColor.fromHex('#FFFFFF');
  static AppColor neutralBlack = AppColor.fromHex('#000000');

  // primary
  static AppColor primary900 = AppColor.fromHex('#2C5E0C');
  static AppColor primary800 = AppColor.fromHex('#3D7D14');
  static AppColor primary700 = AppColor.fromHex('#548D1F');
  static AppColor primary600 = AppColor.fromHex('#6EA92E');
  static AppColor primary500 = AppColor.fromHex('#8FCA3A');
  static AppColor primary400 = AppColor.fromHex('#8BC53F');
  static AppColor primary300 = AppColor.fromHex('#CCED8C');
  static AppColor primary200 = AppColor.fromHex('#E4F9B5');
  static AppColor primary100 = AppColor.fromHex('#F3FCD9');
  static AppColor primary50 = AppColor.fromHex('#FBFFF0');

  // secondary
  static AppColor secondary900 = AppColor.fromHex('#2C5E0C');
  static AppColor secondary800 = AppColor.fromHex('#3D7214');
  static AppColor secondary700 = AppColor.fromHex('#548D1F');
  static AppColor secondary600 = AppColor.fromHex('#6EA92E');
  static AppColor secondary500 = AppColor.fromHex('#8BC53F');
  static AppColor secondary400 = AppColor.fromHex('#B0DC6B');
  static AppColor secondary300 = AppColor.fromHex('#CCED8C');
  static AppColor secondary200 = AppColor.fromHex('#E4F9B5');
  static AppColor secondary100 = AppColor.fromHex('#F3FCD9');
  static AppColor secondary50 = AppColor.fromHex('#FBFFF0');

  // tertiary
  static AppColor tertiary900 = AppColor.fromHex('#831843');
  static AppColor tertiary800 = AppColor.fromHex('#9d174d');
  static AppColor tertiary700 = AppColor.fromHex('#be185d');
  static AppColor tertiary600 = AppColor.fromHex('#db2777');
  static AppColor tertiary500 = AppColor.fromHex('#ec4899');
  static AppColor tertiary400 = AppColor.fromHex('#f472b6');
  static AppColor tertiary300 = AppColor.fromHex('#f9a8d4');
  static AppColor tertiary200 = AppColor.fromHex('#fbcfe8');
  static AppColor tertiary100 = AppColor.fromHex('#fce7f3');
  static AppColor tertiary50 = AppColor.fromHex('#fdf2f8');

  // danger
  static AppColor danger900 = AppColor.fromHex('#581C87');
  static AppColor danger800 = AppColor.fromHex('#6B21A8');
  static AppColor danger700 = AppColor.fromHex('#7E22CE');
  static AppColor danger600 = AppColor.fromHex('#9333EA');
  static AppColor danger500 = AppColor.fromHex('#A855F7');
  static AppColor danger400 = AppColor.fromHex('#C084FC');
  static AppColor danger300 = AppColor.fromHex('#D8B4FE');
  static AppColor danger200 = AppColor.fromHex('#E9D5FF');
  static AppColor danger100 = AppColor.fromHex('#F3E8FF');
  static AppColor danger50 = AppColor.fromHex('#FAF5FF');

  //warning
  static AppColor warning900 = AppColor.fromHex('#581C87');
  static AppColor warning800 = AppColor.fromHex('#6B21A8');
  static AppColor warning700 = AppColor.fromHex('#7E22CE');
  static AppColor warning600 = AppColor.fromHex('#9333EA');
  static AppColor warning500 = AppColor.fromHex('#A855F7');
  static AppColor warning400 = AppColor.fromHex('#C084FC');
  static AppColor warning300 = AppColor.fromHex('#D8B4FE');
  static AppColor warning200 = AppColor.fromHex('#E9D5FF');
  static AppColor warning100 = AppColor.fromHex('#F3E8FF');
  static AppColor warning50 = AppColor.fromHex('#FAF5FF');

  // orange
  static AppColor orange900 = AppColor.fromHex('#7C2D12');
  static AppColor orange800 = AppColor.fromHex('#9A3412');
  static AppColor orange700 = AppColor.fromHex('#C2410C');
  static AppColor orange600 = AppColor.fromHex('#EA580C');
  static AppColor orange500 = AppColor.fromHex('#F97316');
  static AppColor orange400 = AppColor.fromHex('#FB923C');
  static AppColor orange300 = AppColor.fromHex('#FDBA74');
  static AppColor orange200 = AppColor.fromHex('#FED7AA');
  static AppColor orange100 = AppColor.fromHex('#FFEDD5');
  static AppColor orange50 = AppColor.fromHex('#FFF7ED');

  // info
  static AppColor info900 = AppColor.fromHex('#0C4A6E');
  static AppColor info800 = AppColor.fromHex('#075985');
  static AppColor info700 = AppColor.fromHex('#0369a1');
  static AppColor info600 = AppColor.fromHex('#0284c7');
  static AppColor info500 = AppColor.fromHex('#0EA5E9');
  static AppColor info400 = AppColor.fromHex('#38BDF8');
  static AppColor info300 = AppColor.fromHex('#7DD3FC');
  static AppColor info200 = AppColor.fromHex('#BAE6FD');
  static AppColor info100 = AppColor.fromHex('#E0F2FE');
  static AppColor info50 = AppColor.fromHex('#F0F9FF');

  // success
  static AppColor success900 = AppColor.fromHex('#14532D');
  static AppColor success800 = AppColor.fromHex('#166534');
  static AppColor success700 = AppColor.fromHex('#15803D');
  static AppColor success600 = AppColor.fromHex('#16A34A');
  static AppColor success500 = AppColor.fromHex('#22C55E');
  static AppColor success400 = AppColor.fromHex('#4ADE80');
  static AppColor success300 = AppColor.fromHex('#86EFAC');
  static AppColor success200 = AppColor.fromHex('#BBF7D0');
  static AppColor success100 = AppColor.fromHex('#DCFCE7');
  static AppColor success50 = AppColor.fromHex('#F0FDF4');
}

class AppText {
  static TextStyle titleTextStyle = TextStyle(
    color: AppColor.neutral900.value,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'inter',
  );
  static const TextStyle largeTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'inter',
  );
  static TextStyle regularTextStyle = TextStyle(
    color: AppColor.neutral600.value,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'inter',
  );
  static  TextStyle smallTextStyle = TextStyle(
    fontSize: 14,
    color: AppColor.neutral500.value,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'inter',
  );
  static  TextStyle xsmallTextStyle = TextStyle(
    fontSize: 12,
    color: AppColor.neutral600.value,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'inter',
  );
  static  TextStyle tinyTextStyle = TextStyle(
    fontSize: 10,
    color: AppColor.neutral400.value,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontFamily: 'inter',
  );
}
