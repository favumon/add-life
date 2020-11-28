import 'package:add_life/core/models/product_detail_model.dart';

class CartItemModel {
  final String productName;
  final String productBrand;
  final String productImage;
  final double price;
  int quantity;

  CartItemModel(this.productName, this.productBrand, this.price, this.quantity,
      this.productImage);
}
