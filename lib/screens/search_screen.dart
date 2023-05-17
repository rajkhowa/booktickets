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
              color: const Color(0xD91130CE),
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
          Gap(AppLayout.GetHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.GetHeight(425),
                width: size.width * .42,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.GetHeight(15),
                  vertical: AppLayout.GetWidth(15),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    AppLayout.GetHeight(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.GetHeight(190),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/sit.jpg"),
                        ),
                        borderRadius: BorderRadius.circular(
                          AppLayout.GetHeight(12),
                        ),
                      ),
                    ),
                    Gap(AppLayout.GetHeight(12)),
                    Text(
                      "20% discount on early booking of this flight. Don't miss out this chance",
                      style: Styles.headlineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * .44,
                        height: AppLayout.GetHeight(200),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.GetHeight(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.GetHeight(15),
                            vertical: AppLayout.GetHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.GetHeight(10)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -40,
                        right: -45,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.GetHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.GetHeight(15)),
                  Container(
                    width: size.width * .44,
                    height: AppLayout.GetHeight(210),
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.GetHeight(15),
                      horizontal: AppLayout.GetHeight(15),
                    ),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.GetHeight(18)),
                        color: const Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: Styles.headlineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.GetHeight(5)),
                        RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 28),
                            ),
                            TextSpan(
                              text: '😊',
                              style: TextStyle(fontSize: 38),
                            ),
                            TextSpan(
                              text: '😉',
                              style: TextStyle(fontSize: 28),
                            ),
                          ]),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
