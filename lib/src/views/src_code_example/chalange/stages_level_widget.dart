import 'package:internship/src/core/base_import.dart';
import 'package:flutter_svg/svg.dart';

class StagesLevelWidget extends StatelessWidget {
  final int index;

  StagesLevelWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          margin: EdgeInsets.only(right: 16),
          width: 260,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), border: Border.all(color: ColorStyle().grayscaleRange[200]!, width: 2)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 48,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                  color: HexColor('BA98FC'),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Level 1",
                            style: TypographyStyle.body1Bold.copyWith(color: ColorStyle.whiteColor),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: SvgPicture.asset(
                        "assets/icons/home/ic_stages_completed.svg",
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/home/ic_uka_code_prefix.svg',
                            width: 18,
                            height: 18,
                          ),
                          Text(
                            'Modul',
                            style: TypographyStyle.body3DemiBold.copyWith(
                              color: ColorStyle().grayscaleRange[900],
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Column(
                            children: [
                              Text(
                                'Pra UKA 1',
                                style: TypographyStyle.body3DemiBold.copyWith(
                                  color: ColorStyle().grayscaleRange[500],
                                ),
                              ),
                              Text(
                                'Pra UKA 2',
                                style: TypographyStyle.body3DemiBold.copyWith(
                                  color: ColorStyle().grayscaleRange[500],
                                ),
                              ),
                              Text(
                                'Pra UKA 3',
                                style: TypographyStyle.body3DemiBold.copyWith(
                                  color: ColorStyle().grayscaleRange[500],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: VerticalDivider(
                        color: ColorStyle().grayscaleRange[200],
                        thickness: 2,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/home/ic_score.svg',
                            width: 18,
                            height: 18,
                          ),
                          Text(
                            'Nilai',
                            style: TypographyStyle.body3DemiBold.copyWith(
                              color: ColorStyle().grayscaleRange[900],
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Column(
                            children: [
                              Text(
                                '2',
                                style: TypographyStyle.body3DemiBold.copyWith(
                                  color: ColorStyle().grayscaleRange[500],
                                ),
                              ),
                              Text(
                                '4',
                                style: TypographyStyle.body3DemiBold.copyWith(
                                  color: ColorStyle().grayscaleRange[500],
                                ),
                              ),
                              Text(
                                // '',
                                '5',
                                style: TypographyStyle.body3DemiBold.copyWith(
                                  color: ColorStyle().grayscaleRange[500],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: VerticalDivider(
                        color: ColorStyle().grayscaleRange[200],
                        thickness: 2,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/home/ic_time.svg',
                            width: 18,
                            height: 18,
                          ),
                          Text(
                            'Waktu',
                            style: TypographyStyle.body3DemiBold.copyWith(
                              color: ColorStyle().grayscaleRange[900],
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Column(
                            children: [
                              Text(
                                '17:00:00',
                                style: TypographyStyle.body3DemiBold.copyWith(
                                  color: ColorStyle().grayscaleRange[500],
                                ),
                              ),
                              Text(
                                '17:05:01',
                                style: TypographyStyle.body3DemiBold.copyWith(
                                  color: ColorStyle().grayscaleRange[500],
                                ),
                              ),
                              Text(
                                '18:07:09',
                                style: TypographyStyle.body3DemiBold.copyWith(
                                  color: ColorStyle().grayscaleRange[500],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: ColorStyle().grayscaleRange[100],
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'UKA Lvl 1',
                              style: TypographyStyle.body3DemiBold.copyWith(
                                color: ColorStyle().grayscaleRange[500],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        child: VerticalDivider(
                          color: ColorStyle().grayscaleRange[200],
                          thickness: 2,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            '451',
                            style: TypographyStyle.body3DemiBold.copyWith(
                              color: ColorStyle().grayscaleRange[500],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        child: VerticalDivider(
                          color: ColorStyle().grayscaleRange[200],
                          thickness: 2,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            '17:09:09',
                            style: TypographyStyle.body3DemiBold.copyWith(
                              color: ColorStyle().grayscaleRange[500],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
