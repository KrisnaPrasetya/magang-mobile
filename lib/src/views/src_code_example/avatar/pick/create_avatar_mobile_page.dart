import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/widgets/components/custom_button.dart';
import 'package:lottie/lottie.dart';

import 'create_avatar_controller.dart';

class CreateAvatarMobilePage extends StatelessWidget {
  const CreateAvatarMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateAvatarController>(
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
                        style: TypographyStyle.body1Bold.copyWith(color: ColorStyle().grayscaleRange[500], fontSize: 16),
                      ),
                      elevation: 0,
                      centerTitle: true,
                    ),
                    Container(
                      color: ColorStyle().grayscaleRange[200],
                      height: 1,
                    ),
                    if (!controller.isLoading)
                      Expanded(
                        child: SingleChildScrollView(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            _avatarItem((() {}), ""),
                            _avatarItem((() {}), ""),
                            SizedBox(
                              height: 44,
                            ),
                            SizedBox(
                              height: 8,
                            )
                          ],
                        )),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _avatarItem(
    Function() onTap,
    String avatarAssets,
  ) {
    return GetBuilder<CreateAvatarController>(
        builder: (controller) => Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                margin: EdgeInsets.symmetric(vertical: 16),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)), border: Border.all(color: ColorStyle().grayscaleRange[200]!, width: 2)),
                height: 287,
                width: 277,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 207,
                      width: 207,
                      child: Lottie.asset(
                        avatarAssets,
                        package: "Taruh asset disini",
                        frameRate: FrameRate(60),
                      ),
                    ),
                    Positioned.fill(
                      bottom: 20,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomButton(
                          onPressed: onTap,
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
            ));
  }
}
