import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_getx/Background/galaxy.dart';
import 'package:flutter_web_getx/DashboardBoss/DashboardBossContract.dart';
import 'package:flutter_web_getx/DashboardBoss/DashboardBossPresenter.dart';
import 'package:flutter_web_getx/DashboardBoss/DashboardBossStateController.dart';
import 'package:flutter_web_getx/Login/LoginStateController.dart';
import 'package:get/get.dart';

// class DashboardBoss extends GetView implements DashboardBossContract{
  

//   @override
//   void onInit() {
//     _dbpr = DashboardBossPresenter(this);
//     _dbpr.index(argumentData[0]['id']);
//   }
//   dynamic argumentData = Get.arguments; 

//   late final DashboardBossPresenter _dbpr;
//   DashboardBossController _ctrl = new DashboardBossController();
//   GalaxyBG _bg = new GalaxyBG();

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(title: Text('Dashboard Boss')),
//       drawer: Drawer(
//         child: ListView(
//           // Remove padding
//           padding: EdgeInsets.zero,
//           children: [
//             UserAccountsDrawerHeader(
//               accountName: Obx(() => Text('${_ctrl.name}')),
//               accountEmail: Obx(() => Text('${_ctrl.email}')),
//               currentAccountPicture: CircleAvatar(
//                 backgroundColor: Colors.white,
//                 child: ClipOval(
//                   child: Obx(() => Image.network(
//                         '${_ctrl.photo}',
//                         fit: BoxFit.cover,
//                         width: 90,
//                         height: 90,
                        
//                       )),
//                 ),
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 image: DecorationImage(
//                     fit: BoxFit.fill,
//                     image: NetworkImage(
//                         'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.favorite),
//               title: Text('Favorites'),
//               onTap: () => null,
//             ),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: Text('Friends'),
//               onTap: () => null,
//             ),
//             ListTile(
//               leading: Icon(Icons.share),
//               title: Text('Share'),
//               onTap: () => null,
//             ),
//             ListTile(
//               leading: Icon(Icons.notifications),
//               title: Text('Request'),
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//               onTap: () => null,
//             ),
//             ListTile(
//               leading: Icon(Icons.description),
//               title: Text('Policies'),
//               onTap: () => null,
//             ),
//             Divider(),
//             ListTile(
//               title: Text('Exit'),
//               leading: Icon(Icons.exit_to_app),
//               onTap: () => null,
//             ),
//           ],
//         ),
//       ),
//       body: Stack(
//         children: [
//           _bg,
//           BsRow(
//             children: [
//               BsCol(
//                 padding: EdgeInsets.all(15.0),
//                 sizes: ColScreen(sm: Col.col_3),
//                 child: Container(
//                   height: 150,
//                   child: Card(
//                     color: Colors.blue.shade300,
//                     child: Container(
//                       margin: EdgeInsets.all(3),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Icon(
//                             Icons.fastfood,
//                             size: 100,
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               // Text('1.000.000.000', style: TextStyle(fontSize: 21,)),
//                               Text('${_ctrl.snacks}',
//                                   style: TextStyle(
//                                     fontSize: 64,
//                                   ))
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               BsCol(
//                 padding: EdgeInsets.all(15.0),
//                 sizes: ColScreen(sm: Col.col_3),
//                 child: Container(
//                   height: 150,
//                   child: Card(
//                     color: Colors.green,
//                     child: Container(
//                       margin: EdgeInsets.all(3),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Icon(
//                             Icons.person,
//                             size: 100,
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text('${_ctrl.users}',
//                                   style: TextStyle(
//                                     fontSize: 64,
//                                   )),
//                               // Text('employees', style: TextStyle(fontSize: 12,))
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               BsCol(
//                 padding: EdgeInsets.all(15.0),
//                 sizes: ColScreen(sm: Col.col_3),
//                 child: Container(
//                   height: 150,
//                   child: Card(
//                     color: Colors.yellow,
//                     child: Container(
//                       margin: EdgeInsets.all(3),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Icon(
//                             Icons.library_books,
//                             size: 100,
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text('${_ctrl.tasks}',
//                                   style: TextStyle(
//                                     fontSize: 64,
//                                   )),
//                               // Text('tasks', style: TextStyle(fontSize: 12,))
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               BsCol(
//                 padding: EdgeInsets.all(15.0),
//                 sizes: ColScreen(sm: Col.col_3),
//                 child: Container(
//                   height: 150,
//                   child: Card(
//                     color: Colors.red,
//                     child: Container(
//                       margin: EdgeInsets.all(3),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Icon(
//                             Icons.coffee,
//                             size: 100,
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               // Text('data', style: TextStyle(fontSize: 56,)),
//                               Text('${_ctrl.drinks}',
//                                   style: TextStyle(
//                                     fontSize: 64,
//                                   ))
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               // BsCol(
//               //   padding: EdgeInsets.all(15),
//               //   sizes: ColScreen(sm: Col.col_12, md: Col.col_12, lg: Col.col_6),
//               //   order: ColOrder(md: 1),
//               //   child: Container(
//               //     color: Color.fromARGB(255, 16, 82, 197),
//               //     child: ,
//               //   ),
//               //   ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   onIndexFailed(String message) {
//     // TODO: implement onIndexFailed
//     throw UnimplementedError();
//   }

//   @override
//   onIndexSuccess(Dashboard data) {
//     // TODO: implement onIndexSuccess
//     _ctrl.users = data.users!;
//     _ctrl.tasks = data.tasks!;
//     _ctrl.snacks = data.snacks!;
//     _ctrl.drinks = data.drinks!;
//   }
// }


class DashboardBoss extends StatefulWidget {
  const DashboardBoss({ Key? key }) : super(key: key);

  @override
  State<DashboardBoss> createState() => _DashboardBossState();
}

class _DashboardBossState extends State<DashboardBoss> implements DashboardBossContract {

  late final DashboardBossPresenter _dbpr;
  _DashboardBossState(){
    // _dbpr = DashboardBossPresenter(this);
    // _dbpr.index(argumentData[0]['id']);
    print(argumentData[0]['id']);
  }

  dynamic argumentData = Get.arguments; 

  DashboardBossController _ctrl = new DashboardBossController();
  GalaxyBG _bg = new GalaxyBG();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard Boss')),
      drawer: Drawer(
        child: ListView(
          // Remove padding
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Obx(() => Text('${_ctrl.name}')),
              accountEmail: Obx(() => Text('${_ctrl.email}')),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Obx(() => Image.network(
                        '${_ctrl.photo}',
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                        
                      )),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Friends'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Request'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Policies'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              title: Text('Exit'),
              leading: Icon(Icons.exit_to_app),
              onTap: () => Get.put(LoginStateController()).logout(),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          _bg,
          BsRow(
            children: [
              BsCol(
                padding: EdgeInsets.all(15.0),
                sizes: ColScreen(sm: Col.col_3),
                child: Container(
                  height: 150,
                  child: Card(
                    color: Colors.blue.shade300,
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.fastfood,
                            size: 100,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text('1.000.000.000', style: TextStyle(fontSize: 21,)),
                              Text('${_ctrl.snacks}',
                                  style: TextStyle(
                                    fontSize: 64,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              BsCol(
                padding: EdgeInsets.all(15.0),
                sizes: ColScreen(sm: Col.col_3),
                child: Container(
                  height: 150,
                  child: Card(
                    color: Colors.green,
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.person,
                            size: 100,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('${_ctrl.users}',
                                  style: TextStyle(
                                    fontSize: 64,
                                  )),
                              // Text('employees', style: TextStyle(fontSize: 12,))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              BsCol(
                padding: EdgeInsets.all(15.0),
                sizes: ColScreen(sm: Col.col_3),
                child: Container(
                  height: 150,
                  child: Card(
                    color: Colors.yellow,
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.library_books,
                            size: 100,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('${_ctrl.tasks}',
                                  style: TextStyle(
                                    fontSize: 64,
                                  )),
                              // Text('tasks', style: TextStyle(fontSize: 12,))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              BsCol(
                padding: EdgeInsets.all(15.0),
                sizes: ColScreen(sm: Col.col_3),
                child: Container(
                  height: 150,
                  child: Card(
                    color: Colors.red,
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.coffee,
                            size: 100,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text('data', style: TextStyle(fontSize: 56,)),
                              Text('${_ctrl.drinks}',
                                  style: TextStyle(
                                    fontSize: 64,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // BsCol(
              //   padding: EdgeInsets.all(15),
              //   sizes: ColScreen(sm: Col.col_12, md: Col.col_12, lg: Col.col_6),
              //   order: ColOrder(md: 1),
              //   child: Container(
              //     color: Color.fromARGB(255, 16, 82, 197),
              //     child: ,
              //   ),
              //   ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  onIndexFailed(String message) {
    // TODO: implement onIndexFailed
    throw UnimplementedError();
  }

  @override
  onIndexSuccess(Map data) {
    // TODO: implement onIndexSuccess
    _ctrl.users = data['users'];
    _ctrl.tasks = data['tasks'];
    _ctrl.snacks = data['foods'];
    _ctrl.drinks = data['drinks'];
  }
}