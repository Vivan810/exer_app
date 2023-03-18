import 'package:exer_app/constants.dart';
import 'package:exer_app/screens/details_screen.dart';
import 'package:exer_app/widgets/botttom_navbar.dart';
import 'package:exer_app/widgets/category_card.dart';
import 'package:exer_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Raleway",
        scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0),
        textTheme: Theme.of(context).textTheme.apply(displayColor: XTextColor),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; // this is gonna give us total height and width of our device
    return Scaffold(
      bottomNavigationBar: Bottom_NavBar(size: size),
      body: Stack(
        children: <Widget>[
          Container(
            // here the height of the container is 45% of the total height
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: Color.fromARGB(225, 231, 96, 249),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(232, 154, 5, 177),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/icons8-menu.svg"),
                    ),
                  ),
                  Text(
                    "Good Morning Tanzina",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontWeight: FontWeight.w900, fontSize: 37),
                  ),
                  const Searchbar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCard(
                          title: 'Diet Recommendation',
                          svgSource: 'assets/icons/10657561521604779602.svg',
                          press: () {},
                        ),
                        CategoryCard(
                          svgSource: 'assets/icons/401309761637655749.svg',
                          title: 'Yoga',
                          press: () {},
                        ),
                        CategoryCard(
                          svgSource: 'assets/icons/21007486191639302270.svg',
                          title: 'Kegel Exercise',
                          press: () {},
                        ),
                        CategoryCard(
                          svgSource: 'assets/icons/20540389451639238425.svg',
                          title: 'Meditation',
                          press: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const DetailScreen();
                            }),
                          );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BottomCard extends StatelessWidget {
  final String svgSource;
  final String text;
  final Function press;
  final bool isActive;

  const BottomCard({
    super.key,
    required this.svgSource,
    required this.text, this.isActive = false, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(svgSource, color: isActive ? XActiveIconColor : Colors.white,),
          Text(text, style: TextStyle(color: isActive ? XActiveIconColor : Colors.white),),
        ],
      ),
    );
  }
}
