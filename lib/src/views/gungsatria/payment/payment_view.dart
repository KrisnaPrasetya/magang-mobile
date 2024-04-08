import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/views/gungsatria/payment/payment_controller.dart';
import 'package:internship/src/views/gungsatria/payment/payment_mobile_page.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<PaymentController>(
      backgroundColor: ColorStyle.whiteColor,
      controller: PaymentController(),
      appBar: AppBar(
        backgroundColor: ColorStyle.whiteColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Android
          statusBarColor: ColorStyle.whiteColor,
          statusBarIconBrightness: Brightness.dark,
          // iOS
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: ColorStyle.whiteColor,
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarDividerColor: ColorStyle.whiteColor,
        ),
        toolbarHeight: 0,
        elevation: 0,
        centerTitle: true,
      ),
      extendBody: true,
      mobile: (controller) => PaymentMobilePage(),
    );
  }
}
