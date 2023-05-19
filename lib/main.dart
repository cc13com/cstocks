import 'package:cstocks/screens/homepage.dart';
import 'package:cstocks/screens/stock_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'homepage',
      routes: {
        'homepage': (context) => const HomePage(),
        'stockdetails': (context) => const StockDetails()
      },
    );
  }
}
