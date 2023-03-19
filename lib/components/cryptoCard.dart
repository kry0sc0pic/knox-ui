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
import 'package:knox/models/crypto_wallet.dart';

class CryptoCardWidget extends StatelessWidget {
  const CryptoCardWidget(
      {super.key, required this.wallet, this.expanded = false});
  final CryptoWallet wallet;
  final bool expanded;

  assetFromCurrency(currency) {
    switch (currency) {
      case Cryptocurrencies.bitcoin:
        return "assets/icons/bitcoin.svg";
      case Cryptocurrencies.ethereum:
        return "assets/icons/ethereum.png";
      case Cryptocurrencies.polygon:
        return "assets/icons/matic.svg";
    }
  }

  colorFromCurrency(currency) {
    switch (currency) {
      case Cryptocurrencies.bitcoin:
        return kBitcoinColor;
      case Cryptocurrencies.ethereum:
        return kEthereumColor;
      case Cryptocurrencies.polygon:
        return kPolygonColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (expanded)
      return Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          height: 100,
          child: Container(
            decoration: BoxDecoration(
              color: colorFromCurrency(wallet.currency),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      wallet.walletName,
                      style: kNeueMachinaPlain.copyWith(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                    wallet.currency == Cryptocurrencies.ethereum
                        ? Image.asset(assetFromCurrency(wallet.currency))
                        : SvgPicture.asset(assetFromCurrency(wallet.currency)),
                  ],
                ),
                Row(
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: "\$",
                          style: kNeueMachinaInktrap.copyWith(
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 30,
                          )),
                      TextSpan(
                          text: wallet.balance.toString(),
                          style: kNeueMachinaInktrap.copyWith(
                              color: Colors.black, fontSize: 32))
                    ]))
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 150,
        height: 135,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: colorFromCurrency(wallet.currency)),
          padding: EdgeInsets.all(5.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: wallet.currency == Cryptocurrencies.ethereum
                        ? Image.asset(
                            assetFromCurrency(wallet.currency),
                            height: 40,
                          )
                        : SvgPicture.asset(
                            assetFromCurrency(wallet.currency),
                            height: 50,
                          ),
                  ),
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "\$",
                      style: kNeueMachinaInktrap.copyWith(
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 20,
                      )),
                  TextSpan(
                      text: wallet.balance.toString(),
                      style: kNeueMachinaInktrap.copyWith(
                          color: Colors.black, fontSize: 24))
                ]))
              ]),
        ),
      ),
    );
  }
}
