
import 'package:flutter/material.dart';

class AppTheme {
  
  static const Color azulEscuro = Color(0xFF123B70);
  static const Color azulMedio = Color(0xFF2563A6);
  static const Color azulClaro = Color(0xFFDCEBFA);
  static const Color fundoClaro = Color(0xFFF4F8FD);
  static const Color branco = Color(0xFFFFFFFF);
  static const Color textoEscuro = Color(0xFF1E293B);

  
  static const Color laranjaEscuro = azulEscuro;
  static const Color marrom = azulEscuro;
  static const Color laranja = azulMedio;
  static const Color creme = azulClaro;

  static final ThemeData temaClaro = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: fundoClaro,

    colorScheme: ColorScheme.fromSeed(
      seedColor: azulMedio,
      primary: azulMedio,
      secondary: azulEscuro,
      surface: branco,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: azulEscuro,
      foregroundColor: branco,
      centerTitle: true,
      elevation: 0,
    ),

    cardTheme: CardThemeData(
      color: branco,
      elevation: 3,
      shadowColor: azulEscuro.withValues(alpha: 0.10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: azulMedio,
        foregroundColor: branco,
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 14,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: branco,

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: azulClaro),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: azulClaro),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(
          color: azulMedio,
          width: 2,
        ),
      ),
    ),
  );
}