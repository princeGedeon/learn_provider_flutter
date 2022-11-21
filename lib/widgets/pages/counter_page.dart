import 'package:flutter/material.dart';
import 'package:learn_provider/providers/count_provider.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Le numéro choisi est',
          ),
          Text(
            '${context.watch<CountProvider>().count}',
            style: Theme.of(context).textTheme.headline4,
          ),
          Row(
            children: [
              FloatingActionButton(onPressed: (()=> context.read<CountProvider>().incrementCounter()),
                child:  Icon(Icons.add),
                heroTag: 0,

              )
            ],
          )
        ],
      ),
    );
  }
}
