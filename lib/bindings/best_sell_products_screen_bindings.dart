import 'package:add_life/ui/views/best_sell/best_sell_products_screen_controller.dart';
import 'package:get/get.dart';

class BestSellProductsScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(BestSellProductsScreenController());
  }
}
