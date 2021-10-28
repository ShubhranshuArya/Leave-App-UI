import 'package:flutter/material.dart';
import 'package:futuryze_assignment/constants/color_constants.dart';
import 'package:futuryze_assignment/constants/custom_text.dart';
import 'package:futuryze_assignment/constants/icon_constants.dart';
import 'package:futuryze_assignment/constants/static_data.dart';

class ListItem extends StatelessWidget {
  final int index;
  const ListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customText(
          text: applicationList[index]['date_applied'],
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        SizedBox(height: 10),
        Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              top: 16,
              bottom: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: iconPurple.withOpacity(0.2),
                          radius: 12,
                          child: Center(
                            child: Icon(
                              LeaveApp.calender,
                              size: 16,
                              color: iconPurple,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText(
                              text: "Applied Duration",
                              fontWeight: FontWeight.w400,
                              fontsize: 14,
                              color: Colors.black,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            customText(
                              text: applicationList[index]['duration'],
                              fontWeight: FontWeight.w600,
                              fontsize: 12,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 28,
                      width: 72,
                      decoration: BoxDecoration(
                        color: applicationList[index]['color'],
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(12),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: customText(
                            text: applicationList[index]['status'],
                            fontsize: 10,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: iconBlue.withOpacity(0.2),
                      radius: 12,
                      child: Center(
                        child: Icon(
                          LeaveApp.reason,
                          size: 14,
                          color: iconBlue,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText(
                          text: "Reason",
                          fontWeight: FontWeight.w400,
                          fontsize: 14,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        customText(
                          text: applicationList[index]['reason'],
                          fontWeight: FontWeight.w600,
                          fontsize: 12,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: iconPink.withOpacity(0.1),
                      radius: 12,
                      child: Center(
                        child: Icon(
                          LeaveApp.leave_type,
                          size: 10,
                          color: iconPink,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText(
                          text: "Type of Leave",
                          fontWeight: FontWeight.w400,
                          fontsize: 14,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        customText(
                          text: applicationList[index]['type'],
                          fontWeight: FontWeight.w600,
                          fontsize: 12,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        (index + 1 == applicationList.length) ? SizedBox(height: 60) : Container(),
      ],
    );
  }
}
