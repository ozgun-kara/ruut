import 'package:flutter/material.dart';
import 'package:ruut/pages/finance_page.dart';
import 'package:provider/provider.dart';
import 'package:ruut/providers/finance_page_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<FinancePageProvider>(
      create: (BuildContext context) => FinancePageProvider(),
    ),
  ], child: const MyApp()));
}


