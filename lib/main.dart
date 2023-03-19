import 'package:flutter/material.dart';
import 'package:knox/payment_method.dart';
import 'package:knox/waiting_for_tap.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/method',
    routes: {
      '/': (context) => HomeScreen(),
      '/method': (context) => PaymentMethodSelector(),
      '/waiting': (context) => WaitingForTapScreen(
          paymentMethod: ModalRoute.of(context)!
              .settings
              .arguments) // use arguments passed from previous screen
      // '/confirm':(context) => ,
      // '/result':(context) =>
    },
  ));
}
