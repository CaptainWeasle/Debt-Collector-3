import 'package:debt_collector_3/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/debts/presentation/bloc/debt_bloc.dart';
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
    return BlocProvider(
      create: (_) => sl<DebtBloc>(),
      child: MaterialApp(
        title: 'Debt List',
        theme: ThemeData(),
        home: DebtListPage(),
      ),
    );
  }
}
