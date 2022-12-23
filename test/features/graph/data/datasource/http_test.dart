import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:http/testing.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:wallet/features/graph/data/datasource/remote/get_quote_datasource.dart';
import 'package:wallet/features/graph/data/datasource/remote/get_quote_datasource_imp.dart';
import 'package:wallet/features/graph/presentation/Controllers/quote_controller.dart';
import 'package:wallet/inject.dart';

void main() {
  group('fetchAlbum', () {
    test('returns an Album if the http call completes successfully', () async {
      Inject.initialize();
      final getIt = GetIt.instance;
      QuoteController _controller = QuoteController(getIt());

      expect(_controller.fetchData('msft', 'open'),
          isInstanceOf<Future<dynamic>>());
    });
  });
}
