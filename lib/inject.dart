import 'package:get_it/get_it.dart';
import 'package:wallet/features/graph/presentation/Controllers/quote_controller.dart';

import 'features/graph/data/datasource/remote/get_quote_datasource.dart';

import 'features/graph/data/datasource/remote/get_quote_datasource_imp.dart';
import 'features/graph/data/get_quote_repository_imp.dart';
import 'features/graph/domain/repository/get_quote_repository.dart';
import 'features/graph/domain/usecase/get_quote_usecase.dart';
import 'features/graph/domain/usecase/get_quote_usecase_imp.dart';

class Inject {
  static initialize() {
    // core
    final getIt = GetIt.instance;
    // datasources
    getIt.registerLazySingleton<GetQuoteDataSource>(
      () => GetQuoteDataSourceImp(),
    );
    // repositories
    getIt.registerLazySingleton<GetQuoteRepository>(
      () => GetQuoteRepositoryImp(getIt()),
    );
    // usecases
    getIt.registerLazySingleton<GetQuoteUseCase>(
      () => GetQuoteUseCaseImp(getIt()),
    );
    // controllers
    getIt.registerLazySingleton<QuoteController>(
      () => QuoteController(getIt()),
    );
  }
}

class GetQuoteRemoteDataSourceImp {}
