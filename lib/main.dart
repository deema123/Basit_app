import 'package:basit/views/add_product.dart';
import 'package:basit/views/check_out.dart';
import 'package:basit/views/customer_orders.dart';
import 'package:basit/views/my_products.dart';
import 'package:basit/views/offers_page.dart';
import 'package:basit/views/signup_customer.dart';
import 'package:basit/views/signup_form.dart';
import 'views/login/singIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:basit/routes.dart';
import 'views/AdsPage.dart';
import 'views/HomeBar.dart';
import 'views/CartPage.dart';
import 'views/ClothingPage.dart';
import 'views/sign-up-main.dart';
import 'package:basit/home_view.dart';
import 'views/Services.dart';
import 'views/product_details.dart';
import 'views/StoreProfile.dart';
import 'views/contact_us.dart';
import 'views/favorite_page.dart';
import 'views/Notification.dart';
import 'views/Settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: SingUpCustomer(SingUpCustForm()).routeName,
      initialRoute: SingIn().routeName,
      routes: routes,

    );
  }
}
