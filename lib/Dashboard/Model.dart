class Dashboard {
  int? users;
  int? tasks;
  int? snacks;
  int? drinks;
  int? low;

  Dashboard(
      {this.users,
      this.tasks,
      this.snacks,
      this.drinks,
      this.low,});

  Dashboard.fromJson(Map<String, dynamic> json) {
    users = json['users'];
    tasks = json['tasks'];
    snacks = json['foods'];
    drinks = json['drinks'];
    low = json['low'];
  }
}