import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'package:vector_math/vector_math_64.dart' as vector;

import '../widget/card_widget.dart';
import '../widget/home/notification_widget.dart';
import '../widget/home/upper_home_widget.dart';
import 'credit_screen.dart';
import 'full_bottom_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 500),
        animationBehavior: AnimationBehavior.preserve);
    _animation = Tween<double>(begin: 0, end: -100).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var children2 = [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 22, top: 40),
                child: Text(
                  'Good Afternoon',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              Text('John Dahmer'),
            ],
          ),
          const NotificationWidget(),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      AnimatedBuilder(
        animation: _animation,
        builder: (context, child) => const UpperHomeWidget(),
      ),
      const SizedBox(
        height: 8,
      ),
      Stack(
        children: [
          Center(
            child: Divider(
              color: const Color.fromRGBO(41, 41, 40, 1),
              thickness: 3,
              indent: MediaQuery.of(context).size.width * 0.2,
              endIndent: MediaQuery.of(context).size.width * 0.2,
            ),
          ),
          Transform(
            alignment: Alignment.bottomCenter,
            transform: Matrix4.identity()
              ..translate(
                vector.Vector3(0, MediaQuery.of(context).size.height * 0.11, 0),
              )
              ..rotateZ(0)
              ..rotateX(0)
              ..rotateY(0),
            child: CardWidget(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          ),
        ],
      ),
      Stack(
        children: [
          const BottomSheetScreen(),
          Positioned(
            top: 0,
            right: 170,
            child: GestureDetector(
              onVerticalDragUpdate: (details) {
                if (details.delta.dy > 0) {
                  _handleTap();
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 500),
                      pageBuilder: (_, __, ___) => const MyCreditScreen(),
                      transitionsBuilder: (context, animation, _, child) {
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0.0, 1.0),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        );
                      },
                    ),
                  );
                }
              },
              child: CircleAvatar(
                radius: 37,
                backgroundColor: Colors.black,
                child: Transform.rotate(
                  angle: -math.pi / 2,
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ];
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children2,
          ),
        ),
      ),
    );
  }
}
