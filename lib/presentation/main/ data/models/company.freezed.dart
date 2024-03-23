// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Company {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get favorites => throw _privateConstructorUsedError;
  String? get opisanie => throw _privateConstructorUsedError;
  String? get summa_skidka => throw _privateConstructorUsedError;
  String? get raz_skidka => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get inn => throw _privateConstructorUsedError;
  int? get count_prod => throw _privateConstructorUsedError;
  String? get bic => throw _privateConstructorUsedError;
  String? get ogrn => throw _privateConstructorUsedError;
  String? get cor_account => throw _privateConstructorUsedError;
  String? get pay_account => throw _privateConstructorUsedError;
  String? get bank => throw _privateConstructorUsedError;
  String? get recipient => throw _privateConstructorUsedError;
  String? get favorit_id => throw _privateConstructorUsedError;
  String? get dostavka => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {String id,
      String name,
      String favorites,
      String? opisanie,
      String? summa_skidka,
      String? raz_skidka,
      String address,
      String inn,
      int? count_prod,
      String? bic,
      String? ogrn,
      String? cor_account,
      String? pay_account,
      String? bank,
      String? recipient,
      String? favorit_id,
      String? dostavka});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? favorites = null,
    Object? opisanie = freezed,
    Object? summa_skidka = freezed,
    Object? raz_skidka = freezed,
    Object? address = null,
    Object? inn = null,
    Object? count_prod = freezed,
    Object? bic = freezed,
    Object? ogrn = freezed,
    Object? cor_account = freezed,
    Object? pay_account = freezed,
    Object? bank = freezed,
    Object? recipient = freezed,
    Object? favorit_id = freezed,
    Object? dostavka = freezed,
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
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as String,
      opisanie: freezed == opisanie
          ? _value.opisanie
          : opisanie // ignore: cast_nullable_to_non_nullable
              as String?,
      summa_skidka: freezed == summa_skidka
          ? _value.summa_skidka
          : summa_skidka // ignore: cast_nullable_to_non_nullable
              as String?,
      raz_skidka: freezed == raz_skidka
          ? _value.raz_skidka
          : raz_skidka // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      inn: null == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String,
      count_prod: freezed == count_prod
          ? _value.count_prod
          : count_prod // ignore: cast_nullable_to_non_nullable
              as int?,
      bic: freezed == bic
          ? _value.bic
          : bic // ignore: cast_nullable_to_non_nullable
              as String?,
      ogrn: freezed == ogrn
          ? _value.ogrn
          : ogrn // ignore: cast_nullable_to_non_nullable
              as String?,
      cor_account: freezed == cor_account
          ? _value.cor_account
          : cor_account // ignore: cast_nullable_to_non_nullable
              as String?,
      pay_account: freezed == pay_account
          ? _value.pay_account
          : pay_account // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
      favorit_id: freezed == favorit_id
          ? _value.favorit_id
          : favorit_id // ignore: cast_nullable_to_non_nullable
              as String?,
      dostavka: freezed == dostavka
          ? _value.dostavka
          : dostavka // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String favorites,
      String? opisanie,
      String? summa_skidka,
      String? raz_skidka,
      String address,
      String inn,
      int? count_prod,
      String? bic,
      String? ogrn,
      String? cor_account,
      String? pay_account,
      String? bank,
      String? recipient,
      String? favorit_id,
      String? dostavka});
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? favorites = null,
    Object? opisanie = freezed,
    Object? summa_skidka = freezed,
    Object? raz_skidka = freezed,
    Object? address = null,
    Object? inn = null,
    Object? count_prod = freezed,
    Object? bic = freezed,
    Object? ogrn = freezed,
    Object? cor_account = freezed,
    Object? pay_account = freezed,
    Object? bank = freezed,
    Object? recipient = freezed,
    Object? favorit_id = freezed,
    Object? dostavka = freezed,
  }) {
    return _then(_$CompanyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as String,
      opisanie: freezed == opisanie
          ? _value.opisanie
          : opisanie // ignore: cast_nullable_to_non_nullable
              as String?,
      summa_skidka: freezed == summa_skidka
          ? _value.summa_skidka
          : summa_skidka // ignore: cast_nullable_to_non_nullable
              as String?,
      raz_skidka: freezed == raz_skidka
          ? _value.raz_skidka
          : raz_skidka // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      inn: null == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String,
      count_prod: freezed == count_prod
          ? _value.count_prod
          : count_prod // ignore: cast_nullable_to_non_nullable
              as int?,
      bic: freezed == bic
          ? _value.bic
          : bic // ignore: cast_nullable_to_non_nullable
              as String?,
      ogrn: freezed == ogrn
          ? _value.ogrn
          : ogrn // ignore: cast_nullable_to_non_nullable
              as String?,
      cor_account: freezed == cor_account
          ? _value.cor_account
          : cor_account // ignore: cast_nullable_to_non_nullable
              as String?,
      pay_account: freezed == pay_account
          ? _value.pay_account
          : pay_account // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
      favorit_id: freezed == favorit_id
          ? _value.favorit_id
          : favorit_id // ignore: cast_nullable_to_non_nullable
              as String?,
      dostavka: freezed == dostavka
          ? _value.dostavka
          : dostavka // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CompanyImpl implements _Company {
  const _$CompanyImpl(
      {required this.id,
      required this.name,
      required this.favorites,
      required this.opisanie,
      required this.summa_skidka,
      required this.raz_skidka,
      required this.address,
      required this.inn,
      this.count_prod,
      this.bic,
      this.ogrn,
      this.cor_account,
      this.pay_account,
      this.bank,
      this.recipient,
      this.favorit_id,
      this.dostavka});

  @override
  final String id;
  @override
  final String name;
  @override
  final String favorites;
  @override
  final String? opisanie;
  @override
  final String? summa_skidka;
  @override
  final String? raz_skidka;
  @override
  final String address;
  @override
  final String inn;
  @override
  final int? count_prod;
  @override
  final String? bic;
  @override
  final String? ogrn;
  @override
  final String? cor_account;
  @override
  final String? pay_account;
  @override
  final String? bank;
  @override
  final String? recipient;
  @override
  final String? favorit_id;
  @override
  final String? dostavka;

  @override
  String toString() {
    return 'Company(id: $id, name: $name, favorites: $favorites, opisanie: $opisanie, summa_skidka: $summa_skidka, raz_skidka: $raz_skidka, address: $address, inn: $inn, count_prod: $count_prod, bic: $bic, ogrn: $ogrn, cor_account: $cor_account, pay_account: $pay_account, bank: $bank, recipient: $recipient, favorit_id: $favorit_id, dostavka: $dostavka)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.favorites, favorites) ||
                other.favorites == favorites) &&
            (identical(other.opisanie, opisanie) ||
                other.opisanie == opisanie) &&
            (identical(other.summa_skidka, summa_skidka) ||
                other.summa_skidka == summa_skidka) &&
            (identical(other.raz_skidka, raz_skidka) ||
                other.raz_skidka == raz_skidka) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.inn, inn) || other.inn == inn) &&
            (identical(other.count_prod, count_prod) ||
                other.count_prod == count_prod) &&
            (identical(other.bic, bic) || other.bic == bic) &&
            (identical(other.ogrn, ogrn) || other.ogrn == ogrn) &&
            (identical(other.cor_account, cor_account) ||
                other.cor_account == cor_account) &&
            (identical(other.pay_account, pay_account) ||
                other.pay_account == pay_account) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.favorit_id, favorit_id) ||
                other.favorit_id == favorit_id) &&
            (identical(other.dostavka, dostavka) ||
                other.dostavka == dostavka));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      favorites,
      opisanie,
      summa_skidka,
      raz_skidka,
      address,
      inn,
      count_prod,
      bic,
      ogrn,
      cor_account,
      pay_account,
      bank,
      recipient,
      favorit_id,
      dostavka);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);
}

abstract class _Company implements Company {
  const factory _Company(
      {required final String id,
      required final String name,
      required final String favorites,
      required final String? opisanie,
      required final String? summa_skidka,
      required final String? raz_skidka,
      required final String address,
      required final String inn,
      final int? count_prod,
      final String? bic,
      final String? ogrn,
      final String? cor_account,
      final String? pay_account,
      final String? bank,
      final String? recipient,
      final String? favorit_id,
      final String? dostavka}) = _$CompanyImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get favorites;
  @override
  String? get opisanie;
  @override
  String? get summa_skidka;
  @override
  String? get raz_skidka;
  @override
  String get address;
  @override
  String get inn;
  @override
  int? get count_prod;
  @override
  String? get bic;
  @override
  String? get ogrn;
  @override
  String? get cor_account;
  @override
  String? get pay_account;
  @override
  String? get bank;
  @override
  String? get recipient;
  @override
  String? get favorit_id;
  @override
  String? get dostavka;
  @override
  @JsonKey(ignore: true)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
