import 'package:get/get.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'welcome_label': 'Welcome to Add Life',
          'explore_us_label': 'Explore Us',
          'log_in_button_text': 'Log In',
          'signup_button_text': 'Sign up',
          'password_label': 'Password',
          'email_label': 'Email',
          'login_title_label': 'Login',
          'dont_have_account_label': 'Don’t have an account ?',
          'signup_title_label': 'Signup',
          'name_label': 'Name',
          'already_have_account_label': 'Already have an account ?',
                    'signin_button_text': 'Sign in',

        },
        'de_DE': {
          'welcome_label': 'Hallo Welt',
        }
      };
}
