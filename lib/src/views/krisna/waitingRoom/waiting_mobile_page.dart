import 'package:flutter_svg/flutter_svg.dart';
import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/example/example_controller.dart';

class WaitingMobilePage extends StatelessWidget {
  WaitingMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExampleController>(
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
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 300),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    color: HexColor("#4169E1"),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 25)
                                        .copyWith(left: 23),
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
                                    padding: EdgeInsets.only(top: 25)
                                        .copyWith(left: 5),
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
                                    padding: EdgeInsets.only(top: 25)
                                        .copyWith(left: 5),
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
                                    padding: EdgeInsets.only(top: 25)
                                        .copyWith(left: 5),
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
                                    padding: EdgeInsets.only(top: 25)
                                        .copyWith(left: 5),
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
                                    padding: EdgeInsets.only(top: 25)
                                        .copyWith(left: 5),
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
                                    padding: EdgeInsets.only(top: 25)
                                        .copyWith(left: 5),
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
                              Padding(
                                padding: EdgeInsets.only(top: 120)
                                    .copyWith(left: 23),
                                child: Container(
                                  width: 38.68,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    color: ColorStyle().grayscaleRange.shade100,
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    EdgeInsets.only(top: 40).copyWith(left: 23),
                                child: Text(
                                  "Materi Seleksi\nKompetensi Dasar (SKD)",
                                  textAlign: TextAlign.left,
                                  style: TypographyStyle.heading5Bold.copyWith(
                                      color:
                                          ColorStyle().grayscaleRange.shade100),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 150)
                                        .copyWith(left: 25),
                                    child: SvgPicture.asset(
                                        'assets/krisna/icons/Bendera.svg'),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 150)
                                        .copyWith(left: 15),
                                    child: Text(
                                      "Tes Wawasan\nKebangsaan",
                                      style: TypographyStyle.heading6Bold
                                          .copyWith(
                                              color: ColorStyle()
                                                  .grayscaleRange
                                                  .shade100),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 210)
                                        .copyWith(left: 80),
                                    child: Text(
                                      "Soal • 30 Butir",
                                      style: TypographyStyle.body2DemiBold
                                          .copyWith(
                                              color: ColorStyle()
                                                  .grayscaleRange
                                                  .shade100),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 210)
                                        .copyWith(left: 20),
                                    child: Text(
                                      "Minimal Nilai • 65",
                                      style: TypographyStyle.body2DemiBold
                                          .copyWith(
                                              color: ColorStyle()
                                                  .grayscaleRange
                                                  .shade100),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 240)
                                    .copyWith(left: 75)
                                    .copyWith(right: 30),
                                child: Expanded(
                                  child: Column(
                                    children: [
                                      Divider(
                                        color: Colors.blue[600],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 280)
                                        .copyWith(left: 25),
                                    child: SvgPicture.asset(
                                        'assets/krisna/icons/Lampu.svg'),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 280)
                                        .copyWith(left: 15),
                                    child: Text(
                                      "Tes Intelegensi\nUmum",
                                      style: TypographyStyle.heading6Bold
                                          .copyWith(
                                              color: ColorStyle()
                                                  .grayscaleRange
                                                  .shade100),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 340)
                                        .copyWith(left: 80),
                                    child: Text(
                                      "Soal • 35 Butir",
                                      style: TypographyStyle.body2DemiBold
                                          .copyWith(
                                              color: ColorStyle()
                                                  .grayscaleRange
                                                  .shade100),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 340)
                                        .copyWith(left: 20),
                                    child: Text(
                                      "Minimal Nilai • 80",
                                      style: TypographyStyle.body2DemiBold
                                          .copyWith(
                                              color: ColorStyle()
                                                  .grayscaleRange
                                                  .shade100),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 370)
                                    .copyWith(left: 75)
                                    .copyWith(right: 30),
                                child: Expanded(
                                  child: Column(
                                    children: [
                                      Divider(
                                        color: Colors.blue[600],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 410)
                                        .copyWith(left: 25),
                                    child: SvgPicture.asset(
                                        'assets/krisna/icons/Pribadi.svg'),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 410)
                                        .copyWith(left: 15),
                                    child: Text(
                                      "Tes Karakteristik\nPribadi",
                                      style: TypographyStyle.heading6Bold
                                          .copyWith(
                                              color: ColorStyle()
                                                  .grayscaleRange
                                                  .shade100),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 470)
                                        .copyWith(left: 80),
                                    child: Text(
                                      "Soal • 45 Butir",
                                      style: TypographyStyle.body2DemiBold
                                          .copyWith(
                                              color: ColorStyle()
                                                  .grayscaleRange
                                                  .shade100),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 470)
                                        .copyWith(left: 15),
                                    child: Text(
                                      "Minimal Nilai • 156",
                                      style: TypographyStyle.body2DemiBold
                                          .copyWith(
                                              color: ColorStyle()
                                                  .grayscaleRange
                                                  .shade100),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 500)
                                    .copyWith(left: 75)
                                    .copyWith(right: 30),
                                child: Expanded(
                                  child: Column(
                                    children: [
                                      Divider(
                                        color: Colors.blue[600],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
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
