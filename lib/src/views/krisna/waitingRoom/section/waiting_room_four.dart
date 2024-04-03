import 'package:internship/src/core/base_import.dart';

class WaitingRoomFour extends StatelessWidget {
  const WaitingRoomFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width - 48,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 16),
          
          Container(
            child: Text(
              "Kerjakan TKP\nDulu",
              style: TypographyStyle.heading5Bold
                  .copyWith(color: ColorStyle().grayscaleRange.shade100),
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
        ]));
  }
}
