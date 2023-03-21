import 'package:flutter/material.dart';

import '../widget/bankly_widget.dart';
import '../widget/home/explore_categories_widget.dart';
import '../widget/home/kit_widget.dart';
import '../widget/home/last_credit_card_widget.dart';
import '../widget/home/start_container_widget.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color.fromRGBO(52, 223, 149, 1),
                          ),
                        ),
                      ),
                      fixedSize: MaterialStateProperty.all(
                        Size(MediaQuery.of(context).size.width * 0.45, 60),
                      ),
                    ),
                    child: const Text(
                      'Request',
                      style: TextStyle(
                        color: Color.fromRGBO(52, 223, 149, 1),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(52, 223, 149, 1),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      fixedSize: MaterialStateProperty.all(
                        Size(MediaQuery.of(context).size.width * 0.45, 60),
                      ),
                    ),
                    child: const Text(
                      'History',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Text(
                'Your Rewards',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            const StarContainerWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 20),
              child: Text(
                'Explore Categories',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            Row(
              children: const [
                ExploreCategoriesWidget(
                  title: 'Food',
                  imagePath: 'assets/images/food.png',
                ),
                ExploreCategoriesWidget(
                  title: 'Travel',
                  imagePath: 'assets/images/travel.png',
                ),
                ExploreCategoriesWidget(
                  title: 'Shopping',
                  imagePath: 'assets/images/shopping.png',
                ),
                ExploreCategoriesWidget(
                  title: 'Education',
                  imagePath: 'assets/images/education.png',
                ),
              ],
            ),
            Row(
              children: const [
                ExploreCategoriesWidget(
                  title: 'Entertainment',
                  imagePath: 'assets/images/entertainment.png',
                ),
                ExploreCategoriesWidget(
                  title: 'Personal Care',
                  imagePath: 'assets/images/personal_care.png',
                ),
                ExploreCategoriesWidget(
                  title: 'Transportation',
                  imagePath: 'assets/images/transportation.png',
                ),
                ExploreCategoriesWidget(
                  title: 'Miscellaneous',
                  imagePath: 'assets/images/miscellaneous.png',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 40, bottom: 20),
              child: Text(
                'Hey John, you might like this',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            const KitWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Use Bankly and get',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 200,
                maxWidth: 2000,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => const BanklyWidget(
                  imagePath: 'assets/images/playStore.png',
                  offPercentage: '20',
                ),
              ),
            ),
            const SizedBox(
              height: 40,
              width: double.infinity,
            ),
            const LastCreditCardWidget(),
            const SizedBox(
              height: 40,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
