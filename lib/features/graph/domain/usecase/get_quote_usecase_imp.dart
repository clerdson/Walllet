import 'package:dartz/dartz.dart';

import '../entity/Quote.dart';
import '../repository/get_quote_repository.dart';
import 'get_quote_usecase.dart';

class GetQuoteUseCaseImp implements GetQuoteUseCase {
  final GetQuoteRepository _getQuoteRepository;
  GetQuoteUseCaseImp(this._getQuoteRepository);

  @override
  Future<Either<Exception, List<dynamic>>> call(text, open) async {
    return await _getQuoteRepository(text, open);
  }
}
