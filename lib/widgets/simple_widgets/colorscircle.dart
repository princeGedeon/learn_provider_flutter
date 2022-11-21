

import 'package:flutter/material.dart';
import 'package:learn_provider/providers/color_provider.dart';
import 'package:provider/provider.dart';

class ColorCircle extends StatelessWidget {
  const ColorCircle({Key? key,required this.color}) : super(key: key);
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed:(()=>context.read<ColorProvider>().changeColor(color)),
    backgroundColor: color,
    heroTag: color);
  }
}
