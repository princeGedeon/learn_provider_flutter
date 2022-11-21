import 'package:flutter/material.dart';
import 'package:learn_provider/models/tabItem.dart';
import 'package:learn_provider/widgets/pages/counter_page.dart';
import 'package:learn_provider/widgets/pages/todolist.dart';

import 'color_page.dart';

class TabPage extends StatelessWidget {
  TabPage({Key? key}) : super(key: key);

  static List<TabItem> items=[
    TabItem("Counter", Icon(Icons.numbers)),
    TabItem("Palette", Icon(Icons.palette)),
    TabItem("Liste Manage", Icon(Icons.list))
  ];

  List<Tab> tabs=items.map((item) => Tab(icon: item.icon,text: item.title,)).toList();
  
  TabBar tabBar()=>TabBar(tabs: tabs);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length:items.length , child: Scaffold(
      appBar: AppBar(
        title: Text("Apprendre les providers"),
        bottom: tabBar(),
      ),
      body: TabBarView(
        children: [
          CounterPage(),
          ColorPage(),
          TodoList(),
        ],

      ),
    ));
  }
}
