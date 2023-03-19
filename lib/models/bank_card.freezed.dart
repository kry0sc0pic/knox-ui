// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankCard _$BankCardFromJson(Map<String, dynamic> json) {
  return _BankCard.fromJson(json);
}

/// @nodoc
mixin _$BankCard {
  String get cardNumber => throw _privateConstructorUsedError;
  String get cardHolderName => throw _privateConstructorUsedError;
  String get expiryDate => throw _privateConstructorUsedError;
  String get cvvCode => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  CardTypes get cardType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankCardCopyWith<BankCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankCardCopyWith<$Res> {
  factory $BankCardCopyWith(BankCard value, $Res Function(BankCard) then) =
      _$BankCardCopyWithImpl<$Res, BankCard>;
  @useResult
  $Res call(
      {String cardNumber,
      String cardHolderName,
      String expiryDate,
      String cvvCode,
      double balance,
      CardTypes cardType});
}

/// @nodoc
class _$BankCardCopyWithImpl<$Res, $Val extends BankCard>
    implements $BankCardCopyWith<$Res> {
  _$BankCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? cardHolderName = null,
    Object? expiryDate = null,
    Object? cvvCode = null,
    Object? balance = null,
    Object? cardType = null,
  }) {
    return _then(_value.copyWith(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cvvCode: null == cvvCode
          ? _value.cvvCode
          : cvvCode // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardTypes,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BankCardCopyWith<$Res> implements $BankCardCopyWith<$Res> {
  factory _$$_BankCardCopyWith(
          _$_BankCard value, $Res Function(_$_BankCard) then) =
      __$$_BankCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cardNumber,
      String cardHolderName,
      String expiryDate,
      String cvvCode,
      double balance,
      CardTypes cardType});
}

/// @nodoc
class __$$_BankCardCopyWithImpl<$Res>
    extends _$BankCardCopyWithImpl<$Res, _$_BankCard>
    implements _$$_BankCardCopyWith<$Res> {
  __$$_BankCardCopyWithImpl(
      _$_BankCard _value, $Res Function(_$_BankCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? cardHolderName = null,
    Object? expiryDate = null,
    Object? cvvCode = null,
    Object? balance = null,
    Object? cardType = null,
  }) {
    return _then(_$_BankCard(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cvvCode: null == cvvCode
          ? _value.cvvCode
          : cvvCode // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardTypes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankCard with DiagnosticableTreeMixin implements _BankCard {
  _$_BankCard(
      {required this.cardNumber,
      required this.cardHolderName,
      required this.expiryDate,
      required this.cvvCode,
      required this.balance,
      required this.cardType});

  factory _$_BankCard.fromJson(Map<String, dynamic> json) =>
      _$$_BankCardFromJson(json);

  @override
  final String cardNumber;
  @override
  final String cardHolderName;
  @override
  final String expiryDate;
  @override
  final String cvvCode;
  @override
  final double balance;
  @override
  final CardTypes cardType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BankCard(cardNumber: $cardNumber, cardHolderName: $cardHolderName, expiryDate: $expiryDate, cvvCode: $cvvCode, balance: $balance, cardType: $cardType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BankCard'))
      ..add(DiagnosticsProperty('cardNumber', cardNumber))
      ..add(DiagnosticsProperty('cardHolderName', cardHolderName))
      ..add(DiagnosticsProperty('expiryDate', expiryDate))
      ..add(DiagnosticsProperty('cvvCode', cvvCode))
      ..add(DiagnosticsProperty('balance', balance))
      ..add(DiagnosticsProperty('cardType', cardType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankCard &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardHolderName, cardHolderName) ||
                other.cardHolderName == cardHolderName) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.cvvCode, cvvCode) || other.cvvCode == cvvCode) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardNumber, cardHolderName,
      expiryDate, cvvCode, balance, cardType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BankCardCopyWith<_$_BankCard> get copyWith =>
      __$$_BankCardCopyWithImpl<_$_BankCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankCardToJson(
      this,
    );
  }
}

abstract class _BankCard implements BankCard {
  factory _BankCard(
      {required final String cardNumber,
      required final String cardHolderName,
      required final String expiryDate,
      required final String cvvCode,
      required final double balance,
      required final CardTypes cardType}) = _$_BankCard;

  factory _BankCard.fromJson(Map<String, dynamic> json) = _$_BankCard.fromJson;

  @override
  String get cardNumber;
  @override
  String get cardHolderName;
  @override
  String get expiryDate;
  @override
  String get cvvCode;
  @override
  double get balance;
  @override
  CardTypes get cardType;
  @override
  @JsonKey(ignore: true)
  _$$_BankCardCopyWith<_$_BankCard> get copyWith =>
      throw _privateConstructorUsedError;
}
