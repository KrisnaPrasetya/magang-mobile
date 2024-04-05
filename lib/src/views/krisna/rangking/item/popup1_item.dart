import 'package:flutter_svg/flutter_svg.dart';
import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/widgets/components/custom_button.dart';

class RangkingItemOne extends StatelessWidget {
  const RangkingItemOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: ColorStyle().grayscaleRange[200]!),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                color: ColorStyle().grayscaleRange[100]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Row(
                children: [
                  Text(
                    "Pelaksanaan",
                    style: TypographyStyle.body3DemiBold
                        .copyWith(color: HexColor("#B4B4B4")),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  SvgPicture.asset("assets/krisna/icons/Calendar_Days.svg"),
                  Text(
                    "Jumat, 12 Feb 23",
                    style: TypographyStyle.body3DemiBold
                        .copyWith(color: ColorStyle().grayscaleRange[700]),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "UKA Level 1",
                      style: TypographyStyle.body1Bold
                          .copyWith(color: HexColor("#949494")),
                    ),
                    Text(
                      "Stage Bahasa Indone...",
                      style: TypographyStyle.body1Bold
                          .copyWith(color: ColorStyle().grayscaleRange[900]),
                    )
                  ],
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Container(
                  height: 32,
                  width: 70,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ColorStyle().redRange[50],
                    border: Border.all(color: ColorStyle().redRange[200]!),
                  ),
                  child: Text(
                    "Gagal",
                    style: TypographyStyle.body2DemiBold
                        .copyWith(color: ColorStyle().redRange[500]),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: Get.width / 1.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: HexColor("E8E8E8"),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "Perolehan nilai",
                    style: TypographyStyle.body2Bold
                        .copyWith(color: HexColor("#474747")),
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: Get.height / 16.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: HexColor("#476BD8"),
                  ),
                  child: Text(
                    "57",
                    style: TypographyStyle.heading6Bold
                        .copyWith(color: ColorStyle().grayscaleRange[50]),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CustomButton(
                  onPressed: () {},
                  width: 38,
                  height: 38,
                  color: Colors.white,
                  child: SvgPicture.asset("assets/krisna/icons/gift.svg"),
                ),
                SizedBox(
                  width: 8,
                ),
                CustomButton(
                    onPressed: () {},
                    width: 108,
                    height: 40,
                    color: Colors.white,
                    child: Text(
                      "Cek Laporan",
                      style: TypographyStyle.body2Bold
                          .copyWith(color: ColorStyle().grayscaleRange[500]),
                    )),
                SizedBox(
                  width: 8,
                ),
                CustomButton(
                    onPressed: () {},
                    width: 123,
                    height: 40,
                    color: ColorStyle().orangeRange[700]!,
                    child: Text(
                      "Pembahasan",
                      style: TypographyStyle.body2Bold
                          .copyWith(color: ColorStyle.whiteColor),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
