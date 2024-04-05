part of 'app_pages.dart';

abstract class AppRoutes {
  static const initialRoute = '/';
  static const examplePage = '/example';

  // gung satria
  static const gungSatriaPage = '/gungsatria';
  static const gPaymentPage = '$gungSatriaPage/payment';
  static const gWaitingRoom = '$gungSatriaPage/waiting-room';
  static const gbmiPage = '$gungSatriaPage/bmi';
  // krisna
  static const krisnaPage = '/krisna';
  static const kPaymentPage = '$krisnaPage/payment';
  static const kWaitingPage = '$krisnaPage/Waiting';
}
