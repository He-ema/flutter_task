import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';

class MyAnimatedStars extends StatelessWidget {
  const MyAnimatedStars({
    super.key,
    required this.isReadOnly,
    required this.onChanged,
  });
  final bool isReadOnly;
  final dynamic Function(double) onChanged;
  @override
  Widget build(BuildContext context) {
    return AnimatedRatingStars(
      initialRating: 0,
      minRating: 0.0,
      maxRating: 5.0,
      filledColor: Colors.amber,
      emptyColor: Colors.grey,
      filledIcon: Icons.star,
      halfFilledIcon: Icons.star_half,
      emptyIcon: Icons.star_border,
      onChanged: onChanged,
      // onChanged: (double rating) {
      //   // Handle the rating change here
      //   print('Rating: $rating');
      // },
      displayRatingValue: true,
      interactiveTooltips: true,
      customFilledIcon: Icons.star,
      customHalfFilledIcon: Icons.star_half,
      customEmptyIcon: Icons.star_border,
      starSize: 30.0,
      animationDuration: const Duration(milliseconds: 300),
      animationCurve: Curves.easeInOut,
      readOnly: isReadOnly,
    );
  }
}
