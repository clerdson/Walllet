import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:wallet/features/graph/data/get_quote_repository_imp.dart';
import 'package:wallet/features/graph/domain/repository/get_quote_repository.dart';
import 'package:wallet/inject.dart';

void main() {
  Inject.initialize();
  final getIt = GetIt.instance;
  test('deve istaciar repository passado', () {
    GetQuoteRepository repository = GetQuoteRepositoryImp(getIt());
    var result = repository("msft", "open");
    expect(result, isInstanceOf<Future<Either<Exception, List<dynamic>>>>());
  });
}
