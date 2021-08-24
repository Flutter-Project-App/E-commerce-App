import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'custom_theme_data.dart';

class DynamicThemeWidget extends StatefulWidget {
  final Widget? child;
  final CustomThemeData? customThemeData;
  final ThemeData? initThemeData;
  final Locale? initLocale;

  const DynamicThemeWidget(
      {this.child, this.customThemeData, this.initThemeData, this.initLocale});

  @override
  _DynamicThemeWidgetState createState() => _DynamicThemeWidgetState();
}

class _DynamicThemeWidgetState extends State<DynamicThemeWidget> {
  late CustomThemeData _customColor;
  late ThemeData _themeData;
  late Locale _locale;

  ThemeData get themeData => _themeData;
  CustomThemeData get customColor => _customColor;
  Locale get locale => _locale;

  @override
  void initState() {
    super.initState();
    _customColor = widget.customThemeData!;
    _themeData = widget.initThemeData!;
    _locale = widget.initLocale!;
  }

  void changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  void changeTheme(ThemeData themeData, CustomThemeData customColor) {
    setState(() {
      _themeData = themeData;
      _customColor = customColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DynamicTheme(value: this, child: widget.child!);
  }
}

class DynamicTheme extends InheritedWidget {
  late final _DynamicThemeWidgetState value;

  ThemeData get themeData => value.themeData;
  CustomThemeData get customColor => value.customColor;
  Locale get locale => value.locale;

  void changeTheme(ThemeData themeData, CustomThemeData customColor) {
    value.changeTheme(themeData, customColor);
  }

  void changeLanguage(Locale locale) {
    value.changeLanguage(locale);
  }

  DynamicTheme({Key? key, required this.value, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static DynamicTheme? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DynamicTheme>();
  }
}
