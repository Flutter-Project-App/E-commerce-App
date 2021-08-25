import 'package:flutter/material.dart';
import 'package:flutter_application/pages/authentication/signup/sign_up_page.dart';
import 'package:flutter_application/theme/dynamic_theme_widget.dart';
import 'pages/main_page.dart';
import 'themes.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: DynamicTheme.of(context)!.themeData,
      darkTheme: dark(context),
      debugShowCheckedModeBanner: false,
      initialRoute: 'signup',
      routes: {'signup': (context) => const SignUpPage()
      },
    );
  }
}
