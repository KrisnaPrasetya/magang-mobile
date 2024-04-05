import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/gungsatria/bmi/bmi_controller.dart';
import 'package:internship/src/views/gungsatria/bmi/bmi_mobile_page.dart';

class BMIView extends StatelessWidget {
  const BMIView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<BMIController>(
      backgroundColor: ColorStyle.whiteColor,
      controller: BMIController(),
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
      mobile: (controller) => BMIMobilePage(),
    );
  }
}
