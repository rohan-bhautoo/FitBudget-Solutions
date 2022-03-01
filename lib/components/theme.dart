import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.black,
    fontFamily: "Fredoka",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.black,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    iconTheme: const IconThemeData(
      color: Color.fromARGB(255, 224, 224, 224),
    ),
    toolbarTextStyle: const TextTheme(
      headline6: TextStyle(
        color: kTextColor,
        fontSize: 20,
      ),
    ).bodyText2,
    titleTextStyle: const TextTheme(
      headline6: TextStyle(
        color: kTextColor,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ).headline6,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}
