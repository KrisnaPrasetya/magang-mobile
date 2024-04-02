import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internship/src/core/base_import.dart';

class WaitingRoomThree extends StatelessWidget {
  const WaitingRoomThree({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: CustomDisableGlowBehavior(),
      child: SingleChildScrollView(
        child: Column(
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
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 15, left: 22),
              child: Text(
                "Strategi Urutan\nMengerjakan SKD",
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ).copyWith(bottom: 15),
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 5, top: 10),
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
                              "1. Tes Karakteristik\nPribadi (TKP) • Soal\nNo. 66-110",
                              style: TypographyStyle.heading6Bold
                                  .copyWith(color: ColorStyle().blueRange[900]),
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
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: ColorStyle().blueRange[300]),
                        child: Text(
                          "Target: menyelesaikan 45 soal dalam waktu maksimal 25 menit",
                          style: TypographyStyle.body1DemiBold
                              .copyWith(color: ColorStyle().blueRange[900]),
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
            Center(
              child: SvgPicture.asset(
                'assets/krisna/icons/Arrow.svg',
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 5, top: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15))
                        .copyWith(color: ColorStyle().grayscaleRange[200]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text(
                        "BREAK : 10 Detik",
                        textAlign: TextAlign.left,
                        style: TypographyStyle.heading6Bold
                            .copyWith(color: ColorStyle().grayscaleRange[700]),
                      ),
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
                          padding: const EdgeInsets.only(left: 10, bottom: 5),
                          child: Container(
                            child: Text(
                              "Gerak Badan (Suasana Baru)",
                              style: TypographyStyle.body1DemiBold,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
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
                          padding: const EdgeInsets.only(left: 10, bottom: 5),
                          child: Container(
                            child: Text(
                              "Tarik Nafas Panjang (asupan \noksigen ke otak)",
                              style: TypographyStyle.body1DemiBold,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
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
                          padding: const EdgeInsets.only(left: 10, bottom: 5),
                          child: Container(
                            child: Text(
                              "Perhatikan sisa waktu di pojok\nkanan atas",
                              style: TypographyStyle.body1DemiBold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: SvgPicture.asset(
                'assets/krisna/icons/Arrow.svg',
              ),
            ),




            
          ],
        ),
      ),
    );
  }
}
