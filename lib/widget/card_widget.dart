import 'package:flutter/material.dart';

import 'desinger_text_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(
              84,
              184,
              187,
              1,
            ),
            Color.fromRGBO(144, 153, 193, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Balance',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    '₹234,300.32',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                ],
              ),
              Image.network(
                'https://cdn.logojoy.com/wp-content/uploads/2018/05/30143358/128.png',
                cacheHeight: 52,
                cacheWidth: 68,
              ),
            ],
          ),
          const Text('**** **** **** 1234'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              DesignerTextWidget(
                aboveText: 'Card Holder Name',
                belowText: 'John Doe',
              ),
              DesignerTextWidget(
                aboveText: 'Expire Date',
                belowText: '02/30',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
