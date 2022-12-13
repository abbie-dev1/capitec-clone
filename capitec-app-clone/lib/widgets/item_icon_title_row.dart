import 'package:flutter/material.dart';

Widget itemIconTitleRow(IconData startIcon, String title, IconData endIcon) =>
    Container(
      margin: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Icon(
              startIcon,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Text(title),
            ),
          ]),
          Icon(
            endIcon,
          )
        ],
      ),
    );
