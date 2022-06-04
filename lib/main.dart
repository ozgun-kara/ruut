import 'package:flutter/material.dart';
import 'package:ruut/pages/finance_page.dart';
import 'package:provider/provider.dart';
import 'package:ruut/providers/credit_card.dart';
import 'package:ruut/providers/promotion_code.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<CreditCard>(
      create: (BuildContext context) => CreditCard(),
    ),
    ChangeNotifierProvider<PromotionCode>(
      create: (BuildContext context) => PromotionCode(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruut',
      home: FinancePage(),
    );
  }
}
