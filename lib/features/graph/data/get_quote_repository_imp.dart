import 'package:dartz/dartz.dart';
import 'package:wallet/features/graph/domain/entity/Quote.dart';
import 'package:wallet/features/graph/domain/repository/get_quote_repository.dart';

import 'datasource/remote/get_quote_datasource.dart';

class GetQuoteRepositoryImp implements GetQuoteRepository {
  final GetQuoteDataSource _getQuoteDataSource;
  GetQuoteRepositoryImp(this._getQuoteDataSource);

  @override
  Future<Either<Exception, List<dynamic>>> call(text, open) async {
    return await _getQuoteDataSource(text, open);
  }
}
