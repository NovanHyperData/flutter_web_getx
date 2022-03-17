import 'dart:html';

import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPageView extends GetView{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          BsRow(
            children: [
              BsCol(
                margin: EdgeInsets.only(left: 15, top: 5),
                sizes: ColScreen(sm: Col.col_4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/decepticons.png',
                          width: 75,
                          height: 120,
                        ),

                    SizedBox(width: 55),
                    
                    Image.asset(
                          'assets/images/autobots.png',
                          width: 75,
                          height: 120,
                        )
                  ],
                ),
              ),
              BsCol(
                margin: EdgeInsets.only(right: 35, top: 35),
                sizes: ColScreen(sm: Col.col_8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('About Us', style: TextStyle(fontSize: 28)),

                    SizedBox(width: 35),
                    Text('Contact Us', style: TextStyle(fontSize: 28)),

                    SizedBox(width: 35),
                    Text('Services', style: TextStyle(fontSize: 28)),

                    SizedBox(width: 35),
                    Card(
                      color: Colors.blue.shade600,
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 10),
                        child: Text('Sign In', style: TextStyle(fontSize: 28)))),

                    SizedBox(width: 25),
                    Card(color: Colors.blue.shade300,
                    child: Container(
                      margin: EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 10),
                      child: Text('Sign Up', style: TextStyle(fontSize: 28)))),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }

}