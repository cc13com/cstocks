import 'package:cstocks/models/cc13_stockslist.dart';
import 'package:cstocks/provider/data_provider.dart';
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

            return ListView.builder(
                itemCount: itemsList.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: ListTile(
                        title: Text(
                          '${itemsList[index].longName} (${itemsList[index].symbol})',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
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
