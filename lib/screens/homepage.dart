import 'package:cstocks/models/cc13_stockslist.dart';
import 'package:cstocks/provider/data_provider.dart';
import 'package:cstocks/widgets/listViewCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final itemsData = ref.watch(itemsDataProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Stocks"),
      ),
      body: itemsData.when(
          data: (itemsData) {
            List<Items> itemsList = itemsData.map((e) => e).toList();

            return ListView.separated(
                separatorBuilder: (_, index) {
                  return Divider(color: Colors.grey[400]);
                },
                itemCount: itemsList.length,
                itemBuilder: (_, index) {
                  var item = itemsList[index];
                  return InkWell(
                    onTap: () {
                      ref.read(symbolStateProvider.notifier).state =
                          item.symbol;
                      Navigator.of(context)
                          .pushNamed('stockdetails', arguments: [item.symbol]);
                    },
                    child: listViewCardWidget(item: item),
                  );
                });
          },
          error: (error, s) => Text(error.toString()),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
    );
  }
}
