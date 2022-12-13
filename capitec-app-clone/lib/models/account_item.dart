import 'package:flutter/cupertino.dart';

class AccountItem {
  String accountName;
  String subTittle;
  String balance;
  IconData icon;
  Color leadingBoxColor;
  Color accountNameColor;
  AccountItem({
    required this.leadingBoxColor,
    required this.icon,
    required this.accountName,
    required this.accountNameColor,
    required this.subTittle,
    required this.balance,
  });
}
