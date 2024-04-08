import 'package:flutter_svg/svg.dart';
import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/krisna/challenge/challenge_controller.dart';
import 'package:internship/src/views/krisna/challenge/item/challange_level_item.dart';
import 'package:internship/src/views/krisna/challenge/item/stages_level_widget.dart';

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
                  ChallengeLevel(),
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
                  ChallengeLevel(),
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
                  ChallengeLevel(),
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
                  ChallengeLevel(),
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
                  ChallengeLevel(),
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
