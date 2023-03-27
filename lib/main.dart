
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


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruut',
      home: FinancePage(),
    );
  }
}