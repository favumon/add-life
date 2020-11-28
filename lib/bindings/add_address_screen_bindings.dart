import 'package:add_life/ui/views/address/add_address_screen_controller.dart';
import 'package:get/get.dart';

class AddAddressScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AddAddressScreenController());
  }
}
