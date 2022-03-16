import 'package:get/state_manager.dart';

class RegisterPresenter extends GetxController{
  var gender = ''.obs;
  selectedGender(var chosen){
    gender.value = chosen;
  }
}