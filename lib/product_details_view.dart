import 'package:flutter/material.dart';

class ProductDetailsView extends StatefulWidget {
  @override
  _ProductDetailsViewState createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  int currentPage = 0;
  bool click=false;
  void isClicked(){
    setState(() {
      if (click==true){
        click = false;
      }else{
        click = true;
      }
    });

  }
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.height / 2.2,
                  child: PageView(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    controller: _pageController,
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/jewellery.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/images/jewellery.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          "assets/images/jewellery.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  child: Container(
                    padding: EdgeInsets.all(0.5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:new BorderRadius.all(Radius.circular(50.0),) ,
                    ),
                    child: IconButton(
                      onPressed: (){
                        isClicked();
                      },
                      icon: Icon(click?Icons.favorite:Icons.favorite_border),
                      color: Colors.red,
                    ),
                  ),
                  bottom: 2,
                  right: 6),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => buildDot(index: index, currentPage: currentPage),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 1,),
                      Icon(Icons.remove_red_eye,color: Color(0xFF649AB8),),
                      Text('50',style: TextStyle(color: Color(0xFF649AB8),),),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.screen_share_outlined,color: Color(0xFF649AB8),),
                      Text('Share',style: TextStyle(color: Color(0xFF649AB8),),)
                    ],
                  ),
                ],
              ),
              Center(child: Text('jewelry',style: TextStyle(color: Color(0xFF649AB8),fontWeight: FontWeight.bold,fontSize: 20),)),

            ],
          ),
        ],
      ),
    );
  }
}

Widget buildDot({required int index, required int currentPage}) {
  return Container(
    height: 9,
    width: 9,
    margin: EdgeInsets.all(4),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: currentPage == index ? Color(0xff649AB8) : Color(0xff649AB8).withOpacity(0.5)),
  );
}
