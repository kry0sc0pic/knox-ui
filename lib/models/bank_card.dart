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

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_card.freezed.dart';
part 'bank_card.g.dart';

enum CardTypes {
  @JsonValue('mastercard')
  mastercard,
  @JsonValue('visa')
  visa,
  @JsonValue('apple_pay')
  apple_pay,
}

@freezed
class BankCard with _$BankCard {
  factory BankCard({
    required String cardNumber,
    required String cardHolderName,
    required String expiryDate,
    required String cvvCode,
    required double balance,
    required CardTypes cardType,
  }) = _BankCard;

  factory BankCard.fromJson(Map<String, dynamic> json) =>
      _$BankCardFromJson(json);
}
