import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/gungsatria/waiting-room/waitingroom_controller.dart';

import 'waitingroom_mobile_page.dart';

class WaitingRoomView extends StatelessWidget {
  const WaitingRoomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<WaitingRoomController>(
      backgroundColor: ColorStyle.whiteColor,
      controller: WaitingRoomController(),
      appBar: AppBar(
        backgroundColor: ColorStyle.whiteColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Android
          statusBarColor: HexColor('4169E1'),
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
      mobile: (controller) => WaitingRoomMobilePage(),
    );
  }
}
