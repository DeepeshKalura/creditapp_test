import 'package:flutter/material.dart';

class KitWidget extends StatelessWidget {
  const KitWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              const Text(
                'Order your welcome kit for FREE',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 43,
                width: double.infinity,
              ),
              const Text(
                'Welcome Kits includes',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                '.  Free bankly badage.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                '.  Free bankly t-shirt.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                '.  More freebies,',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 23,
                width: double.infinity,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(114, 229, 161, 1)),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  fixedSize: MaterialStateProperty.all(
                    const Size(180, 40),
                  ),
                ),
                child: const Text(
                  'Order now!',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 113,
          right: -6,
          child: Image.asset(
            'assets/images/cardBox.png',
            height: 150,
          ),
        ),
      ],
    );
  }
}
