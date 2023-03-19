// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      id: json['id'] as String,
      amount: (json['amount'] as num).toDouble(),
      to: json['to'] as String,
      cryptoWallet: json['cryptoWallet'] == null
          ? null
          : CryptoWallet.fromJson(json['cryptoWallet'] as Map<String, dynamic>),
      bankCard: json['bankCard'] == null
          ? null
          : BankCard.fromJson(json['bankCard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'to': instance.to,
      'cryptoWallet': instance.cryptoWallet,
      'bankCard': instance.bankCard,
    };
