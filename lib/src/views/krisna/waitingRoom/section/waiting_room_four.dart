import 'package:internship/src/core/base_import.dart';

class WaitingRoomFour extends StatelessWidget {
  const WaitingRoomFour({super.key});

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
                "#Langkah 1",
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
                "Kerjakan TKP\nDulu",
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
                        "66-110",
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
                        "45 Soal",
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
                        "25 Menit",
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
            height: 288,
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
                            "Baca sub kategori soal (terletak di pojok kiri atas).Untuk itu penting mempelajari dengan baik tujuan, pengertian, konsep, karakteristik & sikap yang diharapkan pada masing-masing sub kategori TKP (Pelayanan Publik, Jejaring Kerja, Sosial Budaya, TIK, Profesionalisme & Anti Radikalisme)",
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
                            "Baca cepat soal, temukan inti pertanyaan (biasanya di bagian akhir soal).",
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
                            "Baca cermat inti pertanyaan dan pilihan jawabannya (Contoh: Kecuali)",
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
                            "Dari 5 pilihan jawaban, pilih 2 jawaban yang ideal/relevan/terbaik sesuai dengan sub kategori.",
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
                            "Pilih salah satu secara cepat. Jangan terlalu lama memilih jawaban terbaik diantara 2 pilihan yang tersisa",
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
                  Padding(
                    padding: const EdgeInsets.only(right: 220),
                    child: Text(
                      "Tips & Trik",
                      style: TypographyStyle.body1Bold
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
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
                            "Tempatkan diri kita sebagai seorang yang AHLI atau PROFESIONAL dibidang/materi yang ditanyakan. Misalkan soal terkait IT, maka posisikan diri kita sebagai ahli IT. Pilih jawaban yang mampu menyelesaikan masalah IT tersebut. Contoh lain, jika soal terkait pelayanan publik, posisikan diri kalian sebagai orang yang profesional dan mengutamakan memberikan pelayanan yang terbaik.",
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
                            "Kerjakan semua soal dengan cara mengerjakan diatas dalam waktu maksimal 25 menit. Jika semua pilihan jawaban kita bernilai minimal 4, maka nilai total TKP sudah memenuhi Pasing Grade (4x45=180). Seburuk-buruknya, dari 45 soal terdapat 10 soal yang nilainya 3, maka nilai total TKP tetap memenuhi Passing Grade (35X4)+(10x3)=140+30=170.",
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
