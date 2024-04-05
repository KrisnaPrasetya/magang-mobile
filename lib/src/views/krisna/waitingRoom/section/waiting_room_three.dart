import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internship/src/core/base_import.dart';

class WaitingRoomThree extends StatelessWidget {
  const WaitingRoomThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width - 48,
      child: Column(
        children: [
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.only(right: 108),
            child: Text(
              "Strategi Urutan\nMengerjakan SKD",
              style: TypographyStyle.heading5Bold
                  .copyWith(color: ColorStyle().grayscaleRange.shade100),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(right: 260),
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
          Container(
            height: 420,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(15))
                              .copyWith(color: ColorStyle().blueRange[100]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "1. Te s Karakteristik\nPribadi (TKP) • Soal\nNo. 66-110",
                                    style: TypographyStyle.heading6Bold
                                        .copyWith(
                                            color: ColorStyle().blueRange[900]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: SvgPicture.asset(
                                      'assets/krisna/icons/PribadiCahaya.svg'),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorStyle().blueRange[300]),
                              child: Text(
                                "Target: menyelesaikan 45 soal dalam waktu maksimal 25 menit",
                                style: TypographyStyle.body1DemiBold.copyWith(
                                    color: ColorStyle().blueRange[900]),
                              ),
                            ),
                          ),
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                height: 11,
                                width: 241,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: HexColor("#FEBE03"),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'assets/krisna/icons/Arrow.svg',
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                      decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15))
                          .copyWith(color: ColorStyle().grayscaleRange[200]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "BREAK : 10 Detik",
                            textAlign: TextAlign.left,
                            style: TypographyStyle.heading6Bold.copyWith(
                                color: ColorStyle().grayscaleRange[700]),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, bottom: 4),
                                child: Container(
                                  child: Text(
                                    "Gerak Badan (Suasana Baru)",
                                    style: TypographyStyle.body1DemiBold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, bottom: 4),
                                child: Container(
                                  child: Text(
                                    "Tarik Nafas Panjang (asupan \noksigen ke otak)",
                                    style: TypographyStyle.body1DemiBold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Container(
                                  child: Text(
                                    "Perhatikan sisa waktu di pojok\nkanan atas",
                                    style: TypographyStyle.body1DemiBold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'assets/krisna/icons/Arrow.svg',
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(15))
                              .copyWith(color: ColorStyle().orangeRange[800]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "2. Tes Intelegensi\nUmum (TIU) •Soal\nNo. 31-65",
                                    style: TypographyStyle.heading6Bold
                                        .copyWith(
                                            color: ColorStyle()
                                                .grayscaleRange[100]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: SvgPicture.asset(
                                      'assets/krisna/icons/lampucahaya.svg'),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: HexColor("#FE6B01")),
                              child: Text(
                                "Target: Mengerjakan minimal\n25 soal dalam waktu maksimal\n34 menit",
                                style: TypographyStyle.body1DemiBold.copyWith(
                                    color: ColorStyle().grayscaleRange[100]),
                              ),
                            ),
                          ),
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                height: 11,
                                width: 241,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorStyle().orangeRange[500],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'assets/krisna/icons/Arrow.svg',
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                      decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15))
                          .copyWith(color: ColorStyle().grayscaleRange[200]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "BREAK : 10 Detik",
                            textAlign: TextAlign.left,
                            style: TypographyStyle.heading6Bold.copyWith(
                                color: ColorStyle().grayscaleRange[700]),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, bottom: 4),
                                child: Container(
                                  child: Text(
                                    "Gerak Badan (Suasana Baru)",
                                    style: TypographyStyle.body1DemiBold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, bottom: 4),
                                child: Container(
                                  child: Text(
                                    "Tarik Nafas Panjang (asupan \noksigen ke otak)",
                                    style: TypographyStyle.body1DemiBold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Container(
                                  child: Text(
                                    "Perhatikan sisa waktu di pojok\nkanan atas",
                                    style: TypographyStyle.body1DemiBold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'assets/krisna/icons/Arrow.svg',
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(15))
                              .copyWith(color: ColorStyle().redRange[400]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "3. Tes Wawasan\nKebangsaan (TWK) \n• Soal No. 1 - 30",
                                    style: TypographyStyle.heading6Bold
                                        .copyWith(
                                            color: ColorStyle()
                                                .grayscaleRange[100]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: SvgPicture.asset(
                                      'assets/krisna/icons/BenderaCahaya.svg'),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorStyle().redRange[500]),
                              child: Text(
                                "Target: Mengerjakan minimal\n20 soal dalam waktu maksimal\n34 menit",
                                style: TypographyStyle.body1DemiBold.copyWith(
                                    color: ColorStyle().grayscaleRange[100]),
                              ),
                            ),
                          ),
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                height: 11,
                                width: 241,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorStyle().orangeRange[500],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'assets/krisna/icons/Arrow.svg',
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                      decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15))
                          .copyWith(color: ColorStyle().grayscaleRange[200]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "BREAK : 10 Detik",
                            textAlign: TextAlign.left,
                            style: TypographyStyle.heading6Bold.copyWith(
                                color: ColorStyle().grayscaleRange[700]),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, bottom: 4),
                                child: Container(
                                  child: Text(
                                    "Gerak Badan (Suasana Baru)",
                                    style: TypographyStyle.body1DemiBold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, bottom: 4),
                                child: Container(
                                  child: Text(
                                    "Tarik Nafas Panjang (asupan \noksigen ke otak)",
                                    style: TypographyStyle.body1DemiBold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Container(
                                  child: Text(
                                    "Perhatikan sisa waktu di pojok\nkanan atas",
                                    style: TypographyStyle.body1DemiBold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'assets/krisna/icons/Arrow.svg',
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                      decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15))
                          .copyWith(color: ColorStyle().grayscaleRange[200]),
                      child: Column(
                        children: [
                          Text(
                            "SISA WAKTU 2 MENIT",
                            style: TypographyStyle.heading6Bold.copyWith(
                                color: ColorStyle().grayscaleRange[700]),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15))
                                  .copyWith(
                                      color: ColorStyle().grayscaleRange[300]),
                              child: Text(
                                "Target:\nmenyelesaikan soal-soal yang belum terjawab/ragu",
                                style: TypographyStyle.body1DemiBold.copyWith(
                                    color: ColorStyle().grayscaleRange[700]),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                      decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15))
                          .copyWith(color: ColorStyle().grayscaleRange[200]),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/krisna/icons/Circle_Info.svg'),
                              Text(
                                "Catatan:",
                                style: TypographyStyle.body1DemiBold.copyWith(
                                    color: ColorStyle().grayscaleRange[900]),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              "Setelah mengerjakan TKP, anda \ndapat mengerjakan TWK terlebih \ndahulu sebelum mengerjakan TIU (sesuai dengan kebiasaan/kenyamanan anda)",
                              style: TypographyStyle.body1DemiBold.copyWith(
                                  color: ColorStyle().grayscaleRange[700]),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
