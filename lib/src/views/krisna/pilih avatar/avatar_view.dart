import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/krisna/pilih%20avatar/avatar_controller.dart';
import 'package:internship/src/views/krisna/pilih%20avatar/avatar_mobile_page.dart';

class AvatarView extends StatelessWidget {
  const AvatarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<AvatarController>(
      controller: AvatarController(),
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
      mobile: (controller) => AvatarMobilePage(),
      //TODO DESKTOP
      desktop: (controller) => AvatarMobilePage(),
    );
  }
}
