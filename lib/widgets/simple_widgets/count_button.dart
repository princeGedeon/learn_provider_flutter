import 'package:flutter/material.dart';
import 'package:learn_provider/providers/count_provider.dart';
import 'package:provider/provider.dart';

import '../../models/count_type.dart';

class CountButton extends StatelessWidget {
  CountType type;
  CountButton({Key? key,required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: (()=>handleAction(context)),
    heroTag: type,
      child: type.getIcon(),
    );
  }

  handleAction(BuildContext context){
switch(type) {
  case CountType.increment:context.read<CountProvider>().incrementCounter();
  break;
  case CountType.decrement:context.read<CountProvider>().decrementCounter();
  break;
  case CountType.reset:context.read<CountProvider>().resetCounter();
  break;

}
}

  }

