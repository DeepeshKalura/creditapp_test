import 'package:flutter/material.dart';

class StarContainerWidget extends StatelessWidget {
  const StarContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.purple,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  top: 10,
                  bottom: 5,
                ),
                child: Text(
                  'Entertainment',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  bottom: 20,
                ),
                child: Text(
                  '2334 points',
                  style: TextStyle(
                    color: Color.fromARGB(255, 135, 33, 243),
                    fontWeight: FontWeight.bold,
                    fontSize: 42,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -37,
          right: -38,
          child: Image.asset(
            'assets/images/startContainer.png',
            height: 180,
          ),
        ),
      ],
    );
  }
}
