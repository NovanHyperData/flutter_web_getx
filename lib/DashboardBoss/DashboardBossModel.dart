import 'package:get/get.dart';

class Dashboard {
  int? users;
  int? tasks;
  int? snacks;
  int? drinks;

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