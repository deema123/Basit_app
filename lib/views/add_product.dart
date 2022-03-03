import 'package:flutter/material.dart';

import 'App_Bar.dart';
import 'CustomButton.dart';
import 'constants.dart';

class AddProduct extends StatefulWidget {
  final routeName = '/AddProduct';
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  press() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPColor,
      appBar: appBar('Add product', [Container()]),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF74BCC2), Color(0xFF649AB8)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.0, 0.8],
                      ),
                    ),
                    child: Center(
                      child: Image.asset('assets/images/camera.png'),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    bottom: 30,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 23,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white38),
                        child: Center(
                          child: Text(
                            'More',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              productTextField('Product Name En', 1.1, context),
              productTextField('Product Name Ar', 1.1, context),
              productTextField('Description En', 1.1, context),
              productTextField('Description Ar', 1.1, context),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    productTextField('Current Price', 2.5, context),
                    productTextField('Old Price', 2.5, context),
                  ],
                ),
              ),
              productTextField('Choose Catagories', 1.1, context),
              SizedBox(
                height: 50,
              ),
              customButton(context, 'Save', press, 5),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget productTextField(String text, wNum, BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 15),
      height: MediaQuery.of(context).size.height / 12,
      width: MediaQuery.of(context).size.width / wNum,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), color: Colors.white),
      child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: text,
                  hintStyle: TextStyle(
                      fontSize: 16,
                      color: kFColor,
                      fontWeight: FontWeight.bold)))));
}
