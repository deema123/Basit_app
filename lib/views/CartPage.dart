import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  final routeName = "/CartPage";
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFEFEFEF),
        title: Text(
          'Clothing',
          style:
              TextStyle(color: Color(0xFF649AB8), fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.view_headline,
                color: Color(0xff649AB8),
              )),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Color(0xff649AB8),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: BuildBody(),
    );
  }
}

class BuildBody extends StatefulWidget {
  @override
  _BuildBodyState createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.all(10),
                child: ListView.separated(
                  //physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, int) => SizedBox(
                    height:0.1 ,
                  ),
                  itemCount: 5,
                  itemBuilder: (context, int) => Container(

                    height: MediaQuery.of(context).size.height / 4.1,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 5,
                              width: MediaQuery.of(context).size.width / 4.2,
                              child: Image.asset(
                                "assets/images/img1.png",
                                fit: BoxFit.cover,
                              ),
                            ),

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Trousers",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xFF669EB9),
                                          ),
                                        ),
                                        Icon(
                                          Icons.delete,
                                          size: 20,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '200 QR',
                                      style: TextStyle(
                                        color: Color(0xFF669EB9),
                                        fontSize: 13,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "Rose Store",
                                          style: TextStyle(
                                            color: Color(0xFF78C4C5),
                                            fontSize: 11,
                                          ),
                                        ),
                                        SizedBox(width: 50),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                              alignment: Alignment.topCenter,
                                              width: 25,
                                              height: 26,
                                              decoration: new BoxDecoration(
                                                  color: Color(0xFFEFEFEF),
                                                  borderRadius:
                                                      new BorderRadius.all(
                                                    Radius.circular(50.0),
                                                  )),
                                            ),
                                            Positioned(
                                              child: Icon(
                                                Icons.remove,
                                                color: Color(0xFF669EB9),
                                                size: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 15),
                                        Text(
                                          " 1 ",
                                          style: TextStyle(
                                            color: Color(0xFF669EB9),
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Container(
                                              width: 25,
                                              height: 26,
                                              decoration: new BoxDecoration(
                                                  color: Color(0xFFEFEFEF),
                                                  borderRadius:
                                                      new BorderRadius.all(
                                                    Radius.circular(50.0),
                                                  )),
                                            ),
                                            Positioned(
                                              child: Icon(
                                                Icons.add,
                                                size: 13,
                                                color: Color(0xFF669EB9),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),

                            ),

                          ],
                        ),

                        Divider(
                            height: 12,
                            color: Colors.black
                        ),
                      ],

                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Total Price",
                    style: TextStyle(
                      color: Color(0xFF669EB9),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " 2000 QR",
                    style: TextStyle(
                      color: Color(0xFF669EB9),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 150,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                color: Colors.white,
              ),
              child: GestureDetector(
//              onTap: (){ Navigator.pushReplacement(
//                  context,
//                  MaterialPageRoute(
//                      builder: (BuildContext context) => singIn()));
//              },

                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF74BCC2), Color(0xFF649AB8)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.0, 0.8],
                      tileMode: TileMode.clamp,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  width: 200.0,
                  height: 35,
                  child: Text(
                    'CheckOut',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
