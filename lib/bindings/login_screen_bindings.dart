import 'package:add_life/ui/views/home/home_screen_controller.dart';
import 'package:add_life/ui/views/login/login_controller.dart';
import 'package:get/instance_manager.dart';

class LoginScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
