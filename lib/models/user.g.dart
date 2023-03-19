// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      name: json['name'] as String,
      profilePicture: json['profilePicture'] as String,
      cryptoWallets: (json['cryptoWallets'] as List<dynamic>)
          .map((e) => CryptoWallet.fromJson(e as Map<String, dynamic>))
          .toList(),
      bankCards: (json['bankCards'] as List<dynamic>)
          .map((e) => BankCard.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profilePicture': instance.profilePicture,
      'cryptoWallets': instance.cryptoWallets,
      'bankCards': instance.bankCards,
    };
