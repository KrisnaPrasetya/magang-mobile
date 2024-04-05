import 'package:get/get.dart';
import 'package:internship/src/views/example/example_view.dart';
import 'package:internship/src/views/gungsatria/bmi/bmi_view.dart';

import 'package:internship/src/views/gungsatria/payment/payment_view.dart'
    as gPaymentView;
import 'package:internship/src/views/gungsatria/waiting-room/waitingroom_view.dart';

import 'package:internship/src/views/krisna/payment/payment_view.dart'
    as kPaymentView;
import 'package:internship/src/views/krisna/waitingRoom/waiting_view.dart';

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
      page: () => const gPaymentView.PaymentView(),
    ),
    GetPage(
      name: AppRoutes.gWaitingRoom,
      page: () => const WaitingRoomView(),
    ),
    GetPage(
      name: AppRoutes.gbmiPage,
      page: () => const BMIView(),
    ),

    // krisna
    GetPage(
      name: AppRoutes.kPaymentPage,
      page: () => const kPaymentView.PaymentView(),
    ),

    GetPage(
      name: AppRoutes.kWaitingPage,
      page: () => const WaitingView(),
    ),
  ];
}
