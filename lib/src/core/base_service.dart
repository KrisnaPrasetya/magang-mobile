import 'package:get_storage/get_storage.dart';

class BaseServices {
  loadService() async {
    print('Booting up ...');
    await GetStorage.init();
  }
}
