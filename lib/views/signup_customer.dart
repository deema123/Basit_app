import 'package:flutter/material.dart';

import 'App_Bar.dart';

class SingUpCustomer extends StatelessWidget {
  final routeName = "/SingUpCustomer";
  final Widget body;
  SingUpCustomer(this.body);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: appBar(
          'Sign up',
          [Container()],
        ),
        body: Stack(fit: StackFit.expand, children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            constraints: BoxConstraints.expand(),
            child: Container(
              child: Image.asset('assets/images/Bread.jpeg',
                  fit: BoxFit.cover),
              width: double.infinity,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    height: MediaQuery.of(context).size.height / 6,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Card(
                        color: Color(0xFFffffff).withOpacity(0.85),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        elevation: 10,
                        
                        child: this.body,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
