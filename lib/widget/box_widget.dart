import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black54,
      elevation: 0,
      shape: ShapeBorder.lerp(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        0,
      ),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      
      child: Center(child: Text(title),),
    );
  }
}