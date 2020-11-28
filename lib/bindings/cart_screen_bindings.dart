import 'package:add_life/ui/views/cart/cart_screen_controller.dart';
import 'package:get/instance_manager.dart';

class CartScreenBidings extends Bindings {
  @override
  void dependencies() {
    Get.put(CartScreenController());
  }
}
