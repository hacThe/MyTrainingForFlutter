import 'package:flutter/material.dart';

class DeadLine extends StatelessWidget {
  @override
  Container mDeadline(dClass, description ,times, isWaiting, isDone)
  {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(dClass, style: TextStyle(
        fontWeight: FontWeight.bold
      ),),
          Text(description),
          Row(
            children: [
              Icon(Icons.calendar_today, color: Colors.black),
              Text(times),
            ],
          ),
          Row(
            children: [
              Icon(isWaiting ? Icons.hourglass_bottom : Icons.hourglass_disabled, color: Colors.black),
              Text(isWaiting? "Còn chờ" : "Hến hạn"),
            ],
          ),
          Row(
            children: [
              Icon(isWaiting ? Icons.check_circle : Icons.radio_button_unchecked, color: Colors.black),
              Text(!isDone ? "Đã hoàn thành" : "Chưa nạp bài"),
            ],
          ),
          Container(
            width: 100,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            alignment: Alignment.center,
            color: Colors.redAccent[700],
            child: Row(
              children: [
                Text("Xem", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                Icon(Icons.add_to_home_screen_rounded, color: Colors.white,)
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          )
        ],
      ),
    );
  }
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          mDeadline("SE346.L21", "Nộp bài TH HT2 - Buổi 2", "27/06/2021 00:00:00", true, false),
          mDeadline("SE346.L21", "Nộp bài TH HT2 - Buổi 1", "21/06/2021 00:00:00", true, false),
          mDeadline("SE346.L21", "Nộp bài TH HT2 - Buổi 3", "21/06/2021 00:00:00", true, false),
          mDeadline("SE114.L21", "Xây dựng ứng dụng mô tả các common implicit Intent", "13/05/2021 00:00:00", false, true),
          mDeadline("SE101.L21", "DFD và Use Case Diagram, nộp bài 11h30", "10/05/2021 11:30:00", false, true),
        ],
      ),
    );
  }
}
