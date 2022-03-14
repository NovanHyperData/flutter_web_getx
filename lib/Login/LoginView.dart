import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_getx/DashboardBoss/DashboardBossView.dart';
import 'package:flutter_web_getx/DashboardClient/DashboardClientView.dart';
import 'package:flutter_web_getx/DashboardEmployee/DashboardEmployeeView.dart';
import 'package:flutter_web_getx/DashboardOfficeBoy/DashboardOfficeBoy.dart';
import 'package:flutter_web_getx/Login/LoginContract.dart';
import 'package:flutter_web_getx/Login/LoginPresenter.dart';
import 'package:flutter_web_getx/Login/LoginStateController.dart';
import 'package:flutter_web_getx/Background/galaxy.dart';
import 'package:flutter_web_getx/Users/UserModel.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginStateController> implements LoginContract{
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
                                    'Welcome !', style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Email Required';
                                      }
                                      bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(value);
                                      if (emailValid == false){
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
                                        borderRadius: BorderRadius.circular(5.0),
                                        borderSide: BorderSide(
                                          color: Colors.blue.shade200,
                                          width: 2.0,
                                        ),
                                      ),
                                      hintText: 'Email',
                                      contentPadding: EdgeInsets.fromLTRB(
                                          20.0, 10.0, 20.0, 10.0),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Password Required';
                                      }
                                      return null;
                                    },
                                    controller: controller.password,
                                    autofocus: false,
                                    // initialValue: 'some password',
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
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
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
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
                                      if (controller.formKey.currentState!.validate()) {
                                        _presenter.login(
                                          controller.email.text,
                                          controller.password.text,
                                        );
                                      }else{
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
    Get.defaultDialog(
      title: 'Login Failed',
      middleText: message

    ).then((value) {
      Get.toNamed('/login');
    });
  //   Get.close(1);
  //   InfoAlert(
  //     message: message,
  //     variant: ColorVariant.danger,
  //   ).show();
  }

  @override
  void onLoginSuccess(User data) {
    var pic;
    var dashboard;
      if (data.userRole == '1') {
        pic = Image.asset('assets/images/autobots.png', width: 75, height: 120);
      } else {
        pic = Image.asset('assets/images/decepticons.png', width: 75, height: 120);
      }
    Get.close(1);
    Get.defaultDialog(
      title: 'Selamat Datang ${data.userName}',
      middleText: 'Anda Berhasil Login',
      content: pic,
      confirm: ElevatedButton(onPressed: () {
        if (data.userRole == '1') {
          Get.to(() => DashboardBoss(), arguments: [
              {"id": '${data.userId}'}
          ]);
        }else if (data.userRole == '2') {
          Get.to(() => DashboardEmployee(), arguments: [
              {"id": '${data.userId}'}
          ]);
        }else if (data.userRole == '3') {
          Get.to(() => DashboardOfficeBoy(), arguments: [
              {"id": '${data.userId}'}
          ]);
        } else {
          Get.to(() => DashboardClient(), arguments: [
              {"id": '${data.userId}'}
          ]);
        }
      } , child: Text('Masuk'))
    );
  }
}