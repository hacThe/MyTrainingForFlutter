import 'package:flutter/material.dart';
class DiemScreen extends StatelessWidget {
  @override
  TableRow myTBRow(MaMh,Lop,TC,QT,TH,GK,CK,TB)
  {
    return TableRow( children: [
      Column(children:[Container(alignment: Alignment.centerLeft, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Text('$MaMh'))]),
      Column(children:[Container(alignment: Alignment.centerLeft, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Text('$Lop'))]),
      Column(children:[Container(padding: EdgeInsets.symmetric(vertical: 5),
          child: Text('$TC'))]),
      Column(children:[Container(padding: EdgeInsets.symmetric(vertical: 5),
          child: Text('$QT'))]),
      Column(children:[Container(padding: EdgeInsets.symmetric(vertical: 5),
          child: Text('$TH'))]),
      Column(children:[Container(padding: EdgeInsets.symmetric(vertical: 5),
          child: Text('$GK'))]),
      Column(children:[Container(padding: EdgeInsets.symmetric(vertical: 5),
          child: Text('$CK'))]),
      Column(children:[Container(padding: EdgeInsets.symmetric(vertical: 5),
          child: Text('$TB'))]),
    ]);
  }
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 90,vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          width: 100,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30)
          ),
          child: Text("Điểm: HK 2, NH 2019-2020",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.bottom,

            //defaultColumnWidth: FixedColumnWidth(20.0),
            columnWidths: {
              0: FlexColumnWidth(2),
              1: FlexColumnWidth(4),
              2: FlexColumnWidth(1),
              3: FlexColumnWidth(1),
              4: FlexColumnWidth(1),
              5: FlexColumnWidth(1),
              6: FlexColumnWidth(1)
            },
            border: TableBorder.all(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 1),
            children: [
              TableRow( children: [
                Column(children:[Container(
                  padding: EdgeInsets.all(5),
                    child: Text(
                        'MÃ MH',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                          )
                       )
                    )
                  ]
                ),
                Column(children:[Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                        'LỚP',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                        )
                    )
                )
                ]
                ),Column(children:[Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                        'TC',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                        )
                    )
                )
                ]
                ),Column(children:[Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                        'QT',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                        )
                    )
                )
                ]
                ),Column(children:[Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                        'TH',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                        )
                    )
                )
                ]
                ),Column(children:[Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                        'GK',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                        )
                    )
                )
                ]
                ),Column(children:[Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                        'CK',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                        )
                    )
                )
                ]
                ),
                Column(children:[Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                        'TB',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                        )
                    )
                )
                ]
                ),
              ]),

              myTBRow('IT002', "IT002.K24", "4", "10", "6.5", "", "7.5", '7.7'),
              myTBRow('IT003', "IT003.K22", "4", "10", "10", "10", "9.5", '9.8'),
              myTBRow('MA004', "MA004.K27", "4", "10", "", "", "10", '10'),
              myTBRow('IT002', "MA005.K24", "3", "10", "", "", "9.5", '9.7'),
              myTBRow('PE002', "IT002.K24", "0", "", "", "", "7", '7'),
              myTBRow('SS004', "SS004.K22", "2", "10", "", "9", "9", '9.2'),
            ],
          ),
        ),
      ],
    );
  }
}

