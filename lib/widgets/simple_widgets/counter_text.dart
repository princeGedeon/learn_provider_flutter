import 'package:flutter/material.dart';
import 'package:learn_provider/providers/count_provider.dart';
import 'package:provider/provider.dart';

class CounterText extends StatelessWidget {
  const CounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String string=context.watch<CountProvider>().count.toString();
    return Text(
      string,
      style: TextStyle(
        color: Colors.teal,
        fontWeight: FontWeight.bold,
        fontSize: 35
      ),
    );
  }
}
