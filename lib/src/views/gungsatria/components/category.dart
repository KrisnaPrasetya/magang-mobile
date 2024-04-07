import 'package:internship/src/core/base_import.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 12,
          ),
          Container(
            height: 32,
            width: 64,
            decoration: BoxDecoration(
                color: HexColor('#5F89FC'),
                borderRadius: BorderRadius.circular(4)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'PU',
                  style:
                      TypographyStyle.body2Bold.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            height: 32,
            width: 64,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: ColorStyle().grayscaleRange[200]!),
                borderRadius: BorderRadius.circular(4)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WK',
                  style: TypographyStyle.body2Bold
                      .copyWith(color: ColorStyle().grayscaleRange[700]),
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            height: 32,
            width: 64,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: ColorStyle().grayscaleRange[200]!),
                borderRadius: BorderRadius.circular(4)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'B.ING',
                  style: TypographyStyle.body2Bold
                      .copyWith(color: ColorStyle().grayscaleRange[700]),
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            height: 32,
            width: 64,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: ColorStyle().grayscaleRange[200]!),
                borderRadius: BorderRadius.circular(4)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'MTK',
                  style: TypographyStyle.body2Bold
                      .copyWith(color: ColorStyle().grayscaleRange[700]),
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            height: 32,
            width: 64,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: ColorStyle().grayscaleRange[200]!),
                borderRadius: BorderRadius.circular(4)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'B.IND',
                  style: TypographyStyle.body2Bold
                      .copyWith(color: ColorStyle().grayscaleRange[700]),
                )
              ],
            ),
          ),
          // Container(
          //   child: ListView.builder(
          //       itemCount: 5,
          //       shrinkWrap: true,
          //       physics: NeverScrollableScrollPhysics(),
          //       itemBuilder: (context, index) {
          //         return Container(
          //             width: (Get.width - 98) / 7,
          //             decoration: BoxDecoration(
          //               color: Colors.black,
          //               borderRadius: BorderRadius.circular(12),
          //             ));
          //       }),
          // )
        ],
      ),
    );
  }
}
