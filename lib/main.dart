import 'package:flutter/material.dart';
import 'features/debts/presentation/pages/debt_list_page.dart';
import 'injection_container.dart' as di;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Debt List',
      theme: ThemeData(),
      home: DebtListPage(),
    );
  }
}
