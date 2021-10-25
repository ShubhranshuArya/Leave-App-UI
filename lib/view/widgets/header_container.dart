import 'package:flutter/material.dart';
import 'package:futuryze_assignment/constants/color_constants.dart';
import 'package:futuryze_assignment/constants/custom_text.dart';
import 'package:futuryze_assignment/constants/icon_constants.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    LeaveApp.hamburger_menu,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  customText(
                    text: "Home",
                    fontsize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              Icon(LeaveApp.notification_bell, color: Colors.white),
            ],
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.topLeft,
            child: customText(
              text: "Good Morining, Kevin Durand",
              fontsize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 8),
          Align(
            alignment: Alignment.topLeft,
            child: customText(
              text: "Leave Dashboard",
              fontsize: 28,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customText(
                text: "4 Leaves",
                fontsize: 12,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(width: 10),
              customText(
                text: "12 Leaves",
                fontsize: 12,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 8,
                  decoration: BoxDecoration(
                    color: primaryYellow,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(4),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(4),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
