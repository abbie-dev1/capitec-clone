import 'package:flutter/material.dart';
import '../util/button_animation.dart';
import '../widgets/card.dart';
import '../widgets/item_icon_title_row.dart';

class VirtualCard extends StatefulWidget {
  const VirtualCard({super.key});

  @override
  State<VirtualCard> createState() => _VirtualCardState();
}

class _VirtualCardState extends State<VirtualCard> {
  bool isBackCard = false;
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
                        child: virtualBackCard(context))
                    : ButtonClickAnimation(
                        onTap: () => setState(() {
                              isBackCard = !isBackCard;
                            }),
                        child: frontVirtualCard(context))),
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
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 225),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      child: const Text(
                        "Vertual daily limits",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
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
                                          children: [
                                            const Text(
                                                "Update permanent limits"),
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Colors.blue,
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
                                            itemIconTitleRow(
                                                Icons.blur_off,
                                                "Stop Card",
                                                Icons.arrow_forward_ios),
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
            ),
          ),
        ],
      ),
    );
  }
}
