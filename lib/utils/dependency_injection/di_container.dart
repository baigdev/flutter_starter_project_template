import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import '../../core/platform/network_information.dart';
import '../internet_checker/network_bloc.dart';
import '../local_storage/local_storage.dart';
import '../localizations/language_cubit/language_cubit.dart';

AndroidOptions getAndroidOptions() => const AndroidOptions(
      encryptedSharedPreferences: true,
    );

final getItInstance = GetIt.instance;

void initializeDependencies() {
  _initializeBlocsAndCubits();
  _initializeRepositories();
  _initializeUseCases();
  _initializeExternalPackages();
}

void _initializeBlocsAndCubits() {
  getItInstance.registerLazySingleton(
    () => NetworkBloc(),
  );

  getItInstance.registerFactory<LanguageCubit>(
    () => LanguageCubit(),
  );


}

void _initializeRepositories() {

}

void _initializeUseCases() {

}

void _initializeExternalPackages() {
  //local storage
  final storage = FlutterSecureStorage(aOptions: getAndroidOptions());
  getItInstance.registerLazySingleton(() => storage);

  final localStorage = LocalStorage();
  getItInstance.registerLazySingleton(() => localStorage);
  getItInstance.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      networkConnectionCheck: getItInstance(),
    ),
  );

  getItInstance.registerLazySingleton(() => Connectivity());
}
