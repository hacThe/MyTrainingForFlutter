import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CaNhan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery. of(context).size;
    return Container(
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: size.width,
              child: Image.asset("assets/images/DHCNTTToanCanh.jpg",
              fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, size.height*0.095, 0, 0),
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Column(
                      children: [
                       Container(
                         child: CircleAvatar(
                           radius: size.height*0.09,
                           //backgroundColor: Colors.transparent,
                           backgroundImage: AssetImage("assets/images/avatar.png",
                           ),
                         ),
                       ),
                        Text("Dương Hiển Thế", style: TextStyle(
                          color: Colors.red, fontSize: 23, fontWeight: FontWeight.w400
                        ),),
                        Text("19522252 | Sinh viên", style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20
                        ),)
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 30, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.mail_sharp, color: Colors.blue,),
                          SizedBox(width: 30,),
                          Text("19522252@gm.uit.edu.vn", style: TextStyle(
                              color: Colors.blue
                          ),),
                        ],

                      ),
                    ),
                    Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey[400],
                  ),
                ),
                    Container(
                      padding: EdgeInsets.only(left: 30, top: 15),

                      child: Row(
                        children: [
                          Icon(Icons.cake_outlined, color: Colors.blue,),
                          SizedBox(width: 30,),
                          Text("15/09/2001", style: TextStyle(
                                color: Colors.blue
                            ),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30, top: 15),

                      child: Row(
                        children: [
                           Icon(Icons.shopping_bag, color: Colors.blue,),
                          SizedBox(width: 30,),
                          Text("Kỹ Thuật Phần Mềm (D480103)", style: TextStyle(
                                color: Colors.blue
                            ),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30, top: 15),

                      child: Row(
                        children: [
                           Icon(Icons.add_location, color: Colors.blue,),
                          SizedBox(width: 30,),
                          Text("KDC 5, thôn Mỹ Trang", style: TextStyle(
                                color: Colors.blue
                            ),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30, top: 15),

                      child: Row(
                        children: [
                          Icon(Icons.apartment_sharp, color: Colors.blue,),
                          SizedBox(width: 30,),
                          Text("KTPM2019", style: TextStyle(
                                color: Colors.blue
                            ),),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: FloatingActionButton(
                    onPressed: (){}, child: Icon(Icons.remove_circle), ),
                )

              ],
            ),
          ),

        ],

      ),
    );
  }
}
