// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  String get id => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  CryptoWallet? get cryptoWallet => throw _privateConstructorUsedError;
  BankCard? get bankCard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {String id,
      double amount,
      String to,
      CryptoWallet? cryptoWallet,
      BankCard? bankCard});

  $CryptoWalletCopyWith<$Res>? get cryptoWallet;
  $BankCardCopyWith<$Res>? get bankCard;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? to = null,
    Object? cryptoWallet = freezed,
    Object? bankCard = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoWallet: freezed == cryptoWallet
          ? _value.cryptoWallet
          : cryptoWallet // ignore: cast_nullable_to_non_nullable
              as CryptoWallet?,
      bankCard: freezed == bankCard
          ? _value.bankCard
          : bankCard // ignore: cast_nullable_to_non_nullable
              as BankCard?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CryptoWalletCopyWith<$Res>? get cryptoWallet {
    if (_value.cryptoWallet == null) {
      return null;
    }

    return $CryptoWalletCopyWith<$Res>(_value.cryptoWallet!, (value) {
      return _then(_value.copyWith(cryptoWallet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BankCardCopyWith<$Res>? get bankCard {
    if (_value.bankCard == null) {
      return null;
    }

    return $BankCardCopyWith<$Res>(_value.bankCard!, (value) {
      return _then(_value.copyWith(bankCard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double amount,
      String to,
      CryptoWallet? cryptoWallet,
      BankCard? bankCard});

  @override
  $CryptoWalletCopyWith<$Res>? get cryptoWallet;
  @override
  $BankCardCopyWith<$Res>? get bankCard;
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$_Transaction>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? to = null,
    Object? cryptoWallet = freezed,
    Object? bankCard = freezed,
  }) {
    return _then(_$_Transaction(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoWallet: freezed == cryptoWallet
          ? _value.cryptoWallet
          : cryptoWallet // ignore: cast_nullable_to_non_nullable
              as CryptoWallet?,
      bankCard: freezed == bankCard
          ? _value.bankCard
          : bankCard // ignore: cast_nullable_to_non_nullable
              as BankCard?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction with DiagnosticableTreeMixin implements _Transaction {
  _$_Transaction(
      {required this.id,
      required this.amount,
      required this.to,
      required this.cryptoWallet,
      required this.bankCard});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  final String id;
  @override
  final double amount;
  @override
  final String to;
  @override
  final CryptoWallet? cryptoWallet;
  @override
  final BankCard? bankCard;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Transaction(id: $id, amount: $amount, to: $to, cryptoWallet: $cryptoWallet, bankCard: $bankCard)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Transaction'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('to', to))
      ..add(DiagnosticsProperty('cryptoWallet', cryptoWallet))
      ..add(DiagnosticsProperty('bankCard', bankCard));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.cryptoWallet, cryptoWallet) ||
                other.cryptoWallet == cryptoWallet) &&
            (identical(other.bankCard, bankCard) ||
                other.bankCard == bankCard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, to, cryptoWallet, bankCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  factory _Transaction(
      {required final String id,
      required final double amount,
      required final String to,
      required final CryptoWallet? cryptoWallet,
      required final BankCard? bankCard}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  String get id;
  @override
  double get amount;
  @override
  String get to;
  @override
  CryptoWallet? get cryptoWallet;
  @override
  BankCard? get bankCard;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
