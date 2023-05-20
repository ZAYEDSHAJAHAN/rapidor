import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
// import 'package:flutter_tableview/flutter_tableview.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime sundaydate = DateTime.now();
  List dateList = [];

  //  String f= formatter.format(sundaydate.add(Duration(days: 0)));
  dates() {
    List day = [
      'sunday',
      'monday',
      'tuesday',
      'Wednesday',
      'thursday',
      'friday',
      'saturday'
    ];
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('dd/MMMM/yyyy');
    String form = formatter.format(now);
    String thisday = DateFormat('EEEE').format(now);

    if (thisday == 'Sunday') {
      setState(() {
        DateTime sundaydate = now;
      });
    } else if (thisday == 'Monday') {
      setState(() {
        DateTime sundaydate = now.subtract(Duration(
          days: 1,
        ));
      });
    } else if (thisday == 'Tuesday') {
      setState(() {
        DateTime sundaydate = now.subtract(Duration(
          days: 2,
        ));
      });
    } else if (thisday == 'Wednesday') {
      setState(() {
        DateTime sundaydate = now.subtract(Duration(
          days: 3,
        ));
      });
    } else if (thisday == 'Thursday') {
      setState(() {
        DateTime sundaydate = now.subtract(Duration(
          days: 4,
        ));
      });
    } else if (thisday == 'Friday') {
      setState(() {
        DateTime sundaydate = now.subtract(Duration(
          days: 5,
        ));
      });
    } else if (thisday == 'Saturday') {
      setState(() {
        DateTime sundaydate = now.subtract(Duration(
          days: 6,
        ));
      });
    }
    for (var i = 0; i < 7; i++) {
      DateTime newdate = now.subtract(Duration(
        days: i,
      ));
      String formed = formatter.format(newdate);
      dateList.add(formed);
    }
    print(DateFormat('EEEE').format(now)); // prints
    print(form);
    print("*****************");
    print(sundaydate);
    print(dateList);

    return dateList;
  }

  @override
  void initState() {
    super.initState();
    dates();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return Scaffold(
          body: Center(
            child: Text('Please switch to landscape mode'),
          ),
        );
      } else {
        return SafeArea(
            child: Scaffold(
                body: ListView(children: [
          Table(
            border: TableBorder.all(),
            // TableBorder(

            //     horizontalInside: BorderSide(color: Colors.grey, width: 10.0)),
            children: [
              //This table row is for the table header which is static
              TableRow(children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text(
                      "Total Info for the WEEK",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text(
                      "Total(Sun-Sat)",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text(
                      "Sun",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text(
                      "Mon",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text(
                      "tue",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text(
                      "wed",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text(
                      "thu",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text(
                      "fri",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Text(
                      "sat",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ),
                ),
              ]),
              tabledaycolumn(),
              tableColumns("Running Time"),
              tableColumns("Jogging Time"),
              tableColumns("Exercise Time"),
              tableColumns("Total Time\n(Running+Jogging+Exercise)"),
              tableColumns("Running\nTime engagement %(Running / Total Time)"),
              tableColumns("Jogging\nTime engagement %(Jogging / Total Time)"),
              tableColumns(
                  "Exercise\nTime engagement %(Exercise / Total Time)"),
            ],
          ),
        ])));
      }
    });
  }

  tabledaycolumn() {
    return TableRow(children: [
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: Text(
            "",
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: Text(
            "",
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: Text(
            dateList[6],
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: Text(
            dateList[5],
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: Text(
            dateList[4],
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: Text(
            dateList[3],
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: Text(
            dateList[2],
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: Text(
            dateList[1],
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: Text(
            dateList[0],
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
      ),
    ]);
  }

  tableColumns(String columnname) {
    return TableRow(children: [
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: Text(
            columnname,
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: const TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: const TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: const TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: const TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: const TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: const TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: const TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: const TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
      ),
    ]);
  }
}
