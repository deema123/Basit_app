import 'package:flutter/material.dart';
import 'package:basit/views/Services.dart';
import 'package:basit/views/Store.dart';
import 'package:basit/views/Customer.dart';
class SignUp extends StatelessWidget {
  final routeName = "/SignUp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFEFEFEF),
        title: Text(
          'Sign up',
          style:
          TextStyle(color: Color(0xFF649AB8), fontWeight: FontWeight.bold),
        ),
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(
//              Icons.arrow_back_ios,
//              color: Color(0xff649AB8),
//            ),
//            onPressed: () {},
//          )
//        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/images/Bground.jpeg',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/8,
            child: Column(
              children: [
                signUpItem(context,'assets/images/Customer.png','Customer',Customer()),
                SizedBox(height: 30,),
                signUpItem(context,'assets/images/Store.png','Store',Store()),
                SizedBox(height: 30,),
                signUpItem(context,'assets/images/Services.png','Services',Services())
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget signUpItem(BuildContext context, String img, String text,Widget pages) {
  return Container(
    width: MediaQuery.of(context).size.width / 3,
    height: MediaQuery.of(context).size.height / 5,
    child: Card(
      color: Color(0xFFffffff),
      elevation: 5,
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context )=> pages));
        },
        child: Column(
          children: [
            SizedBox(height: 15),
            Image.asset(img),
            SizedBox(height: 10),
           Text(text,style: TextStyle(color:Color(0xFF649AB8),fontWeight: FontWeight.bold ,fontSize: 15),),
  ],
        ),
      ),
    ),
  );
}
