import 'package:flutter/material.dart';

import 'App_Bar.dart';
import 'constants.dart';
class OffersPage extends StatelessWidget {
  final routeName = '/OffersPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Offers',[
        IconButton(onPressed: () {}, icon: Icon(Icons.view_headline))
      ]),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 30),
          child: ListView.builder(
            itemBuilder: (context, index) => offer(context),
            itemCount: 4,
          )),
    );
  }
}

Widget offer(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
    height: MediaQuery.of(context).size.height/3.2,
    width: 500,
    child: Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/4,
              width: 500,
              decoration: BoxDecoration(
                  border: Border.all(color: kFColor),
                  borderRadius: BorderRadius.circular(5)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/images/jewellery.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0.5,
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: kFColor),
                          borderRadius: BorderRadius.circular(5)),
                      height: 30,
                      width: 70,
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Text(
                            "100 QR",
                            style: TextStyle(fontSize: 10, color: kFColor),
                          ),
                          Container(
                            child: Text(
                              "100 QR",
                              style: TextStyle(
                                color: Colors.transparent,
                                decorationColor: Colors.red,
                                decorationStyle: TextDecorationStyle.solid,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: kFColor),
                          borderRadius: BorderRadius.circular(5)),
                      height: 30,
                      width: 70,
                      child: Center(
                        child: Text(
                          "90 QR",
                          style: TextStyle(fontSize: 10, color: kFColor),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Text(
          'jewelry',
          style: TextStyle(color: kFColor,fontSize: 17 ,fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
