import 'package:internship/src/core/base_import.dart';

class WaitingRoomTwo extends StatelessWidget {
  const WaitingRoomTwo({super.key});

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
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 15, left: 22),
          child: Text(
            "Persiapan Menjelang\nTes SKD",
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
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  color: HexColor("#398AEE"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30).copyWith(left: 15),
              child: Text(
                "Luangkan waktu 1-2 hari untuk\nrefreshing",
                style: TypographyStyle.body1DemiBold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
          ],
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 5).copyWith(left: 45).copyWith(right: 30),
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
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 17),
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  color: HexColor("#398AEE"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10).copyWith(left: 15),
              child: Text(
                "Jaga kondisi badan (minum \nvitamin, tidur yang cukup, dll)",
                style: TypographyStyle.body1DemiBold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
          ],
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 5).copyWith(left: 45).copyWith(right: 30),
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
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 17),
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  color: HexColor("#398AEE"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10).copyWith(left: 15),
              child: Text(
                " Siapkan kondisi mental (doa,\n mintarestu, bangun keyakinan\n diri, dll)",
                textAlign: TextAlign.left,
                style: TypographyStyle.body1DemiBold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
          ],
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 5).copyWith(left: 45).copyWith(right: 30),
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
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 17),
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  color: HexColor("#398AEE"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10).copyWith(left: 15),
              child: Text(
                " Persiapkan Perlengkapan Yang\n dipersyaratkan (pakaian Sesuai\n Persyaratan, Sepatu Yang\n Nyaman, Dll)",
                textAlign: TextAlign.left,
                style: TypographyStyle.body1DemiBold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
          ],
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 5).copyWith(left: 45).copyWith(right: 30),
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
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 17),
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  color: HexColor("#398AEE"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10).copyWith(left: 15),
              child: Text(
                " Survei lokasi sehari sebelum tes\n (pastikan waktu perjalanan, cara\n mencapai tempat, parkir, dll)",
                textAlign: TextAlign.left,
                style: TypographyStyle.body1DemiBold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
          ],
        ),
        Padding(
          padding:
              EdgeInsets.only(top: 5).copyWith(left: 45).copyWith(right: 30),
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
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 17),
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  color: HexColor("#398AEE"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10).copyWith(left: 15),
              child: Text(
                "Hadir di tempat sesuai waktu\nyang dipersyaratkan (60-90 menit \nsebelum seleksi dimulai)",
                textAlign: TextAlign.left,
                style: TypographyStyle.body1DemiBold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
