import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardOfficeBoy extends GetView{
  // final id;
  // HomeAdmin(this.id){
    
  // }
  dynamic argumentData = Get.arguments;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('OfficeBoy ${argumentData[0]['id']}')
          ],
        ),
      ),
    );
  }

}