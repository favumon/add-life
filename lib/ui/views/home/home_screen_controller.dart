import 'package:add_life/core/models/category_model.dart';
import 'package:add_life/core/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import '../../images.dart';

class HomeScreenController extends GetxController {
  var categories = <CategoryModel>[].obs;
  var featuredItems = <ProductModel>[].obs;
  var bestSellItems = <ProductModel>[].obs;

  @override
  void onInit() {
    loadCategories();
    loadFeaturedItems();
    loadBestSellItems();
    super.onInit();
  }

  void loadCategories() {
    categories.addAll([
      CategoryModel(
          'Women',
          [
            Color(0xFF667EEA).withOpacity(.75),
            Color(0xFF64B6FF).withOpacity(.75)
          ],
          categoryWomen),
      CategoryModel(
          'Men',
          [Color(0xFF5858).withOpacity(.75), Color(0xFF5858).withOpacity(.75)],
          categoryMen),
      CategoryModel(
          'Kids',
          [
            Color(0xFF43E97B).withOpacity(.75),
            Color(0xFF43E97B).withOpacity(.75)
          ],
          categoryKids),
    ]);
  }

  void loadFeaturedItems() {
    featuredItems.addAll([
      ProductModel(140, 'Woman T-Shirt',
          'https://images.hugoboss.com/is/image/boss/hbeu50448096_107_340'),
      ProductModel(340, 'Men T-Shirt',
          'https://i.pinimg.com/474x/74/81/11/748111b53c10aa342d952f624b78466b.jpg'),
      ProductModel(233, 'Kids Dress',
          'https://i.pinimg.com/originals/db/87/62/db87623c25753f012b723a1797765bfe.jpg'),
    ]);
  }

  void loadBestSellItems() {
    bestSellItems.addAll([
      ProductModel(340, 'Woman T-Shirt',
          'https://i.pinimg.com/originals/3e/46/81/3e468127d8e3c1e750247338dbe74d5d.jpg'),
      ProductModel(455, 'Men T-Shirt',
          'https://www.dmarge.com/wp-content/uploads/2016/03/men-white-sneakers-13.jpg'),
      ProductModel(123, 'Kids Dress',
          'https://s3.ap-south-1.amazonaws.com/tcsonline-live/catalog/category/land-girls_2.jpg'),
    ]);
  }
}
