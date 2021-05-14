import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TKB extends StatefulWidget {
  @override
  _TKBState createState() => _TKBState();
}

class _TKBState extends State<TKB> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    int date = time.day;
    int month = time.month;
    int Index = time.weekday;
    int SelectedIndex = Index;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Tháng $month",
          style: TextStyle(
            fontSize: 30,

          ),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("CN"),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          SelectedIndex = 7;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all( date - Index >= 10 ?10: 15),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: SelectedIndex == 7 ? Colors.blue : Colors.white,
                          border: Border.all(color: Index == 7? Colors.blue: Colors.white, width:  1)
                        ),
                        child: Text("${date - Index}"),
                      ),
                    )

                  ],
                ),
                Column(
                  children: [
                    Text("Hai"),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          SelectedIndex = 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: SelectedIndex == 1 ? Colors.blue : Colors.white,
                            border: Border.all(color: Index == 1? Colors.blue : Colors.white, width:1)
                        ),
                        child: Text("${date - Index + 1}"),
                      ),
                    )

                  ],
                ),
                Column(
                  children: [
                    Text("Ba"),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          SelectedIndex = 2;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: SelectedIndex == 2 ? Colors.blue : Colors.white,
                            border: Border.all(color: Index == 2? Colors.blue : Colors.white, width: 1)
                        ),
                        child: Text("${date - Index + 2}"),
                      ),
                    )

                  ],
                ),
                Column(
                  children: [
                    Text("Tư"),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          SelectedIndex = 3;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: SelectedIndex == 3 ? Colors.blue : Colors.white,
                            border: Border.all(color: Index == 3? Colors.blue: Colors.white, width: 1 )
                        ),
                        child: Text("${date - Index +3}"),
                      ),
                    )

                  ],
                ),
                Column(
                  children: [
                    Text("Năm"),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          SelectedIndex = 4;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: SelectedIndex == 4 ? Colors.blue : Colors.white,
                            border: Border.all(color:  Index == 4? Colors.blue : Colors.white, width:1)
                        ),
                        child: Text("${date - Index +4}"),
                      ),
                    )

                  ],
                ),
                Column(
                  children: [
                    Text("Sáu"),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          SelectedIndex = 5;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: SelectedIndex == 5 ? Colors.blue : Colors.white,
                            border: Border.all(color: Index == 5? Colors.blue: Colors.white, width: 1)
                        ),
                        child: Text("${date - Index + 5}"),
                      ),
                    )

                  ],
                ),
                Column(
                  children: [
                    Text("Bảy"),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          SelectedIndex = 6;
                          print("5");
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: SelectedIndex == 6 ? Colors.blue : Colors.white,
                            border: Border.all(color: Index == 6? Colors.blue: Colors.white, width: 1)
                        ),
                        child: Text("${date - Index + 6}"),
                      ),
                    )

                  ],
                ),

              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Row(
                  children: [
                    Icon(Icons.book, color: Colors.black),
                    Text(" SE114.L21"
                    ,style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Row(
                  children: [
                    Icon(Icons.timer, color: Colors.black),
                    Text(" Thứ 5, tiết 1-4, P.B4.14"
                      ,style: TextStyle(
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Row(
                  children: [
                    Icon(Icons.account_circle_rounded, color: Colors.black),
                    Text(" Dương Hiển Thế"
                      ,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],

      ),
    );
  }
}
