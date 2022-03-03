import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeView extends StatefulWidget {
  final routeName = "/HomeView";
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: MediaQuery.of(context).size.height/3.5,
          width: double.infinity,
          child:PageView(
            onPageChanged: (value){
              setState(() {
                currentPage = value;
              });
            },
            controller: _pageController ,
            children: [
              Container(
                child: Image.asset('assets/images/pizza.png', fit: BoxFit.cover,),
                width: double.infinity,
                height: 128,
              ),

              Container(
                child: Image.asset('assets/images/pizza.png', fit: BoxFit.cover,),
                width: double.infinity,
                height: 128,
              ),
              Container(
                child: Image.asset('assets/images/pizza.png', fit: BoxFit.cover,),
                width: double.infinity,
                height: 128,
              ),
              Positioned(
                left: 28,
                bottom: 4,
                  child: Row(
                    children:
                      List.generate(3, (index) => buildDot(index: index, currentPage: currentPage),
                      ),
                  ),
              ),
            ],
          ) ,
        )
      ],
    );
  }
}
Widget buildDot({required int index,required int currentPage}){
  return Container(
    height: 9,
    width: 9,
    margin: EdgeInsets.all(4),
    decoration:BoxDecoration (
      borderRadius: BorderRadius.circular(5),
      color: currentPage == index ? Colors.white24 : Colors.white
    ),
  );

}

