import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/krisna/challenge/challange_mobile_page.dart';
import 'package:internship/src/views/krisna/challenge/challenge_controller.dart';

class ChallengeView extends StatelessWidget {
  const ChallengeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<ChallengeController>(
      controller: ChallengeController(),
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
      mobile: (controller) => ChallengeMobilePage(),
      //TODO DESKTOP
      desktop: (controller) => ChallengeMobilePage(),
    );
  }
}
