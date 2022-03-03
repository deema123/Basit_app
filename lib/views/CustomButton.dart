import 'package:flutter/material.dart';
Widget customButton(BuildContext context,String text,Function press,double width){
  return Container(
    height: MediaQuery.of(context).size.height /14,
    width: MediaQuery.of(context).size.width /width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      gradient: LinearGradient(
        colors: [ Color(0xFF74BCC2),Color(0xFF649AB8)],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0.0, 0.8],

      ),
    ),
    child: MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
      onPressed: (){
        press();

      },
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
      ),
    ),
  );
}
//Widget myButton(onPress){
//  return  OutlinedButton(
//    child: Text(
//      'Skip',
//      style: TextStyle(color: Color(0xFF649AB8)),
//    ),
//    style: OutlinedButton.styleFrom(
//        side: BorderSide(width: 2, color: Color(0xFF649AB8)),
//        shape: RoundedRectangleBorder(
//          borderRadius: BorderRadius.circular(18.0),
//        )),
//    onPressed: () {
//      onPress();
//    },
//  );
//}