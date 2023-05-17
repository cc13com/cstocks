import 'package:cstocks/services/cc13_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/cc13_stockslist.dart';

final itemsDataProvider = FutureProvider<List<Items>>((ref) async {
  return ref.watch(itemsProvider).getList();
});
