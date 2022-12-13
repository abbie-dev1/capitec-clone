import 'package:badges/badges.dart';
import 'package:capitect_app_clone/pages/dashboard.dart';
import 'package:capitect_app_clone/pages/explore.dart';
import 'package:capitect_app_clone/pages/messages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages/cards.dart';
import '../pages/transact.dart';

class Central extends StatefulWidget {
  const Central({super.key});

  @override
  State<Central> createState() => _CentralState();
}

class _CentralState extends State<Central> {
  int currentTab = 0;
  List<Widget> pages = [
    const Dashboard(),
    const Cards(),
    const Transact(),
    const Messages(),
    const Explore(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentPage = const Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentTab],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.transparent,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (index) => setState(() {
            currentTab = index;
          }),
          selectedIndex: currentTab,
          elevation: 10,
          height: 60,
          destinations: [
            NavigationDestination(
              icon: Icon(
                Icons.home,
                color: currentTab == 0 ? Colors.blue : Colors.grey,
              ),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(
                FontAwesomeIcons.creditCard,
                color: currentTab == 1 ? Colors.blue : Colors.grey,
              ),
              label: "Cards",
            ),
            NavigationDestination(
              icon: Icon(
                FontAwesomeIcons.arrowRightArrowLeft,
                color: currentTab == 2 ? Colors.blue : Colors.grey,
              ),
              label: "Transact",
            ),
            NavigationDestination(
              icon: Badge(
                badgeContent: const Text(
                  "99",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                child: Icon(
                  Icons.message,
                  color: currentTab == 3 ? Colors.blue : Colors.grey,
                ),
              ),
              label: "Messages",
            ),
            NavigationDestination(
              icon: Icon(
                FontAwesomeIcons.layerGroup,
                color: currentTab == 4 ? Colors.blue : Colors.grey,
              ),
              label: "Explore",
            ),
          ],
        ),
      ),
    );
  }
}
