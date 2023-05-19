import 'dart:convert';
import 'package:cstocks/api/api_key.dart';
import 'package:cstocks/models/yahoo_quoteSummary.dart';
import 'package:cstocks/provider/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class YahooServices {
  /*
  Future<List<SummaryDetail>> getSummary() async {
    Response response = await get(Uri.parse(quoteSummaryURL +
        'AMD.DE' +
        '?modules=price,summaryDetail,recommendationTrend,upgradeDowngradeHistory'));
    if (response.statusCode == 200) {
      debugPrint(symbolStateProvider.toString());
      final List result = jsonDecode(response.body)['SummaryDetail'];
      return result.map((e) => SummaryDetail.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
  */

  Future<List<Result>> getQuote() async {
    String symbol = 'AMD.DE';

    Response response = await get(Uri.parse(
        '$quoteSummaryURL$symbol?modules=price,summaryDetail,recommendationTrend,upgradeDowngradeHistory'));
    if (response.statusCode == 200) {
      //final result = jsonDecode(response.body);
      final result = summaryFromJson(response.body);

      debugPrint('${result.runtimeType} : $result');
      //return result.map((e) => QuoteSummary.fromJson(e).result).toList();

      return result.quoteSummary.result;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

/*final summaryDetailsProvider =
    Provider<YahooServices>((ref) => YahooServices());*/

final resultProvider = Provider<YahooServices>((ref) => YahooServices());
