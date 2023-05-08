import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.GetHeight(20), vertical: AppLayout.GetHeight(20)),
        children: [
          Gap(AppLayout.GetHeight(40)),
          Text(
            "What are \nyou looking for ?",
            style: Styles.headlineStyle1.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.GetHeight(20)),
          Container(
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
                  width: 130,
                  padding: EdgeInsets.symmetric(vertical: AppLayout.GetHeight(7)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.GetHeight(50))),
                    color: Colors.transparent,
                  ),
                  child: const Center(
                    child: Text("Hotels"),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.GetHeight(50)),
                color: const Color(0xFFF4F6FD)),
          ),
        ],
      ),
    );
  }
}
