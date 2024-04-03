import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/krisna/waitingRoom/waiting_controller.dart';

class WaitingRoomTwo extends StatelessWidget {
  final WaitingController controller;
  final index;
  const WaitingRoomTwo({super.key, required this.controller, this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 15, left: 22),
          child: Text(
            "Persiapan Menjelang\nTes SKD",
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
              itemCount: controller.Tekspagedua.length,
              itemBuilder: (BuildContext context, index) {
                return Column(children: [
                  Container(
                    // color: Colors.red,
                    width: Get.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 18, top: 8, right: 8),
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2)),
                              color: HexColor("#398AEE"),
                            ),
                          ),
                        ),
                        Text(
                          '${controller.Tekspagedua[index]}',
                          style: TypographyStyle.body1DemiBold.copyWith(
                              color: ColorStyle().grayscaleRange.shade100),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Divider(
                        color: Colors.blue[600],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ]);
              }),
        ),
      ],
    );
  }
}
