import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            "What are \nyou looking for ?",
            style: Styles.headlineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          Container(
            child: Row(
              children: [
                Container(
                  width: 130,
                  padding: EdgeInsets.symmetric(vertical: 7),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text("Airline Tickets"),
                  ),
                ),
                Container(
                  width: 130,
                  padding: EdgeInsets.symmetric(vertical: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.transparent,
                  ),
                  child: const Center(
                    child: Text("Hotels"),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xFFF4F6FD)),
          ),
        ],
      ),
    );
  }
}
