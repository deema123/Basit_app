import 'package:flutter/material.dart';
import 'contact_form.dart';
class ContactUs extends StatelessWidget {
  final routeName = "/ContactUs";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFEFEFEF),
        title: Text(
          'Contact Us',
          style: TextStyle(
              color: Color(0xFF649AB8),
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        // actions: <Widget>[],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3.9,
                child: Image.asset(
                  'assets/images/map.png',
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFEFEFEF),
//                boxShadow: [
//                  BoxShadow(
//                    color: Colors.grey,
//                    offset: Offset(0,1),
//                    blurRadius: 6.0,
//                  ),
//                ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Contact Info',
                  style: TextStyle(
                      color: Color(0xFF649AB8),
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              contactTile('Info@Hexacit.com', 'assets/images/Email.png', context),
              contactTile(
                  '+655 555 5554 555', 'assets/images/Mobile.png', context),
              contactTile(
                  '+655 555 5554 555', 'assets/images/Telephone.png', context),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Social Media',
                  style: TextStyle(
                      color: Color(0xFF649AB8),
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    socialMediaPart('assets/images/FaceBook.png'),
                    SizedBox(
                      width: 20,
                    ),
                    socialMediaPart('assets/images/Twitter.png'),
                    SizedBox(
                      width: 20,
                    ),
                    socialMediaPart('assets/images/Instagram.png'),
                    SizedBox(
                      width: 20,
                    ),
                    Text('@HexaCit',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF649AB8).withOpacity(0.8),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Contact Form',
                  style: TextStyle(
                      color: Color(0xFF649AB8),
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ContactForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget contactTile(text, image, context) {
    return Container(
      margin: EdgeInsets.only(top: 7.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 5,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.zero,
                topRight: Radius.circular(30.0),
                bottomLeft: Radius.zero,
                bottomRight: Radius.circular(30.0),
              ),
              color: Color(0xFF649AB8),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 11),
              child: ListTile(
                leading: Image.asset(
                  image,
                  height: 22,
                  width: 22,
                ),
                title: Text(
                  text,
                  style: TextStyle(color: Color(0xFF649AB8)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget socialMediaPart(image) {
    return GestureDetector(
      // onTap: () {},
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(0xFF649AB8), width: 1.5),
        ),
        child: Image.asset(image),
      ),
    );
  }
}
