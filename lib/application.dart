import 'package:flutter/material.dart';
import 'themes.dart';
class Application extends StatefulWidget {

  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: light(context),
      darkTheme: dark(context),
      home: Container(),
    );
  }
}