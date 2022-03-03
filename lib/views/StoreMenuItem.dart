import 'package:flutter/material.dart';
import 'MenuItem.dart';
class StoreMenuItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF9F4F3),
      child: Drawer(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              Image.asset("assets/images/logo.png",height: 90,),
              buildMenuItem(Icons.local_offer_outlined,'Statistics'),
              SizedBox(height: 10,),
              buildMenuItem(Icons.local_offer_outlined,'Services Providers'),
              SizedBox(height: 10,),
              buildMenuItem(Icons.perm_phone_msg_outlined,'Contact us'),
              SizedBox(height: 10,),
              buildMenuItem(Icons.notifications_none,'Notifications'),
              SizedBox(height: 16,),
              buildMenuItem(Icons.local_offer_outlined,'Settings'),
              SizedBox(height: 16,),
              buildMenuItem(Icons.favorite_border,'My Favorites'),
              SizedBox(height: 16,),
              buildMenuItem(Icons.local_offer_outlined,'My Orders'),
              SizedBox(height: 16,),
              buildMenuItem(Icons.local_offer_outlined,'My Products'),
              SizedBox(height: 16,),
              buildMenuItem(Icons.local_offer_outlined,'Customers Orders'),
              SizedBox(height: 16,),
              buildMenuItem(Icons.local_offer_outlined,'Customers Orders'),
            ],
          ),
        ),
      ),
    );
  }
}



