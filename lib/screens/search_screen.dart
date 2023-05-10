import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/icone_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.GetHeight(20),
            vertical: AppLayout.GetHeight(20)),
        children: [
          Gap(AppLayout.GetHeight(40)),
          Text(
            "What are \nyou looking for ?",
            style: Styles.headlineStyle1.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.GetHeight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              // ignore: sort_child_properties_last
              child: Row(
                children: [
                  Container(
                    width: size.width * .44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.GetHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(AppLayout.GetHeight(50))),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text("Airline Tickets"),
                    ),
                  ),
                  Container(
                    width: size.width * .44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.GetHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(AppLayout.GetHeight(50))),
                      color: Colors.transparent,
                    ),
                    child: const Center(
                      child: Text("Hotels"),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.GetHeight(50),
                  ),
                  color: const Color(0xFFF4F6FD)),
            ),
          ),
          Gap(AppLayout.GetHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.GetHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.GetHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.GetWidth(15),
                vertical: AppLayout.GetWidth(18)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.GetHeight(10)),
              color: Color(0xD91130CE),
            ),
            child: Center(
              child: Text(
                "find tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.GetHeight(40)),
          const AppDoubleTextWidget(
              bigText: "Upcoming Flights", smallText: "view all"),
        ],
      ),
    );
  }
}
