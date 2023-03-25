import 'package:flutter/material.dart';
import 'package:knox/confirmation.dart';
import 'package:knox/models/transaction.dart';
import 'package:knox/payment_method.dart';
import 'package:knox/waiting_for_tap.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/method': (context) => PaymentMethodSelector(),
      '/waiting': (context) => WaitingForTapScreen(
          paymentMethod: ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>),
      '/confirm': (context) => TransactionConfirmation(
          transaction:
              ModalRoute.of(context)!.settings.arguments as Transaction),
      // '/result':(context) =>
    },
  ));
}
