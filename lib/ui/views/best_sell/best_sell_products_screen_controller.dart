import 'package:add_life/core/models/product_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class BestSellProductsScreenController extends GetxController {
  var bestSellProducts = <ProductModel>[].obs;

  @override
  void onInit() {
    loadBestSellItems();
    super.onInit();
  }

  void loadBestSellItems() {
    bestSellProducts.addAll([
      ProductModel(140, 'Woman T-Shirt',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGXvIVw1gMdh5SBdgCpVTrzvIueUctng1eOg&usqp=CAU'),
      ProductModel(340, 'Men T-Shirt',
          'https://img.looksgud.com/upload/item-image/530/bdn9/bdn9-roadster-men-maroon-black-colourblocked-round-neck-t-shirt_500x500_5.jpg'),
      ProductModel(233, 'Kids Dress',
          'https://i.pinimg.com/originals/db/87/62/db87623c25753f012b723a1797765bfe.jpg'),
      ProductModel(656, 'Other Dress',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLmjdWOgKgaxmDCW7pCduW345lQ8vbgLEqMQ&usqp=CAU'),
      ProductModel(233, 'Men T-Shirt',
          'https://www.voilastudio.in/images/VMM6/Picture8.jpg'),
      ProductModel(233, 'Men Shirt',
          'https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/5415550/2018/8/25/5b777ae6-79b5-4eb1-82a6-8dce3e11727e1535182703900-Roadster-Men-Sweaters-5941535182703759-1.jpg'),
    ]);
  }
}
