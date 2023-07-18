import 'package:flutter/material.dart';
import 'package:practice/uiScrens/ui.dart';

void main() => runApp(BMIcALCULATOR());

class BMIcALCULATOR extends StatelessWidget {
  const BMIcALCULATOR({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF000000),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF000000)),
      ),
      home: UI(),
    );
  }
}
