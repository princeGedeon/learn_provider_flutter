import 'package:flutter/material.dart';
import 'package:learn_provider/models/count_type.dart';
import 'package:learn_provider/providers/count_provider.dart';
import 'package:learn_provider/widgets/simple_widgets/count_button.dart';
import 'package:provider/provider.dart';

import '../simple_widgets/counter_text.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(


        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Text(
            'Le numéro choisi est',
          ),
          CounterText(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CountButton(type: CountType.decrement),
              CountButton(type: CountType.increment),
              CountButton(type: CountType.reset)
            ],
          )
        ],
      );
  }
}
