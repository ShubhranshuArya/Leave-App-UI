import 'package:flutter/material.dart';
import 'package:futuryze_assignment/constants/color_constants.dart';
import 'package:futuryze_assignment/constants/custom_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class LeaveScreen extends StatelessWidget {
  const LeaveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryBlue,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 4,
                left: 20,
                right: 20,
              ),
              child: Container(
                height: 400,
                child: SfCalendar(
                  viewHeaderStyle: ViewHeaderStyle(
                    dayTextStyle: GoogleFonts.robotoSlab(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  view: CalendarView.month,
                  backgroundColor: primaryBlue,
                  todayHighlightColor: Colors.white,
                  todayTextStyle: GoogleFonts.robotoSlab(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: primaryBlue,
                  ),
                  headerStyle: CalendarHeaderStyle(
                    textStyle: GoogleFonts.robotoSlab(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  cellBorderColor: primaryBlue,
                  allowDragAndDrop: true,
                  headerHeight: 60,
                  viewHeaderHeight: 40,
                  monthViewSettings: MonthViewSettings(
                    dayFormat: "EEE",
                    showTrailingAndLeadingDates: false,
                    showAgenda: false,
                    agendaItemHeight: 0,
                    monthCellStyle: MonthCellStyle(
                      textStyle: GoogleFonts.robotoSlab(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,),
              child: GestureDetector(
                onTap: () => Get.back(),
                child: Icon(
                  Icons.chevron_left_rounded,
                  size: 28,
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: customText(
                          text: "Type of leave",
                          fontWeight: FontWeight.w600,
                          fontsize: 14,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 40,
                        color: Colors.grey[100],
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customText(
                                text: "Unpaid leave",
                                fontWeight: FontWeight.w400,
                                fontsize: 14,
                                color: Colors.black,
                              ),
                              Icon(Icons.keyboard_arrow_down_rounded)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: customText(
                          text: "Reason",
                          fontWeight: FontWeight.w600,
                          fontsize: 14,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 80,
                        width: double.infinity,
                        color: Colors.grey[100],
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          child: customText(
                            text: "Type your reason here...",
                            fontWeight: FontWeight.w300,
                            fontsize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          gradient: LinearGradient(
                            colors: [Colors.blue.shade400, primaryBlue],
                          ),
                        ),
                        child: Center(
                          child: customText(
                            text: "Apply for leave",
                            fontWeight: FontWeight.bold,
                            fontsize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
