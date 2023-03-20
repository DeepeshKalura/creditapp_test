import 'package:flutter/material.dart';

import '../widget/box_widget.dart';
import '../widget/card_widget.dart';

class MyCreditScreen extends StatefulWidget {
  const MyCreditScreen({super.key});

  @override
  State<MyCreditScreen> createState() => _MyCreditScreenState();
}

class _MyCreditScreenState extends State<MyCreditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text('Your Bank App'),
          CardWidget(),
          BoxWidget(title: "How to use my cards?"),
          BoxWidget(title: "Orders?"),
          BoxWidget(title: "Transcitions"),
          Text('Already have an bankly card? Activate'),
        ],
      ),
    );
  }
}