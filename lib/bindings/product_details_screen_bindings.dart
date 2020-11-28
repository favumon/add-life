import 'package:add_life/ui/views/product_info/product_details_screen_controller.dart';
import 'package:get/instance_manager.dart';

class ProductDetailsScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductDetailsScreenController());
  }
}
