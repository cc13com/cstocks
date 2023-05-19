import 'package:cstocks/models/cc13_stockslist.dart';
import 'package:flutter/material.dart';

class listViewCardWidget extends StatelessWidget {
  const listViewCardWidget({
    super.key,
    required this.item,
  });

  final Items item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            child: Row(children: [
              Text(
                '${item.symbol}',
                style: const TextStyle(fontSize: 16),
              )
            ]),
          )
        ],
      ),
    );
  }
}
