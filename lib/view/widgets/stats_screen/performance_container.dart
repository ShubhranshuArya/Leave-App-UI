import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futuryze_assignment/constants/color_constants.dart';
import 'package:futuryze_assignment/constants/custom_text.dart';
import 'package:futuryze_assignment/view/widgets/stats_screen/bar_chart_row.dart';

Widget performanceContainer() {
  return Container(
    height: 400,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(32),
      boxShadow: [
        BoxShadow(
          color: primaryBlue.withOpacity(0.2),
          blurRadius: 10,
          spreadRadius: 4,
        )
      ],
    ),
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customText(
            text: "Overall Performance",
            fontsize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          customText(
            text: "Jan 06 - Jan 12",
            fontsize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          SizedBox(height: 20),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              color: primaryBlue.withOpacity(0.2),
              borderRadius: BorderRadius.circular(32),
            ),
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Center(
                        child: customText(
                          text: "Weekly",
                          fontsize: 12,
                          fontWeight: FontWeight.w400,
                          color: primaryBlue,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Center(
                        child: customText(
                          text: "Monthly",
                          fontsize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Center(
                        child: customText(
                          text: "All Time",
                          fontsize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 180,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Divider(
                          thickness: 2,
                          color: Colors.grey.withOpacity(0.1),
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.grey.withOpacity(0.1),
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.grey.withOpacity(0.1),
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.grey.withOpacity(0.1),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      barChartRow(
                        day: "M",
                        color: primaryBlue.withOpacity(0.2),
                      ),
                      barChartRow(
                        day: "T",
                        height: 90,
                        isTrue: true,
                      ),
                      barChartRow(
                        day: "W",
                        height: 50,
                        color: primaryBlue.withOpacity(0.2),
                      ),
                      barChartRow(
                        day: "T",
                        height: 40,
                        color: primaryBlue.withOpacity(0.2),
                      ),
                      barChartRow(
                        day: "F",
                        height: 120,
                        isTrue: true,
                      ),
                      barChartRow(
                        day: "S",
                        color: primaryBlue.withOpacity(0.2),
                      ),
                      barChartRow(
                        day: "S",
                        height: 70,
                        color: primaryBlue.withOpacity(0.2),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText(
                    text: "Complete View",
                    fontsize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  customText(
                    text: "View your complete view for leaves",
                    fontsize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ],
              ),
              Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                  color: primaryYellow.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                    color: primaryYellow,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
