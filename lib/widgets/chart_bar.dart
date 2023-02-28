import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;

  const ChartBar(this.label, this.spendingAmount, this.spendingPctOfTotal,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
            height: 20,
            child: FittedBox(
                child: Text("\$${spendingAmount.toStringAsFixed(0)}"))),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
            height: 60,
            width: 10,
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      color: const Color.fromARGB(255, 189, 213, 255),
                      borderRadius: BorderRadius.circular(20)),
                  width: 10.0,
                ),
                FractionallySizedBox(
                  heightFactor: spendingPctOfTotal,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            )),
        const SizedBox(height: 4),
        Text(label)
      ],
    );
  }
}
