import 'package:add_life/core/models/address_model.dart';
import 'package:add_life/ui/routes/app_routes.dart';
import 'package:add_life/ui/views/address/saved_addresses_screen_controller.dart';
import 'package:add_life/ui/widgets/back_button_app_bar.dart';
import 'package:add_life/ui/widgets/gradient_button.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class SavedAddressesScreen extends StatelessWidget {
  final SavedAddressesScreenController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BackButtonAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Addresses',
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: _controller.savedAddresses.length,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Obx(() {
                          return RadioListTile<AddressModel>(
                            groupValue: _controller.selectedAddress.value,
                            value: _controller.savedAddresses[index],
                            title: Text(
                              '${_controller.savedAddresses[index].name}',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            subtitle: Text(
                              '${_controller.savedAddresses[index].address1}'
                              '\n${_controller.savedAddresses[index].address2 ?? ''}'
                              '\n${_controller.savedAddresses[index].city ?? ''}, ${_controller.savedAddresses[index].state ?? ''}'
                              '\n${_controller.savedAddresses[index].pincode ?? ''}',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            onChanged: (value) {
                              return _controller.selectedAddress.value = value;
                            },
                          );
                        }),
                      ))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              borderRadius: BorderRadius.circular(6),
              onTap: () => Get.toNamed(addAddressScreen),
              child: FDottedLine(
                color: Color(0xFF667EEA),
                strokeWidth: 2.0,
                dottedLength: 2.0,
                space: 4.0,
                corner: FDottedLineCorner.all(6.0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Color(0xFF667EEA),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Add Address',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Color(0xFF667EEA)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GradientButton(
              buttonText: 'Continue To Payment',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
