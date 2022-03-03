import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
PreferredSizeWidget? appBar(String text,List<Widget> act){
  return AppBar(
    centerTitle: true,
    backgroundColor: Color(0xFFEFEFEF),
    elevation:3,
    actions: act,
    title: Text(
      text,
      style: TextStyle(
          color: Color(0xFF649AB8),
          fontSize: 22,
          fontWeight: FontWeight.bold),

    ),
    // actions: <Widget>[],
  );
}