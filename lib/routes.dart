
import 'package:basit/views/HomePage.dart';
import 'package:basit/views/add_product.dart';
import 'package:basit/views/check_out.dart';
import 'package:basit/views/customer_orders.dart';
import 'package:basit/views/my_products.dart';
import 'package:basit/views/offers_page.dart';
import 'package:basit/views/signup_customer.dart';
import 'package:basit/views/signup_form.dart';
import 'package:flutter/cupertino.dart';
import 'views/HomeBar.dart';
import 'views/login/singIn.dart';
import 'views/AdsPage.dart';
import 'views/ClothingPage.dart';
import 'views/sign-up-main.dart';
import 'views/Services.dart';
import 'views/CartPage.dart';
import 'views/product_details.dart';
import 'views/StoreProfile.dart';
import 'views/contact_us.dart';
import 'views/favorite_page.dart';
import 'views/Notification.dart';
import 'views/Settings.dart';

final Map<String,WidgetBuilder> routes={
  SingIn().routeName : (context) => SingIn(),
  HomePage().routeName :(context) => HomePage(),
  HomeBar().routeName : (context) => HomeBar(),
  AdsPage().routeName : (context) => AdsPage(),
  ClothingPage().routeName : (context) => ClothingPage(),
  SignUp().routeName : (context) => SignUp(),
  Services().routeName : (context) =>Services(),
  CartPage().routeName:(context) =>CartPage(),
  ProductDetails().routeName : (context) => ProductDetails(),
  StoreProfile().routeName : (context) => StoreProfile(),
  ContactUs().routeName : (context) =>ContactUs(),
  FavoritePage().routeName : (context) =>FavoritePage(),
  NotificationPage().routeName : (context) => NotificationPage(),
  SettingsPage().routeName : (context) =>SettingsPage(),
  CheckOut().routeName : (context) =>CheckOut(),
  CustomerOrders().routeName : (context) =>CustomerOrders(),
  AddProduct().routeName : (context) =>AddProduct(),
  MyProducts().routeName : (context) =>MyProducts(),
  OffersPage().routeName : (context) =>OffersPage(),
  SingUpCustomer(SingUpCustForm()).routeName : (context) =>SingUpCustomer(SingUpCustForm()),
};