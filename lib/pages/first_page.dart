import 'package:care_plans/pages/basic1.dart';
import 'package:care_plans/pages/holistic1.dart';
import 'package:care_plans/pages/prime1.dart';
import 'package:care_plans/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // ignore: non_constant_identifier_names
  int CurrentIndex = 0;

  void onTapChange(int index) {
    setState(() {
      CurrentIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const Basic1Page(),
    Prime1Page(),
    Holistic1Page(),
  ];
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: apnaColor,
            elevation: 0.0,
          ),
          extendBody: true,
          backgroundColor: apnaColor,
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                color: Palette.kToDark,
                borderRadius: BorderRadius.circular(30)),
            margin: const EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: GNav(
                  onTabChange: onTapChange,
                  backgroundColor: Palette.kToDark,
                  color: Colors.white,
                  activeColor: Palette.kToDark,
                  tabBackgroundColor: Colors.white,
                  padding: const EdgeInsets.all(5),
                  tabs: const [
                    GButton(
                      icon: Icons.star,
                      text: 'Basic Care',
                      iconSize: 20,
                    ),
                    GButton(
                      icon: Icons.star,
                      text: 'Prime Care',
                    ),
                    GButton(
                      icon: Icons.star,
                      text: 'Holistic Care',
                    ),
                  ]),
            ),
          ),
          body: Center(
            child: _widgetOptions.elementAt(CurrentIndex),
          ),
        ),
        Positioned(
          top: 20,
          right: w / 3.5,
          child: Image.asset(
            'assets/images/ui-removebg-preview.png',
            height: 120,
            width: w / 2,
            fit: BoxFit.fill,
          ),
        ),
      ]),
    );
  }
}
