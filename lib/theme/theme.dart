import 'package:flutter/material.dart';

final theme = ThemeData(
  appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
    fontSize: 22,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  )),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
  useMaterial3: true,
  scaffoldBackgroundColor: Colors.white,
  listTileTheme: const ListTileThemeData(
    iconColor: Colors.grey,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodySmall: TextStyle(
        fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
  ),
);
