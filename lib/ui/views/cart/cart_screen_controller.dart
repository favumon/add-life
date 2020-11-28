import 'package:add_life/core/models/cart_item_model.dart';
import 'package:add_life/core/models/product_detail_model.dart';
import 'package:add_life/core/models/product_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class CartScreenController extends GetxController {
  var cartItems = <Rx<CartItemModel>>[].obs;
  @override
  void onInit() {
    loadCartItems();
    super.onInit();
  }

  void loadCartItems() {
    cartItems.addAll([
      CartItemModel('T-Shirt', 'Nike', 654.0, 1,
              'https://assets.myntassets.com/f_webp,w_111,h_148,q_95,c_limit,fl_progressive/h_148,q_95,w_111/v1/assets/images/1700944/2019/6/8/972c9498-3a37-4d5d-976c-4493b4d5c0021559989322793-HRX-by-Hrithik-Roshan-Men-Yellow-Printed-Round-Neck-T-Shirt--1.jpg')
          .obs,
      CartItemModel('T-Shirt', 'Vision Star', 897.0, 2,
              'https://assets.myntassets.com/f_webp,w_111,h_148,q_95,c_limit,fl_progressive/h_148,q_95,w_111/v1/assets/images/11166248/2020/3/19/8a7c73ab-1441-4ec5-a8a4-95771d3783c81584614125980-Levis-Men-Shirts-1711584614123482-1.jpg')
          .obs,
      CartItemModel('Casual Shirt', 'Highlander', 555.0, 1,
              'https://assets.myntassets.com/f_webp,w_111,h_148,q_95,c_limit,fl_progressive/h_148,q_95,w_111/v1/assets/images/7163245/2019/12/3/dcd39608-12bc-47a1-a1bd-78921dfa85131575367574528-HIGHLANDER-Men-Navy-Blue--Maroon-Slim-Fit-Striped-Casual-Shi-1.jpg')
          .obs,
      CartItemModel('T-Shirt', 'Vision Star', 897.0, 2,
              'https://assets.myntassets.com/f_webp,w_111,h_148,q_95,c_limit,fl_progressive/h_148,q_95,w_111/v1/assets/images/11166248/2020/3/19/8a7c73ab-1441-4ec5-a8a4-95771d3783c81584614125980-Levis-Men-Shirts-1711584614123482-1.jpg')
          .obs,
      CartItemModel('T-Shirt', 'Vision Star', 897.0, 2,
              'https://assets.myntassets.com/f_webp,w_111,h_148,q_95,c_limit,fl_progressive/h_148,q_95,w_111/v1/assets/images/11166248/2020/3/19/8a7c73ab-1441-4ec5-a8a4-95771d3783c81584614125980-Levis-Men-Shirts-1711584614123482-1.jpg')
          .obs,
    ]);
  }
}
