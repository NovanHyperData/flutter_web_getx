import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_getx/Dashboard/DashboardEmployee/Presenter.dart';
import 'package:flutter_web_getx/Dashboard/DashboardOfficeBoy/Contract.dart';
import 'package:flutter_web_getx/Dashboard/DashboardOfficeBoy/Presenter.dart';
import 'package:flutter_web_getx/Dashboard/DashboardOfficeBoy/StateController.dart';
import 'package:flutter_web_getx/Dashboard/Model.dart';
import 'package:flutter_web_getx/Login/StateController.dart';
import 'package:flutter_web_getx/Users/Model.dart';
import 'package:flutter_web_getx/mainPresenter.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class DashboardOfficeBoy extends GetView implements DashboardOfficeBoyContract{
  // final id;
  // HomeAdmin(this.id){
    
  // }

  final pr = Get.put(mainPresenter());
  final _ctrl = Get.put(DashboardOfficeBoyController());
  late final DashboardOfficeBoyPresenter _dbpr;
  
  DashboardOfficeBoy() {
    final box = GetStorage();
    final data = box.read("id");
    _dbpr = DashboardOfficeBoyPresenter(this);
    _dbpr.user(data);
    _dbpr.index(data);
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard Officeboy')),
      drawer: Drawer(
        child: ListView(
          // Remove padding
          padding: EdgeInsets.zero,
          children: [
            Obx(() => UserAccountsDrawerHeader(
                  accountName: Text('${_ctrl.name}'),
                  accountEmail: Text('${_ctrl.email}'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.network(
                            '${_ctrl.photo}',
                            fit: BoxFit.cover,
                            width: 90,
                            height: 90,
                          ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: pr.theme.isTrue
                            ? NetworkImage(
                                'http://10.21.1.209/lumen/Lumen_API-Modern_Office/public/Assets/BackgroundPicture/default-sidebarbackground-darkmode.jpg')
                            : NetworkImage(
                                'http://10.21.1.209/lumen/Lumen_API-Modern_Office/public/Assets/BackgroundPicture/default-sidebarbackground-lightmode.jpg')),
                  ),
                )),
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
                onTap: () => Get.put(LoginStateController()).logout()),
            Divider(),
            Obx(() => ListTile(
                  leading: pr.theme.isTrue
                      ? Icon(Icons.light_mode)
                      : Icon(Icons.dark_mode),
                  title: pr.theme.isTrue ? Text('Lightmode') : Text('Darkmode'),
                  onTap: () => pr.theme.toggle(),
                )),
          ],
        ),
      ),
      body: Stack(
        children: [
          // _bg,
          SingleChildScrollView(
            child: BsRow(
              children: [
                BsCol(
                  padding: EdgeInsets.all(15.0),
                  sizes: ColScreen(sm: Col.col_4),
                  child: Container(
                    height: 150,
                    child: Card(
                      color: Colors.blue.shade300,
                      child: Container(
                        margin: EdgeInsets.all(3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.icecream,
                                  size: 50,
                                ),
                                Obx(() => Text('${_ctrl.snacks}',
                                    style: TextStyle(
                                      fontSize: 32,
                                    )))
                              ],
                            ),
                            SizedBox(height: 15),
                            Text('Pesanan camilan yang tersisa', style: TextStyle(fontSize: 16), textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                BsCol(
                  padding: EdgeInsets.all(15.0),
                  sizes: ColScreen(sm: Col.col_4),
                  child: Container(
                    height: 150,
                    child: Card(
                      color: Colors.orange,
                      child: Container(
                        margin: EdgeInsets.all(3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.shopping_basket,
                                  size: 50,
                                ),
                                Obx(() => Text('${_ctrl.low}',
                                    style: TextStyle(
                                      fontSize: 32,
                                    )))
                              ],
                            ),
                            SizedBox(height: 15),
                            Text('Jumlah persediaan yang menipis', style: TextStyle(fontSize: 16), textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                BsCol(
                  padding: EdgeInsets.all(15.0),
                  sizes: ColScreen(sm: Col.col_4),
                  child: Container(
                    height: 150,
                    child: Card(
                      color: Colors.red,
                      child: Container(
                        margin: EdgeInsets.all(3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.coffee,
                                  size: 50,
                                ),
                                Obx(() => Text('${_ctrl.drinks}',
                                    style: TextStyle(
                                      fontSize: 32,
                                    )))
                              ],
                            ),
                            SizedBox(height: 15),
                            Text('Pesanan minuman yang tersisa', style: TextStyle(fontSize: 16), textAlign: TextAlign.center)
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
          ),
        ],
      ),
    );
  }

  @override
  onIndexFailed(String message) {
    // TODO: implement onIndexFailed
    print(message);
  }

  @override
  onIndexSuccess(Dashboard data) {
    // TODO: implement onIndexSuccess
    _ctrl.snacks.value = data.snacks!;
    _ctrl.drinks.value = data.drinks!;
    _ctrl.low.value = data.low!;
  }

  @override
  onUserFailed(String message) {
    // TODO: implement onUserFailed
    print(message);
  }

  @override
  onUserSuccess(User user) {
    // TODO: implement onUserSuccess
    _ctrl.name.value = user.userName!;
    _ctrl.photo.value = user.userPhoto!;
    _ctrl.email.value = user.userEmail!;
  }

}