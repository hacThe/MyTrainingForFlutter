import 'package:flutter/material.dart';
import 'package:uit_app/Screen/Home_Screen.dart';
import 'Screen/CaNhan.dart';
import 'Screen/DiemScreen.dart';
import 'Screen/DeadLine.dart';
import 'Screen/HocPhi.dart';
import 'Screen/LichThi.dart';
import 'Screen/ThongBao.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      /*routes: <String, WidgetBuilder> {
        '/a': (BuildContext context) => MyPage(title: 'page A'),
        '/b': (BuildContext context) => MyPage(title: 'page B'),
        '/c': (BuildContext context) => MyPage(title: 'page C'),
      },*/
    );
  }
}


