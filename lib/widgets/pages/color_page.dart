import 'package:flutter/material.dart';
import 'package:learn_provider/widgets/simple_widgets/colorscircle.dart';
import 'package:provider/provider.dart';

import '../../providers/color_provider.dart';

class ColorPage extends StatelessWidget {
  ColorPage({Key? key}) : super(key: key);
  List<MaterialColor> colors=Colors.primaries;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(12),
    child:
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [

                Text("Couleur Actuelle"),
              ColorCircle(color: context.watch<ColorProvider>().color)
            ],
          ),
          Divider(),
          Expanded(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: ((context,index){
            return Center(
              child:ColorCircle(color: colors[index],) ,
            );
          }),itemCount: colors.length,))
        ],
      )


      ,);
  }
}
