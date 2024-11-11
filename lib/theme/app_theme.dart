import 'package:flutter/material.dart';

// Nueva paleta de colores
const Color blueGray = Color(0xFF3E7EA6);
const Color mustard = Color(0xFFE4B020);
const Color orange = Color(0xFFED8A42);
const Color lightGray = Color(0xFFD1D1CA);

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      primaryColor: blueGray,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: blueGray,
        secondary: mustard,
      ),
      scaffoldBackgroundColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: lightGray,
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(color: blueGray, fontWeight: FontWeight.bold),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: blueGray, // Fondo del botón
          foregroundColor: Colors.white, // Color del texto en el botón
          textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
