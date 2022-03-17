import 'dart:html';

import 'package:bs_flutter/bs_flutter.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_getx/Background/galaxy.dart';
import 'package:flutter_web_getx/Register/Presenter.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

GalaxyBG _bg = new GalaxyBG();

File? _photo;

class RegisterView extends GetView<RegisterPresenter> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: [
        _bg,
        BsRow(
          children: [
            BsCol(
              padding: EdgeInsets.only(left: 10),
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
        SingleChildScrollView(
          child: Column(
            children: [
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
                            child: Column(
                              children: [
                                Text(
                                  'fill out the form',
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                BsRow(
                                  children: [
                                    BsCol(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 15),
                                      sizes: ColScreen(lg: Col.col_12),
                                      child: TextFormField(
                                        keyboardType: TextInputType.name,
                                        autofocus: false,
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                              color: Colors.blue.shade200,
                                              width: 2.0,
                                            ),
                                          ),
                                          hintText: 'Name',
                                          contentPadding: EdgeInsets.fromLTRB(
                                              20.0, 10.0, 20.0, 10.0),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    BsCol(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 15),
                                      sizes: ColScreen(lg: Col.col_10),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
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
                                    ),
                                    BsCol(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 15),
                                      sizes: ColScreen(lg: Col.col_2),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blue.shade400,
                                          // color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          border:
                                              Border.all(color: Colors.black),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Obx(() => Radio(
                                                      value: 'M',
                                                      activeColor: Colors.black,
                                                      groupValue:
                                                          controller.gender.value,
                                                      onChanged: (value) {
                                                        controller.selectedGender(value);
                                                      },
                                                    )),
                                                Icon(
                                                  Icons.male,
                                                  color: Colors.white,
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Obx(() => Radio(
                                                      value: 'F',
                                                      activeColor: Colors.black,
                                                      groupValue:
                                                          controller.gender.value,
                                                      onChanged: (value) {
                                                        controller.selectedGender(value);
                                                      },
                                                    )),
                                                Icon(Icons.female,
                                                    color: Colors.white)
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    BsCol(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 15),
                                      sizes: ColScreen(lg: Col.col_6),
                                      child: TextFormField(
                                        autofocus: false,
                                        // initialValue: 'some password',
                                        obscureText: true,
                                        decoration: InputDecoration(
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
                                      ),
                                    ),
                                    BsCol(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 15),
                                      sizes: ColScreen(lg: Col.col_6),
                                      child: TextFormField(
                                        autofocus: false,
                                        // initialValue: 'some password',
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                              color: Colors.blue.shade200,
                                              width: 2.0,
                                            ),
                                          ),
                                          hintText: 'Confirm Password',
                                          contentPadding: EdgeInsets.fromLTRB(
                                              20.0, 10.0, 20.0, 10.0),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25.0)),
                                        ),
                                      ),
                                    ),
                                    BsCol(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 15),
                                      sizes: ColScreen(lg: Col.col_2),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary:
                                                      Colors.blue.shade300),
                                              onPressed: () async {
                                                FilePickerResult? result =
                                                    await FilePicker.platform
                                                        .pickFiles(
                                                  type: FileType.custom,
                                                  allowedExtensions: [
                                                    'jpg',
                                                    'pdf',
                                                    'doc'
                                                  ],
                                                );
                                                // _gambarProduk.text = image!.name;
                                                // _photo = File(image.path);
                                              },
                                              child: Icon(Icons
                                                  .photo_camera_front_outlined)),
                                          ElevatedButton(
                                            child: Icon(Icons.cake),
                                            onPressed: () {
                                              showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime(2000),
                                                  firstDate: DateTime(1950),
                                                  lastDate: DateTime.now());
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    BsCol(
                                      padding: EdgeInsets.only(
                                          left: 5, right: 5, top: 15),
                                      sizes: ColScreen(lg: Col.col_10),
                                      child: IntlPhoneField(
                                        decoration: InputDecoration(
                                          labelText: 'Phone Number',
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(),
                                          ),
                                        ),
                                        initialCountryCode: 'ID',
                                        onChanged: (phone) {
                                          print(phone.completeNumber);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                RaisedButton(
                                  onPressed: () {},
                                  color: Colors.blue.shade400,
                                  child: Text('Register',
                                      style: TextStyle(color: Colors.white)),
                                )
                              ],
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
}
