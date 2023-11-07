import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/features/users/users.dart';

part 'get_users.freezed.dart';
part 'get_users.g.dart';

class GetUsers extends UseCase<Users, UsersParams> {
  final UsersRepository _repo;

  GetUsers(this._repo);

  @override
  Future<Either<Failure, Users>> call(UsersParams params) =>
      _repo.users(params);
}

@freezed
class UsersParams with _$UsersParams {
  const factory UsersParams({@Default(1) int page}) = _UsersParams;

  factory UsersParams.fromJson(Map<String, dynamic> json) =>
      _$UsersParamsFromJson(json);
}
