import 'package:add_life/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

import 'fetured_products_screen_controller.dart';

class FeaturedProductsScreen extends StatelessWidget {
  final FeturedProductsScreenController _controller =
      Get.put(FeturedProductsScreenController());
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Featured',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Obx(() => CustomScrollView(
                          primary: false,
                          slivers: <Widget>[
                            SliverPadding(
                              padding: const EdgeInsets.all(0),
                              sliver: SliverGrid.count(
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 20,
                                  crossAxisCount: 2,
                                  childAspectRatio: .78,
                                  children: List.generate(
                                    _controller.featuredProducts.length,
                                    (index) => Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(_controller
                                                    .featuredProducts[index]
                                                    .image),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          height: 180,
                                          width: 160,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          _controller
                                              .featuredProducts[index].rate
                                              .toCurrency(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .copyWith(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          _controller
                                              .featuredProducts[index].name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              .copyWith(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )

                                  // <Widget>[
                                  //   Container(
                                  //     padding: const EdgeInsets.all(8),
                                  //     child: Text(
                                  //         _controller.featuredProducts[0].name),
                                  //     color: Colors.green[100],
                                  //   ),
                                  //   Container(
                                  //     padding: const EdgeInsets.all(8),
                                  //     child: const Text('Heed not the rabble'),
                                  //     color: Colors.green[200],
                                  //   ),
                                  //   Container(
                                  //     padding: const EdgeInsets.all(8),
                                  //     child:
                                  //         const Text('Sound of screams but the'),
                                  //     color: Colors.green[300],
                                  //   ),
                                  //   Container(
                                  //     padding: const EdgeInsets.all(8),
                                  //     child: const Text('Who scream'),
                                  //     color: Colors.green[400],
                                  //   ),
                                  //   Container(
                                  //     padding: const EdgeInsets.all(8),
                                  //     child:
                                  //         const Text('Revolution is coming...'),
                                  //     color: Colors.green[500],
                                  //   ),
                                  //   Container(
                                  //     padding: const EdgeInsets.all(8),
                                  //     child: const Text('Revolution, they...'),
                                  //     color: Colors.green[600],
                                  //   ),
                                  // ],
                                  ),
                            ),
                          ],
                        )
                    // ListView.builder(
                    //       itemCount: _controller.featuredProducts.length,
                    //       scrollDirection: Axis.horizontal,
                    //       itemBuilder: (context, index) => Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Container(
                    //             alignment: Alignment.center,
                    //             decoration: BoxDecoration(
                    //                 image: DecorationImage(
                    //                   fit: BoxFit.cover,
                    //                   image: NetworkImage(
                    //                       _controller.featuredProducts[index].image),
                    //                 ),
                    //                 borderRadius: BorderRadius.circular(10)),
                    //             margin: EdgeInsets.symmetric(horizontal: 5),
                    //             height: 180,
                    //             width: 160,
                    //           ),
                    //           SizedBox(
                    //             height: 5,
                    //           ),
                    //           Text(
                    //             _controller.featuredItems[index].rate.toCurrency(),
                    //             style: Theme.of(context).textTheme.bodyText1.copyWith(
                    //                 color: Colors.black87, fontWeight: FontWeight.bold),
                    //           ),
                    //           SizedBox(
                    //             height: 5,
                    //           ),
                    //           Text(
                    //             _controller.featuredItems[index].name,
                    //             style: Theme.of(context).textTheme.bodyText1.copyWith(
                    //                 color: Colors.black87, fontWeight: FontWeight.bold),
                    //           )
                    //         ],
                    //       ),
                    //     )
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
