import 'package:flutter_svg/flutter_svg.dart';
import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/krisna/waitingRoom/waiting_controller.dart';

class WaitingRoomOne extends StatelessWidget {
  const WaitingRoomOne({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WaitingController>(
      builder: (controller) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "Materi Seleksi\nKompetensi Dasar (SKD)",
                  style: TypographyStyle.heading5Bold
                      .copyWith(color: ColorStyle().grayscaleRange.shade100),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
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
            Container(
              height: Get.height / 1.9,
              width: Get.width,
              child: ListView.builder(
                itemCount: controller.title.length,
                itemBuilder: (BuildContext context, index) {
                  return Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 28, left: 20),
                            child: SvgPicture.asset(
                                'assets/krisna/icons/${index == 0 ? "Bendera" : index == 1 ? "Lampu" : "Pribadi"}.svg'),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 15),
                            child: Text(
                              '${controller.title[index]}',
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
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 45, right: 30),
                        child: Column(
                          children: [
                            Divider(
                              color: Colors.blue[600],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
