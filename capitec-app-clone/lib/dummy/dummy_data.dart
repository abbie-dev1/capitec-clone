import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/account_item.dart';
import '../models/card_items.dart';
import '../models/transact_item.dart';

class Data {
  //
  static List<CardItem> items = [
    CardItem(icon: Icons.sell, itemName: "Buy Prepaid Mobile"),
    CardItem(icon: Icons.payment, itemName: "Pay Beneficiary"),
    CardItem(icon: Icons.transfer_within_a_station, itemName: "Transfer Money"),
    CardItem(icon: Icons.send, itemName: "Send Cash"),
    CardItem(icon: Icons.qr_code, itemName: "Scan To Pay"),
    CardItem(icon: Icons.money, itemName: "Pay Me"),
  ];

  static List<AccountItem> accountItems = [
    AccountItem(
        icon: FontAwesomeIcons.arrowRightArrowLeft,
        leadingBoxColor: Colors.blue,
        accountName: "Savings Account",
        accountNameColor: Colors.blue,
        subTittle: "Available balance",
        balance: "R14 564.98"),
    AccountItem(
        icon: FontAwesomeIcons.chartSimple,
        leadingBoxColor: Colors.blueAccent,
        accountName: "3 Savings Plans",
        accountNameColor: Colors.blueGrey,
        subTittle: "Total Saved",
        balance: "R67 564.98"),
    AccountItem(
        icon: Icons.extension,
        leadingBoxColor: Colors.pinkAccent,
        accountName: "Live Better",
        accountNameColor: Colors.pinkAccent,
        subTittle: "Available balance",
        balance: "R2 564.98")
  ];

  static List<TransactItem> transactItems = [
    TransactItem(
      startIcon: FontAwesomeIcons.person,
      transactName: "Pay beneficiary",
      endIcon: Icons.arrow_forward_ios,
      skip: false,
    ),
    TransactItem(
      startIcon: FontAwesomeIcons.receipt,
      transactName: "Pay bills",
      endIcon: Icons.arrow_forward_ios,
      skip: false,
    ),
    TransactItem(
      startIcon: FontAwesomeIcons.bagShopping,
      transactName: "Buy prepaid mobile",
      endIcon: Icons.arrow_forward_ios,
      skip: true,
    ),
    TransactItem(
      startIcon: FontAwesomeIcons.lightbulb,
      transactName: "Buy electricity",
      endIcon: Icons.arrow_forward_ios,
      skip: false,
    ),
    TransactItem(
      startIcon: FontAwesomeIcons.borderAll,
      transactName: "Pay lotto",
      endIcon: Icons.arrow_forward_ios,
      skip: false,
    ),
    TransactItem(
      startIcon: FontAwesomeIcons.receipt,
      transactName: "Buy vouchers",
      endIcon: Icons.arrow_forward_ios,
      skip: false,
    ),
    TransactItem(
      startIcon: FontAwesomeIcons.cashRegister,
      transactName: "Transfer money",
      endIcon: Icons.arrow_forward_ios,
      skip: true,
    ),
    TransactItem(
      startIcon: FontAwesomeIcons.calendarCheck,
      transactName: "Recurring/future-date",
      endIcon: Icons.arrow_forward_ios,
      skip: false,
    ),
    TransactItem(
      startIcon: FontAwesomeIcons.moneyBillTransfer,
      transactName: "Send cash",
      endIcon: Icons.arrow_forward_ios,
      skip: false,
    ),
    TransactItem(
      startIcon: FontAwesomeIcons.barcode,
      transactName: "Scan to pay",
      endIcon: Icons.arrow_forward_ios,
      skip: true,
    ),
    TransactItem(
      startIcon: FontAwesomeIcons.barcode,
      transactName: "Pay me",
      endIcon: Icons.arrow_forward_ios,
      skip: false,
    ),
    TransactItem(
      startIcon: FontAwesomeIcons.cartShopping,
      transactName: "Capitec Pay",
      endIcon: Icons.arrow_forward_ios,
      skip: false,
    ),
    TransactItem(
      startIcon: FontAwesomeIcons.calendar,
      transactName: "Debit orders",
      endIcon: Icons.arrow_forward_ios,
      skip: true,
    ),
    TransactItem(
      startIcon: FontAwesomeIcons.earListen,
      transactName: "SARS eFilling",
      endIcon: Icons.arrow_forward_ios,
      skip: false,
    ),
  ];
}
