import 'package:add_life/ui/views/home/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class CategoriesWidget extends StatelessWidget {
  final HomeScreenController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'See all',
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 80,
          child: Obx(() => ListView.builder(
                itemCount: _controller.categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                _controller.categories[index].categoryImage)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: _controller.categories[index].gradient),
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 80,
                      width: 130,
                      child: Text(
                        _controller.categories[index].categoryName,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
