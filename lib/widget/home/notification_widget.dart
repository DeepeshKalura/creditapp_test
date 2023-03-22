import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 50,
          margin: const EdgeInsets.only(
            right: 20,
            top: 0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Icon(
            Icons.notifications,
            size: 40,
            color: Color.fromARGB(255, 64, 191, 163),
          ),
        ),
        const Positioned(
          top: 0,
          right: 21,
          child: CircleAvatar(
            radius: 7,
            backgroundColor: Color.fromARGB(255, 64, 191, 163),
          ),
        )
      ],
    );
  }
}
