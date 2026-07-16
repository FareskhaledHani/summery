import 'package:flutter/material.dart';

abstract final class AppColors {
  // === MAIN COLORS ===
  static const Color primary = Color(0xFF4CA0C4);
  static const Color secondary = Color(0xFF24292E);
  static const Color secondary50 = Color(0xFF41ABE7);
  static const Color neutral500 = Color(0xFF64748B);
  static const Color success = Color(0xFF00CE23);
  static const Color success500 = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFF19920);
  static const Color colorMain = Color(0xff02A9EB);
  static const Color azureBlue = Color(0xFF0073E6);
  static const Color lightSkyBlue = Color(0xFFCCEEF9);
  static const Color deepIndigoBlue = Color(0xFF2D388A);
  static const Color skyBlueLight = Color(0xFFC8DFF6);
  static const Color mediumBlue = Color(0xFF509EEC);
  static const Color black22 = Color(0xFF031321);
  static const Color coolLightGray2 = Color(0xFFE3E5ED);
  static const Color mediumBlueGray = Color(0xFF9DA0A6);
  static const Color warmRoseRed = Color(0xFFD85D63);
  static const Color veryLightBlueGray = Color(0xFFF5F6FA);
  static const Color paleBlueGray = Color(0xFFD4D7E3);
  static const Color mediumGray = Color(0xFF747474);
  static const Color mediumGray1 = Color(0xFF82949F);
  static const Color lightGrayNeutral = Color(0xFFCFCFCF);
  static const Color almostWhiteBlue = Color(0xFFFAFBFC);
  static const Color lightWarmGold = Color(0xFFF9CD7B);
  static const Color deepRoseRed = Color(0xFFCB0041);
  static const Color deepRoseRed2 = Color(0xFFD94C49);
  static const Color customBrown = Color(0xFFA17733);
  static const Color customGreen = Color(0xFF00A76F);
  static const Color customPriple = Color(0xFFCD60DB);
  static const Color customGrey = Color(0xFF71727A);
  static const Color customGrey2 = Color(0xFF637381);
  static const Color lightBlueGray2 = Color(0xFFE1E4EB);
  static const Color softPinkLight = Color(0xFFFEF1F2);
  static const Color dustyPink = Color(0xFFDDB1B4);
  static const Color mediumBrightBlue = Color(0xFF5CA5EF);
  static const Color veryLightSkyBlue = Color(0xFFE5F1FC);
  static const Color goldenOrange = Color(0xFFF5B132);
  static const Color goldenOrange2 = Color(0xFFFFD0A3);
  static const Color goldenOrange3 = Color(0xFFFFDFC1);
  static const Color transparentBlue = Color(0xB30073E6);
  static const Color transparentBlue2 = Color(0xff0073E6);
  static const Color darkBlueGray3 = Color(0xFF23252C);
  static const Color switchMainColor = Color(0xFF4CA771);
  static const Color softLightPink = Color(0xFFFDEEEE);
  static const Color coralPink = Color(0xFFF48C8A);

  // === BASIC COLORS ===
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color darkGray = Color(0xFF222222);
  static const Color gunmetal = Color(0xFF24293E);
  static const Color blueGrayDark = Color(0xFF5B636F);
  static const Color offWhiteSoft = Color(0xFFFEFFFD);
  static const Color transparent = Color(0x00000000);
  static const Color red = Color(0xFFE50000);
  static const Color roseRed = Color(0xE5D94A5C);
  static const Color roseRed1 = Color(0xE5D94A5C);
  static const Color lightCoralRed = Color(0xFFFF686C);
  static const Color lightCoralRed2 = Color(0xFFFEE1E0);
  static const Color lightBlueGray1 = Color(0xFFE6E9F2);
  static const Color softSkyBlue = Color(0xFFCCE3FA);
  static const Color lightOliveGreen = Color(0xFFB0BA72);
  static const Color slateBlue = Color(0xFF48728D);
  static const Color tealGreen = Color(0xFF449A7F);
  static const Color mutedRose = Color(0xFFA76363);

  // === BACKGROUND COLORS ===
  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color cardBackground = Color(0xFFF6FAFD);

  // === TEXT COLORS ===
  static const Color textPrimary = Color(0xFF191D31);
  static const Color textSecondary = darkGray400;

  // === BORDER COLORS ===
  static const Color border = lightGray21;
  static const Color borderLight = lightGray8;

  // === GRAY COLORS (Light to Dark) ===
  static const Color lightGray1 = Color(0xFFFCFCFE);
  static const Color lightGray2 = Color(0xFFFBFBFC);
  static const Color lightGray3 = Color(0xFFFAFAFA);
  static const Color lightGray4 = Color(0xFFF9F9F9);
  static const Color lightGray5 = Color(0xFFF6F6F6);
  static const Color lightGray6 = Color(0xFFF5F5F5);
  static const Color lightGray7 = Color(0xFFF4F6F9);
  static const Color lightGray8 = Color(0xFFF3F3F3);
  static const Color lightGray9 = Color(0xFFF2F2F7);
  static const Color lightGray10 = Color(0xFFF2F2F2);
  static const Color lightGray11 = Color(0xFFF1F1F1);
  static const Color lightGray12 = Color(0xFFF0F0F0);
  static const Color lightGray13 = Color(0xFFEFEFEF);
  static const Color lightGray14 = Color(0xFFEEEEEE);
  static const Color lightGray15 = Color(0xFFECECEC);
  static const Color lightGray16 = Color(0xFFEBEEF2);
  static const Color lightGray17 = Color(0xFFE9E9E9);
  static const Color lightGray18 = Color(0xFFE4E4E4);
  static const Color lightGray19 = Color(0xFFE3E3E3);
  static const Color lightGray20 = Color(0xFFD9D9D9);
  static const Color lightGray21 = Color(0xFFD8D8DE);
  static const Color lightGray22 = Color(0xFFD5D5D5);
  static const Color lightGray23 = Color(0xFFD1D5DB);
  static const Color lightGray24 = Color(0xFFD0D5DD);
  static const Color lightGray25 = Color(0xFFCECECE);
  static const Color lightGray26 = Color(0xFFCDC7B9);
  static const Color lightGray27 = Color(0xFFCACACA);
  static const Color lightGray28 = Color(0xFFC8C8C8);
  static const Color lightGray29 = Color(0xFFC0C0C0);
  static const Color lightGray30 = Color(0xFFB6B6B6);
  static const Color lightGray31 = Color(0xFFB4B4B4);
  static const Color lightGray32 = Color(0xFFADB3BC);
  static const Color lightGray33 = Color(0xFFABABAB);
  static const Color lightGray34 = Color(0xFFA29F9D);
  static const Color lightGray35 = Color(0xFFA2A2A3);
  static const Color lightGray36 = Color(0xFF999999);
  static const Color lightGray37 = Color(0xFF8B8D91);
  static const Color almostWhite = Color(0xFFFBFBFB);
  static const Color coolLightGray = Color(0xFFDEDEE8);
  static const Color steelBlue = Color(0xFF446175);
  static const Color softWhite = Color(0xFFFCFCFC);

  // === DARK GRAYS ===
  static const Color darkGray100 = Color(0xFF8B8B8B);
  static const Color darkGray200 = Color(0xFF878787);
  static const Color darkGray300 = Color(0xFF818181);
  static const Color darkGray400 = Color(0xFF797979);
  static const Color darkGray500 = Color(0xFF757788);
  static const Color darkGray600 = Color(0xFF757575);
  static const Color darkGray700 = Color(0xFF6D7580);
  static const Color darkGray800 = Color(0xFF6D6968);
  static const Color darkGray900 = Color(0xFF696974);
  static const Color darkGray950 = Color(0xFF666666);
  static const Color darkGray960 = Color(0xFF696969);
  static const Color darkGray970 = Color(0xFF7F8490);

  static const Color lightBlueGray = Color(0xFFE1E6EA);

  // === VERY DARK GRAYS ===
  static const Color veryDarkGray100 = Color(0xFF655F68);
  static const Color veryDarkGray = Color(0xFF292D32);

  static const Color veryDarkGray200 = Color(0xFF616161);
  static const Color veryDarkGray300 = Color(0xFF5D5D5D);
  static const Color veryDarkGray400 = Color(0xFF595959);
  static const Color veryDarkGray500 = Color(0xFF575B6E);
  static const Color veryDarkGray600 = Color(0xFF535353);
  static const Color veryDarkGray700 = Color(0xFF50555C);
  static const Color veryDarkGray800 = Color(0xFF505256);
  static const Color veryDarkGray900 = Color(0xFF4F5159);
  static const Color veryDarkGray1000 = Color(0xFF272727);
  static const Color opalGray = Color(0xFFACB9B5);
  static const Color silverGray = Color(0xFFB0B0B0);
  static const Color lightGrayCyan = Color(0xFFC9CFCE);
  static const Color charcoalGray = Color(0xFF4B4B4B);
  static const Color softGray = Color(0xFFDADADA);
  static const Color slateGrayLigh = Color(0xFF8795AA);
  static const Color blueGrayMedium = Color(0xFF7586A1);
  static const Color darkBlueGray2 = Color(0xFF444D5A);
  static const Color darkBlue50 = Color(0xFFE8EBEE);
  static const Color lightBlueGray3 = Color(0xFFC5CCD5);
  static const Color softSkyBlue2 = Color(0xFF90BBD1);
  static const Color softSkyBlue3 = Color(0xFFB0DBED);

  // === ALMOST BLACK GRAYS ===
  static const Color almostBlack100 = Color(0xFF455A64);
  static const Color almostBlack200 = Color(0xFF444444);
  static const Color almostBlack300 = Color(0xFF3D3D3D);
  static const Color almostBlack400 = Color(0xFF25314C);
  static const Color almostBlack500 = Color(0xFF242424);
  static const Color almostBlack600 = Color(0xFF232323);
  static const Color almostBlack700 = Color(0xFF202244);
  static const Color almostBlack800 = Color(0xFF0F1621);
  static const Color almostBlack900 = Color(0xFF09101D);

  // === GREEN COLORS ===
  static const Color green50 = Color(0xFFE8F5E9);
  static const Color green100 = Color(0xFFB3FFD2);
  static const Color green200 = Color(0xFFB8E8BB);
  static const Color green300 = Color(0xFFA4F6AF);
  static const Color green400 = Color(0xFF94DC9A);
  static const Color green500 = Color(0xFF89E390);
  static const Color green600 = Color(0xFF89C763);
  static const Color green700 = Color(0xFF82C887);
  static const Color green800 = Color(0xFF8BD390);
  static const Color green900 = Color(0xFF91DC5A);

  // === BRIGHT GREEN ===
  static const Color brightGreen100 = Color(0xFFB6E892);
  static const Color brightGreen200 = Color(0xFFB8ED35);
  static const Color brightGreen300 = Color(0xFF6DC82A);
  static const Color brightGreen400 = Color(0xFF85C800);
  static const Color brightGreen500 = Color(0xFF97D302);
  static const Color brightGreen600 = Color(0xFF719E02);
  static const Color brightGreen700 = Color(0xFF6BA502);
  static const Color brightGreen800 = Color(0xFF5EAC24);
  static const Color brightGreen900 = Color(0xFF508902);
  static const Color mintCreamGreen = Color(0xFFE8F2EF);

  // === DARK GREEN ===
  static const Color darkGreen100 = Color(0xFF4E901E);
  static const Color darkGreen200 = Color(0xFF47821C);
  static const Color darkGreen300 = Color(0xFF4DC556);
  static const Color darkGreen400 = Color(0xFF3BB54A);
  static const Color darkGreen500 = Color(0xFF299E10);
  static const Color darkGreen600 = Color(0xFF226702);
  static const Color darkGreen700 = Color(0xFF168800);
  static const Color darkGreen800 = Color(0xFF177700);

  // === FOREST GREEN ===
  static const Color forestGreen100 = Color(0xFF126B00);
  static const Color forestGreen200 = Color(0xFF0E9347);
  static const Color forestGreen300 = Color(0xFF0D8944);
  static const Color forestGreen400 = Color(0xFF02A437);
  static const Color forestGreen500 = Color(0xFF008906);
  static const Color forestGreen600 = Color(0xFF00CE23);
  static const Color forestGreen700 = Color(0xFF00AC0D);
  static const Color forestGreen800 = Color(0xFF025602);
  static const Color forestGreen900 = Color(0xFF016601);
  static const Color forestGreen950 = Color(0xFF007700);

  // === ORANGE COLORS ===
  static const Color orange50 = Color(0xFFFFEAD6);
  static const Color orange100 = Color(0xFFFFDBAC);
  static const Color orange200 = Color(0xFFFFD084);
  static const Color orange300 = Color(0xFFFFA654);
  static const Color orange400 = Color(0xFFFFB563);
  static const Color orange500 = Color(0xFFF6B545);
  static const Color orange600 = Color(0xFFF79E1B);
  static const Color orange700 = Color(0xFFF19920);
  static const Color orange800 = Color(0xFFE78825);
  static const Color orange900 = Color(0xFFE78244);
  static const Color softPeach = Color(0xFFFFF5EB);
  static const Color goldenOrange1 = Color(0xFFFF9938);

  // === ORANGE WARM ===
  static const Color orangeWarm100 = Color(0xFFE0AC69);
  static const Color orangeWarm200 = Color(0xFFFF7B29);
  static const Color orangeWarm300 = Color(0xFFFF5D03);
  static const Color orangeWarm400 = Color(0xFFFF5F00);
  static const Color orangeWarm500 = Color(0xFFCC9A62);
  static const Color orangeWarm600 = Color(0xFFCC9B66);
  static const Color orangeWarm700 = Color(0xFFB65416);

  // === YELLOW COLORS ===
  static const Color yellow100 = Color(0xFFFFE27A);
  static const Color yellow200 = Color(0xFFFFE262);
  static const Color yellow300 = Color(0xFFFFCA5D);
  static const Color yellow400 = Color(0xFFFFCB5B);
  static const Color yellow500 = Color(0xFFFDDD45);
  static const Color yellow600 = Color(0xFFFDC83A);
  static const Color yellow700 = Color(0xFFF6D14F);
  static const Color yellow800 = Color(0xFFF1C27D);
  static const Color yellow900 = Color(0xFF876A1E);
  static const Color yellowStar = Color(0xFFFFC300);
  static const Color goldenrod = Color(0xFFC9A23F);
  static const Color warmGold1 = Color(0xFFD0AD57);
  static const Color sandGold1 = Color(0xFFD4B565);

  // === RED COLORS ===
  static const Color red100 = Color(0xFFF7B6AD);
  static const Color red200 = Color(0xFFE39382);
  static const Color red300 = Color(0xFFE15C63);
  static const Color red400 = Color(0xFFDFA3A5);
  static const Color red500 = Color(0xFFE50000);
  static const Color red600 = Color(0xFFEB001B);
  static const Color red700 = Color(0xFFFF1F1F);
  static const Color red800 = Color(0xFFDC5757);
  static const Color red900 = Color(0xFFD14B62);

  // === DARK RED ===
  static const Color darkRed100 = Color(0xFFCB0303);
  static const Color darkRed200 = Color(0xFFAA1313);

  // === BLUE COLORS ===
  static const Color blue50 = Color(0xFFE2EBFF);
  static const Color blue60 = Color(0xFF283356);
  static const Color blue100 = Color(0xFFF6FAFD);
  static const Color gradiantDeepBlue = Color(0xFF222B59);
  static const Color foundationBlue100 = Color(0xFFCAE7F3);
  static const Color blue200 = Color(0xFF369DF7);
  static const Color blue500 = Color(0xFF1498B7);
  static const Color blue600 = Color(0xFF133BB7);
  static const Color blue700 = Color(0xFF1EA6BC);
  static const Color blue800 = Color(0xFF666EFA);
  static const Color blue900 = Color(0xFF0742A6);
  static const Color charcoalBlue = Color(0xFF1C1D22);
  static const Color darkNavy = Color(0xFF111827);
  static const Color darkNavyBlue = Color(0xFF283146);
  static const Color deepTealBlue = Color(0xFF153A52);
  static const Color veryLightSkyBlue2 = Color(0xFFEEF7FB);
  static const Color skyBlue = Color(0xFF54B0D7);
  static const Color darkBlueGray = Color(0xFF4D505E);

  // === BROWN COLORS ===
  static const Color brown100 = Color(0xFFFFEAD6);
  static const Color brown200 = Color(0xFFFFDBAC);
  static const Color brown300 = Color(0xFFF1C27D);
  static const Color brown400 = Color(0xFFE0AC69);
  static const Color brown500 = Color(0xFFDC7F69);
  static const Color brown600 = Color(0xFFD46A50);
  static const Color brown700 = Color(0xFFCC9A62);
  static const Color brown800 = Color(0xFFCC9B66);
  static const Color brown900 = Color(0xFF604533);

  // === DARK BROWN ===
  static const Color darkBrown100 = Color(0xFF543927);
  static const Color primaryBlack = Color(0xFF514844);

  // === SPECIAL COLORS ===
  static const Color teal100 = Color(0xFF2FE8BA);
  static const Color teal200 = Color(0xFF2FE8A7);
  static const Color teal250 = Color(0xFF22C55E);
  static const Color teal300 = Color(0xFF1EA6BC);
  static const Color teal400 = Color(0xFF1498B7);

  static const Color purple = Color(0xFF666EFA);

  static const Color mint100 = Color(0xFFB3FFD2);
  static const Color mint200 = Color(0xFFA4F6AF);
  static const Color mint300 = Color(0xFF2FE8A7);

  static const Color coral100 = Color(0xFFE39382);
  static const Color coral200 = Color(0xFFE9A999);

  static const Color peach100 = Color(0xFFF7B6AD);
  static const Color peach200 = Color(0xFFDFA3A5);

  static const lightPrimaryBlack = Color(0xffA6A6A6);
  static const mainTextColor = Color(0xff212B36);
  static const textColor = Color.fromARGB(255, 93, 93, 93);
  static const textColor2 = Color(0xff575B6E);
  static const textColor3 = Color(0xff808080);
  static const appBarTitleColor = Color(0xff1F2024);
  static const blackColor = Colors.black;
  static const black01 = Color(0xff191D31);
  static const black02 = Color(0xff25314C);
  static const black50 = Color(0xffE7E8E9);
  static const black100 = Color(0xffB5B7BC);
  static const black200 = Color(0xff92959C);
  static const black300 = Color(0xff60646E);
  static const black400 = Color(0xff717171);
  static const black900 = Color(0xff070A10);
  static const whiteColor = Colors.white;
  static const grayColor = Colors.grey;
  static const gray1 = Color(0xffB5B5BE);
  static const textFieldFillColor = Color(0xffF6F7F8);
  static const errorColor = Colors.red;
  static const error500 = Color(0xffEF5350);
  static const error600 = Color(0xffD94C49);
  static const error700 = Color(0xffAA3B39);
  static const darkRed2 = Color(0xffDD1C1C);
  static const darkRed1 = Color(0xffFF383C);
  static const darkRed3 = Color(0xffAA3B39);
  static const mainBlack = Color(0xff242424);
  static const Color mediumBlueGray1 = Color(0xFF627B8B);
  static const Color warmAmber = Color(0xFFE88B33);

  //hintColor
  static const borderColor = Color(0xffD4D4D4);
  static const borderColor1 = Color(0xffD9E1F2);
  static const borderColor2 = Color(0xffCECECE);
  static const borderColor3 = Color(0xffF0F0F0);
  static const borderColor4 = Color(0xffEBEEF2);
  static const borderColor5 = Color(0xffCBCBCB);
  static const borderColor6 = Color(0xffF1F1F1);
  static const borderColor7 = Color(0xff595959);
  static const borderColor8 = Color(0xffB2B2B2);
  static const borderColor9 = Color(0xFFD2D2D2);
  static const borderColor10 = Color(0xFFD0D0D0);
  static const shadowColor1 = Color(0xffA7AEC1);
  static const Color shadowColor2 = Color(0xFFCCCCCC);
  static const Color shadowColor3 = Color(0xFF919EAB);
  static const Color shadowColor4 = Color(0xFF9C9B9B);
  static const linkedTextColor = Color(0xff447143);
  static const greenColor = Colors.green;
  static const greenChip = Color(0xff1B5E20);
  static const lightGreen = Color(0xff4DB56A);
  static const lightGreen2 = Color(0xff00A76F);

  static const Color grey = Color(0xffA29F9D);
  static const Color grey2 = Color(0xffF5F5F5);
  static const Color grey3 = Color(0xffD8D8DE);
  static const Color grey4 = Color(0xff8B8D91);
  static const Color grey5 = Color(0xffD3D3D3);
  static const Color grey6 = Color(0xffF9F9F9);
  static const Color grey7 = Color(0xffBDBDBD);
  static const Color grey8 = Color(0xff7E839A);
  static const Color grey9 = Color(0xffD9DCE5);
  static const Color grey10 = Color(0xff747474);
  static const Color grey11 = Color(0xff858A90);
  static const Color grey12 = Color(0xffE9E9EB);
  static const Color grey13 = Color(0xff757575);
  static const Color grey14 = Color(0xff2E2E2E);
  static const Color greyScafold = Color(0xffDBDBDB);
  static const Color greyScafold2 = Color(0xffF8F8F8);
  static const Color lightFillColor = Color(0xffF6F6F6);
  static const Color textFieldFocusBorderColor = Color(0xff00AB67);
  static const Color textFieldFocusFilleColor = Color(0x1A00AB67);
  static const Color lightGrey = Color(0xffF3F3F3);
  static const Color lightGrey1 = Color(0xffE5E5E5);
  static const Color lightGrey2 = Color(0xFFC2C1C2);
  static const Color lightGrey3 = Color(0xffB8BABA);
  static const Color lightGrey4 = Color(0xff999999);
  static const Color lightGrey5 = Color(0xffEFEFEF);
  static const Color lightGrey6 = Color(0xffEAEAEA);
  static const Color lightGrey7 = Color(0xff8F8F99);
  static const Color lightGrey8 = Color(0xffECECEC);
  static const Color lightGrey9 = Color(0xff8F8F99);
  static const Color lightGrey10 = Color(0xffD9D9D9);
  static const Color lightGrey11 = Color(0xffF8F9FA);
  static const Color lightGrey12 = Color(0xffF2F2F2);
  static const Color darkSlateGray = Color(0xFF60646E);
  static const Color darkSlateBlueGray = Color(0xFF414652);

  static const Color darkYellow = Color(0xffB78730);
  static const Color yellow = Color(0xffFCBB44);
  static const Color yellow2 = Color(0xffFCDD44);
  static const Color lightYellow = Color(0xfffff8ec);
  static const Color golden = Color(0xff936B29);
  static const Color lightGold = Color(0xffDED1BD);

  static const Color crismon = Color(0xffB3261E);

  static const Color terracotta = Color(0xff563029);

  static const Color textButtonColor = Color.fromARGB(255, 89, 160, 242);

  static const Color textcolor = Color.fromARGB(255, 80, 82, 86);
  static const Color textColor1 = Color(0xff333333);

  static const Color textcolor2 = Color.fromARGB(255, 93, 93, 93);
  static const Color error = Color(0xfff44336);
  static const Color textcolor3 = Color(0xff3C4043);
  static const Color textcolor4 = Color(0xff5D5D5D);
  static const Color textcolor5 = Color(0xff4E4E4E);
  static const Color textcolor6 = Color(0xff4B4B4B);
  static const Color textcolor7 = Color(0xff666666);
  static const Color textcolor8 = Color(0xff7F7F7F);
  static const Color textcolor9 = Color(0xff505256);
  static const Color textcolor10 = Color(0xff797979);
  static const Color textcolor11 = Color(0xff888888);
  static const Color textcolor12 = Color(0xff9CA3AF);
  static const Color dviderColor = Color(0xffE0E0E0);
  static const Color dviderColor2 = Color(0xffE9E9E9);
  static const Color blue = Color(0xff2B6DDD);
  static const Color blue2 = Color(0xff3986C5);
  static const Color blue3 = Color(0xffA2C4FC);
  static const Color lightBlueBorder = Color(0xffE2EBFF);
  static const Color messageColor = Color(0xff59A0F2);

  //! for video sdk
  static const Color primaryColor = Color.fromRGBO(5, 10, 14, 1);
  static const Color secondaryColor = Color.fromRGBO(43, 48, 52, 1);
  static const Color hoverColor = Color.fromRGBO(51, 50, 68, 1);
// static const Color black900 = Color.fromRGBO(5, 10, 14, 1);
  static const Color black800 = Color.fromRGBO(26, 28, 34, 1);
  static const Color black750 = Color.fromRGBO(32, 36, 39, 1);
  static const Color black700 = Color.fromRGBO(43, 48, 52, 1);
  static const Color black600 = Color.fromRGBO(64, 75, 83, 1);
  static const Color black500 = Color.fromRGBO(111, 118, 126, 1);
// static const Color black400 = Color.fromRGBO(154, 159, 165, 1);
// static const Color black300 = Color.fromRGBO(218, 218, 218, 1);
// static const Color black200 = Color.fromRGBO(239, 239, 239, 1);
// static const Color black100 = Color.fromRGBO(243, 243, 243, 1);
  static const Color textGray = Color.fromRGBO(154, 159, 156, 1);
  static const Color green = Color.fromRGBO(59, 165, 93, 1);
}
