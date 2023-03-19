// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CryptoWallet _$$_CryptoWalletFromJson(Map<String, dynamic> json) =>
    _$_CryptoWallet(
      walletName: json['walletName'] as String,
      walletAddress: json['walletAddress'] as String,
      balance: (json['balance'] as num).toDouble(),
      currency: $enumDecode(_$CryptocurrenciesEnumMap, json['currency']),
    );

Map<String, dynamic> _$$_CryptoWalletToJson(_$_CryptoWallet instance) =>
    <String, dynamic>{
      'walletName': instance.walletName,
      'walletAddress': instance.walletAddress,
      'balance': instance.balance,
      'currency': _$CryptocurrenciesEnumMap[instance.currency]!,
    };

const _$CryptocurrenciesEnumMap = {
  Cryptocurrencies.bitcoin: 'bitcoin',
  Cryptocurrencies.ethereum: 'ethereum',
  Cryptocurrencies.polygon: 'polygon',
};
