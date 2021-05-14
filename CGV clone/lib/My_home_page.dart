import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Class.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Database mDatabase = new Database();
  int index = 1;
  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            elevation: 0,
            expandedHeight: 0.0,
            leading: Container(
              width: 60,
              height: 60,
              child: Icon(Icons.person_pin,
              color: Colors.white,
                size: 35,
              ),
            ),
            title: Image.asset("assets/images/logo.png",
            height: 30,
            ),
            actions: [
              SizedBox(
                width: 60,
                height: 60,
                child: RaisedButton(onPressed: (){},
                  elevation: 0,
                  child: Image.asset("assets/images/ticket.png", color: Colors.white,),
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 60,
                width: 60,
                child: RaisedButton(onPressed: (){},
                  elevation: 0,
                  child: Image.asset("assets/images/menu.png", color: Colors.white,),
                  color: Colors.red,
                ),
              )
            ],
            centerTitle: true,
            floating: true,
            pinned: false,
            backgroundColor: Colors.red,

          )
        ];
      },
      body: Container(
        padding: EdgeInsets.all(0),
        child: ListView(
          children: [
            Container(
              color: Colors.red,
              height: 150,
              child: ListView.builder(
                itemCount: mDatabase.mCard.length,
                itemBuilder: (context, index){
                  return CardView(
                    mCard: mDatabase.mCard[index],
                  );
                },
                scrollDirection: Axis.horizontal,

              ),
            ),
            Container(
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: ()
                    {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                      child: Text("Đang chiếu",
                        style: TextStyle(
                            color: (index == 1)? Colors.white : Colors.white38,
                            fontWeight: FontWeight.bold
                        ),),
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 35),
                    ),
                  )
                  ,
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Container(
                      child: Text("Đặc biệt",
                        style: TextStyle(
                            color: (index == 2)? Colors.white : Colors.white38,
                            fontWeight: FontWeight.bold
                        ),),
                      padding: EdgeInsets.symmetric(vertical: 8),


                    ),
                  )
                  ,
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        index = 3;
                      });
                    },
                    child: Container(
                      child: Text("Sắp chiếu",
                      style: TextStyle(
                          color: (index == 3)? Colors.white : Colors.white38,
                        fontWeight: FontWeight.bold
                      ),),
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 35),

                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.red,
              child: Column(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      viewportFraction: 0.8,
                      height: 400,
                    ),
                    itemCount: mDatabase.mPoster.length,
                    itemBuilder: (context, itemIndex, RealIndex){
                      return PosterView(
                          mPoster: mDatabase.mPoster[itemIndex]
                      );

                    },
                  ),

                ],
              ),

              ),
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Tìm rạp gần bạn...",
                        style: TextStyle(
                          color: Colors.grey[850],
                        ),
                      ),
                      )
                  ),
                  IconButton(icon: Icon(Icons.location_pin, color: Colors.grey,), onPressed:() {})

                ],
              ),
            ),
            Divider(
              thickness: 10 ,
              color: Colors.grey[400],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  Expanded(child: Text("Tin nóng",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFF747373))
                    ),
                    child: Text("TẤT CẢ", style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500
                    ),),
                  ),

                ],
              )

            ),

             Container(
               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
               child: GridView.count(
                 physics: BouncingScrollPhysics(),
                 crossAxisCount: 2,
                 childAspectRatio: 1/0.9,
                 shrinkWrap: true,
                 mainAxisSpacing: 10,
                 crossAxisSpacing: 10,
                 children: mDatabase.mNews.map((e) =>
                     NewsCard(mNew: e,)
                 ).toList(),
               )
             ),
            Divider(
              thickness: 10 ,
              color: Colors.grey[400],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text("Dự án phim ngắn CJ 2021",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 15),
                width: 300,
                child: ClipRRect(
                  child: Image.asset("assets/images/card1.png"),
                ),
              ),
            )

          ],
        ),

      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nested(),
    );
  }
}

class CardView extends StatelessWidget {
  MyCard mCard;
  CardView({this.mCard});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(5),
     
      child: ClipRRect(
        child: Image.asset(mCard.ImgPath,
          fit: BoxFit.fill,
          height: 100,
          width: 250,
        ),
        borderRadius: BorderRadius.circular(15),
      )
    );
  }
}

class PosterView extends StatelessWidget {
  Poster mPoster;
  PosterView({this.mPoster});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
      child: ClipRRect(
        child: Image.asset(mPoster.imgPath,
        fit: BoxFit.fitHeight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  News mNew;
  NewsCard({this.mNew});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        children: [
          Container(
            height: 105,
            width: 170,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(mNew.imgPath, fit: BoxFit.fill,),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 5, 0, 10),
            child: Text(mNew.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 13
            ),
            ),
          )
        ],
      ),
    );
  }
}





