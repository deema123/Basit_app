import 'package:flutter/material.dart';
import 'login/singIn.dart';

class AdsPage extends StatefulWidget {
  final routeName = "/AdsPage";
  @override
  _AdsPageState createState() => _AdsPageState();
}

class _AdsPageState extends State<AdsPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
         alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/adsImage.png',
                    fit: BoxFit.cover,
                  ),
                  width: double.infinity,
                ),
                Container(
                  child: Image.asset(
                    'assets/images/adsImage.png',
                    fit: BoxFit.cover,
                  ),
                  width: double.infinity,
                ),
                Container(
                  child: Image.asset(
                    'assets/images/adsImage.png',
                    fit: BoxFit.cover,
                  ),
                  width: double.infinity,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 60,
            child: Row(
              children: List.generate(
                3,
                (index) => buildDot(index: index, currentPage: currentPage),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: -15,
            child: Container(
             width: 100.0,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width:3,color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ) ,
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context )=> SingIn()));
              },
                child: Text('Skip',style: TextStyle(color: Colors.white,fontSize: 25),),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

Widget buildDot({required int index, required int currentPage}) {
  return Container(
    height: 9,
    width: 9,
    margin: EdgeInsets.all(4),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: currentPage == index ? Colors.transparent : Colors.white),
  );
}
