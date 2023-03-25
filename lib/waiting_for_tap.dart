// Copyright (C) 2023 Krishaay Jois
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:knox/consts.dart';
import 'package:after_layout/after_layout.dart';
import 'package:knox/models/bank_card.dart';
import 'package:knox/models/crypto_wallet.dart';
import 'package:knox/models/transaction.dart';

class WaitingForTapScreen extends StatefulWidget {
  const WaitingForTapScreen({super.key, required this.paymentMethod});
  final Map<String, dynamic> paymentMethod;

  @override
  State<WaitingForTapScreen> createState() => _WaitingForTapScreenState();
}

enum _PaymentOption { crypto, card }

class _WaitingForTapScreenState extends State<WaitingForTapScreen>
    with TickerProviderStateMixin, AfterLayoutMixin<WaitingForTapScreen> {
  // animation 1
  late AnimationController _controller1;
  late Animation circleAnimation1;
  late Animation strokeAnimation1;

  //animation 2
  late AnimationController _controller2;
  late Animation circleAnimation2;
  late Animation strokeAnimation2;

  //animation 3
  late AnimationController _controller3;
  late Animation circleAnimation3;
  late Animation strokeAnimation3;

  // payment setup
  late _PaymentOption _paymentOption;
  late CryptoWallet? _wallet;
  late BankCard? _card;

  @override
  void initState() {
    // animation 1
    _controller1 = AnimationController(
        vsync: this,
        duration: Duration(seconds: 3),
        lowerBound: 0.0,
        upperBound: 1.0);

    strokeAnimation1 = Tween<double>(begin: 4, end: 0).animate(_controller1);
    _controller1.addListener(() {
      setState(() {});
    });
    // animation 2
    _controller2 = AnimationController(
        vsync: this,
        duration: Duration(
          seconds: 3,
        ),
        lowerBound: 0.0,
        upperBound: 1.0);
    strokeAnimation2 = Tween<double>(begin: 3.5, end: 0).animate(_controller2);

    _controller2.addListener(() {
      setState(() {});
    });
// animation 3
    _controller3 = AnimationController(
        vsync: this,
        duration: Duration(seconds: 3),
        lowerBound: 0.0,
        upperBound: 1.0);
    strokeAnimation3 = Tween<double>(begin: 3, end: 0).animate(_controller3);

    _controller3.addListener(() {
      setState(() {});
    });
    // payment
    final Map<String, dynamic> paymentMethod = widget.paymentMethod;
    if (paymentMethod["crypto"] != null) {
      _wallet = paymentMethod["crypto"];
      _card = null;
      _paymentOption = _PaymentOption.crypto;
    } else {
      _card = paymentMethod["card"];
      _wallet = null;
      _paymentOption = _PaymentOption.card;
    }
    super.initState();
  }

  @override
  void afterFirstLayout(BuildContext context) {
    // Calling the same function "after layout" to resolve the issue.
    Future.delayed(Duration(milliseconds: 1000),
        () => _controller2.repeat(reverse: false));
    Future.delayed(Duration(milliseconds: 2400),
        () => _controller3.repeat(reverse: false));
    _controller1.repeat(reverse: false);
  }

  @override
  void dispose() {
    _controller1.stop();
    _controller2.stop();
    _controller3.stop();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    circleAnimation1 =
        Tween<double>(begin: 300, end: MediaQuery.of(context).size.width)
            .animate(_controller1);
    circleAnimation2 =
        Tween<double>(begin: 300, end: MediaQuery.of(context).size.width)
            .animate(_controller2);
    circleAnimation3 =
        Tween<double>(begin: 300, end: MediaQuery.of(context).size.width)
            .animate(_controller3);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: circleAnimation2.value,
                width: circleAnimation2.value,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10000)),
                  border: Border.all(
                      color: kOrangishYellow,
                      width: _controller2.isAnimating
                          ? strokeAnimation2.value
                          : 0),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: circleAnimation1.value,
                width: circleAnimation1.value,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10000)),
                  border: Border.all(
                      color: kOrangishYellow, width: strokeAnimation1.value),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Waiting For\nTap",
                      style: kSpaceGrotesk.copyWith(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: "Paying using ",
                                style: kSpaceGrotesk.copyWith(fontSize: 20)),
                            TextSpan(
                                text: _paymentOption == _PaymentOption.card
                                    ? "**** " +
                                        _card!.cardNumber.substring(
                                            _card!.cardNumber.length - 4,
                                            _card!.cardNumber.length)
                                    : _wallet!.walletName,
                                style: kSpaceGrotesk.copyWith(
                                    fontSize: 20,
                                    fontWeight: FontWeight
                                        .bold) // replace with crypto or **** 1234 for card
                                )
                          ]),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                final Transaction transaction = new Transaction(
                    id: "0x124",
                    amount: 10.0,
                    to: "Walmart LLC",
                    bankCard: _card,
                    cryptoWallet: _wallet);
                Navigator.pushReplacementNamed(context, "/confirm",
                    arguments: transaction);
              },
              child: Center(
                child: SvgPicture.asset(
                  "assets/icons/logo.svg",
                  color: kPinkColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

svgSizeFromCard(cardType) {
  switch (cardType) {
    case CardTypes.visa:
      return 20.0;
    case CardTypes.mastercard:
      return 30.0;
    case CardTypes.apple_pay:
      return 60.0;
  }
}

assetFromCard(cardType) {
  switch (cardType) {
    case CardTypes.visa:
      return "assets/icons/visa.svg";
    case CardTypes.mastercard:
      return "assets/icons/mastercard.svg";
    case CardTypes.apple_pay:
      return 'assets/icons/apple.svg';
  }
}
