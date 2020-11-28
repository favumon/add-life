import 'package:add_life/ui/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.shopping_cart_outlined,
        size: 30,
      ),
      onPressed: () => Get.toNamed(cartScreen),
    );
  }
}
