import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "primary";
PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        displayMedium: TextStyle(
          color: appTheme.cyan300,
          fontSize: 45.fSize,
          fontFamily: 'Mochiy Pop One',
          fontWeight: FontWeight.w400,
          shadows: [
            Shadow(
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5), // warna merah dengan opasitas 50%
              offset: Offset(2, 2),
              blurRadius: 4,
            ),
          ],
        ),
        headlineSmall: TextStyle(
          color: appTheme.cyan300,
          fontSize: 30.fSize,
          fontFamily: 'MuseoModerno',
          fontWeight: FontWeight.w700,
          shadows: [
            Shadow(
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5), // warna merah dengan opasitas 50%
              offset: Offset(1, 1),
              blurRadius: 2,
            ),
          ],
        ),
        labelLarge: TextStyle(
          color: appTheme.cyan300,
          fontSize: 13.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w900,
          shadows: [
            Shadow(
              color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5), // warna merah dengan opasitas 50%
              offset: Offset(1, 1),
              blurRadius: 2,
            ),
          ],
        ),
        titleSmall: TextStyle(
          color: appTheme.cyan300,
          fontSize: 15.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w900,
          shadows: [
            Shadow(
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5), // warna merah dengan opasitas 50%
              offset: Offset(1, 1),
              blurRadius: 2,
            ),
          ],
        ),
      );
}



/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Blackf
  Color get black9003f => Color(0X3F000000);
// Cyan
  Color get cyan300 => Color(0XFF48D8E8);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);
}
