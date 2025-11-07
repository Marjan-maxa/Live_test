import 'package:flutter/material.dart';

class todo extends StatefulWidget {
  const todo({super.key});

  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {
  TextEditingController txt=TextEditingController();
  List<String> tasks=[];
  addtask()
  {
    final tsk=txt.text;
    if(tsk.isNotEmpty)
      {
        setState(() {
          tasks.add(txt.text);
          txt.clear();
        });
      }
  }
  deletetask(int index)
  {
    setState(() {
      tasks.removeAt(index);
    });
  }
  editTask(int index)
  {
    final textcontroller=TextEditingController(text: tasks[index]);
    showDialog(context: context, builder: (context)=>AlertDialog(
      backgroundColor: Colors.green,
      title: Text('Edit Manager'),
      content: TextField(
        decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          fillColor: Colors.white,
        ),
        controller: textcontroller,

      ),
      actions: [
        TextButton(onPressed: (){Navigator.pop(context);}, child: Text('cancel',style: TextStyle(color: Colors.white),)),
        TextButton(onPressed: (){updateTask(textcontroller.text,index);}, child: Text('update',style: TextStyle(color: Colors.white),))
      ],
    ));
  }
  updateTask(String value,int index)
  {
    if(value.isNotEmpty)
    {
      setState(() {
       tasks[index]=value;
        Navigator.pop(context);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO APP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: txt,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: Colors.indigoAccent)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: Colors.teal)
                      ),
                      hintText: 'Enter your Text'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(onPressed: addtask, label: Text('Add'),icon: Icon(Icons.add),),
              )
            ],
          ),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                  itemBuilder: (context,index)
              {
                return Card(
                  color: Colors.white60,
                  child: ListTile(
                    title: Text(tasks[index]),
                    leading: Icon(Icons.text_format,color: Colors.blue,),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      IconButton(onPressed: (){editTask(index);}, icon: Icon(Icons.edit)),
                        IconButton(onPressed: (){
                          deletetask(index);
                        }, icon: Icon(Icons.delete,color: Colors.red,))
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
