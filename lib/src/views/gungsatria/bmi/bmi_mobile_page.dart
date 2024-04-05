import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internship/src/core/base_import.dart';
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
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: SvgPicture.asset(
              'assets/gungsatria/icons/ic_back.svg',
              color: Colors.black,
              fit: BoxFit.scaleDown,
            ),
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
              color: ColorStyle().orangeRange[700]!,
              radius: 100,
              width: Get.width - 40,
              onPressed: () {},
              child: Text('Mulai Hitung BMI',
                  style: TypographyStyle.body1bBold
                      .copyWith(color: ColorStyle.whiteColor)),
            ),
          ),
          backgroundColor: ColorStyle.whiteColor,
          body: ScrollConfiguration(
            behavior: CustomDisableGlowBehavior(),
            child: SingleChildScrollView(
              child: Container(
                width: Get.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sebelum Lanjut...',
                      style: TypographyStyle.body1DemiBold
                          .copyWith(color: HexColor('474747')),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Ayo cek Body Mass Index\n(BMI) Kamu',
                      style: TypographyStyle.heading5Bold,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Cari tau apakah BMI kamu\nnormal atau tidak',
                      style: TypographyStyle.body1bDemiBold
                          .copyWith(color: HexColor('474747')),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    SizedBox(
                        height: 208,
                        width: 208,
                        child: Image.asset('assets/gungsatria/images/bmi.png')),
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
