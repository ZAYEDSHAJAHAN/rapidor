import 'package:flutter/material.dart';

import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:sizer/sizer.dart';

// import 'data/user.dart';

class SimpleTablePage extends StatefulWidget {
  const SimpleTablePage({
    Key? key,
  }) : super(key: key);

  @override
  State<SimpleTablePage> createState() => _SimpleTablePageState();
}

class _SimpleTablePageState extends State<SimpleTablePage> {
  @override
  void initState() {
    // widget.user.initData(3000);
    super.initState();
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
        return Scaffold(
          body: HorizontalDataTable(
            leftHandSideColumnWidth: 100,
            rightHandSideColumnWidth: 800,
            isFixedHeader: true,
            headerWidgets: _getTitleWidget(),
            // isFixedFooter: true,
            footerWidgets: _getTitleWidget(),
            leftSideItemBuilder: _generateFirstColumnRow,
            rightSideItemBuilder: _generateRightHandSideColumnRow,
            itemCount: 7,
            rowSeparatorWidget: const Divider(
              color: Colors.black38,
              height: 1.0,
              thickness: 0.0,
            ),
            leftHandSideColBackgroundColor: const Color(0xFF9F9595),
            rightHandSideColBackgroundColor: const Color(0xFFF9F2F2),
            itemExtent: 65,
          ),
        );
      }
    });
  }

  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('Total Info for the WEEK', 100),
      _getTitleItemWidget('Total(Sun-Sat)', 100),
      _getTitleItemWidget('Sun', 100),
      _getTitleItemWidget('Mon', 100),
      _getTitleItemWidget('tue', 100),
      _getTitleItemWidget('wed', 100),
      _getTitleItemWidget('thu', 100),
      _getTitleItemWidget('fri', 100),
      _getTitleItemWidget('sat', 100),
    ];
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      width: width,
      height: 60,
      padding: EdgeInsets.symmetric(vertical: 2.h),
      alignment: Alignment.centerLeft,
      child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  List generateRightHandSideColumnRowheading = [
    "Running Time",
    "Jogging Time",
    "Exercise Time",
    "Total Time\n(Running+Jogging+Exercise)",
    "Running\nTime engagement %(Running / Total Time)",
    "Jogging\nTime engagement %(Jogging / Total Time)",
    "Exercise\nTime engagement %(Exercise / Total Time)"
  ];
  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      width: 100,
      height: 52,
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: Text(generateRightHandSideColumnRowheading[index]),
    );
  }

  // List<Widget> fields = [
  //   Center(
  //     child: Padding(
  //       padding: EdgeInsets.symmetric(vertical: 2.h),
  //       child: const TextField(
  //           decoration: InputDecoration(
  //         border: InputBorder.none,
  //       )),
  //     ),
  //   ),
  //   Center(
  //     child: Padding(
  //       padding: EdgeInsets.symmetric(vertical: 2.h),
  //       child: const TextField(
  //           decoration: InputDecoration(
  //         border: InputBorder.none,
  //       )),
  //     ),
  //   ),
  //   Center(
  //     child: Padding(
  //       padding: EdgeInsets.symmetric(vertical: 2.h),
  //       child: const TextField(
  //           decoration: InputDecoration(
  //         border: InputBorder.none,
  //       )),
  //     ),
  //   ),
  //   Center(
  //     child: Padding(
  //       padding: EdgeInsets.symmetric(vertical: 2.h),
  //       child: const TextField(
  //           decoration: InputDecoration(
  //         border: InputBorder.none,
  //       )),
  //     ),
  //   ),
  //   Center(
  //     child: Padding(
  //       padding: EdgeInsets.symmetric(vertical: 2.h),
  //       child: const TextField(
  //           decoration: InputDecoration(
  //         border: InputBorder.none,
  //       )),
  //     ),
  //   ),
  //   Center(
  //     child: Padding(
  //       padding: EdgeInsets.symmetric(vertical: 2.h),
  //       child: const TextField(
  //           decoration: InputDecoration(
  //         border: InputBorder.none,
  //       )),
  //     ),
  //   ),
  //   Center(
  //     child: Padding(
  //       padding: EdgeInsets.symmetric(vertical: 2.h),
  //       child: const TextField(
  //           decoration: InputDecoration(
  //         border: InputBorder.none,
  //       )),
  //     ),
  //   ),
  // ];
  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: TextField(
              decoration: InputDecoration(
            border: InputBorder.none,
          )),
        ),
      ],
    );
  }
}
