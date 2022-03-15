import 'package:get/get.dart';

class Dashboard {
  RxInt? users;
  RxInt? tasks;
  RxInt? snacks;
  RxInt? drinks;

  Dashboard(
      {this.users,
      this.tasks,
      this.snacks,
      this.drinks,});

  Dashboard.fromJson(Map<String, dynamic> json) {
    users = json['users'];
    tasks = json['tasks'];
    snacks = json['foods'];
    drinks = json['drinks'];
  }
}