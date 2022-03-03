import 'package:flutter/material.dart';

import 'App_Bar.dart';
import 'constants.dart';

class MyProducts extends StatelessWidget {
  final routeName = '/MyProducts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('My Products', [
        IconButton(
          icon: Icon(
            Icons.add,
          ),
          onPressed: () {},
        )
      ]),
      backgroundColor: kPColor,
      body: ListView.builder(
        itemBuilder: (context, int) => products(context),
        itemCount: 6,
      ),
    );
  }
}

Widget products(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    height: MediaQuery.of(context).size.height /5,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(3)),
    child: Row(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            height: MediaQuery.of(context).size.height / 1.1,
            width: MediaQuery.of(context).size.width / 7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                'assets/images/img1.png',
                fit: BoxFit.fill,
              ),
            )),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Trousers',
                      style: TextStyle(
                          fontSize: 13,
                          color: kFColor,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/edit.png",
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '200 QR',
                      style: TextStyle(
                          fontSize: 14,
                          color: kFColor,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/delete.png",
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
