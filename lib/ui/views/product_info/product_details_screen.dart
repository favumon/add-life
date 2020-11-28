import 'package:add_life/ui/views/product_info/widgets/page_view_indicator.dart';
import 'package:add_life/ui/views/product_info/widgets/size_selector.dart';
import 'package:add_life/utils/extensions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'product_details_screen_controller.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductDetailsScreenController _controller = Get.find();
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
      body: SafeArea(
        child: Obx(() {
          return _controller.product?.value == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 400,
                          child: Stack(
                            children: [
                              SizedBox(
                                  // you may want to use an aspect ratio here for tablet support
                                  height: 400.0,
                                  child: CarouselSlider.builder(
                                    itemCount: _controller
                                        .product.value.productImages.length,
                                    options: CarouselOptions(
                                      height: 450,
                                      // aspectRatio: 16 / 9,
                                      viewportFraction: .7,
                                      initialPage: 0,
                                      enableInfiniteScroll: true,
                                      reverse: false,
                                      //autoPlay: true,
                                      autoPlayInterval: Duration(seconds: 3),
                                      autoPlayAnimationDuration:
                                          Duration(milliseconds: 800),
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      enlargeCenterPage: true,
                                      scrollDirection: Axis.horizontal,
                                      onPageChanged: (index, reason) =>
                                          _controller.currentPage.value = index,
                                    ),
                                    itemBuilder:
                                        (BuildContext context, int itemIndex) =>
                                            Container(
                                                child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(_controller
                                                .product
                                                .value
                                                .productImages[itemIndex]),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      height: 150,
                                      width: double.infinity,
                                    )),
                                  )),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Obx(() {
                                      return PageViewIndicator(
                                        pageLength: _controller
                                            .product.value.productImages.length,
                                        selectedIndex:
                                            _controller.currentPage.value,
                                      );
                                    })),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(_controller.product.value.productName,
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                .copyWith(fontWeight: FontWeight.w500)),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(_controller.product.value.price.toCurrency(),
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    .copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF667EEA))),
                            const SizedBox(
                              width: 20,
                            ),
                            if (_controller.product.value.oldPrice != null)
                              Text(
                                  _controller.product.value.oldPrice
                                      .toCurrency(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.lineThrough,
                                      )),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text('Description',
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontWeight: FontWeight.w500,
                                    )),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(_controller.product.value.productDetails,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      fontWeight: FontWeight.w500,
                                    )),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text('Select Size',
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontWeight: FontWeight.w500,
                                    )),
                        const SizedBox(
                          height: 10,
                        ),
                        Obx(() {
                          return SizeSelector(
                            selectedSize: _controller.selectedSize.value,
                            sizes: _controller.product.value.sizes,
                            onSizeSelected: (size) =>
                                _controller.selectedSize.value = size,
                          );
                        })
                      ],
                    ),
                  ),
                );
        }),
      ),
    );
  }
}
