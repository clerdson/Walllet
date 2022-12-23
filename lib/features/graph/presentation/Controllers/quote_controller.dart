import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../domain/entity/Quote.dart';
import '../../domain/usecase/get_quote_usecase.dart';

class QuoteController {
  final GetQuoteUseCase _getQuoteUseCase;
  QuoteController(this._getQuoteUseCase) {
    fetchData("msft", "open");
  }
  ValueNotifier<List<dynamic>> posts = ValueNotifier<List<dynamic>>([]);

  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  Future fetchData(String text, String open) async {
    inLoader.value = true;
    var result = await _getQuoteUseCase(text, open);

    result.fold((error) => debugPrint(error.toString()), (success) {
      posts.value = success;

      inLoader.value = false;
    });
  }
}
