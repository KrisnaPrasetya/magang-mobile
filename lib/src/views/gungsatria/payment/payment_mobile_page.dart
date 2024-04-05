import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/gungsatria/payment/payment_controller.dart';
import 'package:internship/src/widgets/components/custom_button.dart';

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
                height: Get.height,
                width: Get.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Image.asset('assets/gungsatria/images/glasshour.png'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Selesaikan Pembayaranmu !',
                      style: TypographyStyle.heading3Heavy
                          .copyWith(color: ColorStyle().redRange[400]),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Text(
                        'Yuk segera selesaikan pembayaran kamu sebelum 1x24 jam, agar pembayaranmu tidak kadaluarsa',
                        style: TypographyStyle.body1bBold
                            .copyWith(color: ColorStyle.blackColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomButton(
                      height: 48,
                        color: ColorStyle().orangeRange[700]!,
                        horizontalPadding: 20,
                        width: Get.width,
                        onPressed: () {},
                        child: Text('Lakukan Pembayaran',
                            style: TypographyStyle.body1Bold.copyWith(color: ColorStyle.whiteColor))),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      height: 48,
                        color: ColorStyle.whiteColor,
                        horizontalPadding: 20,
                        width: Get.width,
                        onPressed: () {},
                        child: Text('Lakukan Pembayaran',
                            style: TypographyStyle.body1Bold.copyWith(color: ColorStyle().grayscaleRange[500]))),
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
