import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.GetHeight(20),
              vertical: AppLayout.GetHeight(20)),
          children: [
            Gap(AppLayout.GetHeight(40)),
            Text(
              "Tickets",
              style: Styles.headlineStyle1,
            ),
            Gap(AppLayout.GetHeight(20)),
            const AppTicketTabs(
              firstTab: "Upcoming",
              secondTab: "Previous",
            ),
            Gap(AppLayout.GetHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.GetHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "Flutter DB",
                        secondText: "Passenger",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                        firstText: "5224 759877",
                        secondText: "Passport",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
