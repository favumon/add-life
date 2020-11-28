import 'package:add_life/core/models/address_model.dart';
import 'package:add_life/ui/views/address/add_address_screen_controller.dart';
import 'package:add_life/ui/views/address/saved_addresses_screen_controller.dart';
import 'package:add_life/ui/widgets/back_button_app_bar.dart';
import 'package:add_life/ui/widgets/gradient_button.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class AddAddressScreen extends StatelessWidget {
  final AddAddressScreenController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackButtonAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Add Address',
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'name_label'.tr),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Address1'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Address2'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'City'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'State'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Postal Code'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Mobile Number'),
                    ),
                  ],
                ),
              ),
            ),
            GradientButton(
              buttonText: 'Add Address',
              onPressed: () => Get.back(),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
