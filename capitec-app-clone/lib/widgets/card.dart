import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget frontCard(context) => Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width / 1.4,
        child: Column(children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          "GlobalOne",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.brown),
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child:
                          Center(child: Image.asset('assets/images/chip.png')),
                    ),
                  ),
                  const Expanded(
                      flex: 1,
                      child: Icon(
                        FontAwesomeIcons.wifi,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Image.asset('assets/images/capitec_logo.png'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "CAPITEC",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 40, right: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "MR DV LETJANE",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "1456678585",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Savings Account Number",
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                      child: Center(
                          child: Text(
                    "debit",
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ))),
                  Expanded(
                    child: Center(
                      child: Icon(FontAwesomeIcons.ccMastercard,
                          color: Colors.white, size: 40),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );

Widget frontVirtualCard(context) => Card(
      color: Colors.blueGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width / 1.4,
        child: Column(children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Expanded(
                      flex: 2,
                      child: Text(
                        "GlobalOne",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Image.asset('assets/images/capitec_logo.png'),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "CAPITEC",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 40, right: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "MR DV LETJANE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "1456678585",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Savings Account Number",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                      child: Center(
                          child: Text(
                    "virtual",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ))),
                  Expanded(
                    child: Center(
                      child: Icon(FontAwesomeIcons.ccMastercard,
                          color: Colors.white, size: 40),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );

Widget backCard(context) => Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 30,
            color: Colors.blueGrey,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      color: Colors.brown,
                      child: Container(
                          padding: const EdgeInsets.only(
                              top: 6, right: 20, left: 20, bottom: 5),
                          child: const Text("***",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        "SECURITY CODE",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 5),
                      child: const Text(
                        "5284 **** **** 6862",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 5),
                      child: const Text(
                        "07/29",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 5),
                      child: const Text(
                        "VALID THRU",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Icon(FontAwesomeIcons.ccMastercard,
                      color: Colors.white, size: 40),
                ),
              ],
            ),
          )
        ]),
      ),
    );

Widget virtualBackCard(context) => Card(
      color: Colors.blueGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 30,
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      color: Colors.brown,
                      child: Container(
                          padding: const EdgeInsets.only(
                              top: 6, right: 20, left: 20, bottom: 5),
                          child: const Text("***",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        "SECURITY CODE",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 5),
                      child: const Text(
                        "5284 **** **** 6862",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 5),
                      child: const Text(
                        "07/29",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 5),
                      child: const Text(
                        "VALID THRU",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Icon(FontAwesomeIcons.ccMastercard,
                      color: Colors.white, size: 40),
                ),
              ],
            ),
          )
        ]),
      ),
    );
