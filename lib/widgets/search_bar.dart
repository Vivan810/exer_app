import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(26),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          icon:
              SvgPicture.asset("assets/icons/icons8-search.svg"),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
