import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futuryze_assignment/constants/color_constants.dart';
import 'package:futuryze_assignment/constants/custom_text.dart';

Widget barChartRow({
  double height = 60,
  String day = "",
  Color color = primaryBlue,
  bool isTrue = false,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        height: height,
        width: 16,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: isTrue ? Padding(
          padding: EdgeInsets.only(top: 4),
          child: Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 6,
            ),
          ),
        ) : Container(),
      ),
      SizedBox(height: 10),
      customText(
        text: day,
        color: Colors.black,
      )
    ],
  );
}
