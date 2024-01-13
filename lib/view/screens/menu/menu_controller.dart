import 'package:get/get.dart';
import 'package:worker_bridge/global/language/language_model.dart';

class AppMenuController extends GetxController{

  AppMenuController();

  List<LanguageModel> languageList = [
    LanguageModel(code: "en", name: "English"),
    LanguageModel(code: "bn", name: "Bengali"),
    LanguageModel(code: "ar", name: "Arabic"),
    LanguageModel(code: "es", name: "Spanish"),
    LanguageModel(code: "fr", name: "French"),
    LanguageModel(code: "hi", name: "Hindi"),
    LanguageModel(code: "ru", name: "Russian"),
    LanguageModel(code: "tr", name: "Turkish"),
  ];

  int selectedLanguage = 0;
  void changeLanguage(int index){
    selectedLanguage = index;
    Get.back();
    update();
  }
}