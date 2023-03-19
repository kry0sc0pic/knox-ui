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

part 'crypto_wallet.freezed.dart';
part 'crypto_wallet.g.dart';

enum Cryptocurrencies {
  @JsonValue('bitcoin')
  bitcoin,
  @JsonValue('ethereum')
  ethereum,
  @JsonValue('polygon')
  polygon,
}

@freezed
class CryptoWallet with _$CryptoWallet {
  factory CryptoWallet({
    required String walletName,
    required String walletAddress,
    required double balance,
    required Cryptocurrencies currency,
  }) = _CryptoWallet;

  factory CryptoWallet.fromJson(Map<String, dynamic> json) =>
      _$CryptoWalletFromJson(json);
}
