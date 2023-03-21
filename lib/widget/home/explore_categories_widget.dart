import 'package:flutter/material.dart';

class ExploreCategoriesWidget extends StatelessWidget {
  const ExploreCategoriesWidget(
      {super.key, required this.imagePath, required this.title});
  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 50,
          child: Image.asset(
            imagePath,
            fit: BoxFit.fitHeight,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 25,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
