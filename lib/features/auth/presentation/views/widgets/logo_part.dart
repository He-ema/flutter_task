import 'package:final_task/core/utils/app_styles.dart';
import 'package:final_task/core/utils/assets.dart';
import 'package:flutter/material.dart';

class LogoPart extends StatefulWidget {
  const LogoPart({
    super.key,
  });

  @override
  State<LogoPart> createState() => _LogoPartState();
}

class _LogoPartState extends State<LogoPart>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(); // Repeats the animation indefinitely

    _animation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Awfar',
          style: AppStyles.styleBoldUnivia45(context),
        ),
        const SizedBox(
          width: 10,
        ),
        RotationTransition(
          turns: _animation,
          child: Image.asset(Assets.imagesLogo),
        ),
      ],
    );
  }
}
