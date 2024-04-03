import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/krisna/waitingRoom/section/waiting_room_four.dart';
import 'package:internship/src/views/krisna/waitingRoom/section/waiting_room_one.dart';
import 'package:internship/src/views/krisna/waitingRoom/section/waiting_room_three.dart';
import 'package:internship/src/views/krisna/waitingRoom/section/waiting_room_two.dart';
import 'package:internship/src/views/krisna/waitingRoom/waiting_controller.dart';

class WaitingMobilePage extends StatelessWidget {
  WaitingMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WaitingController>(
      builder: (controller) => PopScope(
        canPop: controller.canPop,
        child: Scaffold(
          backgroundColor: ColorStyle.whiteColor,
          appBar: AppBar(
            leading: BackButton(
              color: Colors.white,
            ),
            backgroundColor: HexColor("#4169E1"),
          ),
          body: ScrollConfiguration(
            behavior: CustomDisableGlowBehavior(),
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: HexColor("#4169E1"),
                          height: 190,
                          width: Get.width,
                          child: Container(
                            child: Image.asset(
                                'assets/krisna/images/waitingpng.png'),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Menunggu\nPelaksanaan UKA SKD",
                            textAlign: TextAlign.center,
                            style: TypographyStyle.heading6Bold
                                .copyWith(color: Colors.black)),
                        Text("00:00:05",
                            textAlign: TextAlign.center,
                            style: TypographyStyle.heading1Heavy.copyWith(
                                color: ColorStyle().redRange[400]!,
                                fontSize: 52)),
                        Text(
                            "Saat waktu tunggu habis, UKA\n akan dimulai secara otomatis",
                            textAlign: TextAlign.center,
                            style: TypographyStyle.body1DemiBold.copyWith(
                                color: ColorStyle().grayscaleRange[500]!)),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Container(
                            // height: Get.height / 1,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: HexColor("#4169E1"),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 23),
                                      child: Container(
                                        width: 38.68,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: Colors.amber,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 3),
                                      child: Container(
                                        width: 38.68,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: HexColor("#5D83F4"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 3),
                                      child: Container(
                                        width: 38.68,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: HexColor("#5D83F4"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 3),
                                      child: Container(
                                        width: 38.68,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: HexColor("#5D83F4"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 3),
                                      child: Container(
                                        width: 38.68,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: HexColor("#5D83F4"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 3),
                                      child: Container(
                                        width: 38.68,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: HexColor("#5D83F4"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 3),
                                      child: Container(
                                        width: 38.68,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          color: HexColor("#5D83F4"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: Get.width,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        WaitingRoomOne(
                                          controller: controller,
                                          index: controller.title.length,
                                        ),
                                        WaitingRoomTwo(
                                          controller: controller,
                                          index: controller.Tekspagedua.length,
                                        ),
                                        WaitingRoomThree(),
                                        WaitingRoomFour()
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
