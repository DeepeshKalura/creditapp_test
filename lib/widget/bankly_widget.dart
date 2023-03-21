import 'package:flutter/material.dart';

class BanklyWidget extends StatelessWidget {
  const BanklyWidget(
      {super.key, required this.imagePath, required this.offPercentage});
  final String imagePath;
  final String offPercentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            '$offPercentage% OFF',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(imagePath),
        ],
      ),
    );
  }
}
