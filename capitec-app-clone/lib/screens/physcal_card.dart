import 'package:capitect_app_clone/util/button_animation.dart';
import 'package:flutter/material.dart';

import '../widgets/card.dart';
import '../widgets/item_icon_title_row.dart';

class PhysicalCard extends StatefulWidget {
  const PhysicalCard({super.key});

  @override
  State<PhysicalCard> createState() => _PhysicalCardState();
}

class _PhysicalCardState extends State<PhysicalCard> {
  bool isBackCard = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          SizedBox(
            height: isBackCard
                ? MediaQuery.of(context).size.height * 0.3
                : MediaQuery.of(context).size.height * 0.5,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: isBackCard
                    ? ButtonClickAnimation(
                        onTap: () => setState(() {
                              isBackCard = !isBackCard;
                            }),
                        child: backCard(context))
                    : ButtonClickAnimation(
                        onTap: () => setState(() {
                              isBackCard = !isBackCard;
                            }),
                        child: frontCard(context))),
          ),
          Visibility(
            visible: isBackCard,
            child: Container(
              margin: const EdgeInsets.only(right: 0),
              child: ButtonClickAnimation(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(4),
                  child: const Text(
                    "Show Card Details",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 250),
            child: Container(
              padding: const EdgeInsets.all(4),
              child: const Text(
                "Debit daily limits",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text("Update permanent limits"),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(5),
                                color: Colors.grey,
                                height: 0.5,
                              ),
                              Container(
                                margin: const EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Set temporary limits"),
                                    Row(
                                      children: const [
                                        Text("off"),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Card(
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            const Icon(
                                              Icons.ads_click,
                                            ),
                                            Container(
                                                margin: const EdgeInsets.only(
                                                    left: 15),
                                                child: const Text("Tap to pay"))
                                          ]),
                                          Row(
                                            children: const [
                                              Text("On"),
                                              Icon(
                                                Icons.arrow_forward_ios,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.all(5),
                                      color: Colors.grey,
                                      height: 0.5,
                                    ),
                                    itemIconTitleRow(Icons.blur_off,
                                        "Stop Card", Icons.arrow_forward_ios),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
