import 'package:flutter/material.dart';
import 'package:personal_expenses_app/widgets/user_transaction.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses',
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Card(
            elevation: 5,
            child: SizedBox(
              width: double.infinity,
              child: Text(
                "CHART!",
              ),
            ),
          ),
          UserTransaction(),
        ],
      ),
    );
  }
}
