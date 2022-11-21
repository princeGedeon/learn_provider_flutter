import 'package:flutter/material.dart';
import 'package:learn_provider/providers/color_provider.dart';
import 'package:learn_provider/providers/count_provider.dart';
import 'package:learn_provider/providers/todo_provider.dart';
import 'package:learn_provider/widgets/pages/counter_page.dart';
import 'package:learn_provider/widgets/pages/tab_pages.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>CountProvider()),
      ChangeNotifierProvider(create: (_)=>ColorProvider()),
      ChangeNotifierProvider(create: (_)=>TodoProvider()),


    ],
    child:const MyApp()
      ,)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: context.watch<ColorProvider>().color,
      ),
      home: TabPage(),
    );
  }
}
