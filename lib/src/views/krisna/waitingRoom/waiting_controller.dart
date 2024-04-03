import 'package:internship/src/core/base_import.dart';

class WaitingController extends BaseController {
  PageController pageController = PageController();
  bool canPop = true;
  
  List<String> title = [
    'Tes Wawasan\nKebangsaan',
    'Tes Intelegensi\nUmum',
    'Materi Seleksi\nKompetensi Dasar (SKD)'
  ];

  List<String> Tekspagedua = [
    'Luangkan waktu 1-2 hari\nuntuk refreshing',
    'Jaga kondisi badan (minum \nvitamin,tidur yang cukup, dll)',
    'Siapkan kondisi mental (doa, minta\nrestu, bangun keyakinan diri, dll)',
    'Persiapkan Perlengkapan Yang\ndipersyaratkan (pakaian Sesuai\nPersyaratan, Sepatu Yang Nyaman,\nDll)',
    'Survai lokasi sehari sebelum tes\n(pastikan waktu perjalanan,\ncara mencapai tempat, parkir, dll)',
    'Hadir di tempat sesuai waktu yang\ndipersyaratkan (60-90 menit\nsebelum seleksi dimulai)',
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

  // Widget pageItemBuilder(context, position) {
  //   switch (position) {
  //     case 0:
  //       return WaitingRoomOne(
  //           controller: WaitingController(), index: Title.length);
  //     case 1:
  //       return WaitingRoomTwo();
  //     default:
  //       return Container();
  //   }
  // }
}
