import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_params.freezed.dart';
part 'address_params.g.dart';

@freezed
class GetDistrictByPostalCodeParams with _$GetDistrictByPostalCodeParams {
  const factory GetDistrictByPostalCodeParams({
    @Default(null) int? postalCode,
  }) = _GetDistrictByPostalCodeParams;

  factory GetDistrictByPostalCodeParams.fromJson(Map<String, dynamic> json) =>
      _$GetDistrictByPostalCodeParamsFromJson(json);
}
