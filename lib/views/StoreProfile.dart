import 'package:flutter/material.dart';

class StoreProfile extends StatelessWidget {
  final routeName = "/StoreProfile";
  List<String> texts = [
    'Fashion',
    'beauty',
    'Accessories',
    'Hand Made',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFEFEFEF),
        title: Text(
          'Store Profile',
          style:
          TextStyle(color: Color(0xFF649AB8), fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                height: 150,
                width: 150,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .height / 2,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 2,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                            Radius.circular((MediaQuery
                                .of(context)
                                .size
                                .height / 2) / 2)),
                        border: Border.all(
                          color: Color(0xFF649AB8),
                          width: 2.0,
                        ),
                      ),
                      child: Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .height / 9,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 9,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            image: AssetImage('assets/images/img1.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(
                              (MediaQuery
                                  .of(context)
                                  .size
                                  .height / 9) / 2)),
                          border: Border.all(
                            color: Color(0xFF649AB8),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 15,
                      right: 6, //give the values according to your requirement
                      child: Icon(
                        Icons.add_to_queue_outlined,
                        color: Color(0xFF649AB8),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 40, //give the values according to your requirement
                      child: Text(
                        'Rose Store',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF649AB8),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              BoxStyle1(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    columnStyle('Email', 'mail@gmail.com'),
                    columnStyle('Mobile', '+655 444 333 222'),
                    columnStyle('Country', 'Qatar'),
                    columnStyle('Location', 'Qatar'),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BoxStyle2('Categories', context),
                  gridPart(texts, context),
                  BoxStyle2('Description', context),
                  columnStyle1(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text '),
                  BoxStyle2('Shot Description', context),
                  columnStyle1(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text '),
                  BoxStyle2('Working Time', context),
                  columnStyle1('8 am To 4 pm '),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget columnStyle1(String text2) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      child:
      Text(text2, style: TextStyle(fontSize: 13, color: Color(0xFF608CB5))),
    );
  }

  Widget columnStyle(String text1, String text2) {
    return Row(
      children: [
        SizedBox(
          height: 40,
        ),
        Expanded(
            child: Text(text1,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xFF608CB5)))),
        Expanded(
            child: Text(text2,
                style: TextStyle(fontSize: 14, color: Color(0xFF608CB5)))),
      ],
    );
  }

  Widget BoxStyle1(Widget widgetbox) {
    return Container(
      decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.all(
            Radius.circular(5.0),
          )),
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
        child: widgetbox,
      ),
    );
  }

  Widget BoxStyle2(String text, BuildContext context) {
    return Container(
        height: MediaQuery
            .of(context)
            .size
            .height / 15,
        width: double.infinity,
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.all(
              Radius.circular(5.0),
            )),
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Text(text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color(0xFF608CB5))),
        ));
  }

  Widget gridPart(List<String> text, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      width: MediaQuery
          .of(context)
          .size
          .width / 1.4,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: text.length,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2.2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Text(text[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: Color(0xFF608CB5)));
        },
      ),
    );
  }


}