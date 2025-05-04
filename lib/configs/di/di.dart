import 'package:forecast/data/data_sources/local_data.dart';
import 'package:forecast/data/data_sources/remote_data.dart';
import 'package:forecast/domain/repositories/mock_repository.dart';
import 'package:get_it/get_it.dart';

class DI {
  static DI? _instance;

  DI._();

  factory DI() {
    _instance ??= DI._();
    return _instance!;
  }

  final getIt = GetIt.instance;

  void setUpLocator() {
    // repos & blocs
    getIt.registerLazySingleton<MockRepository>(
      () => MockRepositoryImpl(),
    );

    // data
    getIt.registerLazySingleton<RemoteData>(
      () => RemoteDataImpl(),
    );

    getIt.registerLazySingleton<LocalData>(
      () => LocalDataImpl(),
    );
  }
}
