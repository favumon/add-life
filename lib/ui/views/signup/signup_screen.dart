import 'package:add_life/ui/routes/app_routes.dart';
import 'package:add_life/ui/views/login/login_screen.dart';
import 'package:add_life/ui/views/signup/signup_screen_controller.dart';
import 'package:add_life/ui/widgets/gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  final SignupController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'signup_title_label'.tr,
                  style: Theme.of(context).textTheme.headline2.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'name_label'.tr),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'email_label'.tr),
              ),
              SizedBox(
                height: 20,
              ),
              Obx(() {
                return TextField(
                  obscureText: !controller.isPasswordVisible.value,
                  decoration: InputDecoration(
                      labelText: 'password_label'.tr,
                      suffixIcon: IconButton(
                        icon: Icon(controller.isPasswordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () => controller.isPasswordVisible.value =
                            !controller.isPasswordVisible.value,
                      )),
                );
              }),
              SizedBox(
                height: 40,
              ),
              GradientButton(
                buttonText: 'signup_button_text'.tr,
                onPressed: () {},
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'already_have_account_label'.tr,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(color: Colors.black54),
                  ),
                  CupertinoButton(
                    child: Text(
                      'signin_button_text'.tr,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: Colors.black87, fontWeight: FontWeight.w500),
                    ),
                    onPressed: () => Get.offNamed(loginScreen),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
