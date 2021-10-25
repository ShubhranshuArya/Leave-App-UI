import 'package:flutter/material.dart';
import 'package:futuryze_assignment/constants/color_constants.dart';
import 'package:futuryze_assignment/constants/custom_text.dart';
import 'package:futuryze_assignment/constants/static_data.dart';
import 'package:futuryze_assignment/view/widgets/header_container.dart';
import 'package:futuryze_assignment/view/widgets/list_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryBlue,
      body: SafeArea(
        child: Stack(
          children: [
            HeaderContainer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.68,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(32),
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 22,
                      ),
                      child: ListView.separated(
                        itemBuilder: (_, index) {
                          return ListItem(index: index);
                        },
                        separatorBuilder: (_, index) {
                          return SizedBox(height: 20);
                        },

                        itemCount: applicationList.length,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 48,
                          width: 200,
                          decoration: BoxDecoration(
                            color: primaryBlue,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: primaryBlue.withOpacity(0.2),
                                blurRadius: 10,
                                spreadRadius: 4,
                              )
                            ],
                          ),
                          child: Center(
                            child: customText(
                              text: "Apply for leave",
                              fontWeight: FontWeight.bold,
                              fontsize: 18,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
