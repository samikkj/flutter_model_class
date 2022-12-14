import 'package:flutter_application_1/model/homePageModel.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  HomePageModel homePageModel = HomePageModel();
  final box = GetStorage();
  void storeData(String name) {
    box.write('name', name);
    homePageModel.name.value = box.read('name');
    print(homePageModel.name);
  }
}
