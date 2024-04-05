import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/widgets/components/custom_button.dart';

class BMIContent extends StatelessWidget {
  const BMIContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width - 40,
      decoration: BoxDecoration(
          border: Border.all(color: ColorStyle().grayscaleRange[200]!),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              SvgPicture.asset('assets/gungsatria/icons/ic_detail_bmi.svg'),
              SizedBox(
                width: 8,
              ),
              Text(
                'Detail BMI Kamu',
                style: TypographyStyle.body1Bold
                    .copyWith(color: HexColor('474747')),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              height: 68,
              child: Row(
                children: [
                  SizedBox(
                    width: 4,
                  ),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: SvgPicture.asset(
                                'assets\/gungsatria/icons/ic_weight.svg'),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Tinggi',
                            style: TypographyStyle.body3DemiBold
                                .copyWith(color: HexColor('A0A3BD')),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      RichText(
                        text: TextSpan(
                            text: '71.5',
                            style: TypographyStyle.body1bBold
                                .copyWith(color: HexColor('33374A')),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: ' kg', style: TextStyle(fontSize: 8))
                            ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 44,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 2,
                        height: 40,
                        color: ColorStyle().blueRange[200],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 36,
                  ),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: SvgPicture.asset(
                                'assets\/gungsatria/icons/ic_height.svg'),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Berat',
                            style: TypographyStyle.body3DemiBold
                                .copyWith(color: HexColor('A0A3BD')),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      RichText(
                        text: TextSpan(
                            text: '185',
                            style: TypographyStyle.body1bBold
                                .copyWith(color: HexColor('33374A')),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: ' cm', style: TextStyle(fontSize: 8))
                            ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 2,
                        height: 40,
                        color: ColorStyle().blueRange[200],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 28,
                  ),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: SvgPicture.asset(
                                'assets\/gungsatria/icons/ic_bmi.svg'),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'BMI',
                            style: TypographyStyle.body3DemiBold
                                .copyWith(color: HexColor('A0A3BD')),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Text(
                        'Normal',
                        style: TypographyStyle.body1bBold
                            .copyWith(color: HexColor('17AF85')),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          CustomButton(
            isOutline: true,
            color: ColorStyle().grayscaleRange[200]!,
            width: Get.width - 120,
            onPressed: () {},
            child: Text(
              'Edit BMI',
              style: TypographyStyle.body2Bold
                  .copyWith(color: ColorStyle().grayscaleRange[500]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
