import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          extendBodyBehindAppBar: true,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: SvgPicture.asset(
                "assets/gungsatria/icons/ic_back.svg",
                fit: BoxFit.scaleDown,
              )),
          backgroundColor: ColorStyle.whiteColor,
          body: ScrollConfiguration(
            behavior: CustomDisableGlowBehavior(),
            child: SingleChildScrollView(
              child: Container(
                width: Get.width,
                child: Column(
                  children: [
                    // Container(
                    //     alignment: Alignment.centerLeft,
                    //     width: Get.width,
                    //     color: HexColor('4169E1'),
                    //     padding: EdgeInsets.only(left: 16, top: 16),
                    //     child: SvgPicture.asset(
                    //         "assets/gungsatria/icons/ic_back.svg")),
                    Container(
                      child: Image.asset(
                        'assets/gungsatria/images/student.png',
                        alignment: Alignment.bottomCenter,
                      ),
                      color: HexColor('4169E1'),
                      height: 300,
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
                          ],
                        )),
                    Container(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          width: Get.width,
                          height: 500,
                          decoration: BoxDecoration(
                              color: HexColor('4169E1'),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 32,
                              ),
                              Text(
                                textAlign: TextAlign.left,
                                'Materi Seleksi Kompetensi Dasar (SKD)',
                                style: TypographyStyle.heading5Bold
                                    .copyWith(color: ColorStyle.whiteColor),
                              ),
                              SizedBox(
                                height: 32,
                              ),
                            ],
                          ),
                        ),
                      ),
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
