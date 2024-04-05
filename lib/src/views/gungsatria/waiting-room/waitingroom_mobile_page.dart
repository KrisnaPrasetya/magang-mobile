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
                                          height: 400,
                                          width: Get.width - 40,
                                          child: SingleChildScrollView(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 16),
                                              child: ListView.separated(
                                                separatorBuilder:
                                                    (context, index) =>
                                                        SizedBox(
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
                                                                    .circular(
                                                                        3)),
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
                                                                        color: ColorStyle().blueRange[
                                                                            600],
                                                                        borderRadius:
                                                                            BorderRadius.circular(4)),
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
                                          height: 400,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: ColorStyle()
                                                          .blueRange[100],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16)),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 12,
                                                      ),
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                            '1. Tes Karakteristik\nPribadi(TKP) • Soal\nNo. 66-110',
                                                            style: TypographyStyle
                                                                .heading6Bold
                                                                .copyWith(
                                                                    color: ColorStyle()
                                                                            .blueRange[
                                                                        900]),
                                                          ),
                                                          SizedBox(
                                                            width: 28,
                                                          ),
                                                          Expanded(
                                                            child: SvgPicture.asset(
                                                                'assets/gungsatria/icons/ic_mind_backlight.svg'),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 8,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 12),
                                                        child: Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height: 68,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .blueRange[
                                                                  300],
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
                                                        padding:
                                                            const EdgeInsets
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
                                                  decoration: BoxDecoration(
                                                      color: ColorStyle()
                                                          .grayscaleRange[200],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16)),
                                                  width: Get.width - 40,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 12,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 12),
                                                        child: Text(
                                                          'BREAK: 10 Detik',
                                                          style: TypographyStyle
                                                              .heading6Bold
                                                              .copyWith(
                                                                  color: ColorStyle()
                                                                          .grayscaleRange[
                                                                      700]),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 4,
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 12),
                                                            child: Container(
                                                              width: 18,
                                                              height: 18,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .amber,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6)),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                            'Gerak badan (suasana baru)',
                                                            style: TypographyStyle
                                                                .body1DemiBold
                                                                .copyWith(
                                                                    color: ColorStyle()
                                                                            .grayscaleRange[
                                                                        700]),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(height: 12),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 12),
                                                          ),
                                                          Container(
                                                            width: 18,
                                                            height: 18,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .amber,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6)),
                                                          ),
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                              'Tarik Nafas Panjang (asupan\noksigen ke otak)',
                                                              style: TypographyStyle
                                                                  .body1DemiBold
                                                                  .copyWith(
                                                                      color: ColorStyle()
                                                                              .grayscaleRange[
                                                                          700]))
                                                        ],
                                                      ),
                                                      SizedBox(height: 12),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 12),
                                                          ),
                                                          Container(
                                                            width: 18,
                                                            height: 18,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .amber,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6)),
                                                          ),
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                              'Perhatikan sisa waktu di pojok\nkanan atas',
                                                              style: TypographyStyle
                                                                  .body1DemiBold
                                                                  .copyWith(
                                                                      color: ColorStyle()
                                                                              .grayscaleRange[
                                                                          700]))
                                                        ],
                                                      ),
                                                      SizedBox(height: 12),
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
                                                          .orangeRange[800],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16)),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 8,
                                                      ),
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                            '2. Tes Intelegensi\nUmum (TIU) • Soal\nNo. 31-65',
                                                            style: TypographyStyle
                                                                .heading6Bold
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                          SizedBox(
                                                            width: 28,
                                                          ),
                                                          Expanded(
                                                            child: SvgPicture.asset(
                                                                'assets/gungsatria/icons/ic_lamp_backlight.svg'),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 8,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 12),
                                                        child: Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height: 76,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .blueRange[
                                                                  300],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Text(
                                                            'Target: Mengerjakan minimal\n25 soal dalam waktu maksimal\n34 menit',
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
                                                        padding:
                                                            const EdgeInsets
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
                                                  decoration: BoxDecoration(
                                                      color: ColorStyle()
                                                          .grayscaleRange[200],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16)),
                                                  width: Get.width - 40,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 12,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 12),
                                                        child: Text(
                                                          'BREAK: 10 Detik',
                                                          style: TypographyStyle
                                                              .heading6Bold
                                                              .copyWith(
                                                                  color: ColorStyle()
                                                                          .grayscaleRange[
                                                                      700]),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 4,
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 12),
                                                            child: Container(
                                                              width: 18,
                                                              height: 18,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .amber,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6)),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                              'Gerak badan (suasana baru)',
                                                              style: TypographyStyle
                                                                  .body1DemiBold
                                                                  .copyWith(
                                                                      color: ColorStyle()
                                                                              .grayscaleRange[
                                                                          700]))
                                                        ],
                                                      ),
                                                      SizedBox(height: 12),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 12),
                                                          ),
                                                          Container(
                                                            width: 18,
                                                            height: 18,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .amber,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6)),
                                                          ),
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                              'Tarik Nafas Panjang (asupan\noksigen ke otak)',
                                                              style: TypographyStyle
                                                                  .body1DemiBold
                                                                  .copyWith(
                                                                      color: ColorStyle()
                                                                              .grayscaleRange[
                                                                          700]))
                                                        ],
                                                      ),
                                                      SizedBox(height: 12),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 12),
                                                          ),
                                                          Container(
                                                            width: 18,
                                                            height: 18,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .amber,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6)),
                                                          ),
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                              'Perhatikan sisa waktu di pojok\nkanan atas',
                                                              style: TypographyStyle
                                                                  .body1DemiBold
                                                                  .copyWith(
                                                                      color: ColorStyle()
                                                                              .grayscaleRange[
                                                                          700]))
                                                        ],
                                                      ),
                                                      SizedBox(height: 12),
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
                                                  decoration: BoxDecoration(
                                                      color: ColorStyle()
                                                          .redRange[400],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16)),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 12,
                                                      ),
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                            '3. Tes Wawasan\nKebangsaan (TWK)\n• Soal No. 1 - 30',
                                                            style: TypographyStyle
                                                                .heading6Bold
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                          SizedBox(
                                                            width: 20,
                                                          ),
                                                          Expanded(
                                                            child: SvgPicture.asset(
                                                                'assets/gungsatria/icons/ic_flag_backlight.svg'),
                                                          )
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 8,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 12),
                                                        child: Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height: 76,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .redRange[
                                                                  500],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Text(
                                                              'Target: Mengerjakan minimal\n20 soal dalam waktu maksimal\n34 menit',
                                                              style: TypographyStyle
                                                                  .body1DemiBold
                                                                  .copyWith(
                                                                color: Colors
                                                                    .white,
                                                              )),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 8,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
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
                                                  decoration: BoxDecoration(
                                                      color: ColorStyle()
                                                          .grayscaleRange[200],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16)),
                                                  width: Get.width - 40,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 12,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 12),
                                                        child: Text(
                                                          'BREAK: 10 Detik',
                                                          style: TypographyStyle
                                                              .heading6Bold
                                                              .copyWith(
                                                                  color: ColorStyle()
                                                                          .grayscaleRange[
                                                                      700]),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 4,
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 12),
                                                            child: Container(
                                                              width: 18,
                                                              height: 18,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .amber,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6)),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                              'Gerak badan (suasana baru)',
                                                              style: TypographyStyle
                                                                  .body1DemiBold
                                                                  .copyWith(
                                                                      color: ColorStyle()
                                                                              .grayscaleRange[
                                                                          700]))
                                                        ],
                                                      ),
                                                      SizedBox(height: 12),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 12),
                                                          ),
                                                          Container(
                                                            width: 18,
                                                            height: 18,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .amber,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6)),
                                                          ),
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                              'Tarik Nafas Panjang (asupan\noksigen ke otak)',
                                                              style: TypographyStyle
                                                                  .body1DemiBold
                                                                  .copyWith(
                                                                      color: ColorStyle()
                                                                              .grayscaleRange[
                                                                          700]))
                                                        ],
                                                      ),
                                                      SizedBox(height: 12),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 12),
                                                          ),
                                                          Container(
                                                            width: 18,
                                                            height: 18,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .amber,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6)),
                                                          ),
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                              'Perhatikan sisa waktu di pojok\nkanan atas',
                                                              style: TypographyStyle
                                                                  .body1DemiBold
                                                                  .copyWith(
                                                                      color: ColorStyle()
                                                                              .grayscaleRange[
                                                                          700]))
                                                        ],
                                                      ),
                                                      SizedBox(height: 12),
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
                                                  decoration: BoxDecoration(
                                                      color: ColorStyle()
                                                          .grayscaleRange[200],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16)),
                                                  width: Get.width - 40,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 12,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 16),
                                                        child: Text(
                                                          'SISA WAKTU 2 MENIT',
                                                          style: TypographyStyle
                                                              .heading6Bold
                                                              .copyWith(
                                                                  color: ColorStyle()
                                                                          .grayscaleRange[
                                                                      700]),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 12,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 12),
                                                        child: Container(
                                                          height: 100,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .grayscaleRange[
                                                                  300],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                          child: Column(
                                                            children: [
                                                              SizedBox(
                                                                height: 12,
                                                              ),
                                                              Text(
                                                                'Target:\nmenyelesaikan soal-soal yang\nbelum terjawab/ragu',
                                                                style: TypographyStyle
                                                                    .body1DemiBold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .grayscaleRange[700]),
                                                              ),
                                                            ],
                                                          ),
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      )
                                                    ],
                                                  ),
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
                                                  decoration: BoxDecoration(
                                                      color: ColorStyle()
                                                          .grayscaleRange[200],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16)),
                                                  width: Get.width - 40,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 12,
                                                      ),
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          SvgPicture.asset(
                                                              'assets/gungsatria/icons/ic_circle_info.svg'),
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          Text(
                                                            'Catatan:',
                                                            style: TypographyStyle
                                                                .heading6Bold
                                                                .copyWith(
                                                                    color: ColorStyle()
                                                                            .grayscaleRange[
                                                                        700]),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 8,
                                                      ),
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 16,
                                                          ),
                                                          Text(
                                                            'Setelah mengerjakan TKP, anda\ndapat mengerjakan TWK terlebih\ndahulu sebelum mengerjakan TIU\n(sesuai dengan kebiasaan/\nkenyamanan anda)',
                                                            style: TypographyStyle
                                                                .body1DemiBold
                                                                .copyWith(
                                                                    color: ColorStyle()
                                                                            .grayscaleRange[
                                                                        700]),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Halaman Kerjakan TKP Dulu
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
                                        Container(
                                          width: 100,
                                          height: 28,
                                          decoration: BoxDecoration(
                                              color:
                                                  ColorStyle().orangeRange[800],
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Center(
                                            child: Text(
                                              '#Langkah 1',
                                              style: TypographyStyle
                                                  .body2DemiBold
                                                  .copyWith(
                                                      color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          'Kerjakan TKP\nDulu',
                                          style: TypographyStyle.heading5Bold
                                              .copyWith(color: Colors.white),
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
                                        Container(
                                          height: 400,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Container(
                                                  height: 65,
                                                  decoration: BoxDecoration(
                                                      color: ColorStyle()
                                                          .blueRange[100],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 32,
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text(
                                                                'Nomor\nSoal:',
                                                                style: TypographyStyle
                                                                    .body3DemiBold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                              Text(
                                                                '66-110',
                                                                style: TypographyStyle
                                                                    .body1Bold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Container(
                                                        width: 2,
                                                        height: 40,
                                                        color: ColorStyle()
                                                            .blueRange[200],
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text(
                                                                'Target Soal\nDikerjakan',
                                                                style: TypographyStyle
                                                                    .body3DemiBold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                              Text(
                                                                '45 Soal',
                                                                style: TypographyStyle
                                                                    .body1Bold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Container(
                                                        width: 2,
                                                        height: 40,
                                                        color: ColorStyle()
                                                            .blueRange[200],
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text(
                                                                'Waktu\nMengerjakan',
                                                                style: TypographyStyle
                                                                    .body3DemiBold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                              Text(
                                                                '25 Menit',
                                                                style: TypographyStyle
                                                                    .body1Bold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Cara Mengerjakan',
                                                      style: TypographyStyle
                                                          .body1Bold
                                                          .copyWith(
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                    SizedBox(
                                                      height: 16,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('1.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                          'Baca sub kategori soal (terletak di\npojok kiri atas). Untuk itu penting\nmempelajari dengan baik tujuan,\npengertian, konsep, karakteristik &\nsikap yang diharapkan pada\nmasing-masing sub kategori TKP\n(Pelayanan Publik, Jejaring Kerja,\nSosial Budaya, TIK,Profesionalisme &\nAnti Radikalisme)',
                                                          style: TypographyStyle
                                                              .body1Medium
                                                              .copyWith(
                                                                  color: Colors
                                                                      .white),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 16,
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          height: 2,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .blueRange[
                                                                  600],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('2.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                            'Baca cepat soal, temukan inti\npertanyaan (biasanya di bagian\nakhir soal).',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 16,
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          height: 2,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .blueRange[
                                                                  600],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('3.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                            'Baca cermat inti pertanyaan dan\npilihan jawabannya (Contoh: Kecuali)',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 16,
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          height: 2,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .blueRange[
                                                                  600],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('4.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                            'Dari 5 pilihan jawaban, pilih 2\njawaban yang ideal/relevan/terbaik\nsesuai dengan sub kategori',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 16,
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          height: 2,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .blueRange[
                                                                  600],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('5.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        Text(
                                                            'Pilih salah satu secara cepat. Jangan\nterlalu lama memilih jawaban\nterbaik diantara 2 pilihan yang\ntersisa',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 40,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Tips & Trik',
                                                      style: TypographyStyle
                                                          .body1Bold
                                                          .copyWith(
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                    SizedBox(
                                                      height: 16,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('1.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                            'Tempatkan diri kita sebagai seorang\nyang AHLI atau PROFESIONAL\ndibidang/materi yang ditanyakan.\nMisalkan soal terkait IT, maka\nposisikan diri kita sebagai ahli IT. Pilih\njawaban yang mampu\n menyelesaikan masalah IT tersebut.\nContoh lain, jika soal terkait\npelayanan publik, posisikan diri\nkalian sebagai orang yang\nprofesional dan mengutamakan\nmemberikan pelayanan yang\nterbaik.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 16,
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          height: 2,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .blueRange[
                                                                  600],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('2.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        Text(
                                                            'Kerjakan semua soal dengan cara\nmengerjakan diatas dalam waktu\nmaksimal 25 menit. Jika semua\npilihan jawaban kita bernilai minimal\n4, maka nilai total TKP sudah\nmemenuhi Pasing Grade (4x45=180).\nSeburuk-buruknya, dari 45 soal\nterdapat 10 soal yang nilainya 3,\nmaka nilai total TKP tetap\nmemenuhi Passing Grade\n(35X4)+(10x3)=140+30=170.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 40,
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  // Halaman Kerjakan TIU
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
                                        Container(
                                          width: 100,
                                          height: 28,
                                          decoration: BoxDecoration(
                                              color:
                                                  ColorStyle().orangeRange[800],
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Center(
                                            child: Text(
                                              '#Langkah 2',
                                              style: TypographyStyle
                                                  .body2DemiBold
                                                  .copyWith(
                                                      color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          'Kerjakan TIU',
                                          style: TypographyStyle.heading5Bold
                                              .copyWith(color: Colors.white),
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
                                        Container(
                                          height: 400,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Container(
                                                  height: 65,
                                                  decoration: BoxDecoration(
                                                      color: ColorStyle()
                                                          .blueRange[100],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 32,
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text(
                                                                'Nomor\nSoal:',
                                                                style: TypographyStyle
                                                                    .body3DemiBold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                              Text(
                                                                '31-65',
                                                                style: TypographyStyle
                                                                    .body1Bold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Container(
                                                        width: 2,
                                                        height: 40,
                                                        color: ColorStyle()
                                                            .blueRange[200],
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text(
                                                                'Target Soal\nDikerjakan',
                                                                style: TypographyStyle
                                                                    .body3DemiBold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                              Text(
                                                                '25 Soal',
                                                                style: TypographyStyle
                                                                    .body1Bold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Container(
                                                        width: 2,
                                                        height: 40,
                                                        color: ColorStyle()
                                                            .blueRange[200],
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text(
                                                                'Waktu\nMengerjakan',
                                                                style: TypographyStyle
                                                                    .body3DemiBold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                              Text(
                                                                '35 Menit',
                                                                style: TypographyStyle
                                                                    .body1Bold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Cara Mengerjakan',
                                                      style: TypographyStyle
                                                          .body1Bold
                                                          .copyWith(
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                    SizedBox(
                                                      height: 16,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('1.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                          'Tarik nafas & gerak badan terlebih\ndahulu. Jangan lupa melihat waktu\ntersisa yang terletak di pojok kanan\natas.',
                                                          style: TypographyStyle
                                                              .body1Medium
                                                              .copyWith(
                                                                  color: Colors
                                                                      .white),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 16,
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          height: 2,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .blueRange[
                                                                  600],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('2.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                            'Dari 35 soal, targetkan menjawab\nminimal 25 soal dengan benar.\nUntuk itu carilah soal-soal yang\nmudah terlebih dahulu.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 16,
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          height: 2,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .blueRange[
                                                                  600],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('3.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                            'Jangan menghabiskan waktu untuk\nmengerjakan soal yang sulit. Jika\nsoal yang kalian kerjakan sudah\nlebih dari 2 menit, tinggalkan dulu.\nNanti saja dikerjakannya. Setelah\nselesai mengerjakan seluruh soal\nTWK.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 16,
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          height: 2,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .blueRange[
                                                                  600],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('4.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                            'Pada tahap ini pastikan bahwa\nkalian sudah mencapai target\nminimal 20 soal benar dari semua\nsoal yang kalian kerjakan.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 40,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Tips & Trik',
                                                      style: TypographyStyle
                                                          .body1Bold
                                                          .copyWith(
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                    SizedBox(
                                                      height: 16,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('1.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                            'Lebih baik menggunakan waktu\nyang ada (35 menit) untuk\nmengerjakan 25 soal yang mudah\ndaripada memaksakan\nmengerjakan semua soal dalam\nwaktu 35 menit.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 16,
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          height: 2,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .blueRange[
                                                                  600],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('2.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                            'Dari 25 soal yang dikerjakan dengan\ntarget 20 soal benar maka nilai TIU\nsudah mencapai 100 (20x5)',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 16,
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          height: 2,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .blueRange[
                                                                  600],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('3.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                              'Sisa 10 soal dapat dikerjakan dengan\nmenggunakan sisa waktu putaran\npertama (setelah semua kategori\nselesai dikerjakan).',
                                                              style: TypographyStyle
                                                                  .body1Medium
                                                                  .copyWith(
                                                                      color: Colors
                                                                          .white)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 12,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  // Halaman Kerjakan TWK
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
                                        Container(
                                          width: 100,
                                          height: 28,
                                          decoration: BoxDecoration(
                                              color:
                                                  ColorStyle().orangeRange[800],
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Center(
                                            child: Text(
                                              '#Langkah 3',
                                              style: TypographyStyle
                                                  .body2DemiBold
                                                  .copyWith(
                                                      color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          'Kerjakan TWK',
                                          style: TypographyStyle.heading5Bold
                                              .copyWith(color: Colors.white),
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
                                        Container(
                                          height: 400,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                Container(
                                                  height: 65,
                                                  decoration: BoxDecoration(
                                                      color: ColorStyle()
                                                          .blueRange[100],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 32,
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text(
                                                                'Nomor\nSoal:',
                                                                style: TypographyStyle
                                                                    .body3DemiBold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                              Text(
                                                                '1-30',
                                                                style: TypographyStyle
                                                                    .body1Bold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Container(
                                                        width: 2,
                                                        height: 40,
                                                        color: ColorStyle()
                                                            .blueRange[200],
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text(
                                                                'Target Soal\nDikerjakan',
                                                                style: TypographyStyle
                                                                    .body3DemiBold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                              Text(
                                                                '20 Soal',
                                                                style: TypographyStyle
                                                                    .body1Bold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Container(
                                                        width: 2,
                                                        height: 40,
                                                        color: ColorStyle()
                                                            .blueRange[200],
                                                      ),
                                                      SizedBox(
                                                        width: 20,
                                                      ),
                                                      Column(
                                                        children: [
                                                          SizedBox(
                                                            height: 4,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text(
                                                                'Waktu\nMengerjakan',
                                                                style: TypographyStyle
                                                                    .body3DemiBold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                              Text(
                                                                '35 Menit',
                                                                style: TypographyStyle
                                                                    .body1Bold
                                                                    .copyWith(
                                                                        color: ColorStyle()
                                                                            .blueRange[900]),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Cara Mengerjakan',
                                                      style: TypographyStyle
                                                          .body1Bold
                                                          .copyWith(
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                    SizedBox(
                                                      height: 16,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('1.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                          'Tarik nafas & gerak badan terlebih\ndahulu. Jangan lupa melihat waktu\ntersisa yang terletak di pojok kanan\natas.',
                                                          style: TypographyStyle
                                                              .body1Medium
                                                              .copyWith(
                                                                  color: Colors
                                                                      .white),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 16,
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          height: 2,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .blueRange[
                                                                  600],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('2.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                            'Dari 30 soal, targetkan menjawab\nminimal 20 soal dengan benar.\nUntuk itu carilah soal-soal yang\nmudah terlebih dahulu.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 16,
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          height: 2,
                                                          decoration: BoxDecoration(
                                                              color: ColorStyle()
                                                                      .blueRange[
                                                                  600],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4)),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text('3.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                        SizedBox(
                                                          width: 4,
                                                        ),
                                                        Text(
                                                            'Jangan menghabiskan waktu untuk\nmengerjakan soal yang sulit. Jika\nsoal yang kalian kerjakan sudah\nlebih dari 2 menit, tinggalkan dulu.\nNanti saja dikerjakannya.',
                                                            style: TypographyStyle
                                                                .body1Medium
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white)),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 40,
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  // Halaman Cek Kembali Jawaban
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
                                        Container(
                                          width: 100,
                                          height: 28,
                                          decoration: BoxDecoration(
                                              color:
                                                  ColorStyle().orangeRange[800],
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Center(
                                            child: Text(
                                              '#Langkah 4',
                                              style: TypographyStyle
                                                  .body2DemiBold
                                                  .copyWith(
                                                      color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          'Cek Kembali Jawaban',
                                          style: TypographyStyle.heading5Bold
                                              .copyWith(color: Colors.white),
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
                                          height: 12,
                                        ),
                                        Container(
                                          height: 400,
                                          width: Get.width - 40,
                                          child: SingleChildScrollView(
                                            child: ListView.separated(
                                              separatorBuilder:
                                                  (context, index) => SizedBox(
                                                height: 12,
                                              ),
                                              itemCount:
                                                  controller.cekJawaban.length,
                                              shrinkWrap: true,
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              itemBuilder: (context, index) {
                                                return Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8),
                                                      child: Text(
                                                          '${index + 1}',
                                                          style: TypographyStyle
                                                              .body1Medium
                                                              .copyWith(
                                                                  color: Colors
                                                                      .white)),
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
                                                            '${controller.cekJawaban[index]}',
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
