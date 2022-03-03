import 'package:flutter/material.dart';

import 'App_Bar.dart';
import 'CustomButton.dart';
import 'constants.dart';

class CheckOut extends StatefulWidget {
  final routeName = "/CheckOut";
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int value1 = 0;
  int value2 = 0;

  changeRadio1(var value) {
    setState(() {
      value1 = value as int;
    });
  }

  changeRadio2(var value) {
    setState(() {
      value2 = value as int;
    });
  }

  press() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPColor,
      appBar: appBar('CheckOut',[Container()]),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.only(left: 30, top: 30),
            color: Colors.white,
            child: ListView.separated(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, int) => Divider(
                height: 35,
                thickness: 1,
                color: Color(0xFF649AB8),
              ),
              itemBuilder: (context, index) => buildTile(),
              itemCount: 2,
            ),
          ),
          titleContainer('Delivery Address'),
          bodyForTitle(
            Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: kFColor),
                  borderRadius: new BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      )),
                )),
          ),
          titleContainer('Delivery Method'),
          bodyForTitle(
            radioRow(changeRadio1, value1, 'Delivery', 'Pickup'),
          ),
          titleContainer('Delivery Company'),
          bodyForTitle(
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery Cost',
                        style: TextStyle(
                            color: kFColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    Text('50 QR',
                        style: TextStyle(
                            color: kFColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Cost',
                        style: TextStyle(
                            color: kFColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    Text('1500 QR',
                        style: TextStyle(
                            color: kFColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          ),
          titleContainer('Payment Method'),
          bodyForTitle(
            radioRow(changeRadio2, value2, 'Cash', 'epayments'),
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 17,
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: kPColor,
            margin: EdgeInsets.only(
              bottom: 10,
              top: 20
            ),
            child: customButton(context, 'CheckOut', press, 5),
          ),
        ],
      ),
    );
  }

  buildTile() {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
      child: Row(
        children: [
          Container(
              //    padding: EdgeInsets.only( right: 10),
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.height / 7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  'assets/images/img1.png',
                  fit: BoxFit.cover,
                ),
              )),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trousers',
                    style: TextStyle(
                        fontSize: 13,
                        color: kFColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        'QTY 2',
                        style: TextStyle(
                            fontSize: 13,
                            color: kFColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(
                    '100 QR',
                    style: TextStyle(
                        fontSize: 13,
                        color: kFColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  titleContainer(String text) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 17,
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: kPColor,
      margin: EdgeInsets.only(
        bottom: 10,
      ),
      child: Text(
        text,
        style: TextStyle(
            color: kFColor, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  bodyForTitle(Widget widget) {
    return Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: Colors.white,
        child: widget);
  }
}

Widget radioRow(Function func, values, text1, text2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: ListTile(
          title: Text(
            text1,
            style: TextStyle(
                color: kFColor, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          leading: Radio(
            activeColor: kFColor,
            value: 1,
            groupValue: values,
            onChanged: (value) {
              func(value);
            },
          ),
        ),
      ),
      Expanded(
        child: ListTile(
          title: Text(
            text2,
            style: TextStyle(
                color: kFColor, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          leading: Radio(
            activeColor: kFColor,
            value: 2,
            groupValue: values,
            onChanged: (value) {
              func(value);
            },
          ),
        ),
      ),
    ],
  );
}
