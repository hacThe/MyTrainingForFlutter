import 'package:flutter/material.dart';
class HocPhi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container mCustomTile(List<String> lines)
    {
      return Container(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("${lines[0]}",
              style:TextStyle(
                fontWeight: FontWeight.bold
              ),),
            ),
            for (int i = 1; i < lines.length; i++)
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("${lines[i]}")),
            Divider(
              color: Colors.grey,
              thickness: 1,
            )
          ],
        ),
      );
    }
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          mCustomTile(["Học kì 2 - Năm học 2020", "Số môn: 7. Chi tiết ĐKHP: SE101(3.0), SE104(4.0), SE114(3.0), SE346(4.0), SS008(2.0), SS010(2.0)) ", "Nợ trước + Phải đóng = 0 + 5,850,000 = 5,850,000", "Đã đóng: 5,850,000 Tại BIDV, thời gian: 2021-01-04", "Còn lại: 0"]),
          mCustomTile(["Học kì 1 - Năm học 2020", "Số môn: 6. Chi tiết ĐKHP: SE101(3.0), SE104(4.0), SE114(3.0), SE346(4.0), SS008(2.0), SS010(2.0)) ", "Nợ trước + Phải đóng = 0 + 5,850,000 = 5,850,000", "Đã đóng: 5,850,000 Tại BIDV, thời gian: 2021-01-04", "Còn lại: 0"]),
          mCustomTile(["Học kì 3 - Năm học 2019", "Số môn: 0. Chi tiết ĐKHP:","Nợ trước + Phải đóng = 0 + 5,850,000 = 5,850,000", "Đã đóng: 5,850,000 Tại BIDV, thời gian: 2021-01-04", "Còn lại: 0"]),
          mCustomTile(["Học kì 2 - Năm học 2019", "Số môn: 6. Chi tiết ĐKHP: SE101(3.0), SE104(4.0), SE114(3.0), SE346(4.0), SS008(2.0), SS010(2.0)) ", "Nợ trước + Phải đóng = 0 + 5,850,000 = 5,850,000", "Đã đóng: 5,850,000 Tại BIDV, thời gian: 2021-01-04", "Còn lại: 0"]),
          mCustomTile(["Học kì 1 - Năm học 2019", "Số môn: 0. Chi tiết ĐKHP:", "Nợ trước + Phải đóng = 0 + 5,850,000 = 5,850,000", "Đã đóng: 5,850,000 Tại BIDV, thời gian: 2021-01-04", "Còn lại: 0"]),
        ],
        
      ),
    );
  }
}
