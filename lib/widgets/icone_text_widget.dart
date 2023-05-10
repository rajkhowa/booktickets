import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.GetHeight(12),
          vertical: AppLayout.GetHeight(12)),
      child: Row(children: [
        Icon(
          icon,
          color: const Color(0xFFBFC2DF),
        ),
        Gap(AppLayout.GetWidth(10)),
        Text(
          text,
          style: Styles.textStyle,
        )
      ]),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.GetHeight(10)),
        color: Colors.white,
      ),
    );
  }
}
