import 'package:flutter/material.dart';
class FavoritePage extends StatelessWidget {
  final routeName = '/FavoritePage';

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
        color: Colors.white,
        margin: EdgeInsets.only(top: 23),
        padding: EdgeInsets.only( top: 20),
        child:
        Container(
          child: ListView.separated(
            separatorBuilder: (context, int) => Padding(
              padding: EdgeInsets.only(left: 20),
              child: Divider(
                height: 35,
                thickness: 1,
                color: Color(0xFF649AB8),
              ),
            ),
            itemCount: 8,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.only(left: 30),
              height: MediaQuery.of(context).size.height / 7,
              child: Row(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height / 7,
                      width: MediaQuery.of(context).size.height / 7,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          'assets/images/img1.png',
                          fit: BoxFit.cover,
                        ),
                      )),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Trousers',
                            style: TextStyle(color: Color(0xFF649AB8),fontWeight: FontWeight.bold,fontSize: 12),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '200 QR',
                                style: TextStyle( fontWeight: FontWeight.bold,color: Color(0xFF649AB8),fontSize: 12),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.delete_outline_outlined,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {},
                              ),

                            ],
                          ),
                          Text(
                            'Rose store',
                            style: TextStyle(fontSize: 12, color: Color(0xFF78C4C5)),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ),
        ),

      ));
  }
}


