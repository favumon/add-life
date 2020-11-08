import 'package:get/get.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'welcome_label': 'Welcome to Add Life',
          'explore_us_label': 'Explore Us',
          'log_in_button_text': 'Log In',
          'signup_button_text': 'Signup',
        },
        'de_DE': {
          'welcome_label': 'Hallo Welt',
        }
      };
}
