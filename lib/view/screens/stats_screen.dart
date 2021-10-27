import 'package:flutter/material.dart';
import 'package:futuryze_assignment/constants/color_constants.dart';
import 'package:futuryze_assignment/constants/custom_text.dart';
import 'package:futuryze_assignment/view/widgets/stats_screen/bar_chart_row.dart';
import 'package:futuryze_assignment/view/widgets/stats_screen/performance_container.dart';
import 'package:futuryze_assignment/view/widgets/stats_screen/recent_log_item.dart';
import 'package:futuryze_assignment/view/widgets/stats_screen/time_arrival_container.dart';
import 'package:get/get.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryBlue,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 480,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(32),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(24),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        customText(
                          text: "My Stats",
                          fontsize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    performanceContainer(),
                    SizedBox(height: 20),
                    timeArrivalContainer(),
                    SizedBox(height: 10),
                    customText(
                      text: "Recent Logs",
                      fontsize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10),
                    recentLogItem(),
                    SizedBox(height: 10),
                    recentLogItem(
                      day: "Tuesday",
                      date: "20 Jan 2020",
                      time: "4:20",
                    ),
                    SizedBox(height: 10),
                    recentLogItem(
                      day: "Friday",
                      date: "01 Jan 2020",
                      time: "2:20",
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
