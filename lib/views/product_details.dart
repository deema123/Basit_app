import 'package:flutter/material.dart';
import 'package:basit/product_details_view.dart';
import 'CartPage.dart';
import 'CustomButton.dart';
class ProductDetails extends StatefulWidget {
  final routeName = "/ProductDetails";
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFEFEFEF),
        title: Text(
          'Product details',
          style:
              TextStyle(color: Color(0xFF649AB8), fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xff649AB8),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context )=> CartPage()));

            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 35),
          child: Column(
            children: [
              ProductDetailsView(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25,),
                  columnStyle('Category','Hand made'),
                  columnStyle('ٍSubcategory','Cloth'),
                  columnStyle('Availability','Y/N'),
                  columnStyle('Price','150 QR'),
                  columnStyle('Store Name','Rose store'),
                  SizedBox(height: 15,),
                  Text('Description',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Color(0xFF608CB5))),
                  SizedBox(height: 15,),
                  Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ',style: TextStyle(fontSize: 15,color: Color(0xFF608CB5),),),
                  SizedBox(height: 25,),
                  Center(child: customButton(context,'Add to Cart',onPress(),6)),
                  SizedBox(height: 25,),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
onPress(){
 return;
}
Widget columnStyle(String text1,String text2){
  return Row(
      children: [
        SizedBox(height: 50,),
         Expanded(child: Text(text1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Color(0xFF608CB5)))),
        SizedBox(width: 55,),
         Expanded(child: Text(text2,style: TextStyle(fontSize: 15,color: Color(0xFF608CB5)))),
      ],

  );
}
