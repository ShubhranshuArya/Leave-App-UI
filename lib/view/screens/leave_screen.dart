import 'package:flutter/material.dart';
import 'package:futuryze_assignment/constants/color_constants.dart';
import 'package:futuryze_assignment/view/widgets/leave_screen/bottom_container.dart';
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
            bottomContainer(),
          ],
        ),
      ),
    );
  }
}
