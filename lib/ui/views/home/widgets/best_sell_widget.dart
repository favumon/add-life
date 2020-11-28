import 'package:add_life/ui/routes/app_routes.dart';
import 'package:add_life/ui/views/best_sell/best_sell_products_screen.dart';
import 'package:add_life/ui/views/home/home_screen_controller.dart';
import 'package:add_life/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BestSellWidget extends StatelessWidget {
  final HomeScreenController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Best Sell',
              style: Theme.of(context).textTheme.headline2,
            ),
            GestureDetector(
              onTap: () => Get.toNamed(bestSellProductsScreen),
              child: Text(
                'See all',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 250,
          child: Obx(() => ListView.builder(
                itemCount: _controller.bestSellItems.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                _controller.bestSellItems[index].image),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 180,
                      width: 160,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      _controller.bestSellItems[index].rate.toCurrency(),
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      _controller.featuredItems[index].name,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
