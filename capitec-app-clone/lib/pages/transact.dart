import 'package:capitect_app_clone/util/button_animation.dart';
import 'package:flutter/material.dart';

import '../dummy/dummy_data.dart';

class Transact extends StatefulWidget {
  const Transact({super.key});

  @override
  State<Transact> createState() => _TransactState();
}

class _TransactState extends State<Transact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Transact"),
        ),
        body: ListView.builder(
            itemCount: Data.transactItems.length,
            itemBuilder: ((context, index) {
              return ButtonClickAnimation(
                onTap: () {},
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(
                            Data.transactItems[index].startIcon,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: Text(
                              Data.transactItems[index].transactName,
                            ),
                          ),
                        ]),
                        Icon(
                          Data.transactItems[index].endIcon,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ),
              );
            })));
  }
}
