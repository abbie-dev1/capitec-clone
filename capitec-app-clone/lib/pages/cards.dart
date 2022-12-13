import 'package:flutter/material.dart';

import '../screens/physcal_card.dart';
import '../screens/virtual_card.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> with SingleTickerProviderStateMixin {
  late final _tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: SafeArea(
          child: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: const <Widget>[
              Tab(
                text: 'Physical Card',
              ),
              Tab(
                text: 'Virtual Card',
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: TabBarView(
          controller: _tabController,
          children: const [
            PhysicalCard(),
            VirtualCard(),
          ],
        ),
      ),
    );
  }
}
