import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackArrowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black87,
      ),
      onPressed: () => Get.back(),
    );
  }
}
