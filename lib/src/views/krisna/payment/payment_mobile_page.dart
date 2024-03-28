import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/krisna/payment/payment_controller.dart';
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
                padding: EdgeInsets.symmetric(vertical: 20),
                width: Get.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 120,
                    ),
                    Image.asset(
                      'assets/krisna/images/glasshour.png',
                    ),
                    SizedBox(
                      height: 58,
                    ),
                    Text("Selesaikan\nPembayaranmu !",
                        textAlign: TextAlign.center,
                        style: TypographyStyle.heading4Heavy
                            .copyWith(color: ColorStyle().redRange[400])),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Yuk segera selesaikan pembayaran kamu sebelum 1x24 jam, agar pembayaranmu tidak kadaluarsa",
                        textAlign: TextAlign.center,
                        style: TypographyStyle.body1DemiBold
                            .copyWith(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CustomButton(
                        width: Get.width / 1.2,
                        radius: 100,
                        color: ColorStyle().orangeRange[900]!,
                        onPressed: () {},
                        child: Text(
                          "Lakukan Pembayaran",
                          style: TypographyStyle.body1Bold.copyWith(
                              color: ColorStyle().grayscaleRange[200]),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                        width: Get.width / 1.2,
                        radius: 100,
                        color: ColorStyle().grayscaleRange[50]!,
                        onPressed: () {},
                        child: Text(
                          "Aku sudah Bayar",
                          style: TypographyStyle.body1Bold.copyWith(
                              color: ColorStyle().grayscaleRange[500]),
                        )),
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
