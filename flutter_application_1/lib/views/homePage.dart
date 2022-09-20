import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/homeController.dart';
import 'package:flutter_application_1/model/homePageModel.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
  final box = GetStorage();
  HomePageModel model = HomePageModel();
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
    
  }
}