import 'package:coco_app/feature/explorer/bloc/explorer_cubit/explorer_cubit.dart';
import 'package:get_it/get_it.dart';

import 'core/networking/dio_config/dio_config.dart';
import 'core/networking/exception_handler/network_error_handler.dart';
import 'core/networking/exception_handler/network_error_handler_impl.dart';
import 'feature/explorer/data/data_source/remote_data/explorer_web_service.dart';
import 'feature/explorer/data/repository/explorer_repository.dart';
import 'feature/explorer/data/repository/explorer_repository_impl.dart';

/// Service locator.
final sl = GetIt.instance;

Future<void> init() async {
  await initExplorer();
}

Future<void> initExplorer() async {
  /// BLoC.
  sl.registerFactory(() => ExplorerCubit(explorerRepository: sl()));

  /// Data.
  sl.registerLazySingleton<ExplorerRepository>(() => ExplorerRepositoryImpl(
      explorerWebService: sl(), networkErrorHandler: sl()));

  sl.registerLazySingleton<ExplorerWebService>(
      () => ExplorerWebService(setupDio()));
  sl.registerLazySingleton<NetworkErrorHandler>(
      () => NetworkErrorHandlerImpl());
}
