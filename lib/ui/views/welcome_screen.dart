import 'package:add_life/ui/views/login/login_screen.dart';
import 'package:add_life/ui/views/signup/signup_screen.dart';
import 'package:add_life/ui/widgets/gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get/route_manager.dart';

import '../images.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'welcome_label'.tr,
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: Colors.black54),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Text(
                  'explore_us_label'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: Colors.black54),
                ),
              ),
              SvgPicture.asset(
                welcomeImage,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: context.heightTransformer(dividedBy: 8),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: GradientButton(
                  buttonText: 'log_in_button_text'.tr,
                  onPressed: () => Get.to(LoginScreen()),
                ),
              ),
              CupertinoButton(
                child: (Text(
                  'signup_button_text'.tr,
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                )),
                onPressed: () => Get.to(SignupScreen()),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
