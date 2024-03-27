import 'package:flutter_localizations/flutter_localizations.dart';

import 'src/core/base_import.dart';
import 'src/core/base_service.dart';
import 'src/views/startup/startup_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await BaseServices().loadService();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [const Locale('id'), const Locale('en')],
      locale: Locale('id', 'ID'),
      fallbackLocale: Locale('en', 'US'),
      theme: await ThemeStyle.currentThemeData,
      home: StartupView(),
      getPages: AppPages.routes,
    ),
  );
}
