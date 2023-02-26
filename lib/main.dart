import 'package:flutter/material.dart';

import 'transaction.dart';

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
  final List<Transaction> transaction = [
    Transaction("t1", "New shoes", 69.99, DateTime.now()),
    Transaction("t2", "Gym", 13.65, DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expenses'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            Column(
              children: transaction.map((tx) {
                return Card(
                    child: Row(
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.blueAccent, width: 2)),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          tx.amount.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.blueAccent),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(tx.title,
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        Text(
                          tx.date.toString(),
                          style: const TextStyle(color: Colors.blueGrey),
                        )
                      ],
                    )
                  ],
                ));
              }).toList(),
            )
          ],
        ));
  }
}
