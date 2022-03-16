import 'package:flutter/material.dart';
import 'package:flutter_web_getx/Routes/Routes.dart';
import 'package:flutter_web_getx/mainPresenter.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

final pr = Get.put(mainPresenter());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          theme: pr.theme.value ? ThemeData.dark() : ThemeData.light(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          getPages: Routes.getRoutes(),
          initialRoute: '/login',
        ));
  }
}
