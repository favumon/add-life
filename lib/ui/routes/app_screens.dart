import 'package:add_life/bindings/add_address_screen_bindings.dart';
import 'package:add_life/bindings/best_sell_products_screen_bindings.dart';
import 'package:add_life/bindings/cart_screen_bindings.dart';
import 'package:add_life/bindings/featured_products_screen_bindings.dart';
import 'package:add_life/bindings/home_screen_bindings.dart';
import 'package:add_life/bindings/login_screen_bindings.dart';
import 'package:add_life/bindings/product_details_screen_bindings.dart';
import 'package:add_life/bindings/saved_addresses_screen_bindings.dart';
import 'package:add_life/bindings/signup_screen_bindings.dart';
import 'package:add_life/ui/routes/app_routes.dart';
import 'package:add_life/ui/views/address/add_address_screen.dart';
import 'package:add_life/ui/views/address/saved_addresses_screen.dart';
import 'package:add_life/ui/views/best_sell/best_sell_products_screen.dart';
import 'package:add_life/ui/views/cart/cart_screen.dart';
import 'package:add_life/ui/views/featured/featured_products_screen.dart';
import 'package:add_life/ui/views/home/home_screen.dart';
import 'package:add_life/ui/views/login/login_screen.dart';
import 'package:add_life/ui/views/product_info/product_details_screen.dart';
import 'package:add_life/ui/views/signup/signup_screen.dart';
import 'package:get/get.dart';

class AppScreens {
  static final screens = [
    GetPage(
        name: homeScreen,
        page: () => HomeScreen(),
        binding: HomeScreenBinding()),
    GetPage(
        name: loginScreen,
        page: () => LoginScreen(),
        binding: LoginScreenBindings()),
    GetPage(
        name: signupScreen,
        page: () => SignupScreen(),
        binding: SignupScreenBindings()),
    GetPage(
        name: featuredProductsScreen,
        page: () => FeaturedProductsScreen(),
        binding: FeaturedProductsScreenBindings()),
    GetPage(
        name: bestSellProductsScreen,
        page: () => BestSellProductsScreen(),
        binding: BestSellProductsScreenBindings()),
    GetPage(
        name: productDetailScreen,
        page: () => ProductDetailsScreen(),
        binding: ProductDetailsScreenBindings()),
    GetPage(
        name: cartScreen,
        page: () => CartScreen(),
        binding: CartScreenBidings()),
    GetPage(
        name: savedAddressesScreen,
        page: () => SavedAddressesScreen(),
        binding: SavedAddressesScreenBindings()),
    GetPage(
        name: addAddressScreen,
        page: () => AddAddressScreen(),
        binding: AddAddressScreenBindings()),
  ];
}
