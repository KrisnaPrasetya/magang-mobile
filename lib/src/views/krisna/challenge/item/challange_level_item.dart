import 'package:flutter_svg/svg.dart';
import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/krisna/challenge/challenge_controller.dart';

class ChallengeLevel extends StatelessWidget {
  const ChallengeLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChallengeController>(
      builder: (controller) => Container(
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
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      border:
                          Border.all(color: ColorStyle().grayscaleRange[200]!),
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
                                style: TypographyStyle.body1Bold.copyWith(
                                  color: ColorStyle.whiteColor,
                                ),
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                              SvgPicture.asset("assets/krisna/icons/verif.svg"),
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
                            //modul
                            Column(
                              children: [
                                SvgPicture.asset(
                                    "assets/krisna/icons/Buku.svg"),
                                Text(
                                  "Modul",
                                  style: TypographyStyle.body3DemiBold.copyWith(
                                      color: ColorStyle().grayscaleRange[900]),
                                ),
                                Text(
                                  "Pra UKA 1",
                                  style: TypographyStyle.body3DemiBold.copyWith(
                                      color: ColorStyle().grayscaleRange[500]),
                                ),
                                Text(
                                  "Pra UKA 2",
                                  style: TypographyStyle.body3DemiBold.copyWith(
                                      color: ColorStyle().grayscaleRange[500]),
                                ),
                                Text(
                                  "Pra UKA 3",
                                  style: TypographyStyle.body3DemiBold.copyWith(
                                      color: ColorStyle().grayscaleRange[500]),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 38),
                              child: Container(
                                width: 2,
                                height: 52,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: ColorStyle().grayscaleRange[200]),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            //nilai
                            Column(
                              children: [
                                SvgPicture.asset(
                                    "assets/krisna/icons/Nilai.svg"),
                                Text(
                                  "Nilai",
                                  style: TypographyStyle.body3DemiBold.copyWith(
                                      color: ColorStyle().grayscaleRange[900]),
                                ),
                                Text(
                                  "345",
                                  style: TypographyStyle.body3DemiBold.copyWith(
                                      color: ColorStyle().grayscaleRange[500]),
                                ),
                                Text(
                                  "388",
                                  style: TypographyStyle.body3DemiBold.copyWith(
                                      color: ColorStyle().grayscaleRange[500]),
                                ),
                                Text(
                                  "420",
                                  style: TypographyStyle.body3DemiBold.copyWith(
                                      color: ColorStyle().grayscaleRange[500]),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 38),
                              child: Container(
                                width: 2,
                                height: 52,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: ColorStyle().grayscaleRange[200]),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            //waktu
                            Column(
                              children: [
                                SvgPicture.asset(
                                    "assets/krisna/icons/waktujam.svg"),
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Waktu  ",
                                    style: TypographyStyle.body3DemiBold
                                        .copyWith(
                                            color: ColorStyle()
                                                .grayscaleRange[900]),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text(
                                    "1:02:03",
                                    style: TypographyStyle.body3DemiBold
                                        .copyWith(
                                            color: ColorStyle()
                                                .grayscaleRange[500]),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text(
                                    "1:02:03",
                                    style: TypographyStyle.body3DemiBold
                                        .copyWith(
                                            color: ColorStyle()
                                                .grayscaleRange[500]),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4),
                                  child: Text(
                                    "1:02:03",
                                    style: TypographyStyle.body3DemiBold
                                        .copyWith(
                                            color: ColorStyle()
                                                .grayscaleRange[500]),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 221,
                          height: 28,
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
                                width: 16,
                              ),
                              Text(
                                "UKA Lvl",
                                style: TypographyStyle.body3DemiBold.copyWith(
                                    color: ColorStyle().grayscaleRange[500]),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              SvgPicture.asset(
                                  "assets/krisna/icons/kalenderGrey.svg"),
                              SizedBox(
                                width: 12,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(bottom: 9),
                                child: Container(
                                  width: 2,
                                  height: 16,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: ColorStyle().grayscaleRange[200]),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Text(
                                "415",
                                style: TypographyStyle.body3DemiBold.copyWith(
                                    color: ColorStyle().grayscaleRange[500]),
                              ),
                              SizedBox(
                                width: 17,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.only(bottom: 8),
                                child: Container(
                                  width: 2,
                                  height: 16,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: ColorStyle().grayscaleRange[200]),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "1:02:03",
                                style: TypographyStyle.body3DemiBold.copyWith(
                                    color: ColorStyle().grayscaleRange[500]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
