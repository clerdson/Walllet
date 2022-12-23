import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:wallet/features/graph/data/datasource/remote/get_quote_datasource.dart';
import 'package:wallet/features/graph/data/datasource/remote/get_quote_datasource_imp.dart';
import 'package:wallet/inject.dart';

void main() {
  Inject.initialize();
  final getIt = GetIt.instance;
  test('datasource passado', () {
    GetQuoteDataSource repository = GetQuoteDataSourceImp();
    var result = repository("msft", "close");
    expect(result, isInstanceOf<Future<Either<Exception, List<dynamic>>>>());
  });
}
