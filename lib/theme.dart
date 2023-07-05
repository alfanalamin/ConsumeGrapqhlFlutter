import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';




class AppColors {
  //neutral
  static Color neutral900 = HexColor('#0F172A');
  static Color neutral800 = HexColor('#1E293B');
  static Color neutral700 = HexColor('#334155');
  static Color neutral600 = HexColor('#475569');
  static Color neutral500 = HexColor('#66748B');
  static Color neutral400 = HexColor('#94A3B8');
  static Color neutral300 = HexColor('#CBD5E1');
  static Color neutral200 = HexColor('#E3E8F0');
  static Color neutral100 = HexColor('#F1F5F9');
  static Color neutral50 = HexColor('#ECFFFD');
  static Color neutralWhite = HexColor('#FFFFFF');
  static Color neutralBlack = HexColor('#000000');

  //primary
  static Color primary900 = HexColor('#2C5E0C');
  static Color primary800 = HexColor('#3D7D14');
  static Color primary700 = HexColor('#548D1F');  
  static Color primary600 = HexColor('#6EA92E');
  static Color primary500 = HexColor('#8BC53F');
  static Color primary400 = HexColor('#B0DC6B');
  static Color primary300 = HexColor('#CCED8C');
  static Color primary200 = HexColor('#E4F9B5');
  static Color primary100 = HexColor('#F3FCD9');
  static Color primary50 = HexColor('#FBFFF0');

  //secondary
  static Color secondary900 = HexColor('#2C5E0C');
  static Color secondary800 = HexColor('#3D7214');
  static Color secondary700 = HexColor('#548D1F');
  static Color secondary600 = HexColor('#6EA92E');
  static Color secondary500 = HexColor('#8BC53F');
  static Color secondary400 = HexColor('#B0DC6B');
  static Color secondary300 = HexColor('#CCED8C');
  static Color secondary200 = HexColor('#E4F9B5');
  static Color secondary100 = HexColor('#F3FCD9');
  static Color secondary50 = HexColor('#FBFFF0');

  //tertiary
  static Color tertiary900 = HexColor('#831843');
  static Color tertiary800 = HexColor('#9d174d');
  static Color tertiary700 = HexColor('#be185d');
  static Color tertiary600 = HexColor('#db2777');
  static Color tertiary500 = HexColor('#ec4899');
  static Color tertiary400 = HexColor('#f472b6');
  static Color tertiary300 = HexColor('#f9a8d4');
  static Color tertiary200 = HexColor('#fbcfe8');
  static Color tertiary100 = HexColor('#fce7f3');
  static Color tertiary50 = HexColor('#fdf2f8');

  //danger
  static Color danger900 = HexColor('#581C87');
  static Color danger800 = HexColor('#6B21A8');
  static Color danger700 = HexColor('#7E22CE');
  static Color danger600 = HexColor('#9333EA');
  static Color danger500 = HexColor('#A855F7');
  static Color danger400 = HexColor('#C084FC');
  static Color danger300 = HexColor('#D8B4FE');
  static Color danger200 = HexColor('#E9D5FF');
  static Color danger100 = HexColor('#F3E8FF');
  static Color danger50 = HexColor('#FAF5FF');

  //warning
  static Color warning900 = HexColor('#581C87');
  static Color warning800 = HexColor('#6B21A8');
  static Color warning700 = HexColor('#7E22CE');
  static Color warning600 = HexColor('#9333EA');
  static Color warning500 = HexColor('#A855F7');
  static Color warning400 = HexColor('#C084FC');
  static Color warning300 = HexColor('#D8B4FE');
  static Color warning200 = HexColor('#E9D5FF');
  static Color warning100 = HexColor('#F3E8FF');
  static Color warning50 = HexColor('#FAF5FF');

  //orange
  static Color orange900 = HexColor('#7C2D12');
  static Color orange800 = HexColor('#9A3412');
  static Color orange700 = HexColor('#C2410C');
  static Color orange600 = HexColor('#EA580C');
  static Color orange500 = HexColor('#F97316');
  static Color orange400 = HexColor('#FB923C');
  static Color orange300 = HexColor('#FDBA74');
  static Color orange200 = HexColor('#FED7AA');
  static Color orange100 = HexColor('#FFEDD5');
  static Color orange50 = HexColor('#FFF7ED');

  //info
  static Color info900 = HexColor('#0C4A6E');
  static Color info800 = HexColor('#075985');
  static Color info700 = HexColor('#0369a1');
  static Color info600 = HexColor('#0284C7');
  static Color info500 = HexColor('#0EA5E9');
  static Color info400 = HexColor('#38BDF8');
  static Color info300 = HexColor('#7DD3FC');
  static Color info200 = HexColor('#BAE6FD');
  static Color info100 = HexColor('#E0F2FE');
  static Color info50 = HexColor('#F0F9FF');

  //success
  static Color success900 = HexColor('#14532D');
  static Color success800 = HexColor('#166534');
  static Color success700 = HexColor('#15803D');
  static Color success600 = HexColor('#16A34A');
  static Color success500 = HexColor('#22C55E');
  static Color success400 = HexColor('#4ADE80');
  static Color success300 = HexColor('#86EFAC');
  static Color success200 = HexColor('#BBF7D0');
  static Color success100 = HexColor('#DCFCE7');
  static Color success50 = HexColor('#F0FDF4');
}

class Typography {
  static TextStyle title1 = GoogleFonts.inter(
    fontSize: 48,
    height: 56,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );

  static TextStyle title2 = GoogleFonts.inter(
    fontSize: 32,
    height: 36,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );

  static TextStyle title3 = GoogleFonts.inter(
    fontSize: 24,
    height: 28,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );

  static TextStyle large = GoogleFonts.inter(
    fontSize: 18,
    height: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );  

  static TextStyle large1 = GoogleFonts.inter(
    fontSize: 18,
    height: 20,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );  

  static TextStyle large2 = GoogleFonts.inter(
    fontSize: 18,
    height: 20,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );  

  static TextStyle regular = GoogleFonts.inter(
    fontSize: 16,
    height: 16,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );

  static TextStyle regular1 = GoogleFonts.inter(
    fontSize: 16,
    height: 16,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );

  static TextStyle regular2 = GoogleFonts.inter(
    fontSize: 16,
    height: 16,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );

  static TextStyle small = GoogleFonts.inter(
    fontSize: 14,
    height: 14,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );

  static TextStyle small1 = GoogleFonts.inter(
    fontSize: 14,
    height: 14,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );

  static TextStyle small2 = GoogleFonts.inter(
    fontSize: 14,
    height: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );
  
  static TextStyle xsmall = GoogleFonts.inter(
    fontSize: 12,
    height: 12,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );

  static TextStyle xsmall1 = GoogleFonts.inter(
    fontSize: 12,
    height: 12,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );

  static TextStyle xsmall2 = GoogleFonts.inter(
    fontSize: 12,
    height: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );

  static TextStyle tiny = GoogleFonts.inter(
    fontSize: 10,
    height: 10,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );
  
  static TextStyle tiny1 = GoogleFonts.inter(
    fontSize: 10,
    height: 10,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );
  
  static TextStyle tiny2 = GoogleFonts.inter(
    fontSize: 10,
    height: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    color: AppColors.neutral900,
  );

}
 