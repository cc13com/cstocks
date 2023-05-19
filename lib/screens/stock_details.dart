import 'package:cstocks/models/yahoo_quoteSummary.dart';
import 'package:cstocks/provider/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StockDetails extends ConsumerWidget {
  const StockDetails({super.key});

  @override
  Widget build(BuildContext context, ref) {
    //final summaryDetailsData = ref.watch(summaryDetailsDataProvider);
    final resultData = ref.watch(resultDataProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Title')),
      body: resultData.when(
          data: (resultData) {
            List<Result> resultList = resultData.map((e) => e).toList();
            return Card(child: Text('hier'));
          },
          error: (error, s) => Text(error.toString()),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }
}
