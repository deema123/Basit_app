import 'package:flutter/material.dart';

import 'App_Bar.dart';
import 'constants.dart';

class CustomerOrders extends StatelessWidget {
  final routeName = "/CustomerOrders";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPColor,
      appBar: appBar('Customers Orders', [Container()]),
      body: ListView.builder(
        itemBuilder: (context, index) => Container(
          child: ordersContainer(context, 'Order ${index + 1}'),
        ),
        itemCount: 4,
      ),
    );
  }

  ordersContainer(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width / 2,
      color: Colors.white,
      child: Column(
        children: [
          Container(
              child: Row(
            children: [
              Image.asset('assets/images/order.png'),
              SizedBox(
                width: 9,
              ),
              Text(
                text,
                style: TextStyle(
                    color: Color(0xff78C4C5), fontWeight: FontWeight.bold),
              )
            ],
          )),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                textRow('Order date', '18 Dec 2018', context),
                SizedBox(
                  height: 15,
                ),
                textRow('Customer', 'Salih', context),
                SizedBox(
                  height: 15,
                ),
                textRow('Status', 'New', context),
                SizedBox(
                  height: 15,
                ),
                textRow('Total Price', '1200 QR', context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textRow(String text1, String text2, BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              text1,
              style: TextStyle(fontWeight: FontWeight.bold, color: kFColor),
            ),
          ),
          Expanded(
            child: Text(
              text2,
              style: TextStyle(color: kFColor),
            ),
          )
        ],
      ),
    );
  }
}
