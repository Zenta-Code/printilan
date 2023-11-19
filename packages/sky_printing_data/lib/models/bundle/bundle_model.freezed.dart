// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bundle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BundleModel _$BundleModelFromJson(Map<String, dynamic> json) {
  return _BundleModel.fromJson(json);
}

/// @nodoc
mixin _$BundleModel {
  String? get storeId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get desc => throw _privateConstructorUsedError;
  List<dynamic>? get prices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BundleModelCopyWith<BundleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BundleModelCopyWith<$Res> {
  factory $BundleModelCopyWith(
          BundleModel value, $Res Function(BundleModel) then) =
      _$BundleModelCopyWithImpl<$Res, BundleModel>;
  @useResult
  $Res call(
      {String? storeId, String? name, String? desc, List<dynamic>? prices});
}

/// @nodoc
class _$BundleModelCopyWithImpl<$Res, $Val extends BundleModel>
    implements $BundleModelCopyWith<$Res> {
  _$BundleModelCopyWithImpl(this._value, this._then);

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
abstract class _$$BundleModelImplCopyWith<$Res>
    implements $BundleModelCopyWith<$Res> {
  factory _$$BundleModelImplCopyWith(
          _$BundleModelImpl value, $Res Function(_$BundleModelImpl) then) =
      __$$BundleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? storeId, String? name, String? desc, List<dynamic>? prices});
}

/// @nodoc
class __$$BundleModelImplCopyWithImpl<$Res>
    extends _$BundleModelCopyWithImpl<$Res, _$BundleModelImpl>
    implements _$$BundleModelImplCopyWith<$Res> {
  __$$BundleModelImplCopyWithImpl(
      _$BundleModelImpl _value, $Res Function(_$BundleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? prices = freezed,
  }) {
    return _then(_$BundleModelImpl(
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
class _$BundleModelImpl extends _BundleModel {
  const _$BundleModelImpl(
      {this.storeId, this.name, this.desc, final List<dynamic>? prices})
      : _prices = prices,
        super._();

  factory _$BundleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BundleModelImplFromJson(json);

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
    return 'BundleModel(storeId: $storeId, name: $name, desc: $desc, prices: $prices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BundleModelImpl &&
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
  _$$BundleModelImplCopyWith<_$BundleModelImpl> get copyWith =>
      __$$BundleModelImplCopyWithImpl<_$BundleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BundleModelImplToJson(
      this,
    );
  }
}

abstract class _BundleModel extends BundleModel {
  const factory _BundleModel(
      {final String? storeId,
      final String? name,
      final String? desc,
      final List<dynamic>? prices}) = _$BundleModelImpl;
  const _BundleModel._() : super._();

  factory _BundleModel.fromJson(Map<String, dynamic> json) =
      _$BundleModelImpl.fromJson;

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
  _$$BundleModelImplCopyWith<_$BundleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
