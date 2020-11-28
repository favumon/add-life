import 'package:add_life/core/models/address_model.dart';
import 'package:get/get.dart';

class SavedAddressesScreenController extends GetxController {
  var savedAddresses = <AddressModel>[].obs;

  var selectedAddress = Rx<AddressModel>();

  @override
  void onInit() {
    loadSavedAddresses();
    super.onInit();
  }

  void loadSavedAddresses() {
    savedAddresses.addAll([
      AddressModel(
          'Naseem',
          'Chalipparambil House, Kulathoor PO',
          'Vaduthala, Thrisur',
          'Kunnamkulam',
          'Kerala',
          'Near Mosque',
          '687657'),
      AddressModel('Subeesh', 'Manappuram House, Karayannoor PO',
          'Mala, Thrisur', 'Palappetti', 'Kerala', 'Near Temple', '689878'),
      AddressModel(
          'Naseem',
          'Chalipparambil House, Kulathoor PO',
          'Vaduthala, Thrisur',
          'Kunnamkulam',
          'Kerala',
          'Near Mosque',
          '687657'),
      AddressModel('Subeesh', 'Manappuram House, Karayannoor PO',
          'Mala, Thrisur', 'Palappetti', 'Kerala', 'Near Temple', '689878'),
    ]);
  }
}
