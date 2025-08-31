import 'package:flutter/material.dart';

final colorList = <Color>[
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.brown,
  Colors.grey,
  Colors.black,
  Colors.white,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(selectedColor >= 0, 'must be greater than or equal to 0'),
      assert(
        selectedColor < colorList.length,
        'must be less than ${colorList.length}',
      );

  ThemeData getTheme() => ThemeData(
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(centerTitle: false),
  );
}
