// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bundle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bundle _$BundleFromJson(Map<String, dynamic> json) {
  return _Bundle.fromJson(json);
}

/// @nodoc
mixin _$Bundle {
  String? get storeId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  List<dynamic>? get prices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BundleCopyWith<Bundle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BundleCopyWith<$Res> {
  factory $BundleCopyWith(Bundle value, $Res Function(Bundle) then) =
      _$BundleCopyWithImpl<$Res, Bundle>;
  @useResult
  $Res call(
      {String? storeId, String? name, String? desc, List<dynamic>? prices});
}

/// @nodoc
class _$BundleCopyWithImpl<$Res, $Val extends Bundle>
    implements $BundleCopyWith<$Res> {
  _$BundleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? prices = freezed,
  }) {
    return _then(_value.copyWith(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      prices: freezed == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BundleImplCopyWith<$Res> implements $BundleCopyWith<$Res> {
  factory _$$BundleImplCopyWith(
          _$BundleImpl value, $Res Function(_$BundleImpl) then) =
      __$$BundleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? storeId, String? name, String? desc, List<dynamic>? prices});
}

/// @nodoc
class __$$BundleImplCopyWithImpl<$Res>
    extends _$BundleCopyWithImpl<$Res, _$BundleImpl>
    implements _$$BundleImplCopyWith<$Res> {
  __$$BundleImplCopyWithImpl(
      _$BundleImpl _value, $Res Function(_$BundleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? prices = freezed,
  }) {
    return _then(_$BundleImpl(
      storeId: freezed == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      prices: freezed == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BundleImpl extends _Bundle {
  const _$BundleImpl(
      {this.storeId, this.name, this.desc, final List<dynamic>? prices})
      : _prices = prices,
        super._();

  factory _$BundleImpl.fromJson(Map<String, dynamic> json) =>
      _$$BundleImplFromJson(json);

  @override
  final String? storeId;
  @override
  final String? name;
  @override
  final String? desc;
  final List<dynamic>? _prices;
  @override
  List<dynamic>? get prices {
    final value = _prices;
    if (value == null) return null;
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Bundle(storeId: $storeId, name: $name, desc: $desc, prices: $prices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BundleImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            const DeepCollectionEquality().equals(other._prices, _prices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, storeId, name, desc,
      const DeepCollectionEquality().hash(_prices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BundleImplCopyWith<_$BundleImpl> get copyWith =>
      __$$BundleImplCopyWithImpl<_$BundleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BundleImplToJson(
      this,
    );
  }
}

abstract class _Bundle extends Bundle {
  const factory _Bundle(
      {final String? storeId,
      final String? name,
      final String? desc,
      final List<dynamic>? prices}) = _$BundleImpl;
  const _Bundle._() : super._();

  factory _Bundle.fromJson(Map<String, dynamic> json) = _$BundleImpl.fromJson;

  @override
  String? get storeId;
  @override
  String? get name;
  @override
  String? get desc;
  @override
  List<dynamic>? get prices;
  @override
  @JsonKey(ignore: true)
  _$$BundleImplCopyWith<_$BundleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
