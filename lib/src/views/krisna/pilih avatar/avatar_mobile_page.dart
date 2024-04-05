import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/krisna/pilih%20avatar/avatar_controller.dart';
import 'package:internship/src/widgets/components/custom_button.dart';

class AvatarMobilePage extends StatelessWidget {
  const AvatarMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AvatarController>(
      builder: (controller) => SafeArea(
        child: Scaffold(
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              height: Get.height,
              color: ColorStyle.whiteColor,
              child: ScrollConfiguration(
                behavior: CustomDisableGlowBehavior(),
                child: Column(
                  children: [
                    AppBar(
                      backgroundColor: ColorStyle.whiteColor,
                      systemOverlayStyle: SystemUiOverlayStyle(
                        // Android
                        statusBarColor: ColorStyle.whiteColor,
                        statusBarIconBrightness: Brightness.dark,
                        // iOS
                        statusBarBrightness: Brightness.light,
                        systemNavigationBarIconBrightness: Brightness.dark,
                      ),
                      leading: BackButton(
                        color: Colors.black,
                      ),
                      title: Text(
                        "Pilih Avatar",
                        style: TypographyStyle.body1Bold.copyWith(
                            color: ColorStyle().grayscaleRange[500],
                            fontSize: 16),
                      ),
                      centerTitle: true,
                      elevation: 0,
                    ),
                    Container(
                      color: ColorStyle().grayscaleRange[200],
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            border: Border.all(
                                color: ColorStyle().grayscaleRange[200]!,
                                width: 2)),
                        height: 287,
                        width: 277,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: 207,
                              width: 207,
                              child: Image.asset(
                                  "assets/krisna/images/avatar_image_2.png"),
                            ),
                            Positioned.fill(
                              bottom: 20,
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: CustomButton(
                                  onPressed: () {},
                                  height: 40,
                                  horizontalPadding: 16,
                                  color: ColorStyle().orangeRange[700]!,
                                  radius: 100,
                                  child: Text(
                                    'Pilih Avatar',
                                    style: TypographyStyle.body2Bold.copyWith(
                                      color: ColorStyle.whiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 287,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            border: Border.all(
                                color: ColorStyle().grayscaleRange[200]!,
                                width: 2)),
                        height: 287,
                        width: 277,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: 207,
                              width: 207,
                              child: Image.asset(
                                  "assets/krisna/images/avatar_image_1.png"),
                            ),
                            Positioned.fill(
                              bottom: 20,
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: CustomButton(
                                  onPressed: () {},
                                  height: 40,
                                  horizontalPadding: 16,
                                  color: ColorStyle().orangeRange[700]!,
                                  radius: 100,
                                  child: Text(
                                    'Pilih Avatar',
                                    style: TypographyStyle.body2Bold.copyWith(
                                      color: ColorStyle.whiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 287,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
