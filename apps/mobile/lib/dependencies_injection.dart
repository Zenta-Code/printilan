import 'package:get_it/get_it.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/modules/login/data/repos/login_repository_impl.dart';
import 'package:sky_printing/modules/login/data/sources/login_remote_datasource.dart';
import 'package:sky_printing/modules/login/domain/repos/login_repository.dart';
import 'package:sky_printing/modules/login/domain/usecases/post_login.dart';
import 'package:sky_printing/modules/login/ui/cubit/auth_cubit.dart';
import 'package:sky_printing/modules/main/ui/cubit/main_cubit.dart';
import 'package:sky_printing/modules/register/data/repos/register_repository_impl.dart';
import 'package:sky_printing/modules/register/data/sources/register_remote_datasource.dart';
import 'package:sky_printing/modules/register/domain/repos/register_repository.dart';
import 'package:sky_printing/modules/register/domain/usecases/post_register.dart';
import 'package:sky_printing/modules/register/ui/cubit/register_cubit.dart';
import 'package:sky_printing/modules/settings/ui/cubit/settings_cubit.dart';
import 'package:sky_printing/modules/users/data/datasources/user_remote_datasources.dart';
import 'package:sky_printing/modules/users/data/repositories/users_repository_impl.dart';
import 'package:sky_printing/modules/users/domain/repositories/users_repository.dart';
import 'package:sky_printing/modules/users/domain/usecases/get_users.dart';
import 'package:sky_printing/modules/users/pages/dashboard/cubit/users_cubit.dart';
import 'package:sky_printing/utils/utils.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator({
  bool isUnitTest = false,
  bool isHiveEnable = true,
  String prefixBox = '',
}) async {
  /// For unit testing only
  if (isUnitTest) {
    await sl.reset();
  }
  sl.registerSingleton<DioClient>(DioClient(isUnitTest: isUnitTest));
  _dataSources();
  _repositories();
  _useCase();
  _cubit();
  if (isHiveEnable) {
    await _initHiveBoxes(
      isUnitTest: isUnitTest,
      prefixBox: prefixBox,
    );
  }
}

Future<void> _initHiveBoxes({
  bool isUnitTest = false,
  String prefixBox = '',
}) async {
  await MainBoxMixin.initHive(prefixBox);
  sl.registerSingleton<MainBoxMixin>(MainBoxMixin());
}

/// Register repositories
void _repositories() {
  // sl.registerLazySingleton<AuthRepository>(
  //   () => AuthRepositoryImpl(sl(), sl()),
  // );

  sl.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(sl(), sl()),
  );

  sl.registerLazySingleton<RegisterRepository>(
    () => RegisterRepositoryImpl(sl(), sl()),
  );

  sl.registerLazySingleton<UsersRepository>(
    () => UsersRepositoryImpl(sl()),
  );
}

/// Register dataSources
void _dataSources() {
  sl.registerLazySingleton<LoginRemoteDatasource>(
    () => LoginRemoteDatasourceImpl(sl()),
  );
  sl.registerLazySingleton<RegisterRemoteDataSource>(
    () => RegisterRemoteDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<UsersRemoteDatasource>(
    () => UsersRemoteDatasourceImpl(sl()),
  );
}

void _useCase() {
  /// Auth
  sl.registerLazySingleton(
    () => PostLogin(sl()),
  );
  sl.registerLazySingleton(
    () => PostRegister(sl()),
  );

  /// Users
  sl.registerLazySingleton(
    () => GetUsers(sl()),
  );
}

void _cubit() {
  /// Auth
  sl.registerFactory(
    () => RegisterCubit(sl()),
  );
  sl.registerFactory(
    () => AuthCubit(sl()),
  );

  /// Users
  sl.registerFactory(
    () => UsersCubit(sl()),
  );
  sl.registerFactory(
    () => SettingsCubit(),
  );
  sl.registerFactory(
    () => MainCubit(),
  );
}
