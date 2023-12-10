import 'package:get_it/get_it.dart';
import 'package:sky_printing/ui/history/cubit/history_cubit.dart';
import 'package:sky_printing/ui/home/cubit/home_cubit.dart';
import 'package:sky_printing/ui/login/cubit/login_cubit.dart';
import 'package:sky_printing/ui/main/cubit/main_cubit.dart';
import 'package:sky_printing/ui/order/cubit/order_cubit.dart';
import 'package:sky_printing/ui/payment/cubit/payment_cubit.dart';
import 'package:sky_printing/ui/register/cubit/register_cubit.dart';
import 'package:sky_printing/ui/settings/cubit/settings_cubit.dart';
import 'package:sky_printing_core/services/local/file/file_client.dart';
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
  sl.registerSingleton<DioClient>(DioClient(
    isUnitTest: isUnitTest,
  ));
  sl.registerSingleton<SocketClient>(SocketClient(
    isUnitTest: isUnitTest,
  ));
  sl.registerSingleton<LocationClient>(LocationClient(
    isUnitTest: isUnitTest,
  ));
  sl.registerSingleton<WebViewClient>(WebViewClient(
    isUnitTest: isUnitTest,
  ));
  sl.registerSingleton<FileClient>(FileClient(
    isUnitTest: isUnitTest,
  ));

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

  /// Location
  sl.registerLazySingleton<LocationRepository>(
    () => LocationRepositoryImpl(sl()),
  );

  /// File
  sl.registerLazySingleton<FileRepository>(
    () => FileRepositoryImpl(sl()),
  );

  sl.registerLazySingleton<StoreRepository>(
    () => StoreRepositoryImpl(sl(), sl()),
  );
  sl.registerLazySingleton<AddressRepository>(
    () => AddressRepositoryImpl(sl()),
  );

  sl.registerLazySingleton<OrderRepository>(
    () => OrderRepositoryImpl(sl()),
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

  /// Location
  sl.registerLazySingleton<LocationLocalDatasource>(
    () => LocationLocalDatasourceImpl(sl()),
  );

  /// File
  sl.registerLazySingleton<FileLocalDatasource>(
    () => FileLocalDatasourceImpl(sl()),
  );

  sl.registerLazySingleton<StoreRemoteDataSource>(
    () => StoreRemoteDataSourceImpl(sl()),
  );

  sl.registerLazySingleton<AddressRemoteDataSource>(
    () => AddressRemoteDataSourceImpl(sl()),
  );

  sl.registerLazySingleton<OrderRemoteDataSource>(
    () => OrderRemoteDataSourceImpl(sl()),
  );
}

void _useCase() {
  /// Auth
  sl.registerLazySingleton(
    () => GetMe(sl()),
  );
  sl.registerLazySingleton(
    () => PostLogin(sl()),
  );
  sl.registerLazySingleton(
    () => PostRegister(sl()),
  );

  /// Location
  sl.registerLazySingleton(
    () => GetLocation(sl()),
  );

  // /// Socket
  // sl.registerLazySingleton(
  //   () => ConnectSocketUsecase(sl()),
  // );
  sl.registerLazySingleton(
    () => JoinSocketUsecase(sl()),
  );

  // sl.registerLazySingleton(
  //   () => SendSocketUsecase(sl()),
  // );
  // sl.registerLazySingleton(
  //   () => ReceiveSocketUsecase(sl()),
  // );

  sl.registerLazySingleton(
    () => GetFileUseCase(sl()),
  );

  sl.registerLazySingleton(
    () => GetStoreByCityUsecase(sl()),
  );
  sl.registerLazySingleton(
    () => GetOrderByUserUsecase(sl()),
  );

  sl.registerLazySingleton(
    () => GetDistrictByPostalCodeUsecase(sl()),
  );
}

void _cubit() {
  /// Auth
  sl.registerFactory(
    () => RegisterCubit(sl()),
  );
  sl.registerFactory(
    () => LoginCubit(
      sl(),
      sl(),
      sl(),
    ),
  );

  sl.registerFactory(
    () => SettingsCubit(
      sl(),
    ),
  );
  sl.registerFactory(
    () => MainCubit(
      sl(),
    ),
  );

  /// Location
  sl.registerFactory(
    () => HomeCubit(
      sl(),
      sl(),
      sl(),
    ),
  );

  sl.registerFactory(
    () => HistoryCubit(
      sl(),
    ),
  );

  sl.registerFactory(
    () => OrderCubit(
      sl(),
      sl(),
      sl(),
      sl(),
    ),
  );
  sl.registerFactory(
    () => PaymentCubit(
      sl(),
      sl(),
    ),
  );
}

void _bloc() {}
