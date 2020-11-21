import 'package:add_life/ui/images.dart';
import 'package:add_life/ui/views/home/home_screen_controller.dart';
import 'package:add_life/ui/views/home/widgets/best_sell_widget.dart';
import 'package:add_life/ui/views/home/widgets/categories_widget.dart';
import 'package:add_life/ui/views/home/widgets/drawer_widget.dart';
import 'package:add_life/ui/views/home/widgets/featured_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final HomeScreenController controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerWidget(),
      appBar: AppBar(
        leading: Container(
            alignment: Alignment.center,
            child: Builder(builder: (context) {
              return IconButton(
                  icon: SvgPicture.asset(
                    hamburgerMenu,
                    height: 25,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  });
            })),
        actions: [
          IconButton(
            icon: Icon(
              Icons.filter_alt_outlined,
              size: 40,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[100],
                          offset: Offset(0, 8),
                          blurRadius: 10,
                          spreadRadius: 4)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: 'Search Your Product',
                      hintStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none,
                      icon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.search,
                            size: 40,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 1,
                            height: 30,
                            color: Colors.black12,
                          )
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CategoriesWidget(),
              const SizedBox(
                height: 40,
              ),
              FeaturedWidget(),
              const SizedBox(
                height: 40,
              ),
              BestSellWidget()
            ],
          ),
        ),
      ),
    );
  }
}
