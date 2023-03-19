// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CryptoWallet _$CryptoWalletFromJson(Map<String, dynamic> json) {
  return _CryptoWallet.fromJson(json);
}

/// @nodoc
mixin _$CryptoWallet {
  String get walletName => throw _privateConstructorUsedError;
  String get walletAddress => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  Cryptocurrencies get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoWalletCopyWith<CryptoWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoWalletCopyWith<$Res> {
  factory $CryptoWalletCopyWith(
          CryptoWallet value, $Res Function(CryptoWallet) then) =
      _$CryptoWalletCopyWithImpl<$Res, CryptoWallet>;
  @useResult
  $Res call(
      {String walletName,
      String walletAddress,
      double balance,
      Cryptocurrencies currency});
}

/// @nodoc
class _$CryptoWalletCopyWithImpl<$Res, $Val extends CryptoWallet>
    implements $CryptoWalletCopyWith<$Res> {
  _$CryptoWalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletName = null,
    Object? walletAddress = null,
    Object? balance = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      walletName: null == walletName
          ? _value.walletName
          : walletName // ignore: cast_nullable_to_non_nullable
              as String,
      walletAddress: null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Cryptocurrencies,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CryptoWalletCopyWith<$Res>
    implements $CryptoWalletCopyWith<$Res> {
  factory _$$_CryptoWalletCopyWith(
          _$_CryptoWallet value, $Res Function(_$_CryptoWallet) then) =
      __$$_CryptoWalletCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String walletName,
      String walletAddress,
      double balance,
      Cryptocurrencies currency});
}

/// @nodoc
class __$$_CryptoWalletCopyWithImpl<$Res>
    extends _$CryptoWalletCopyWithImpl<$Res, _$_CryptoWallet>
    implements _$$_CryptoWalletCopyWith<$Res> {
  __$$_CryptoWalletCopyWithImpl(
      _$_CryptoWallet _value, $Res Function(_$_CryptoWallet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletName = null,
    Object? walletAddress = null,
    Object? balance = null,
    Object? currency = null,
  }) {
    return _then(_$_CryptoWallet(
      walletName: null == walletName
          ? _value.walletName
          : walletName // ignore: cast_nullable_to_non_nullable
              as String,
      walletAddress: null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Cryptocurrencies,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CryptoWallet with DiagnosticableTreeMixin implements _CryptoWallet {
  _$_CryptoWallet(
      {required this.walletName,
      required this.walletAddress,
      required this.balance,
      required this.currency});

  factory _$_CryptoWallet.fromJson(Map<String, dynamic> json) =>
      _$$_CryptoWalletFromJson(json);

  @override
  final String walletName;
  @override
  final String walletAddress;
  @override
  final double balance;
  @override
  final Cryptocurrencies currency;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CryptoWallet(walletName: $walletName, walletAddress: $walletAddress, balance: $balance, currency: $currency)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CryptoWallet'))
      ..add(DiagnosticsProperty('walletName', walletName))
      ..add(DiagnosticsProperty('walletAddress', walletAddress))
      ..add(DiagnosticsProperty('balance', balance))
      ..add(DiagnosticsProperty('currency', currency));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptoWallet &&
            (identical(other.walletName, walletName) ||
                other.walletName == walletName) &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, walletName, walletAddress, balance, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CryptoWalletCopyWith<_$_CryptoWallet> get copyWith =>
      __$$_CryptoWalletCopyWithImpl<_$_CryptoWallet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptoWalletToJson(
      this,
    );
  }
}

abstract class _CryptoWallet implements CryptoWallet {
  factory _CryptoWallet(
      {required final String walletName,
      required final String walletAddress,
      required final double balance,
      required final Cryptocurrencies currency}) = _$_CryptoWallet;

  factory _CryptoWallet.fromJson(Map<String, dynamic> json) =
      _$_CryptoWallet.fromJson;

  @override
  String get walletName;
  @override
  String get walletAddress;
  @override
  double get balance;
  @override
  Cryptocurrencies get currency;
  @override
  @JsonKey(ignore: true)
  _$$_CryptoWalletCopyWith<_$_CryptoWallet> get copyWith =>
      throw _privateConstructorUsedError;
}
