import 'package:internship/src/core/base_import.dart';

class AvatarController extends BaseController {
  bool canPop = true;

  @override
  onInit() {
    super.onInit();
  }

  @override
  onReady() async {
    update();
    super.onReady();
  }

  @override
  onClose() async {
    super.onClose();
  }

  onGoBack() {
    Get.back();
  }
}
