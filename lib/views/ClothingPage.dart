import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navigation_drawer_widget.dart';
class ClothingPage extends StatelessWidget {
  final routeName = "/ClothingPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFEFEFEF),
        title: Text(
          'Clothing',
          style:
              TextStyle(color: Color(0xFF649AB8), fontWeight: FontWeight.bold),
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
      body: BuildBody(),
    );
  }
}

class BuildBody extends StatefulWidget {
  @override
  _BuildBodyState createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
//  List<String> categories = ['All','Woman','Kids','Men','wedding'];
  List<Widget> categories = [
    Text('All'),
    Text('Woman'),
    Text('Kids'),
    Text('Men'),
    Text('wedding')
  ];

//  int selected = 0 ;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        backgroundColor: Color(0xFFEFEFEF),
        body: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 35,
              width: double.infinity,
              color: Colors.white,
              child: TabBar(
                indicatorWeight: 3.5,
                indicatorPadding: EdgeInsets.only(left: 5, right: 5),
                labelColor: Color(0xFF649AB8),
                isScrollable: true,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                tabs: categories,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                child: ListView.separated(
                  separatorBuilder: (context, int) => SizedBox(
                    height: 15,
                  ),
                  itemCount: 5,
                  itemBuilder: (context, int) => Container(
                    height: MediaQuery.of(context).size.height / 4.5,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 4.5,
                            width: MediaQuery.of(context).size.width / 3.3,
                            child: Image.asset(
                              "assets/images/img1.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Name",
                                      ),
                                      Text('Open'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 9.0),
                                    child: Text(
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 20,
                                        decoration: new BoxDecoration(
                                            color: Color(0xFF7AC9C6),
                                            borderRadius: new BorderRadius.all(
                                              Radius.circular(40.0),

                                            )),
                                        child: Text('Kids',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.location_on,
                                        color: Color(0xFF669EB9),
                                      ),
                                      Text(
                                        " Abu Dhalouf",
                                        style: TextStyle(
                                          color: Color(0xFF669EB9),
                                        ),
                                      ),
                                      // Icon(Icons.favorite_border,color: Color(0xFF669EB9),),
                                      Spacer(),
                                      GestureDetector(
                                        //onTap: () {},
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
