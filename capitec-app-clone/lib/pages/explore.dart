import 'package:flutter/material.dart';

import '../screens/physcal_card.dart';
import '../screens/virtual_card.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> with SingleTickerProviderStateMixin {
  late final _tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: const Text("Explore"),
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: 'GlobalOne',
            ),
            Tab(
              text: 'Connect',
            ),
            Tab(
              text: 'Live Better',
            ),
          ],
        ),
      ),
      body: Center(
        child: TabBarView(
          controller: _tabController,
          children: const [
            PhysicalCard(),
            VirtualCard(),
            VirtualCard(),
          ],
        ),
      ),
    );
  }
}
