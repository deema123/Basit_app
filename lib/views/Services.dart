import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Services extends StatelessWidget {
  final routeName = "/Services";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Services providers',
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
      body: Container(
      child: Column(
        children: [
        //  SizedBox(height: 10),
          Expanded(
              child: gridPart()),
        ],
      ),
    ),
    );
  }

  Widget gridPart() {
    return Container(
      margin: EdgeInsets.all(12),
      child: GridView.builder(
        itemCount: 8,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2/3,
          crossAxisSpacing:15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GridTile(
            child: GestureDetector(
              onTap: () {
               // Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context )=> ClothingPage()));

              },
              child: Container(
                alignment: Alignment.center,
                child: Card(
                  color: Colors.white,
                  elevation: 5,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Image.asset(
                          "assets/images/services1.png",
                          fit:BoxFit.fill,
                          height: MediaQuery.of(context).size.height / 5.7,
                          width: MediaQuery.of(context).size.width /1.4,
                        ),
                      ),
                      //SizedBox(height: 2,),
                      SizedBox(height: 8),
                      Text('Salih',style: TextStyle(color: Color(0xff649AB8),),),
                      SizedBox(height: 8),
                       Text('Salih.95@gmail.com',style: TextStyle(color: Color(0xff649AB8),fontSize: 13),textAlign: TextAlign.center,),
                      SizedBox(height: 8),
                      Text('+ 6555 4235 333 2',style: TextStyle(color: Color(0xff649AB8),),),
                      SizedBox(height: 8),
                      Container(
                        width: MediaQuery.of(context).size.width /1.4,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: new BoxDecoration(
                            color: Color(0xFF649AB8),
                            borderRadius: new BorderRadius.all(
                              Radius.circular(40.0),

                            )),
                        child: Text('Photographer',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
