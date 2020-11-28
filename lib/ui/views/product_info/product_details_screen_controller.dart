import 'package:add_life/core/models/product_detail_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class ProductDetailsScreenController extends GetxController {
  Rx<ProductDetailModel> product = null.obs;
  var currentPage = 0.obs;

  var selectedSize = ''.obs;

  @override
  void onInit() {
    _loadProductDetail();
    super.onInit();
  }

  void _loadProductDetail() {
    product = ProductDetailModel(
      'Men T-Shirt',
      444,
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
      ['S', 'M', 'L', 'XL'],
      [0xFFA99BFF, 0xFFF1FF9B],
      [
        'https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/1700944/2019/6/8/972c9498-3a37-4d5d-976c-4493b4d5c0021559989322793-HRX-by-Hrithik-Roshan-Men-Yellow-Printed-Round-Neck-T-Shirt--1.jpg',
        'https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/1700944/2019/6/8/c3d336e4-8c86-4434-94b2-c9b28b6dd6471559989322777-HRX-by-Hrithik-Roshan-Men-Yellow-Printed-Round-Neck-T-Shirt--2.jpg',
        'https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/1700944/2019/6/8/67f8fc06-3131-4ae9-a869-2b485f0aca3c1559989322742-HRX-by-Hrithik-Roshan-Men-Yellow-Printed-Round-Neck-T-Shirt--4.jpg'
      ],
      567,
    ).obs;
  }
}
