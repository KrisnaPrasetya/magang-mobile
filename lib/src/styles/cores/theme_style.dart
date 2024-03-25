import 'package:internship/src/core/base_import.dart';

class ThemeStyle {
  static Future<ThemeData?> get currentThemeData async {
    var theme = ThemeData(
      appBarTheme: AppBarTheme(surfaceTintColor: Colors.transparent),
    );
    return theme;
  }
}
