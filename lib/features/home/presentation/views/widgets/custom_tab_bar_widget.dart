import 'package:final_task/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTapBarWidget extends StatelessWidget {
  const CustomTapBarWidget({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsetsDirectional.only(end: 2, start: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      duration: const Duration(milliseconds: 250),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: color == const Color(0xffF39200)
                ? Colors.white
                : const Color(0xff727880),
          ),
        ),
      ),
    );
  }
}
