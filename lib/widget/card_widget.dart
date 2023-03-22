import 'package:flutter/material.dart';

import 'desinger_text_widget.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key, required this.height});
  final double height;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  var _isFlipped = true;
  final hiddenNumber = '**** **** **** 2489';
  final shownNumber = '4737 9618 4974 2489';
  var visibleNumber = '**** **** **** 2489';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(84, 184, 187, 1),
            Color.fromRGBO(144, 153, 193, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Balance',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    '₹234,300.32',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 40,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(visibleNumber),
              IconButton(
                onPressed: () {
                  setState(() {
                    visibleNumber =
                        _isFlipped == true ? shownNumber : hiddenNumber;

                    _isFlipped = !_isFlipped;
                  });
                },
                icon: _isFlipped == true
                    ? const Icon(Icons.remove_red_eye, color: Colors.white)
                    : const Icon(Icons.close, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
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
