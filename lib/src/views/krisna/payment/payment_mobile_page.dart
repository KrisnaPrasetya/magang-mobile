import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/krisna/payment/payment_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMobilePage extends StatelessWidget {
  PaymentMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaymentController>(
      builder: (controller) => PopScope(
        canPop: controller.canPop,
        child: Scaffold(
          backgroundColor: ColorStyle.whiteColor,
          body: ScrollConfiguration(
            behavior: CustomDisableGlowBehavior(),
            child: SingleChildScrollView(
              child: Container(
                width: Get.width,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: controller.onGoBack,
                      child: Text('Back'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
