import 'package:flutter/material.dart';
Widget buildMenuItem(dynamic icons ,String text/*,Function onClicked*/){
  return ListTile(
    leading: Icon(icons,color: Color(0xff5D8AB4)),
    title: Text(text,style: TextStyle(color: Color(0xff5D8AB4)),),
    hoverColor: Colors.white70,

    // onTap: onClicked,
  );
}

