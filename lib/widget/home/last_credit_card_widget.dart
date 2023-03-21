import 'package:flutter/material.dart';

class LastCreditCardWidget extends StatelessWidget {
  const LastCreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(52, 223, 149, 1),
                    Color.fromRGBO(63, 209, 183, 1),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.centerLeft,
                ),
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bring your card at home',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'only for 299/-',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: 43,
                    width: double.infinity,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    child: const Text(
                      'Book now',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 50,
              width: double.infinity,
            ),
          ],
        ),
        Positioned(
          top: 35,
          right: -6,
          child: Image.asset(
            'assets/images/lastCard.png',
            height: 200,
          ),
        ),
      ],
    );
  }
}
