import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  scaffoldBackgroundColor:const Color.fromARGB(255, 3, 3, 9),
  colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 255, 1)),
  dividerColor: Colors.white24,
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.white),
    elevation: 0,
    backgroundColor: Color.fromARGB(255, 3, 3, 9),
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
  ),
  useMaterial3: true,
  textTheme:  TextTheme(
    bodyMedium: const TextStyle( 
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      color: Colors.white.withOpacity(0.6),
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  ),
);