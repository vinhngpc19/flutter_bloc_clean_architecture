import 'package:forecast/configs/local_storage/local_storage.dart';
import 'package:forecast/data/data_sources/local_data.dart';
import 'package:forecast/data/data_sources/remote_data.dart';
import 'package:forecast/domain/repositories/mock_repository.dart';
import 'package:forecast/presentation/screens/mock/bloc/mock_bloc.dart';
import 'package:get_it/get_it.dart';

class DI {
  static DI? _instance;

  DI._();

  factory DI() {
    _instance ??= DI._();
    return _instance!;
  }

  final getIt = GetIt.instance;

  Future<void> setUpLocator() async {
    // repos & blocs
    getIt.registerFactory<MockBloc>(
      () => MockBloc(mockRepository: getIt<MockRepository>()),
    );

    getIt.registerLazySingleton<MockRepository>(
      () => MockRepositoryImpl(
          localData: getIt<LocalData>(), remoteData: getIt<RemoteData>()),
    );

    // data
    getIt.registerLazySingleton<RemoteData>(
      () => RemoteDataImpl(),
    );

    getIt.registerLazySingleton<LocalData>(
      () => LocalDataImpl(localStorage: getIt<LocalStorage>()),
    );

    // services
    final localStorage = LocalStorage();
    await localStorage.init();
    getIt.registerLazySingleton<LocalStorage>(
      () => localStorage,
    );
  }
}
