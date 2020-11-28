import 'package:add_life/ui/routes/app_routes.dart';
import 'package:add_life/ui/widgets/gradient_button.dart';
import 'package:add_life/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_screen_controller.dart';
import 'widgets/quantity_steppet.dart';

class CartScreen extends StatelessWidget {
  final CartScreenController _controller = Get.put(CartScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black87,
            ),
            onPressed: () => Get.back(),
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Cart',
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Expanded(
                  child: Obx(() {
                    return ListView.builder(
                      itemCount: _controller.cartItems.length,
                      itemBuilder: (context, index) => Stack(
                        children: [
                          Card(
                            elevation: 4,
                            margin: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        width: 110,
                                        child: Image.network(_controller
                                            .cartItems[index]
                                            .value
                                            .productImage),
                                      )),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        _controller
                                            .cartItems[index].value.productName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                                fontWeight: FontWeight.normal),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        _controller.cartItems[index].value
                                            .productBrand,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black26),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        _controller.cartItems[index].value.price
                                            .toCurrency(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xFF374ABE)),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Obx(() {
                                        return QuantityStepper(
                                          currentQuantity: _controller
                                              .cartItems[index].value.quantity,
                                          onQuantityChanged: (changedQuantity) {
                                            if (changedQuantity == 0)
                                              _controller.cartItems
                                                  .removeAt(index);
                                            else {
                                              _controller.cartItems[index]
                                                  .update((val) =>
                                                      val.quantity =
                                                          changedQuantity);
                                            }
                                          },
                                        );
                                      })
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 10),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Material(
                                color: Colors.transparent,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.black54,
                                  ),
                                  onPressed: () =>
                                      _controller.cartItems.removeAt(index),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 70,
                margin: EdgeInsets.only(bottom: 20),
                child: GradientButton(
                  buttonText: 'Continue',
                  onPressed: () => Get.toNamed(savedAddressesScreen),
                ),
              ),
            )
          ],
        ));
  }
}
