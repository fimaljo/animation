import 'package:animation/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StrekRating extends StatelessWidget {
  final double rating;
  const StrekRating({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      direction: Axis.horizontal,
      itemCount: 6,
      rating: rating,
      itemSize: 20,
      itemPadding: EdgeInsets.only(right: 30),
      unratedColor: yellow.withOpacity(0.5),
      itemBuilder: (context, _) => Image.asset(
        "assets/fxemoji_fire.png",
      ),
    );
  }
}
