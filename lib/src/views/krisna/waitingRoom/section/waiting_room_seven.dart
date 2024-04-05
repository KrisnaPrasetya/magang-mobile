import 'package:internship/src/core/base_import.dart';

class WaitingRoomSeven extends StatelessWidget {
  const WaitingRoomSeven({super.key});

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
                "#Langkah 4",
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
                "Cek Kembali Jawaban",
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
          SizedBox(
            height: 20,
          ),
          Container(
            height: 444,
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
                            "Sisa waktu 2-5 menit, digunakan untuk mengerjakan soal-soal TIU dan TWK yang belum terjawab (ditandai dengan bulatan warna MERAH) atau soal soal TKP yang masih ragu jawabannya.",
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
                            "Ingat…. Jangan ada soal yang tidak terjawab!!!!",
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
                            "Habiskan waktu yang tersisa. Jangan panik jika ada yang sudah selesai.",
                            textAlign: TextAlign.left,
                            style: TypographyStyle.body1bMedium
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
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
                            "Untuk soal yang belum terjawab dan kalian TIDAK TAHU jawabannya, jawab secara acak saja namun KONSISTEN. Contohnya, menjawab secara konsiten dengan memilih opsi jawaban “B” atau “C” terhadap soal yang kalian sama sekali tidak mengetahui jawabannya.",
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
                          "5.  ",
                          style: TypographyStyle.body1bMedium
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(
                          child: Text(
                            "Tidak ada pengurangan nilai kalau jawaban kita salah. Jadi…..sekali lagi, Jangan ada soal yang tidak terjawab!!!!",
                            textAlign: TextAlign.left,
                            style: TypographyStyle.body1bMedium
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //spasi sizebox
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
