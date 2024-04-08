import 'package:internship/src/core/base_import.dart';

class ChallengeController extends BaseController {
  bool canPop = true;

  List<String> level = ['Level 1', 'Level 2', 'Level 3', 'Level 4', 'Level 5'];

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
