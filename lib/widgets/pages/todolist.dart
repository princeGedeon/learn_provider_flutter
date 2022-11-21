import 'package:flutter/material.dart';
import 'package:learn_provider/models/classes/Todo.dart';
import 'package:learn_provider/providers/color_provider.dart';
import 'package:learn_provider/providers/todo_provider.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    TextEditingController controllertitle=TextEditingController();
    TextEditingController controllerdesc=TextEditingController();
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(child: Column(
                children: [
                  TextField(
                    controller: controllertitle,
                    decoration: InputDecoration(
                        hintText: "Mon titre"
                    ),
                  ),
                  TextField(
                    controller: controllerdesc,
                    decoration: InputDecoration(
                        hintText: "Description"
                    ),
                  )
                ],
              )),
              IconButton(onPressed: ((){

                FocusScope.of(context).requestFocus(FocusNode());
                context.read<TodoProvider>().addTodos(controllertitle.text, controllerdesc.text);


              }), icon: Icon(Icons.send))
            ],
          ),
        ),
        Divider(),
        Expanded(child:


           Container(child:
            ListView.builder(itemBuilder: (context,index){
              final Todo todo=context.watch<TodoProvider>().toDos[index];
              return ListTile(

                title: Text(todo.title),
                subtitle: Text(todo.desc),
                trailing: IconButton(
                  onPressed: ()=> context.read<TodoProvider>().remove(todo),
                  icon: Icon(Icons.delete,color: context.watch<ColorProvider>().color,),
                ),
              );
            },
            itemCount: context.watch<TodoProvider>().toDos.length,)
            ),
        )



      ],
    );
  }
}
