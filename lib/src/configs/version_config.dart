import 'dart:io';

import '../configs/core_config.dart';

class VersionConfig {
  static final int _androidVersion = 0;
  static final int _iosVersion = 0;
  static final int _desktopVersion = 0;
  static final String _iosAppId = '00000000';
  static final String _androidAppId = 'com.btw.internship';
  static final String expiredDate = "2024-04-30";

  static int get getBuildNumber {
    if (Platform.isAndroid) {
      return _androidVersion;
    } else if (CoreConfig.isDesktopClient) {
      return _desktopVersion;
    } else {
      return _iosVersion;
    }
  }

  static String get iOSAppId {
    return _iosAppId;
  }

  static String get androidAppId {
    return _androidAppId;
  }
}
