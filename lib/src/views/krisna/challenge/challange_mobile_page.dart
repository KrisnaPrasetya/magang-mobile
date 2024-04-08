import 'package:flutter_svg/svg.dart';
import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/krisna/challenge/challenge_controller.dart';

class ChallengeMobilePage extends StatelessWidget {
  ChallengeMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChallengeController>(
      builder: (controller) => PopScope(
        canPop: controller.canPop,
        child: Scaffold(
          backgroundColor: ColorStyle.whiteColor,
          body: ScrollConfiguration(
            behavior: CustomDisableGlowBehavior(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //TPA
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: ColorStyle().blueRange[500]),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "TPA - Pengetahuan Umum",
                        style: TypographyStyle.body1Bold
                            .copyWith(color: ColorStyle().grayscaleRange[900]),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "UKA Level",
                          style: TypographyStyle.body2DemiBold.copyWith(
                              color: ColorStyle().grayscaleRange[500]),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        Text(
                          "Lihat Semua",
                          style: TypographyStyle.body2DemiBold
                              .copyWith(color: ColorStyle().blueRange[500]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: Get.height / 5,
                    width: Get.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.level.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: Get.width / 1.8,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  border: Border.all(
                                      color: ColorStyle().grayscaleRange[200]!),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 221,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF48A668),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            '${controller.level[index]}',
                                            style: TypographyStyle.body1Bold
                                                .copyWith(
                                              color: ColorStyle.whiteColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox(),
                                          ),
                                          SvgPicture.asset(
                                              "assets/krisna/icons/verif.svg"),
                                          SizedBox(
                                            width: 4,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    //icon modul,nilai,waktu
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 17,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/Buku.svg"),
                                            Text(
                                              "Modul",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[900]),
                                            ),
                                            Text(
                                              "Pra UKA 1",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "Pra UKA 2",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "Pra UKA 3",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 28,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/Nilai.svg"),
                                            Text(
                                              "Nilai",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[900]),
                                            ),
                                            Text(
                                              "345",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "388",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "420",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 24,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/waktujam.svg"),
                                            Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Text(
                                                "Waktu  ",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            900]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Container(
                                      width: 221,
                                      height: 26,
                                      decoration: ShapeDecoration(
                                        color: ColorStyle().grayscaleRange[100],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(11),
                                            bottomRight: Radius.circular(11),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 17,
                                          ),
                                          Text(
                                            "UKA Lvl",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          SvgPicture.asset(
                                              "assets/krisna/icons/kalenderGrey.svg"),
                                          SizedBox(
                                            width: 28,
                                          ),
                                          Text(
                                            "415",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                          SizedBox(
                                            width: 36,
                                          ),
                                          Text(
                                            "1:02:03",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  //TPA
                  SizedBox(
                    height: 41,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: ColorStyle().blueRange[500]),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "TPA - Pengetahuan Umum",
                        style: TypographyStyle.body1Bold
                            .copyWith(color: ColorStyle().grayscaleRange[900]),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "UKA Level",
                          style: TypographyStyle.body2DemiBold.copyWith(
                              color: ColorStyle().grayscaleRange[500]),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        Text(
                          "Lihat Semua",
                          style: TypographyStyle.body2DemiBold
                              .copyWith(color: ColorStyle().blueRange[500]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: Get.height / 5,
                    width: Get.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.level.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: Get.width / 1.8,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  border: Border.all(
                                      color: ColorStyle().grayscaleRange[200]!),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 221,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF48A668),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            '${controller.level[index]}',
                                            style: TypographyStyle.body1Bold
                                                .copyWith(
                                              color: ColorStyle.whiteColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox(),
                                          ),
                                          SvgPicture.asset(
                                              "assets/krisna/icons/verif.svg"),
                                          SizedBox(
                                            width: 4,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    //icon modul,nilai,waktu
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 17,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/Buku.svg"),
                                            Text(
                                              "Modul",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[900]),
                                            ),
                                            Text(
                                              "Pra UKA 1",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "Pra UKA 2",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "Pra UKA 3",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 28,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/Nilai.svg"),
                                            Text(
                                              "Nilai",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[900]),
                                            ),
                                            Text(
                                              "345",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "388",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "420",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 24,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/waktujam.svg"),
                                            Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Text(
                                                "Waktu  ",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            900]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Container(
                                      width: 221,
                                      height: 26,
                                      decoration: ShapeDecoration(
                                        color: ColorStyle().grayscaleRange[100],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(11),
                                            bottomRight: Radius.circular(11),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 17,
                                          ),
                                          Text(
                                            "UKA Lvl",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          SvgPicture.asset(
                                              "assets/krisna/icons/kalenderGrey.svg"),
                                          SizedBox(
                                            width: 28,
                                          ),
                                          Text(
                                            "415",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                          SizedBox(
                                            width: 36,
                                          ),
                                          Text(
                                            "1:02:03",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  //TPA
                  SizedBox(
                    height: 41,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: ColorStyle().blueRange[500]),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "TPA - Pengetahuan Umum",
                        style: TypographyStyle.body1Bold
                            .copyWith(color: ColorStyle().grayscaleRange[900]),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "UKA Level",
                          style: TypographyStyle.body2DemiBold.copyWith(
                              color: ColorStyle().grayscaleRange[500]),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        Text(
                          "Lihat Semua",
                          style: TypographyStyle.body2DemiBold
                              .copyWith(color: ColorStyle().blueRange[500]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: Get.height / 5,
                    width: Get.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.level.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: Get.width / 1.8,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  border: Border.all(
                                      color: ColorStyle().grayscaleRange[200]!),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 221,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF48A668),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            '${controller.level[index]}',
                                            style: TypographyStyle.body1Bold
                                                .copyWith(
                                              color: ColorStyle.whiteColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox(),
                                          ),
                                          SvgPicture.asset(
                                              "assets/krisna/icons/verif.svg"),
                                          SizedBox(
                                            width: 4,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    //icon modul,nilai,waktu
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 17,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/Buku.svg"),
                                            Text(
                                              "Modul",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[900]),
                                            ),
                                            Text(
                                              "Pra UKA 1",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "Pra UKA 2",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "Pra UKA 3",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 28,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/Nilai.svg"),
                                            Text(
                                              "Nilai",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[900]),
                                            ),
                                            Text(
                                              "345",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "388",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "420",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 24,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/waktujam.svg"),
                                            Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Text(
                                                "Waktu  ",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            900]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Container(
                                      width: 221,
                                      height: 26,
                                      decoration: ShapeDecoration(
                                        color: ColorStyle().grayscaleRange[100],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(11),
                                            bottomRight: Radius.circular(11),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 17,
                                          ),
                                          Text(
                                            "UKA Lvl",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          SvgPicture.asset(
                                              "assets/krisna/icons/kalenderGrey.svg"),
                                          SizedBox(
                                            width: 28,
                                          ),
                                          Text(
                                            "415",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                          SizedBox(
                                            width: 36,
                                          ),
                                          Text(
                                            "1:02:03",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  //TPA
                  SizedBox(
                    height: 41,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: ColorStyle().blueRange[500]),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "TPA - Pengetahuan Umum",
                        style: TypographyStyle.body1Bold
                            .copyWith(color: ColorStyle().grayscaleRange[900]),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "UKA Level",
                          style: TypographyStyle.body2DemiBold.copyWith(
                              color: ColorStyle().grayscaleRange[500]),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        Text(
                          "Lihat Semua",
                          style: TypographyStyle.body2DemiBold
                              .copyWith(color: ColorStyle().blueRange[500]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: Get.height / 5,
                    width: Get.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.level.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: Get.width / 1.8,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  border: Border.all(
                                      color: ColorStyle().grayscaleRange[200]!),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 221,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF48A668),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            '${controller.level[index]}',
                                            style: TypographyStyle.body1Bold
                                                .copyWith(
                                              color: ColorStyle.whiteColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox(),
                                          ),
                                          SvgPicture.asset(
                                              "assets/krisna/icons/verif.svg"),
                                          SizedBox(
                                            width: 4,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    //icon modul,nilai,waktu
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 17,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/Buku.svg"),
                                            Text(
                                              "Modul",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[900]),
                                            ),
                                            Text(
                                              "Pra UKA 1",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "Pra UKA 2",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "Pra UKA 3",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 28,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/Nilai.svg"),
                                            Text(
                                              "Nilai",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[900]),
                                            ),
                                            Text(
                                              "345",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "388",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "420",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 24,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/waktujam.svg"),
                                            Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Text(
                                                "Waktu  ",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            900]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Container(
                                      width: 221,
                                      height: 26,
                                      decoration: ShapeDecoration(
                                        color: ColorStyle().grayscaleRange[100],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(11),
                                            bottomRight: Radius.circular(11),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 17,
                                          ),
                                          Text(
                                            "UKA Lvl",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          SvgPicture.asset(
                                              "assets/krisna/icons/kalenderGrey.svg"),
                                          SizedBox(
                                            width: 28,
                                          ),
                                          Text(
                                            "415",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                          SizedBox(
                                            width: 36,
                                          ),
                                          Text(
                                            "1:02:03",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  //TPA
                  SizedBox(
                    height: 41,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: ColorStyle().blueRange[500]),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "TPA - Pengetahuan Umum",
                        style: TypographyStyle.body1Bold
                            .copyWith(color: ColorStyle().grayscaleRange[900]),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "UKA Level",
                          style: TypographyStyle.body2DemiBold.copyWith(
                              color: ColorStyle().grayscaleRange[500]),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        Text(
                          "Lihat Semua",
                          style: TypographyStyle.body2DemiBold
                              .copyWith(color: ColorStyle().blueRange[500]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: Get.height / 5,
                    width: Get.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.level.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: Get.width / 1.8,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  border: Border.all(
                                      color: ColorStyle().grayscaleRange[200]!),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 221,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF48A668),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Text(
                                            '${controller.level[index]}',
                                            style: TypographyStyle.body1Bold
                                                .copyWith(
                                              color: ColorStyle.whiteColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: SizedBox(),
                                          ),
                                          SvgPicture.asset(
                                              "assets/krisna/icons/verif.svg"),
                                          SizedBox(
                                            width: 4,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    //icon modul,nilai,waktu
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 17,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/Buku.svg"),
                                            Text(
                                              "Modul",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[900]),
                                            ),
                                            Text(
                                              "Pra UKA 1",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "Pra UKA 2",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "Pra UKA 3",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 28,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/Nilai.svg"),
                                            Text(
                                              "Nilai",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[900]),
                                            ),
                                            Text(
                                              "345",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "388",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                            Text(
                                              "420",
                                              style: TypographyStyle
                                                  .body3DemiBold
                                                  .copyWith(
                                                      color: ColorStyle()
                                                          .grayscaleRange[500]),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 24,
                                        ),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                                "assets/krisna/icons/waktujam.svg"),
                                            Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Text(
                                                "Waktu  ",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            900]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4),
                                              child: Text(
                                                "1:02:03",
                                                style: TypographyStyle
                                                    .body3DemiBold
                                                    .copyWith(
                                                        color: ColorStyle()
                                                                .grayscaleRange[
                                                            500]),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Container(
                                      width: 221,
                                      height: 26,
                                      decoration: ShapeDecoration(
                                        color: ColorStyle().grayscaleRange[100],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(11),
                                            bottomRight: Radius.circular(11),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 17,
                                          ),
                                          Text(
                                            "UKA Lvl",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          SvgPicture.asset(
                                              "assets/krisna/icons/kalenderGrey.svg"),
                                          SizedBox(
                                            width: 28,
                                          ),
                                          Text(
                                            "415",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                          SizedBox(
                                            width: 36,
                                          ),
                                          Text(
                                            "1:02:03",
                                            style: TypographyStyle.body3DemiBold
                                                .copyWith(
                                                    color: ColorStyle()
                                                        .grayscaleRange[500]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
