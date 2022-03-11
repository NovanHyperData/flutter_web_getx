import 'package:flutter_web_getx/Home/HomeAdmin.dart';
import 'package:flutter_web_getx/Login/LoginBinding.dart';
import 'package:flutter_web_getx/Login/LoginView.dart';
import 'package:flutter_web_getx/Login/Middleware.dart';
import 'package:get/get.dart';

class Routes {
  static List<GetPage<dynamic>> getRoutes() {
    return [
      GetPage(
        name: '/login',
        page: () => LoginView(),
        binding: LoginBinding(),
        middlewares: [
          AuthMiddlware(),
        ],
        transition: Transition.fadeIn,
        transitionDuration: Duration(milliseconds: 300),
      ),
      // GetPage(
      //   name: '/register',
      //   page: () => RegisterView(),
      //   binding: RegisterBinding(),
      //   transition: Transition.fadeIn,
      //   transitionDuration: Duration(milliseconds: 300),
      // ),
      GetPage(
        name: '/home',
        page: () => HomeAdmin(),
        // binding: HomeBinding(),
        middlewares: [
          AuthMiddlware(),
        ],
        transition: Transition.fadeIn,
        transitionDuration: Duration(milliseconds: 300),
      ),
    ];
  }
}
