import 'package:flutter_web_getx/Dashboard/DashboardBoss/View.dart';
import 'package:flutter_web_getx/Dashboard/DashboardClient/View.dart';
import 'package:flutter_web_getx/Dashboard/DashboardEmployee/View.dart';
import 'package:flutter_web_getx/Dashboard/DashboardOfficeBoy/View.dart';
import 'package:flutter_web_getx/LandingPage/View.dart';
import 'package:flutter_web_getx/Login/Binding.dart';
import 'package:flutter_web_getx/Login/View.dart';
import 'package:flutter_web_getx/Login/Middleware.dart';
import 'package:flutter_web_getx/Register/Binding.dart';
import 'package:flutter_web_getx/Register/View.dart';
import 'package:flutter_web_getx/Users/View.dart';
import 'package:get/get.dart';

class Routes {
  static List<GetPage<dynamic>> getRoutes() {
    return [
      GetPage(
        name: '/',
        page: () => LandingPageView(),
        // binding: LoginBinding(),
        // middlewares: [
        //   AuthMiddlware(),
        // ],
        transition: Transition.fadeIn,
        transitionDuration: Duration(milliseconds: 300),
      ),
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
        name: '/boss',
        page: () => DashboardBoss(),
        // binding: HomeBinding(),
        middlewares: [
          AuthMiddlware(),
        ],
        transition: Transition.fadeIn,
        transitionDuration: Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/employee',
        page: () => DashboardEmployee(),
        // binding: HomeBinding(),
        middlewares: [
          AuthMiddlware(),
        ],
        transition: Transition.fadeIn,
        transitionDuration: Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/officeBoy',
        page: () => DashboardOfficeBoy(),
        // binding: HomeBinding(),
        middlewares: [
          AuthMiddlware(),
        ],
        transition: Transition.fadeIn,
        transitionDuration: Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/client',
        page: () => DashboardClient(),
        // binding: HomeBinding(),
        middlewares: [
          AuthMiddlware(),
        ],
        transition: Transition.fadeIn,
        transitionDuration: Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/users',
        page: () => Datatables(),
        // binding: HomeBinding(),
        transition: Transition.fadeIn,
        transitionDuration: Duration(milliseconds: 300),
      ),
      GetPage(
        name: '/register',
        page: () => RegisterView(),
        binding: RegisterBinding(),
        transition: Transition.fadeIn,
        transitionDuration: Duration(milliseconds: 300),
      ),
      
    ];
  }
}
