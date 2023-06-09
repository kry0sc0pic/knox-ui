// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;
  List<CryptoWallet> get cryptoWallets => throw _privateConstructorUsedError;
  List<BankCard> get bankCards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String name,
      String profilePicture,
      List<CryptoWallet> cryptoWallets,
      List<BankCard> bankCards});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profilePicture = null,
    Object? cryptoWallets = null,
    Object? bankCards = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoWallets: null == cryptoWallets
          ? _value.cryptoWallets
          : cryptoWallets // ignore: cast_nullable_to_non_nullable
              as List<CryptoWallet>,
      bankCards: null == bankCards
          ? _value.bankCards
          : bankCards // ignore: cast_nullable_to_non_nullable
              as List<BankCard>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String profilePicture,
      List<CryptoWallet> cryptoWallets,
      List<BankCard> bankCards});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? profilePicture = null,
    Object? cryptoWallets = null,
    Object? bankCards = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoWallets: null == cryptoWallets
          ? _value._cryptoWallets
          : cryptoWallets // ignore: cast_nullable_to_non_nullable
              as List<CryptoWallet>,
      bankCards: null == bankCards
          ? _value._bankCards
          : bankCards // ignore: cast_nullable_to_non_nullable
              as List<BankCard>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User with DiagnosticableTreeMixin implements _User {
  _$_User(
      {required this.id,
      required this.name,
      required this.profilePicture,
      required final List<CryptoWallet> cryptoWallets,
      required final List<BankCard> bankCards})
      : _cryptoWallets = cryptoWallets,
        _bankCards = bankCards;

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String profilePicture;
  final List<CryptoWallet> _cryptoWallets;
  @override
  List<CryptoWallet> get cryptoWallets {
    if (_cryptoWallets is EqualUnmodifiableListView) return _cryptoWallets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cryptoWallets);
  }

  final List<BankCard> _bankCards;
  @override
  List<BankCard> get bankCards {
    if (_bankCards is EqualUnmodifiableListView) return _bankCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bankCards);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, name: $name, profilePicture: $profilePicture, cryptoWallets: $cryptoWallets, bankCards: $bankCards)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('profilePicture', profilePicture))
      ..add(DiagnosticsProperty('cryptoWallets', cryptoWallets))
      ..add(DiagnosticsProperty('bankCards', bankCards));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            const DeepCollectionEquality()
                .equals(other._cryptoWallets, _cryptoWallets) &&
            const DeepCollectionEquality()
                .equals(other._bankCards, _bankCards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      profilePicture,
      const DeepCollectionEquality().hash(_cryptoWallets),
      const DeepCollectionEquality().hash(_bankCards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {required final String id,
      required final String name,
      required final String profilePicture,
      required final List<CryptoWallet> cryptoWallets,
      required final List<BankCard> bankCards}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get profilePicture;
  @override
  List<CryptoWallet> get cryptoWallets;
  @override
  List<BankCard> get bankCards;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
