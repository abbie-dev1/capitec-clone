import 'package:flutter/material.dart';

class TransactItem {
  IconData startIcon;
  String transactName;
  IconData endIcon;
  bool skip;

  TransactItem(
      {required this.startIcon,
      required this.transactName,
      required this.endIcon,
      required this.skip});
}
