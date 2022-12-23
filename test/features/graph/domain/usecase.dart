import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:wallet/features/graph/domain/usecase/get_quote_usecase.dart';
import 'package:wallet/features/graph/domain/usecase/get_quote_usecase_imp.dart';
import 'package:wallet/inject.dart';

void main() {
  Inject.initialize();
  final getIt = GetIt.instance;
  test('ddeve instaciar usecase passado', () {
    GetQuoteUseCase quoteUseCase = GetQuoteUseCaseImp(getIt());
    var result = quoteUseCase("msft", "close");
    expect(result, isInstanceOf<Future<Either<Exception, List<dynamic>>>>());
  });
}
