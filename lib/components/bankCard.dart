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
import 'package:flutter_svg/svg.dart';
import 'package:knox/consts.dart';
import 'package:knox/models/bank_card.dart';

class BankCardWidget extends StatelessWidget {
  const BankCardWidget({super.key, required this.card, this.expanded = false});
  final BankCard card;
  final bool expanded;

  svgSizeFromCard(cardType) {
    switch (cardType) {
      case CardTypes.visa:
        return expanded ? 20.0 : 10.0;
      case CardTypes.mastercard:
        return expanded ? 30.0 : 15.0;
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

  colorFromCard(cardType) {
    switch (cardType) {
      case CardTypes.visa:
        return kVisaCardColor;
      case CardTypes.mastercard:
        return kMasterCardColor;
      case CardTypes.apple_pay:
        return kAppleColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: expanded ? 230 : 150,
        width: expanded ? double.infinity : 250,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: colorFromCard(card.cardType)),
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    assetFromCard(card.cardType),
                    height: svgSizeFromCard(card.cardType),
                  ),
                  Text(
                    // get the last 4 digits of the card number
                    "**** ${card.cardNumber.substring(card.cardNumber.length - 4)}",
                    style: kSpaceGrotesk.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
              ),
              Row(
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "\$",
                        style: kNeueMachinaInktrap.copyWith(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: expanded ? 30 : 26,
                        )),
                    TextSpan(
                        text: card.balance.toString(),
                        style: kNeueMachinaInktrap.copyWith(
                            color: Colors.black, fontSize: expanded ? 32 : 28))
                  ]))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    card.cardHolderName,
                    style: kSpaceGrotesk.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: expanded ? 20 : 18),
                  ),
                  Text(card.expiryDate,
                      style: kSpaceGrotesk.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: expanded ? 16 : 14))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
