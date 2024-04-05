import 'package:internship/src/core/base_import.dart';
import 'create_avatar_controller.dart';
import 'create_avatar_mobile_page.dart';

class CreateAvatarView extends StatelessWidget {
  const CreateAvatarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<CreateAvatarController>(
      controller: CreateAvatarController(),
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
      mobile: (controller) => CreateAvatarMobilePage(),
      //TODO DESKTOP
      desktop: (controller) => CreateAvatarMobilePage(),
    );
  }
}
