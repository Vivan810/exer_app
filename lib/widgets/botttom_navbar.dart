import 'package:exer_app/main.dart';
import 'package:exer_app/screens/details_screen.dart';
import 'package:flutter/material.dart';

class Bottom_NavBar extends StatelessWidget {
  const Bottom_NavBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: size.height * 0.08,
      color: Colors.black,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        BottomCard(
          text: 'Today',
          svgSource: 'assets/icons/8016983016345278794481.svg',
          press: () {},
        ),
        BottomCard(
          text: 'All Exercises',
          svgSource: 'assets/icons/4906699481560147103.svg',
          press: () {},
          isActive: true,
        ),
        BottomCard(
          text: 'Settings',
          svgSource: 'assets/icons/1947697821552644384.svg',
          press: () {},
        ),
      ]),
    );
  }
}
