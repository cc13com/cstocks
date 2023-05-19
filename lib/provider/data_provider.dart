import 'package:cstocks/models/yahoo_quoteSummary.dart';
import 'package:cstocks/services/cc13_services.dart';
import 'package:cstocks/services/yahoo_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/cc13_stockslist.dart';

final itemsDataProvider = FutureProvider<List<Items>>((ref) async {
  return ref.watch(itemsProvider).getList();
});
/*
final summaryDetailsDataProvider =
    FutureProvider<List<SummaryDetail>>((ref) async {
  return ref.watch(summaryDetailsProvider).getSummary();
});
*/

final resultDataProvider = FutureProvider<List<Result>>((ref) async {
  return ref.watch(resultProvider).getQuote();
});

final symbolStateProvider = StateProvider<String>((ref) {
  return '';
});
