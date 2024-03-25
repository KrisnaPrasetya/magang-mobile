import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/startup/objects/logo_btw_object.dart';

import 'startup_controller.dart';

class StartupView extends StatefulWidget {
  const StartupView({Key? key}) : super(key: key);
  @override
  _StartupViewState createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  Widget build(BuildContext context) {
    return mainView();
  }

  Widget mainView() {
    return GetBuilder<StartupController>(
      init: StartupController(),
      builder: (controller) => controller.isBuildExpired()
          ? Scaffold(
              body: SafeArea(
              bottom: true,
              top: true,
              child: Center(
                child: Column(
                  children: [Text("Oops! Silahkan memperbarui versi aplikasimu")],
                ),
              ),
            ))
          : Container(
              color: ColorStyle.whiteColor,
              width: Get.width,
              height: Get.height,
              child: Center(
                child: Container(
                  height: 76,
                  width: 135,
                  child: CustomPaint(
                    painter: LogoBTWObject(),
                    child: Container(),
                  ),
                ),
              ),
            ),
    );
  }
}
