import 'package:get/get.dart';
import 'package:internship/src/views/example/example_view.dart';
import 'package:internship/src/views/gungsatria/payment/payment_view.dart';
import 'package:internship/src/views/startup/startup_view.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.initialRoute,
      page: () => const StartupView(),
    ),
    GetPage(
      name: AppRoutes.examplePage,
      page: () => const ExampleView(),
    ),

    // gung satria
    GetPage(
      name: AppRoutes.gPaymentPage,
      page: () => const PaymentView(),
    ),

    // krisna
    GetPage(
      name: AppRoutes.kPaymentPage,
      page: () => const PaymentView(),
    ),
  ];
}
