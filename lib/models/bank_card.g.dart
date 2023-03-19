// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankCard _$$_BankCardFromJson(Map<String, dynamic> json) => _$_BankCard(
      cardNumber: json['cardNumber'] as String,
      cardHolderName: json['cardHolderName'] as String,
      expiryDate: json['expiryDate'] as String,
      cvvCode: json['cvvCode'] as String,
      balance: (json['balance'] as num).toDouble(),
      cardType: $enumDecode(_$CardTypesEnumMap, json['cardType']),
    );

Map<String, dynamic> _$$_BankCardToJson(_$_BankCard instance) =>
    <String, dynamic>{
      'cardNumber': instance.cardNumber,
      'cardHolderName': instance.cardHolderName,
      'expiryDate': instance.expiryDate,
      'cvvCode': instance.cvvCode,
      'balance': instance.balance,
      'cardType': _$CardTypesEnumMap[instance.cardType]!,
    };

const _$CardTypesEnumMap = {
  CardTypes.mastercard: 'mastercard',
  CardTypes.visa: 'visa',
  CardTypes.apple_pay: 'apple_pay',
};
