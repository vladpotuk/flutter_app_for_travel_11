import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/core/theme/app_text_style/app_text_style.dart';

///wiget for custom app bar with include user text and image
class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({super.key, required this.text, required this.image});
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, $text 👋', style: AppTextStyle.primaryText),
            const SizedBox(height: 5),
            Text('Exploer the world', style: AppTextStyle.secondaryText),
          ],
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(image),
        ),
      ],
    );
  }
}
