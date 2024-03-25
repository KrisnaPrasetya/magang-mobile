import 'package:internship/src/core/base_controller.dart';
import 'package:internship/src/core/base_import.dart';
import 'package:internship/src/helpers/date_helper.dart';

class StartupController extends BaseController {
  bool isBuildExpired() {
    DateTime nowDate = DateTime.now();
    DateTime expBuild = DateHelper.fromString(VersionConfig.expiredDate);
    return !(nowDate.isBefore(expBuild));
  }

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    if (isBuildExpired()) {
      super.onReady();
      return;
    }
    Get.offNamed(AppRoutes.examplePage);
    super.onReady();
  }
}
