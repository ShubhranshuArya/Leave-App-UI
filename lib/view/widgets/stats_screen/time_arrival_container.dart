import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futuryze_assignment/constants/color_constants.dart';
import 'package:futuryze_assignment/constants/custom_text.dart';

Widget timeArrivalContainer() {
  return Container(
    height: 80,
    decoration: BoxDecoration(
      color: iconPink,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 54,
          width: 54,
          decoration: BoxDecoration(
              border: Border.all(color: primaryYellow, width: 6),
              borderRadius: BorderRadius.circular(27)),
          child: Center(
            child: customText(
              text: "76%",
              fontsize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customText(
              text: "On-Time Arrival",
              fontsize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            customText(
              text: "From Feb 20, 2020 to Mar 15, 2020",
              fontsize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ],
        ),
      ],
    ),
  );
}
