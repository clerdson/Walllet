import 'package:wallet/features/graph/domain/entity/Quote.dart';

import 'package:dartz/dartz.dart';

abstract class GetQuoteUseCase {
  Future<Either<Exception, List<dynamic>>> call(text, open);
}
