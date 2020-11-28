import 'package:add_life/ui/views/address/saved_addresses_screen_controller.dart';
import 'package:get/get.dart';

class SavedAddressesScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SavedAddressesScreenController());
  }
}
