import 'package:internship/src/core/base_import.dart';

class WaitingRoomController extends BaseController {
  bool canPop = true;
  int activePage = 0;
  List<String> titleMateriSKD = [
    'Tes Wawasan\nKebangsaan',
    'Tes Intelegensi\nUmum',
    'Tes Karakteristik\nPribadi',
  ];
  List<String> tipsTesSKD = [
    'Luangkan waktu 1-2 hari untuk\nrefreshing',
    'Jaga kondisi badan (minum vitamin,\ntidur yang cukup, dll)',
    'Siapkan kondisi mental (doa, minta \nrestu, bangun keyakinan diri, dll)',
    'Persiapkan Perlengkapan Yang\ndipersyaratkan (pakaian Sesuai\nPersyaratan, Sepatu Yang Nyaman,\nDll)',
    'Survai lokasi sehari sebelum tes\n(pastikan waktu perjalanan, cara\nmencapai tempat, parkir, dll)',
    'Hadir di tempat sesuai waktu yang\ndipersyaratkan (60-90 menit\nsebelum seleksi dimulai)'
  ];

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

  goToExample() {
    Get.back();
  }
}
