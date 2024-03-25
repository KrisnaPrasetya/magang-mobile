import 'dart:io';

import 'base_import.dart';

class BaseController extends GetxController with WidgetsBindingObserver {
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(val) {
    _isLoading = val;
    update();
  }

  @override
  onInit() {
    print("root initial");

    super.onInit();
  }

  @override
  void onReady() async {
    SystemChannels.lifecycle.setMessageHandler((msg) async {
      print('SystemChannels> $msg');
      if (msg == AppLifecycleState.resumed.toString()) {
        if (Platform.isAndroid)
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            systemNavigationBarIconBrightness: Brightness.dark,
          ));
      }
      handleSystemChannel(msg);
      return msg;
    });
    super.onReady();
  }

  @override
  onClose() async {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChannels.lifecycle.setMessageHandler((msg) async {
      if (msg == AppLifecycleState.resumed.toString()) {
        if (Platform.isAndroid)
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            systemNavigationBarIconBrightness: Brightness.dark,
          ));
      }
      return msg;
    });
    super.onClose();
  }

  handleSystemChannel(msg) {
    print('SystemChanneels> $msg');
  }
}
