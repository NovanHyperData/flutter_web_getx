import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_getx/DashboardBoss/View.dart';
import 'package:flutter_web_getx/DashboardClient/View.dart';
import 'package:flutter_web_getx/DashboardEmployee/View.dart';
import 'package:flutter_web_getx/DashboardOfficeBoy/View.dart';
import 'package:flutter_web_getx/Login/Contract.dart';
import 'package:flutter_web_getx/Login/Presenter.dart';
import 'package:flutter_web_getx/Login/StateController.dart';
import 'package:flutter_web_getx/Background/galaxy.dart';
import 'package:flutter_web_getx/Users/Model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginView extends GetView<LoginStateController> implements LoginContract {
  LoginView({Key? key}) : super(key: key) {
    _presenter = LoginPresenter(this);
  }

  late final LoginPresenter _presenter;

  GalaxyBG _bg = new GalaxyBG();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _bg,
        SingleChildScrollView(
          child: Column(
            children: [
              BsRow(
                children: [
                  BsCol(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    sizes: ColScreen(lg: Col.col_12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/decepticons.png',
                          width: 75,
                          height: 120,
                        ),
                        Image.asset(
                          'assets/images/autobots.png',
                          width: 75,
                          height: 120,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              BsRow(
                children: [
                  BsCol(
                    sizes: ColScreen(lg: Col.col_3),
                  ),
                  BsCol(
                      padding: EdgeInsets.all(20.0),
                      sizes: ColScreen(lg: Col.col_6),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            // color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            child: Form(
                              key: controller.formKey,
                              child: Column(
                                children: [
                                  Text(
                                    'Welcome !',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Email Required';
                                      }
                                      if (!GetUtils.isEmail(value)) {
                                        return 'Invalid email';
                                      }
                                      return null;
                                    },
                                    controller: controller.email,
                                    keyboardType: TextInputType.emailAddress,
                                    autofocus: false,
                                    // initialValue: 'alucard@gmail.com',
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        borderSide: BorderSide(
                                          color: Colors.blue.shade200,
                                          width: 2.0,
                                        ),
                                      ),
                                      hintText: 'Email',
                                      contentPadding: EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 10.0),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Obx(() => TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Password Required';
                                          }
                                          return null;
                                        },
                                        controller: controller.password,
                                        autofocus: false,
                                        // initialValue: 'some password',
                                        obscureText: controller.hidden.value,
                                        decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                            
                                              onPressed: () =>
                                                  controller.hidden.toggle(),
                                              icon: controller.hidden.isTrue
                                                  ? Icon(Icons.visibility_off)
                                                  : Icon(Icons
                                                      .visibility)),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                              color: Colors.blue.shade200,
                                              width: 2.0,
                                            ),
                                          ),
                                          hintText: 'Password',
                                          contentPadding: EdgeInsets.fromLTRB(
                                              20.0, 10.0, 20.0, 10.0),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25.0)),
                                        ),
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Obx(() => CheckboxListTile(
                                        value: controller.rememberMe.value,
                                        onChanged: (value) =>
                                            controller.rememberMe.toggle(),
                                        title: Text('Remember Me '),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                      )),
                                  // Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Row(
                                  //       children: [
                                  //         Checkbox(
                                  //           checkColor: Colors.white,
                                  //           fillColor:
                                  //               MaterialStateProperty.resolveWith(
                                  //                   getColor),
                                  //           value: isChecked,
                                  //           onChanged: (bool? value) {
                                  //             setState(() {
                                  //               isChecked = value!;
                                  //             });
                                  //           },
                                  //         ),
                                  //         Text(
                                  //           'Remember Password',
                                  //         )
                                  //       ],
                                  //     ),
                                  //     Text(
                                  //       'Forgot Password ?',
                                  //     ),
                                  //   ],
                                  // ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  RaisedButton(
                                    onPressed: () {
                                      if (controller.formKey.currentState!
                                          .validate()) {
                                        _presenter.login(
                                          controller.email.text,
                                          controller.password.text,
                                          controller.rememberMe.value
                                        );
                                      } else {
                                        return;
                                      }
                                    },
                                    color: Colors.blue.shade400,
                                    child: Text('Login',
                                        style: TextStyle(color: Colors.white)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }

  @override
  void onLoginFailed(String message) {
    Get.defaultDialog(title: 'Login Failed', middleText: message).then((value) {
      Get.toNamed('/login');
    });
  }

  @override
  void onLoginSuccess(User data) {
    final storage = GetStorage();
    if (data.userRole == '1') {
      storage.write('id', '${data.userId}');
      Get.toNamed('/boss');
    } else if (data.userRole == '2') {
      storage.write('id', '${data.userId}');
      Get.toNamed('/employee');
    } else if (data.userRole == '3') {
      storage.write('id', '${data.userId}');
      Get.toNamed('/officeBoy');
    } else {
      storage.write('id', '${data.userId}');
      Get.toNamed('/client');
    }
  }
}
