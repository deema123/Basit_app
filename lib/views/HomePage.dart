import 'package:basit/home_view.dart';
import 'package:basit/views/ClothingPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final routeName = "/HomePage";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HomeView(),
          SizedBox(height: 30),
          Container(
            margin: EdgeInsets.only(left: 30),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Stores Categories',
              style: TextStyle(
                  color: Color(0xFF649AB8),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: gridPart(),
          ),
        ],
      ),
    );
  }

  Widget gridPart() {
    return Container(
      margin: EdgeInsets.all(12),
      child: GridView.builder(
        itemCount: 6,
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
            childAspectRatio: 2/3,
            crossAxisSpacing:4,
           mainAxisSpacing: 4,
           ),
        itemBuilder: (BuildContext context, int index) {
          return GridTile(
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context )=> ClothingPage()));

              },
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      "assets/images/Clothing.png",
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width /1.5,
                    ),
                  ),
                  //SizedBox(height: 2,),
                  Text('Clothing'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
