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

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:knox/components/bankCard.dart';
import 'package:knox/components/cryptoCard.dart';
import 'package:knox/consts.dart';
import 'package:knox/models/transaction.dart';
import 'package:local_auth/local_auth.dart';

class TransactionConfirmation extends StatefulWidget {
  const TransactionConfirmation({super.key, required this.transaction});
  final Transaction transaction;

  @override
  State<TransactionConfirmation> createState() =>
      _TransactionConfirmationState();
}

class _TransactionConfirmationState extends State<TransactionConfirmation>
    with AfterLayoutMixin<TransactionConfirmation> {
  late Widget paymentMethodWidget;
  final LocalAuthentication auth = LocalAuthentication();
  bool authed = false;
  @override
  void initState() {
    super.initState();
    if (widget.transaction.bankCard == null) {
      paymentMethodWidget = CryptoCardWidget(
        wallet: widget.transaction.cryptoWallet!,
        expanded: true,
      );
    } else {
      paymentMethodWidget = BankCardWidget(card: widget.transaction.bankCard!);
    }
  }

  @override
  void afterFirstLayout(BuildContext context) async {
    List<BiometricType> bios = await auth.getAvailableBiometrics();
    if (bios.isEmpty) {
      print("No Bios Available");
    } else {
      final bool _auth = await auth.authenticate(
          localizedReason: "Confirm Transaction",
          options: AuthenticationOptions(
              biometricOnly: false,
              stickyAuth: true,
              sensitiveTransaction: true));
      setState(() {
        authed = _auth;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (authed) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  backgroundColor: kBackgroundColor,
                  title: Text(
                    "Transaction Successful",
                    style: kSpaceGrotesk.copyWith(
                        color: kSuccessColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 24),
                  ),
                  content: Icon(
                    Icons.check_circle,
                    color: kSuccessColor,
                    size: 100,
                  ),
                )).then((_) {
          Navigator.pushReplacementNamed(context, "/");
        });
      });
    }
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "Paying ",
                            style: kSpaceGrotesk.copyWith(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 24),
                          ),
                          TextSpan(
                              text: widget.transaction.to,
                              style: kSpaceGrotesk.copyWith(
                                  fontWeight: FontWeight.w900, fontSize: 24))
                        ])),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "\$",
                            style: kNeueMachinaInktrap.copyWith(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 40),
                          ),
                          TextSpan(
                            text: widget.transaction.amount.toString(),
                            style: kNeueMachinaInktrap.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 40),
                          ),
                        ]))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "USING",
                          style: kSpaceGrotesk.copyWith(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    paymentMethodWidget,
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("CONFIRM",
                            style: kSpaceGrotesk.copyWith(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: const CircularProgressIndicator(
                        color: kOrangishYellow,
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(kPinkColor),
                      ),
                    )
                  ],
                ),
                // SizedBox.expand(),
                SizedBox(
                  height: 45,
                  width: 140,
                  child: Container(
                    decoration: BoxDecoration(
                        color: kCancelledColor,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: Text(
                      "Cancel",
                      style: kSpaceGrotesk.copyWith(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
