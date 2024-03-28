import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/gungsatria/waiting-room/waitingroom_controller.dart';

class WaitingRoomMobilePage extends StatelessWidget {
  WaitingRoomMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WaitingRoomController>(
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
                    Container(
                        alignment: Alignment.centerLeft,
                        width: Get.width,
                        color: HexColor('4169E1'),
                        padding: EdgeInsets.only(left: 16, top: 16),
                        child: SvgPicture.asset(
                            "assets/gungsatria/icons/ic_back.svg")),
                    Container(
                      child:
                          Image.asset('assets/gungsatria/images/student.png'),
                      color: HexColor('4169E1'),
                      width: Get.width,
                      height: 200,
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Text(
                              'Menunggu\nPelaksanaan UKA SKD',
                              style: TypographyStyle.heading6Bold,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              '00:00:05',
                              style: TypographyStyle.heading1Heavy.copyWith(
                                  color: ColorStyle().redRange[400],
                                  fontSize: 52),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Saat waktu tunggu habis, UKA\nakan dimulai secara otomatis',
                              style: TypographyStyle.body1bDemiBold.copyWith(
                                  color: ColorStyle().grayscaleRange[500]),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
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
