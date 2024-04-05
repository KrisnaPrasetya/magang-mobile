import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/krisna/waitingRoom/waiting_controller.dart';
import 'package:internship/src/views/krisna/waitingRoom/waiting_mobile_page.dart';

class WaitingView extends StatelessWidget {
  const WaitingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<WaitingController>(
      backgroundColor: ColorStyle.whiteColor,
      controller: WaitingController(),
      appBar: AppBar(
        backgroundColor: ColorStyle.whiteColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Android
          statusBarColor: ColorStyle.whiteColor,
          statusBarIconBrightness: Brightness.dark,
          // iOS
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: ColorStyle.whiteColor,
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarDividerColor: ColorStyle.whiteColor,
        ),
        toolbarHeight: 0,
        elevation: 0,
        centerTitle: true,
      ),
      extendBody: true,
      mobile: (controller) => WaitingMobilePage(),
    );
  }
}
