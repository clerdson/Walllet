import 'package:dartz/dartz.dart';
import 'package:wallet/features/graph/domain/entity/Quote.dart';

abstract class GetQuoteRepository {
  Future<Either<Exception, List<dynamic>>> call(text, open);
}
