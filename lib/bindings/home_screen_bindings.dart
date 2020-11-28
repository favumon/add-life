import 'package:add_life/ui/views/home/home_screen_controller.dart';
import 'package:get/instance_manager.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeScreenController());
  }
}
