import 'package:flutter/material.dart';

import 'ui/screens/base_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XLO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.purple,
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.orange),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(elevation: 0),
      ),
      home: BasePage(),
    );
  }
}
