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
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:knox/components/bankCard.dart';
import 'package:knox/consts.dart';
import 'package:shifting_tabbar/shifting_tabbar.dart';

import 'components/cryptoCard.dart';
import 'models/bank_card.dart';
import 'models/crypto_wallet.dart';

class PaymentMethodSelector extends StatefulWidget {
  const PaymentMethodSelector({super.key});

  @override
  State<PaymentMethodSelector> createState() => _PaymentMethodSelectorState();
}

class _PaymentMethodSelectorState extends State<PaymentMethodSelector>
    with TickerProviderStateMixin {
  late TabController controller;
  final List<BankCard> cards = [
    BankCard(
      balance: 10000,
      cardHolderName: "Lov Grover",
      cardNumber: "1234 5678 9012 3456",
      cardType: CardTypes.mastercard,
      cvvCode: "123",
      expiryDate: "12/23",
    ),
    BankCard(
      balance: 1000,
      cardHolderName: "Grover",
      cardNumber: "1234 5678 3332 2133",
      cardType: CardTypes.visa,
      cvvCode: "233",
      expiryDate: "11/23",
    )
  ];

  final List<CryptoWallet> wallets = [
    CryptoWallet(
        walletName: "BITCOIN",
        walletAddress: "0XFF",
        balance: 10000,
        currency: Cryptocurrencies.bitcoin),
    CryptoWallet(
        walletName: "POLYGON",
        walletAddress: "0XFF",
        balance: 5000,
        currency: Cryptocurrencies.polygon),
  ];

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
            backgroundColor: kGreyColor2,
            leading: IconButton(
              icon: Icon(
                Icons.chevron_left,
                size: 40,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            centerTitle: true,
            title: Text("Payment Method",
                style: kSpaceGrotesk.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600)),
            elevation: 0,
            bottom: TabBar(
                labelStyle: kSpaceGrotesk.copyWith(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
                controller: controller,
                indicatorColor: kGreenColor,
                indicatorWeight: 2,
                tabs: [
                  Tab(
                    icon: Icon(Icons.credit_card_outlined),
                    text: "Credit Card",
                  ),
                  Tab(
                    icon: Icon(Icons.account_balance_wallet_outlined),
                    text: "Crypto Wallet",
                  )
                ])),
        body: TabBarView(
          controller: controller,
          children: [
            Column(
              children: [
                ...cards.map((e) => GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/waiting',
                          arguments: {"card": e, "crypto": null}),
                      child: BankCardWidget(
                        card: e,
                        expanded: true,
                      ),
                    ))
              ],
            ),
            Column(
              children: [
                ...wallets.map((e) => GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/waiting',
                          arguments: {"card": null, "crypto": e}),
                      child: CryptoCardWidget(
                        wallet: e,
                        expanded: true,
                      ),
                    ))
              ],
            )
          ],
        ));
  }
}
