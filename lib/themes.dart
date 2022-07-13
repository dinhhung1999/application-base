import 'package:flutter/material.dart';

ThemeData light(BuildContext context) {
  return ThemeData.light().copyWith(
      // primaryColor: const Color(0xffD10000),
      // accentColor: const Color(0xffff5c00),
      // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //     backgroundColor: Color(0xffe5e5e5),
      //     selectedLabelStyle: TextStyle(color: Color(0xffb00000))),
      // accentColorBrightness: Brightness.dark,
      // toggleableActiveColor: Colors.red,
      // bottomAppBarColor: const Color(0xffe5e5e5),
      // primaryColorBrightness: Brightness.light,
      // primaryColorDark: Colors.black87,
      // primaryIconTheme: const IconThemeData(color: Colors.white),
      // brightness: Brightness.light,
      // cardColor: Colors.white,
      // backgroundColor: Colors.grey[200],
      // dialogBackgroundColor: Colors.white,
      // scaffoldBackgroundColor: const Color(0xfff6f6f6),
      // colorScheme: const ColorScheme.light(onPrimary: Colors.black),
      // sliderTheme: SliderTheme.of(context).copyWith(
      //   activeTrackColor: const Color(0xff3f414e),
      //   inactiveTrackColor: const Color(0xffa0a3b1),
      //   trackHeight: 0.5,
      //   thumbColor: const Color(0xff3f414e),
      //   thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8.0),
      //   overlayColor: Colors.purple.withAlpha(32),
      //   overlayShape: const RoundSliderOverlayShape(overlayRadius: 14.0),
      // ),
      // cardTheme: CardTheme(
      //     elevation: 5,
      //     margin: const EdgeInsets.all(0),
      //     shadowColor: const Color(0xffe5e5e5),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(borderRadius12),
      //     ),
      //     color: Colors.white),
      // appBarTheme: AppBarTheme(
      //     backgroundColor: const Color(0xffD10000),
      //     iconTheme: const IconThemeData(color: Colors.white),
      //     centerTitle: false,
      //     titleTextStyle: Theme.of(context).textTheme.headline6!.copyWith(
      //         color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal),
      //     elevation: 0),
      // textTheme: TextTheme(
      //     button: ThemeData.light().textTheme.button!.copyWith(
      //         color: ColorConstants.textColorBlack,
      //         fontSize: 16,
      //         fontWeight: FontWeight.w500,
      //         fontFamily: 'SFProDisplay'
      //       // da dung
      //     ),
      //     caption: ThemeData.light().textTheme.caption!.copyWith(
      //         color: ColorConstants.textColorBlack,
      //         fontSize: 12,
      //         fontWeight: FontWeight.w600,
      //         fontFamily: 'SFProDisplay'),
      //     headline6: ThemeData.light().textTheme.headline6!.copyWith(
      //         color: const Color(0xff212121),
      //         fontSize: 24,
      //         fontWeight: FontWeight.w600,
      //         fontFamily: 'SFProDisplay'
      //       //used
      //     ),
      //     headline5: ThemeData.light().textTheme.headline5!.copyWith(
      //         color: const Color(0xff212121),
      //         fontSize: 22,
      //         fontWeight: FontWeight.bold,
      //         fontFamily: 'SFProDisplay'
      //       //used
      //     ),
      //     headline4: ThemeData.light().textTheme.headline4!.copyWith(
      //         color: const Color(0xff212121),
      //         fontSize: 22,
      //         fontWeight: FontWeight.bold,
      //         fontFamily: 'SFProDisplay'),
      //     headline3: ThemeData.light().textTheme.headline3!.copyWith(
      //         color: ColorConstants.textColorBlack,
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //         fontFamily: 'SFProDisplay'),
      //     headline2: ThemeData.light().textTheme.headline2!.copyWith(
      //         color: const Color(0xff212121),
      //         fontSize: 26,
      //         fontWeight: FontWeight.bold,
      //         fontFamily: 'SFProDisplay'),
      //     headline1: ThemeData.light().textTheme.headline1!.copyWith(
      //         color: const Color(0xff212121),
      //         fontSize: 36,
      //         fontWeight: FontWeight.bold,
      //         fontFamily: 'SFProDisplay'),
      //     subtitle1: ThemeData.light().textTheme.subtitle1!.copyWith(
      //         color: const Color(0xff212121),
      //         fontSize: 15,
      //         fontWeight: FontWeight.w400,
      //         fontFamily: 'SFProDisplay'
      //       //da dung
      //     ),
      //     subtitle2: ThemeData.light().textTheme.subtitle2!.copyWith(
      //         color: const Color(0xff212121),
      //         fontSize: 14,
      //         fontWeight: FontWeight.w600,
      //         fontFamily: 'SFProDisplay'),
      //     bodyText2: ThemeData.light().textTheme.bodyText2!.copyWith(
      //         fontSize: 14,
      //         color: ColorConstants.textColorBlack,
      //         fontWeight: FontWeight.w500,
      //         fontFamily: 'SFProDisplay'),
      //     bodyText1: ThemeData.light().textTheme.bodyText1!.copyWith(
      //         color: ColorConstants.textColorBlack,
      //         fontSize: 16,
      //         fontWeight: FontWeight.w500,
      //         fontFamily: 'SFProDisplay')),
      // dividerTheme: const DividerThemeData(
      //   thickness: 1,
      //   color: Color(0xffe0e0e0),
      // ),
      // inputDecorationTheme: InputDecorationTheme(
      //   prefixStyle: const TextStyle(color: Colors.black),
      //   hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
      //       fontWeight: FontWeight.normal, color: const Color(0xffc4c4c4)),
      //   labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
      //       fontWeight: FontWeight.normal, color: const Color(0xffc4c4c4)),
      //   // floatingLabelBehavior: FloatingLabelBehavior.always,
      //   suffixStyle: const TextStyle(color: Colors.black),
      //   errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
      //   contentPadding:
      //   const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      //   filled: true,
      //   fillColor: Colors.white,
      //   border: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(borderRadius12),
      //     borderSide: const BorderSide(color: Color(0xffe8e8e8), width: 1),
      //   ),
      //   enabledBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(borderRadius12),
      //     borderSide: const BorderSide(color: Color(0xffa8a8a8), width: 1),
      //   ),
      //   focusedBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(borderRadius12),
      //     borderSide: const BorderSide(color: Color(0xffD10000), width: 1),
      //   ),
      //   disabledBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(borderRadius12),
      //     borderSide: const BorderSide(color: Color(0xffe8e8e8), width: 1),
      //   ),
      //   errorBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(borderRadius12),
      //     borderSide: const BorderSide(color: Colors.red, width: 1),
      //   ),
      // ),
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ElevatedButton.styleFrom(
      //       minimumSize: const Size(double.infinity, 48),
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(borderRadius12),
      //           side: const BorderSide(color: Colors.transparent)),
      //       primary: const Color(0xffD10000),
      //       elevation: 0),
      // )
  );
}
ThemeData dark(BuildContext context) {
  return ThemeData.dark();
}