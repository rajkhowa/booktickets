// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({
    Key? key,
    required this.hotel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('the price is ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * .6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(21),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                color: Styles.primaryColor,
                borderRadius: BorderRadius.circular(21),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel['image']}"),
                )),
          ),
          const Gap(10),
          Text(
            "${hotel['place']}",
            style: Styles.headlineStyle2.copyWith(
              color: Styles.kakiColor,
            ),
          ),
          const Gap(5),
          Text(
            "${hotel['destination']}",
            style: Styles.headlineStyle2.copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(8),
          Text("\$${hotel['price']}",
              style: Styles.headlineStyle2.copyWith(
                color: Styles.kakiColor,
              )),
        ],
      ),
    );
  }
}
