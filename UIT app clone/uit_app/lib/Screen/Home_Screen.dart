import 'package:flutter/material.dart';
import 'package:uit_app/Screen/CaNhan.dart';
import 'package:uit_app/Screen/DeadLine.dart';
import 'package:uit_app/Screen/DiemScreen.dart';
import 'package:uit_app/Screen/HocPhi.dart';
import 'package:uit_app/Screen/LichThi.dart';
import 'package:uit_app/Screen/TKB.dart';


class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  String mtitle = "THỜI KHÓA BIỂU";
  int _currentIndex = 0;
  final List<Widget> _children = [
    TKB(), LichThi(), DiemScreen(), HocPhi(), DeadLine(), CaNhan()
  ];

  void OnTabTap(int index)
  {
    setState(() {
      _currentIndex = index;
      switch(index)
      {
        case 0: mtitle = "THỜI KHÓA BIỂU";
        break;
        case 1: mtitle = "LỊCH THI";
        break;
        case 2: mtitle = "DANH SÁCH ĐIỂM";
        break;
        case 3: mtitle = "THÔNG TIN HỌC PHÍ";
        break;
        case 4: mtitle = "DEADLINEs";
        break;
        case 5: mtitle = "THÔNG TIN CÁ NHÂN";
        break;
      }

    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("$mtitle", style: TextStyle(
          color: Colors.white
        ),),
        actions: [
          IconButton(icon: Icon(Icons.notifications_active, color: Colors.white,), onPressed: (){})
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.timer),
            title: new Text('TKB'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.account_balance_outlined),
            title: new Text('Lịch Thi'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart_rounded),
              title: Text('Điểm')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.money_off_csred_outlined),
              title: Text('Học phí')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.alarm_off),
              title: Text('Deadline')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Cá nhân')
          )
        ],
        onTap: OnTabTap,
      ),
      body: _children[_currentIndex],
    );


  }
}
