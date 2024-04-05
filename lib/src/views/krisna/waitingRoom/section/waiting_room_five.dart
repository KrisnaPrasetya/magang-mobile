import 'package:internship/src/core/base_import.dart';

class WaitingRoomFive extends StatelessWidget {
  const WaitingRoomFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width - 48,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 108,
              height: 26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: ColorStyle().orangeRange[800],
              ),
              child: Text(
                "#Langkah 2",
                textAlign: TextAlign.center,
                style:
                    TypographyStyle.body1DemiBold.copyWith(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Container(
              child: Text(
                "Kerjakan TIU",
                style: TypographyStyle.heading5Bold
                    .copyWith(color: ColorStyle().grayscaleRange.shade100),
              ),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Container(
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: ColorStyle().grayscaleRange.shade100,
              ),
            ),
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 300,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: ColorStyle().blueRange[100],
              ),
              child: Row(
                children: [
                  SizedBox(width: 12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Nomor\nSoal:",
                        textAlign: TextAlign.center,
                        style: TypographyStyle.body3DemiBold
                            .copyWith(color: ColorStyle().blueRange[900]),
                      ),
                      Text(
                        "31-65",
                        textAlign: TextAlign.center,
                        style: TypographyStyle.body1Bold
                            .copyWith(color: ColorStyle().blueRange[900]),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      height: 38,
                      width: 2,
                      color: ColorStyle().blueRange[200],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Target Soal\nDikerjakan",
                        textAlign: TextAlign.center,
                        style: TypographyStyle.body3DemiBold
                            .copyWith(color: ColorStyle().blueRange[900]),
                      ),
                      Text(
                        "25 Soal",
                        textAlign: TextAlign.center,
                        style: TypographyStyle.body1Bold
                            .copyWith(color: ColorStyle().blueRange[900]),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      height: 38,
                      width: 2,
                      color: ColorStyle().blueRange[200],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Waktu\nMengerjakan",
                        textAlign: TextAlign.center,
                        style: TypographyStyle.body3DemiBold
                            .copyWith(color: ColorStyle().blueRange[900]),
                      ),
                      Text(
                        "35 Menit",
                        textAlign: TextAlign.center,
                        style: TypographyStyle.body1Bold
                            .copyWith(color: ColorStyle().blueRange[900]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Cara Mengerjakan",
              style: TypographyStyle.body1Bold.copyWith(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 300,
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1.  ",
                          style: TypographyStyle.body1bMedium
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(
                          child: Text(
                            "Tarik nafas & gerak badan terlebih dahulu. Jangan lupa melihat waktu tersisa yang terletak di pojok kanan atas.",
                            textAlign: TextAlign.left,
                            style: TypographyStyle.body1bMedium
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Container(
                      height: 1,
                      width: 260,
                      color: ColorStyle().blueRange[600],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2.  ",
                          style: TypographyStyle.body1bMedium
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(
                          child: Text(
                            "Dari 35 soal, targetkan menjawab minimal 25 soal dengan benar. Untuk itu carilah soal-soal yang mudah terlebih dahulu.",
                            textAlign: TextAlign.left,
                            style: TypographyStyle.body1bMedium
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Container(
                      height: 1,
                      width: 260,
                      color: ColorStyle().blueRange[600],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3.  ",
                          style: TypographyStyle.body1bMedium
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(
                          child: Text(
                            "Jangan menghabiskan waktu untuk mengerjakan soal yang sulit. Jika soal yang kalian kerjakan sudah lebih dari 2 menit, tinggalkan dulu. Nanti saja dikerjakannya. Setelah selesai mengerjakan seluruh soal TWK.",
                            textAlign: TextAlign.left,
                            style: TypographyStyle.body1bMedium
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Container(
                      height: 1,
                      width: 260,
                      color: ColorStyle().blueRange[600],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "4.  ",
                          style: TypographyStyle.body1bMedium
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(
                          child: Text(
                            "Pada tahap ini pastikan bahwa kalian sudah mencapai target minimal 20 soal benar dari semua soal yang kalian kerjakan.",
                            textAlign: TextAlign.left,
                            style: TypographyStyle.body1bMedium
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
          //
        ],
      ),
    );
  }
}
