import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import '../../../domain/entity/Quote.dart';

import 'get_quote_datasource.dart';
import 'package:http/http.dart' as http;

class GetQuoteDataSourceImp implements GetQuoteDataSource {
  @override
  Future<Either<Exception, List<dynamic>>> call(text, open) async {
    var url = "https://query2.finance.yahoo.com/v8/finance/chart/${text}";

    var response = await http.get(Uri.parse(url));
    var decodedJson = jsonDecode(response.body);
    if (response.statusCode == 200) {
      List<dynamic> quote = decodedJson["chart"]["result"][0]['indicators']
          ['quote'][0]['${open}'];

      List<dynamic> json = decodedJson["chart"]["result"][0]['timestamp'];
      var posts = [json, quote];

      return Right(posts);
    } else {
      throw Exception('Failed to load album');
    }
  }
}
