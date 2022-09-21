import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/homeController.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final box = GetStorage();
  TextEditingController nameController = TextEditingController();
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: nameController,
          ),
          ElevatedButton(
            onPressed: () {
              controller.storeData(nameController.text);
            },
            child: const Text('Submit'),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Obx(() => Text(controller.homePageModel.name.value)),
          )
        ],
      ),
    );
  }
}
