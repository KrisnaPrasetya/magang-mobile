import 'dart:io';

class CoreConfig {
  static final bool productionMode = true;

  static final bool isDesktopClient = Platform.isWindows || Platform.isLinux;
  static final bool isMacOS = !isDesktopClient && Platform.isMacOS;
}
