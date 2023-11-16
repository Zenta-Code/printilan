import 'package:get_it/get_it.dart';
import 'package:sky_printing_admin/core/themes/theme_bloc.dart';
import 'package:sky_printing_admin/ui/dashboard/cubit/dashboard_cubit.dart';
import 'package:sky_printing_admin/ui/login/cubit/auth_cubit.dart';
import 'package:sky_printing_admin/ui/main/cubit/main_cubit.dart';
import 'package:sky_printing_admin/ui/order/cubit/order_cubit.dart';
import 'package:sky_printing_admin/ui/printer/cubit/printer_cubit.dart';
import 'package:sky_printing_admin/ui/register/cubit/register_cubit.dart';
import 'package:sky_printing_admin/ui/settings/cubit/settings_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_data/sky_printing_data.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator({
  bool isUnitTest = false,
  bool isHiveEnable = true,
  String prefixBox = '',
}) async {
  if (isHiveEnable) {
    await _initHiveBoxes(
      isUnitTest: isUnitTest,
      prefixBox: prefixBox,
    );
  }
  if (isUnitTest) {
    await sl.reset();
  }
  sl.registerSingleton<DioClient>(
    DioClient(isUnitTest: isUnitTest),
  );
  sl.registerSingleton<SocketClient>(
    SocketClient(isUnitTest: isUnitTest),
  );
  _dataSources();
  _repositories();
  _useCase();
  _cubit();
  _bloc();
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
  /// Auth
  sl.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(sl(), sl()),
  );
  sl.registerLazySingleton<RegisterRepository>(
    () => RegisterRepositoryImpl(sl(), sl()),
  );
}

/// Register dataSources
void _dataSources() {
  /// Auth
  sl.registerLazySingleton<LoginRemoteDatasource>(
    () => LoginRemoteDatasourceImpl(sl()),
  );
  sl.registerLazySingleton<RegisterRemoteDataSource>(
    () => RegisterRemoteDataSourceImpl(sl()),
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

  /// Socket
  sl.registerLazySingleton(
    () => ConnectSocket(sl()),
  );
  sl.registerLazySingleton(
    () => JoinSocket(sl()),
  );

  sl.registerLazySingleton(
    () => SendSocket(sl()),
  );
  sl.registerLazySingleton(
    () => ReceiveSocket(sl()),
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

  sl.registerFactory(
    () => SettingsCubit(),
  );
  sl.registerFactory(
    () => MainCubit(),
  );
  sl.registerFactory(
    () => DashboardCubit(sl()),
  );
  sl.registerFactory(
    () => OrderCubit(
      sl(),
      sl(),
      sl(),
    ),
  );
  sl.registerFactory(
    () => PrinterCubit(
      sl(),
    ),
  );
}

void _bloc() {
  sl.registerFactory<ThemeBloc>(
    () => ThemeBloc(),
  );
}
