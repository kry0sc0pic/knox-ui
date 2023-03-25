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

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:knox/consts.dart';
import 'package:knox/models/bank_card.dart';
import 'package:knox/models/crypto_wallet.dart';
import 'package:mrx_charts/mrx_charts.dart';

import 'components/balanceFilterChip.dart';
import 'components/bankCard.dart';
import 'components/cryptoCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ChartLayer> layers = [];
  Filters filter = Filters.all;

  @override
  Widget build(BuildContext context) {
    print("Filter -> $filter");
    layers = [
      ChartGroupPieLayer(
        items: [
          [
            if ([Filters.all, Filters.crypto].contains(filter))
              ChartGroupPieDataItem(
                  amount: 10000, color: kCryptoColor, label: "Crypto"),
            if ([Filters.all, Filters.bank].contains(filter))
              ChartGroupPieDataItem(
                amount: 10000,
                color: kBankColor,
                label: "Bank",
              ),
          ]
        ],
        settings: const ChartGroupPieSettings(
            radius: 30.0, thickness: 3, gapSweepAngle: 5.0),
      ),
    ];
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.shortestSide * 0.8,
                        width: MediaQuery.of(context).size.shortestSide * 0.8,
                        child: Chart(
                          layers: layers,
                          duration: Duration(milliseconds: 500),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.shortestSide * 0.8,
                        width: MediaQuery.of(context).size.shortestSide * 0.8,
                        child: Center(
                          child: Text.rich(TextSpan(
                            children: [
                              TextSpan(
                                  text: "\$",
                                  style: kNeueMachinaInktrap.copyWith(
                                      fontSize: 32,
                                      color: Colors.white.withOpacity(0.7))),
                              TextSpan(
                                  text: "20,000",
                                  style: kNeueMachinaInktrap.copyWith(
                                    fontSize: 36,
                                  )),
                            ],
                          )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BalanceFilterChip(
                        active: [Filters.all, Filters.bank].contains(filter),
                        color: kBankColor,
                        onTap: () {
                          if (filter != Filters.bank) {
                            setState(() {
                              filter = Filters.bank;
                            });
                          } else {
                            setState(() {
                              filter = Filters.all;
                            });
                          }
                        },
                        text: "Bank",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      BalanceFilterChip(
                        active: [Filters.all, Filters.crypto].contains(filter),
                        color: kCryptoColor,
                        onTap: () {
                          if (filter != Filters.crypto) {
                            setState(() {
                              filter = Filters.crypto;
                            });
                          } else {
                            setState(() {
                              filter = Filters.all;
                            });
                          }
                        },
                        text: "Crypto",
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/method");
                },
                child: SizedBox(
                  height: 60,
                  child: Container(
                    decoration: BoxDecoration(
                        color: kGreyColor2,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: Text(
                        "Tap To Pay",
                        style: kSpaceGrotesk.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Credit Cards",
                    style: kSpaceGrotesk.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: [Filters.all, Filters.bank].contains(filter)
                          ? Colors.white
                          : kFilterDisabledColor,
                    ),
                  ),
                ],
              ),
              if ([Filters.all, Filters.bank].contains(filter))
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    BankCardWidget(
                        card: BankCard(
                      balance: 10000,
                      cardHolderName: "Lov Grover",
                      cardNumber: "1234 5678 9012 3456",
                      cardType: CardTypes.mastercard,
                      cvvCode: "123",
                      expiryDate: "12/23",
                    )),
                    BankCardWidget(
                        card: BankCard(
                      balance: 1000,
                      cardHolderName: "Grover",
                      cardNumber: "1234 5678 3332 2133",
                      cardType: CardTypes.visa,
                      cvvCode: "233",
                      expiryDate: "11/23",
                    )),
                    // BankCardWidget()
                  ]),
                ),
              Row(
                children: [
                  Text(
                    "Cryptocurrency",
                    style: kSpaceGrotesk.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: [Filters.all, Filters.crypto].contains(filter)
                            ? Colors.white
                            : kFilterDisabledColor),
                  ),
                ],
              ),
              if ([Filters.all, Filters.crypto].contains(filter))
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    CryptoCardWidget(
                        wallet: CryptoWallet(
                            walletName: "BITCOIN",
                            walletAddress: "0XFF",
                            balance: 10000,
                            currency: Cryptocurrencies.bitcoin)),
                    CryptoCardWidget(
                      wallet: CryptoWallet(
                          walletName: "POLYGON",
                          walletAddress: "0XFF",
                          balance: 5000,
                          currency: Cryptocurrencies.polygon),
                    ),
                    // CryptoCardWidget()
                  ]),
                )
            ],
          ),
        ),
      )),
    );
  }
}
