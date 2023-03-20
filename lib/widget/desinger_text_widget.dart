import 'package:flutter/material.dart';

class DesignerTextWidget extends StatelessWidget {
  const DesignerTextWidget(
      {super.key, required this.aboveText, required this.belowText});
  final String aboveText;
  final String belowText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(aboveText, style: Theme.of(context).textTheme.displaySmall),
        Text(belowText, style: Theme.of(context).textTheme.displayMedium),
      ],
    );
  }
}
