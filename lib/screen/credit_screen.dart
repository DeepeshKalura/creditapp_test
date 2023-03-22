import 'package:flutter/material.dart';

import '../widget/container_box_widget.dart';
import '../widget/card_widget.dart';

class MyCreditScreen extends StatefulWidget {
  const MyCreditScreen({super.key});

  @override
  State<MyCreditScreen> createState() => _MyCreditScreenState();
}

class _MyCreditScreenState extends State<MyCreditScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromARGB(139, 12, 28, 25),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    " Bankly",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: const Color.fromARGB(255, 64, 191, 163),
                        ),
                  ),
                  Text(
                    " Card",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CardWidget(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              const SizedBox(
                height: 60,
              ),
              const BoxWidget(title: "How to use my cards?"),
              const BoxWidget(title: "Orders?"),
              const BoxWidget(title: "Transactions"),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an bankly card?',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Activate',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: const Color.fromRGBO(94, 182, 187, 1),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
