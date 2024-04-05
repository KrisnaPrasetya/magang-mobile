import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/gungsatria/bmi/bmi-content.dart';
import 'package:internship/src/views/gungsatria/bmi/bmi_controller.dart';
import 'package:internship/src/widgets/components/custom_button.dart';

class BMIMobilePage extends StatelessWidget {
  BMIMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BMIController>(
      builder: (controller) => PopScope(
        canPop: controller.canPop,
        child: Scaffold(
          backgroundColor: ColorStyle.whiteColor,
          body: ScrollConfiguration(
            behavior: CustomDisableGlowBehavior(),
            child: SingleChildScrollView(
              child: Center(
                child: Container(
                  child: BMIContent(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
