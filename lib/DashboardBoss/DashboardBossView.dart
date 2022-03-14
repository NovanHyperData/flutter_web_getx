import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_getx/Background/galaxy.dart';
import 'package:get/get.dart';

class DashboardBoss extends GetView{
   @override
  void onInit() {
    print(argumentData[0]['id']);
  }
  GalaxyBG _bg = new GalaxyBG();
  dynamic argumentData = Get.arguments;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard Boss')),
      drawer: Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Oflutter.com'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
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
            onTap: () => null,
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
                          Icon(Icons.fastfood, size: 50,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text('1.000.000.000', style: TextStyle(fontSize: 21,)),
                              Text('Profit', style: TextStyle(fontSize: 12,))
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
                          Icon(Icons.person, size: 50,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('999', style: TextStyle(fontSize: 56,)),
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
                          Icon(Icons.library_books, size: 50,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('999', style: TextStyle(fontSize: 56,)),
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
                          Icon(Icons.coffee, size: 50,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text('data', style: TextStyle(fontSize: 56,)),
                              Text('data', style: TextStyle(fontSize: 12,))
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

}