import 'package:flutter/material.dart';
import 'ProfilePage.dart';
import 'CartPage.dart';
import 'HomePage.dart';

class HomeBar extends StatefulWidget {
  final routeName = "/HomeBar";
  @override
  HomeBarState createState() => HomeBarState();
}

class HomeBarState extends State<HomeBar> {
  final List<Widget> barPages = [HomePage(), ProfilePage(), CartPage()];

  int listIndex = 0;
  void pageSelected(int index) {
    setState(() {
      listIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: TextStyle(color:Color(0xFF649AB8), fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Color(0xff649AB8),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: HomePage(),
      bottomNavigationBar: createBottomNavigationBar(listIndex, pageSelected),
    );
  }
}

Widget createBottomNavigationBar(int listIndex, Function(int) pageSelected) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xFF74BCC2), Color(0xFF649AB8)],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0.0, 0.8],
        tileMode: TileMode.clamp,
      ),
    ),
    child: BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      currentIndex: listIndex,
      onTap: pageSelected,
      unselectedItemColor: Colors.white.withOpacity(0.5),
      selectedIconTheme: IconThemeData(color: Colors.white),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'profile'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined), label: 'cart'),
        BottomNavigationBarItem(
            icon: Icon(Icons.view_headline), label: 'drawer'),

      ],
    ),
  );
}
