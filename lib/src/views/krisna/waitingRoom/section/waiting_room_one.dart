import 'package:flutter_svg/flutter_svg.dart';
import 'package:internship/src/core/base_import.dart';

class WaitingRoomOne extends StatelessWidget {
  const WaitingRoomOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25).copyWith(left: 23),
              child: Container(
                width: 38.68,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.amber,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25).copyWith(left: 5),
              child: Container(
                width: 38.68,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: HexColor("#5D83F4"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25).copyWith(left: 5),
              child: Container(
                width: 38.68,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: HexColor("#5D83F4"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25).copyWith(left: 5),
              child: Container(
                width: 38.68,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: HexColor("#5D83F4"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25).copyWith(left: 5),
              child: Container(
                width: 38.68,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: HexColor("#5D83F4"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25).copyWith(left: 5),
              child: Container(
                width: 38.68,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: HexColor("#5D83F4"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25).copyWith(left: 5),
              child: Container(
                width: 38.68,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: HexColor("#5D83F4"),
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 15, left: 22),
          child: Text(
            "Materi Seleksi\nKompetensi Dasar (SKD)",
            textAlign: TextAlign.left,
            style: TypographyStyle.heading5Bold
                .copyWith(color: ColorStyle().grayscaleRange.shade100),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 22),
          child: Container(
            width: 38.68,
            height: 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: ColorStyle().grayscaleRange.shade100,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 35).copyWith(left: 20),
              child: SvgPicture.asset('assets/krisna/icons/Bendera.svg'),
            ),
            Container(
              padding: EdgeInsets.only(top: 30).copyWith(left: 15),
              child: Text(
                "Tes Wawasan\nKebangsaan",
                style: TypographyStyle.heading6Bold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 5).copyWith(left: 76),
              child: Text(
                "Soal • 30 Butir",
                style: TypographyStyle.body2DemiBold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5).copyWith(left: 20),
              child: Text(
                "Minimal Nilai • 65",
                style: TypographyStyle.body2DemiBold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
          ],
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 5).copyWith(left: 75).copyWith(right: 30),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 25).copyWith(left: 20),
              child: SvgPicture.asset('assets/krisna/icons/Lampu.svg'),
            ),
            Container(
              padding: EdgeInsets.only(top: 20).copyWith(left: 15),
              child: Text(
                "Tes Intelegensi\nUmum",
                style: TypographyStyle.heading6Bold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 5).copyWith(left: 76),
              child: Text(
                "Soal • 35 Butir",
                style: TypographyStyle.body2DemiBold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5).copyWith(left: 20),
              child: Text(
                "Minimal Nilai • 80",
                style: TypographyStyle.body2DemiBold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
          ],
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 5).copyWith(left: 75).copyWith(right: 30),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 26).copyWith(left: 20),
              child: SvgPicture.asset('assets/krisna/icons/Pribadi.svg'),
            ),
            Container(
              padding: EdgeInsets.only(top: 20).copyWith(left: 15),
              child: Text(
                "Tes Karakteristik\nPribadi",
                style: TypographyStyle.heading6Bold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 5).copyWith(left: 76),
              child: Text(
                "Soal • 45 Butir",
                style: TypographyStyle.body2DemiBold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5).copyWith(left: 15),
              child: Text(
                "Minimal Nilai • 156",
                style: TypographyStyle.body2DemiBold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
          ],
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 10).copyWith(left: 75).copyWith(right: 30),
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
    );
  }
}
