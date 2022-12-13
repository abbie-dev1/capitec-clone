import 'package:capitect_app_clone/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../dummy/dummy_data.dart';
import '../util/button_animation.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
          ),
          child: Container(
              padding: const EdgeInsets.all(10),
              child: const Icon(Icons.logout)),
        ),
        title: const Text("GlobalOne"),
        actions: [
          Container(
              padding: const EdgeInsets.all(10),
              child: const Icon(FontAwesomeIcons.ellipsisVertical))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Expanded(
            flex: 2,
            child: ListView.builder(
                itemCount: Data.accountItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return ButtonClickAnimation(
                    onTap: () {},
                    child: balanceCard(
                        Data.accountItems[index].icon,
                        Data.accountItems[index].leadingBoxColor,
                        Data.accountItems[index].accountName,
                        Data.accountItems[index].accountNameColor,
                        Data.accountItems[index].subTittle,
                        Data.accountItems[index].balance),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Favorite",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      "Edit",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.count(
              padding: const EdgeInsets.all(12),
              primary: false,
              childAspectRatio: 4 / 2.1,
              shrinkWrap: true,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              crossAxisCount: 2,
              children: List.generate(Data.items.length, (index) {
                return ButtonClickAnimation(
                  onTap: () {},
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(
                            Data.items[index].icon,
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            child: Text(
                              Data.items[index].itemName,
                              style: const TextStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ]),
      ),
    );
  }

  Widget balanceCard(IconData icon, Color leadingBoxColor, var accountType,
          Color accNameColor, var balanceTitle, var actualBalance) =>
      Column(
        children: [
          SizedBox(
            height: 100,
            child: Card(
              semanticContainer: true,
              borderOnForeground: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 6,
              child: Row(
                children: [
                  Container(
                    color: leadingBoxColor,
                    height: 100,
                    width: 60,
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                accountType,
                                style: TextStyle(
                                  color: accNameColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(balanceTitle),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              actualBalance,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      );
}
