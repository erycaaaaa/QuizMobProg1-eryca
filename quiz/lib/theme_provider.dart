import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = themes[0];
  String _fontFamily = fonts[0];

  ThemeData get themeData => _themeData.copyWith(
        textTheme: GoogleFonts.getTextTheme(_fontFamily),
      );
  String get fontFamily => _fontFamily;

  void setTheme(int index) {
    _themeData = themes[index];
    notifyListeners();
  }

  void setFont(int index) {
    _fontFamily = fonts[index];
    notifyListeners();
  }
}

final List<ThemeData> themes = [
  ThemeData(
    primarySwatch: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.white,
  ),
  ThemeData(
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.lightGreen,
  ),
  ThemeData(
    primarySwatch: Colors.orange,
    scaffoldBackgroundColor: Colors.orangeAccent,
  ),
  ThemeData(
    primarySwatch: Colors.purple,
    scaffoldBackgroundColor: Colors.purple.shade50,
  ),
  ThemeData(
    primarySwatch: Colors.teal,
    scaffoldBackgroundColor: Colors.teal.shade100,
  ),
];
final List<String> fonts = [
  'Roboto',
  'Lobster',
  'Pacifico',
  'Montserrat',
  'Oswald',
];
