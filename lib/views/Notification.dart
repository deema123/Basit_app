import 'package:flutter/material.dart';
class NotificationPage extends StatelessWidget {
  final routeName = '/NotificationPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFEFEFEF),
        title: Text(
          'My Favorites',
          style: TextStyle(
              color: Color(0xFF649AB8),
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        // actions: <Widget>[],
      ),
      body: Container(
      margin: EdgeInsets.only(left: 30,top: 30),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.all(5),
          color: Colors.white,
          child: ListTile(
            leading: Image.asset('assets/images/alarm.png'),
            title: Text('Lorem Ipsum is simply dummy text ',
              style: TextStyle(color: Color(0xFF649AB8), fontSize: 12 ),
            ),
            subtitle: Text('15 DEC 2018',style: TextStyle(color: Color(0xFF649AB8), fontSize: 9)),
          ),
        ),
      ),
    ),
    );
  }
}
