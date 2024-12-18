import 'package:final_task/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.image,
      required this.color,
      this.borderRadius});
  final Text text;
  final String? image;
  final double? borderRadius;
  final Color color;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16),
            )),
        onPressed: onPressed,
        child: image == null
            ? text
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  image == Assets.imagesGoogle
                      ? CircleAvatar(
                          backgroundColor: Colors.white,
                          child: SvgPicture.asset(image!))
                      : SvgPicture.asset(image!),
                  FittedBox(fit: BoxFit.scaleDown, child: text),
                ],
              ),
      ),
    );
  }
}
