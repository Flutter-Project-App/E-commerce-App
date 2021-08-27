import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/gen/fonts.gen.dart';
import 'package:flutter_application/theme/constants.dart';
import 'package:flutter_application/theme/custom_theme_data.dart';
import 'package:flutter_application/theme/dynamic_theme_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'application.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicThemeWidget(
      customThemeData: CustomThemeData.light(),
      initThemeData: ThemeData.light().copyWith(
          primaryColor: Colors.white,
          colorScheme: const ColorScheme.light().copyWith(
              onPrimary: Colors.black87,
              secondary: Colors.redAccent,
              primary: Colors.white),
          textTheme: TextTheme(
            caption: ThemeData.light().textTheme.caption!.copyWith(
                color: mainColor,
                fontSize: 11,
                fontWeight: FontWeight.w600,
                fontFamily: FontFamily.metropolisThin
            ),
            button: ThemeData.light().textTheme.button!.copyWith(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.metropolisSemiBold
            ),
            headline1: ThemeData.light().textTheme.headline1!.copyWith(
                color: mainColor,
                fontSize: 34,
                fontWeight: FontWeight.w800,
                fontFamily: FontFamily.metropolisBold
            ),
            headline2: ThemeData.light().textTheme.headline2!.copyWith(
                color: mainColor,
                fontSize: 32,
                fontWeight: FontWeight.w800,
                fontFamily: FontFamily.metropolisBold
            ),
            headline3: ThemeData.light().textTheme.caption!.copyWith(
                color: mainColor,
                fontSize: 28,
                fontWeight: FontWeight.w800,
                fontFamily: FontFamily.metropolisBold
            ),
            headline4: ThemeData.light().textTheme.headline4!.copyWith(
                color: mainColor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: FontFamily.metropolisSemiBold
            ),
            headline5: ThemeData.light().textTheme.headline5!.copyWith(
                color: mainColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: FontFamily.metropolisSemiBold
            ),
            headline6: ThemeData.light().textTheme.headline6!.copyWith(
                color: mainColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: FontFamily.metropolisSemiBold
            ),
            subtitle1: ThemeData.light().textTheme.subtitle1!.copyWith(
                color: mainColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: FontFamily.metropolisSemiBold
            ),
            subtitle2: ThemeData.light().textTheme.subtitle2!.copyWith(
                color: mainColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: FontFamily.metropolisSemiBold
            ),
            bodyText1: ThemeData.light().textTheme.bodyText1!.copyWith(
                color: mainColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: FontFamily.metropolisBold
            ),
            bodyText2: ThemeData.light().textTheme.bodyText2!.copyWith(
                color: mainColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: FontFamily.metropolisSemiBold
            ),
          ),
          backgroundColor: backgroundColor,
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color: mainColor
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0
          ),
          tabBarTheme: TabBarTheme(
              indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(color: Colors.redAccent, width: 4)),
              labelColor: Colors.black87,
              labelStyle: GoogleFonts.quicksand()
                  .copyWith(color: Colors.black87, fontWeight: FontWeight.w800),
              unselectedLabelColor: Colors.black54,
              unselectedLabelStyle:
                  GoogleFonts.quicksand().copyWith(color: Colors.black54)),
          bottomAppBarColor: Colors.transparent),
      initLocale: const Locale('vi', 'VN'),
      child: Application(),
    );
  }
}
