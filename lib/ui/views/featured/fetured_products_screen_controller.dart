import 'package:add_life/core/models/product_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class FeturedProductsScreenController extends GetxController {
  var featuredProducts = <ProductModel>[].obs;

  @override
  void onInit() {
    loadFeaturedItems();
    super.onInit();
  }

  void loadFeaturedItems() {
    featuredProducts.addAll([
      ProductModel(140, 'Woman T-Shirt',
          'https://images.hugoboss.com/is/image/boss/hbeu50448096_107_340'),
      ProductModel(340, 'Men T-Shirt',
          'https://i.pinimg.com/474x/74/81/11/748111b53c10aa342d952f624b78466b.jpg'),
      ProductModel(233, 'Kids Dress',
          'https://i.pinimg.com/originals/db/87/62/db87623c25753f012b723a1797765bfe.jpg'),
      ProductModel(656, 'Other Dress',
          'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1591982698-nadine2_960x.jpg?crop=1xw:1xh;center,top&resize=480:*'),
      ProductModel(233, 'Men T-Shirt',
          'https://i.pinimg.com/originals/e7/25/57/e725570e89506f310d05459059c46d44.jpg'),
      ProductModel(233, 'Men Shirt',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbM4tzBK8ewvPUs5iLo38gQHTIYSGY8GJhPg&usqp=CAU'),
    ]);
  }
}
