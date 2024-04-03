import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/gungsatria/waiting-room/waitingroom_controller.dart';

class WaitingRoomMobilePage extends StatelessWidget {
  WaitingRoomMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WaitingRoomController>(
      builder: (controller) => PopScope(
        canPop: controller.canPop,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: HexColor('4169E1'),
            leading: SvgPicture.asset(
              'assets/gungsatria/icons/ic_back.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
          body: ScrollConfiguration(
            behavior: CustomDisableGlowBehavior(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/gungsatria/images/student.png',
                      alignment: Alignment.bottomCenter,
                    ),
                    color: HexColor('4169E1'),
                    height: 300,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Text(
                            'Menunggu\nPelaksanaan UKA SKD',
                            style: TypographyStyle.heading6Bold,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '00:00:05',
                            style: TypographyStyle.heading1Heavy.copyWith(
                                color: ColorStyle().redRange[400],
                                fontSize: 52),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Saat waktu tunggu habis, UKA\nakan dimulai secara otomatis',
                            style: TypographyStyle.body1bDemiBold.copyWith(
                                color: ColorStyle().grayscaleRange[500]),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: HexColor('4169E1'),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 8,
                            width: Get.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ListView.separated(
                                  separatorBuilder: (context, index) =>
                                      SizedBox(width: 2),
                                  itemCount: 7,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: (Get.width - 98) / 7,
                                      decoration: BoxDecoration(
                                        color: controller.activePage == index
                                            ? ColorStyle().orangeRange[700]
                                            : HexColor('5D83F4'),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                              physics: ScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: Get.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 12, left: 20),
                                          child: Text(
                                            'Materi Seleksi\nKompetensi Dasar (SKD)',
                                            style: TypographyStyle.heading5Bold
                                                .copyWith(
                                                    color:
                                                        ColorStyle.whiteColor),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 12, left: 20),
                                          child: Container(
                                            width: 52,
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: ColorStyle.whiteColor,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                        Container(
                                          width: Get.width,
                                          child: ListView.separated(
                                            separatorBuilder:
                                                (context, index) => SizedBox(
                                              height: 20,
                                            ),
                                            itemCount: controller
                                                .titleMateriSKD.length,
                                            shrinkWrap: true,
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemBuilder: (context, index) {
                                              return Container(
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 20),
                                                      child: SvgPicture.asset(
                                                          'assets/gungsatria/icons/ic_${index == 0 ? 'id_flag' : index == 1 ? 'lamp' : 'mind'}.svg'),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 12, left: 20),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(
                                                            height: 24,
                                                          ),
                                                          Text(
                                                            '${controller.titleMateriSKD[index]}',
                                                            style: TypographyStyle
                                                                .heading6Bold
                                                                .copyWith(
                                                                    color: ColorStyle
                                                                        .whiteColor),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                'Soal • ${index == 0 ? '30' : index == 1 ? '35' : '45'} Butir',
                                                                style: TypographyStyle
                                                                    .body2DemiBold
                                                                    .copyWith(
                                                                        color: ColorStyle
                                                                            .whiteColor),
                                                              ),
                                                              SizedBox(
                                                                width: 30,
                                                              ),
                                                              Text(
                                                                'Minimal Nilai • ${index == 0 ? '65' : index == 1 ? '80' : '156'}',
                                                                style: TypographyStyle
                                                                    .body2DemiBold
                                                                    .copyWith(
                                                                        color: ColorStyle
                                                                            .whiteColor),
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 12,
                                                          ),
                                                          index == 2
                                                              ? SizedBox()
                                                              : Container(
                                                                  width: 250,
                                                                  height: 2,
                                                                  decoration: BoxDecoration(
                                                                      color: ColorStyle()
                                                                              .blueRange[
                                                                          600],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              4)),
                                                                ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: Get.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            'Persiapan Menjelang\nTes SKD',
                                            style: TypographyStyle.heading5Bold
                                                .copyWith(
                                                    color:
                                                        ColorStyle.whiteColor),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 12, left: 20),
                                          child: Container(
                                            width: 52,
                                            height: 4,
                                            decoration: BoxDecoration(
                                                color: ColorStyle.whiteColor,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Container(
                                          width: Get.width - 40,
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 16),
                                            child: ListView.separated(
                                              separatorBuilder:
                                                  (context, index) => SizedBox(
                                                height: 20,
                                              ),
                                              itemCount: 6,
                                              shrinkWrap: true,
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              itemBuilder: (context, index) {
                                                return Row(
                                                  children: [
                                                    Container(
                                                      width: 12,
                                                      height: 12,
                                                      decoration: BoxDecoration(
                                                          color: ColorStyle()
                                                              .blueRange[600],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3)),
                                                    ),
                                                    SizedBox(width: 8),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(
                                                            height: 8,
                                                          ),
                                                          Text(
                                                            '${controller.tipsTesSKD[index]}',
                                                            style: TypographyStyle
                                                                .body1DemiBold
                                                                .copyWith(
                                                                    color: ColorStyle
                                                                        .whiteColor),
                                                          ),
                                                          SizedBox(
                                                            height: 12,
                                                          ),
                                                          index == 5
                                                              ? SizedBox()
                                                              : Container(
                                                                  width: 300,
                                                                  height: 2,
                                                                  decoration: BoxDecoration(
                                                                      color: ColorStyle()
                                                                              .blueRange[
                                                                          600],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              4)),
                                                                ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: Get.width - 40,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          'Strategi Urutan\nMengerjakan SKD',
                                          style: TypographyStyle.heading5Bold
                                              .copyWith(
                                                  color: ColorStyle.whiteColor),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Container(
                                          width: 52,
                                          height: 4,
                                          decoration: BoxDecoration(
                                              color: ColorStyle.whiteColor,
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                        ),
                                        SizedBox(
                                          height: 24,
                                        ),
                                        Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: Get.width - 40,
                                                decoration: BoxDecoration(
                                                    color: ColorStyle()
                                                        .blueRange[100],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 12,
                                                                  top: 12),
                                                          child: Text(
                                                            '1. Tes Karakteristik\nPribadi(TKP) • Soal\nNo. 66-110',
                                                            style: TypographyStyle
                                                                .heading6Bold
                                                                .copyWith(
                                                                    color: ColorStyle()
                                                                            .blueRange[
                                                                        900]),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 28,
                                                        ),
                                                        SvgPicture.asset(
                                                            'assets/gungsatria/icons/ic_mind_backlight.svg')
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 12),
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 68,
                                                        decoration: BoxDecoration(
                                                            color: ColorStyle()
                                                                .blueRange[300],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: Text(
                                                          'Target: menyelesaikan 45 soal\ndalam waktu maksimal 29 menit',
                                                          style: TypographyStyle
                                                              .body1DemiBold
                                                              .copyWith(
                                                                  color: ColorStyle()
                                                                          .blueRange[
                                                                      900]),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 28),
                                                      child: Container(
                                                        height: 12,
                                                        decoration: BoxDecoration(
                                                            color: HexColor(
                                                                'FEBE03'),
                                                            borderRadius: BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        6),
                                                                topRight: Radius
                                                                    .circular(
                                                                        6))),
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                width: Get.width - 40,
                                                child: SvgPicture.asset(
                                                  'assets/gungsatria/icons/ic_arrow.svg',
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                color: Colors.white,
                                                width: Get.width - 40,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text('BREAK: 10 Detik'),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 18,
                                                          height: 18,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.amber,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                        ),
                                                        Text(
                                                            'Gerak badan (suasana baru)')
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 18,
                                                          height: 18,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.amber,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                        ),
                                                        Text(
                                                            'Gerak badan (suasana baru)')
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 18,
                                                          height: 18,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.amber,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                        ),
                                                        Text(
                                                            'Gerak badan (suasana baru)')
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                width: Get.width - 40,
                                                child: SvgPicture.asset(
                                                  'assets/gungsatria/icons/ic_arrow.svg',
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                width: Get.width - 40,
                                                decoration: BoxDecoration(
                                                    color: ColorStyle()
                                                        .blueRange[100],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 12),
                                                          child: Text(
                                                              '1. Tes Karakteristik\nPribadi(TKP) • Soal\nNo. 66-110'),
                                                        ),
                                                        SvgPicture.asset(
                                                            'assets/gungsatria/icons/ic_mind_backlight.svg')
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Container(
                                                      height: 52,
                                                      color: Colors.amber,
                                                      child: Text(
                                                          'Target: menyelesaikan 45 soal dalam waktu maksimal 29 menit'),
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 28),
                                                      child: Container(
                                                        height: 12,
                                                        decoration: BoxDecoration(
                                                            color: ColorStyle
                                                                .blackColor,
                                                            borderRadius: BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        6),
                                                                topRight: Radius
                                                                    .circular(
                                                                        6))),
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                width: Get.width - 40,
                                                child: SvgPicture.asset(
                                                  'assets/gungsatria/icons/ic_arrow.svg',
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                color: Colors.white,
                                                width: Get.width - 40,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text('BREAK: 10 Detik'),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 18,
                                                          height: 18,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.amber,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                        ),
                                                        Text(
                                                            'Gerak badan (suasana baru)')
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 18,
                                                          height: 18,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.amber,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                        ),
                                                        Text(
                                                            'Gerak badan (suasana baru)')
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 18,
                                                          height: 18,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.amber,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                        ),
                                                        Text(
                                                            'Gerak badan (suasana baru)')
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                width: Get.width - 40,
                                                child: SvgPicture.asset(
                                                  'assets/gungsatria/icons/ic_arrow.svg',
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                width: Get.width - 40,
                                                decoration: BoxDecoration(
                                                    color: ColorStyle()
                                                        .blueRange[100],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 12),
                                                          child: Text(
                                                              '1. Tes Karakteristik\nPribadi(TKP) • Soal\nNo. 66-110'),
                                                        ),
                                                        SvgPicture.asset(
                                                            'assets/gungsatria/icons/ic_mind_backlight.svg')
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Container(
                                                      height: 52,
                                                      color: Colors.amber,
                                                      child: Text(
                                                          'Target: menyelesaikan 45 soal dalam waktu maksimal 29 menit'),
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 28),
                                                      child: Container(
                                                        height: 12,
                                                        decoration: BoxDecoration(
                                                            color: ColorStyle
                                                                .blackColor,
                                                            borderRadius: BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        6),
                                                                topRight: Radius
                                                                    .circular(
                                                                        6))),
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                width: Get.width - 40,
                                                child: SvgPicture.asset(
                                                  'assets/gungsatria/icons/ic_arrow.svg',
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                color: Colors.white,
                                                width: Get.width - 40,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text('BREAK: 10 Detik'),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 18,
                                                          height: 18,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.amber,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                        ),
                                                        Text(
                                                            'Gerak badan (suasana baru)')
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 18,
                                                          height: 18,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.amber,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                        ),
                                                        Text(
                                                            'Gerak badan (suasana baru)')
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          width: 18,
                                                          height: 18,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.amber,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6)),
                                                        ),
                                                        Text(
                                                            'Gerak badan (suasana baru)')
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                width: Get.width - 40,
                                                child: SvgPicture.asset(
                                                  'assets/gungsatria/icons/ic_arrow.svg',
                                                ),
                                              ),
                                              SizedBox(
                                                height: 12,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
