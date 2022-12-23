import 'package:dartz/dartz.dart';

import '../../../domain/entity/Quote.dart';

abstract class GetQuoteDataSource {
  Future<Either<Exception, List<dynamic>>> call(text, open);
}
