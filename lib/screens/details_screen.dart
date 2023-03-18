import 'package:exer_app/constants.dart';
import 'package:exer_app/widgets/botttom_navbar.dart';
import 'package:exer_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Bottom_NavBar(size: size,),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 200, 148, 44),
              image: DecorationImage(
                image: AssetImage("assets/images/vnjblinlin.jpeg"),
                fit: BoxFit.contain,
                alignment: Alignment.topRight,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Text(
                      "Meditation",
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.w900,
                            fontSize: 35,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "3-10 Min Course",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: size.width * 0.6,
                        child: const Text(
                          "Live happier and healhier by learning the fundamentals of meditation and mindfulness.",
                        )),
                    SizedBox(width: size.width * 0.55, child: const Searchbar()),
                    SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        SessionCard(
                          sessionNum: 1,
                          isdone: true,
                        ),
                        SessionCard(
                          sessionNum: 2,
                        ),
                        SessionCard(
                          sessionNum: 3,
                        ),
                        SessionCard(
                          sessionNum: 4,
                        ),
                        SessionCard(
                          sessionNum: 5,
                        ),
                        SessionCard(
                          sessionNum: 6,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Meditation",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -17,
                            color: XShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/401309761637655749.svg"),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Basic 2",
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                              Text("Start and deepen your practice"),
                            ],
                          )),
                          Padding(
                            padding: EdgeInsets.all(6),
                            child: SvgPicture.asset(
                                "assets/icons/6636660811548336255.svg"),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final int? sessionNum;
  final bool isdone;
  const SessionCard({
    super.key,
    this.sessionNum,
    this.isdone = false,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 - 10,

          /// constraint.maxWidth provide us the available width for thuis widget
          // padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 23,
                    spreadRadius: -13,
                    color: XShadowColor),
              ]),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                          color: isdone ? XBlueColor : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: XBlueColor)),
                      child: Icon(
                        Icons.play_arrow,
                        color: isdone ? Colors.white : XBlueColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Session $sessionNum",
                      style: Theme.of(context).textTheme.titleSmall,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
