import 'package:flutter_svg/flutter_svg.dart';
import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/krisna/waitingRoom/waiting_controller.dart';

class WaitingRoomOne extends StatelessWidget {
  final WaitingController controller;
  final int index;
  const WaitingRoomOne(
      {super.key, required this.controller, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 15, left: 22),
          child: Text(
            "Materi Seleksi\nKompetensi Dasar (SKD)",
            textAlign: TextAlign.left,
            style: TypographyStyle.heading5Bold
                .copyWith(color: ColorStyle().grayscaleRange.shade100),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 260, top: 15),
          child: Container(
            alignment: Alignment.topLeft,
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
        Container(
          height: Get.height / 1.9,
          child: ListView.builder(
            itemCount: controller.Title.length,
            itemBuilder: (BuildContext context, index) {
              return Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 35, left: 20),
                        child: SvgPicture.asset(
                            'assets/krisna/icons/${index == 0 ? "Bendera" : index == 1 ? "Lampu" : "Pribadi"}.svg'),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30, left: 15),
                        child: Text(
                          '${controller.Title[index]}',
                          style: TypographyStyle.heading6Bold.copyWith(
                              color: ColorStyle().grayscaleRange.shade100),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5, left: 76),
                        child: Text(
                          "Soal • ${index == 0 ? "30 Butir" : index == 1 ? "35 Butir" : "45 Butir"}",
                          style: TypographyStyle.body2DemiBold.copyWith(
                              color: ColorStyle().grayscaleRange.shade100),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5, left: 20),
                        child: Text(
                          "Minimal Nilai • ${index == 0 ? "65" : index == 1 ? "85" : "156"}",
                          style: TypographyStyle.body2DemiBold.copyWith(
                              color: ColorStyle().grayscaleRange.shade100),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 45, right: 30),
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
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
