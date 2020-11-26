import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_builder_pattern/observers/ui_provider.dart';
import 'package:restaurant_builder_pattern/ui/main_screen.dart';

class TheRestaurantWebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ButtonState(),
      child: MaterialApp(
        title: 'The Restaurant',
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}

// Constants

Color kDarkGreyColor = Color(0xffe4b71d);

TextStyle kTopBarTextStyle = TextStyle(
    fontFamily: 'CM Sans Serif',
    fontSize: 24,
    fontWeight: FontWeight.w200,
    color: kDarkGreyColor
);