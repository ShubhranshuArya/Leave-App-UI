import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futuryze_assignment/constants/color_constants.dart';
import 'package:futuryze_assignment/constants/custom_text.dart';

Widget recentLogItem({
  String day = "Wednesday",
  String date = "15 Mar 2020",
  String time = "3:52",
}) {
  return Container(
    height: 80,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customText(
                text: day,
                fontsize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              SizedBox(height: 4),
              customText(
                text: date,
                fontsize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/bar_chart.jpg",
                height: 40,
              ),
              customText(
                text: "$time Hrs",
                fontsize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ],
          )
        ],
      ),
    ),
  );
}
