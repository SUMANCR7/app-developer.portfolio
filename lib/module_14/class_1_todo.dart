import 'package:flutter/material.dart';

class ToDO extends StatefulWidget {
  const ToDO({super.key});

  @override
  State<ToDO> createState() => _ToDOState();
}

class _ToDOState extends State<ToDO> {
  TextEditingController taskController = TextEditingController();
  List list_task = [];

  void addtask(){
    if(taskController.text.isNotEmpty){
      setState(() {
        list_task.add(taskController.text);
        taskController.clear();
      });
    }else{
      print('not allow');
    }
  }
  
  void delTask(int index){
    setState(() {
      list_task.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo App',style: TextStyle(fontSize: 25,fontWeight: .bold),),
        centerTitle: true,
        backgroundColor: Colors.indigo[300],
      ),

      body: Column(
        children: [
          Row(
            children: [

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: TextField(
                    controller: taskController,
                    decoration: InputDecoration(
                      hintText: 'Add task',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                  ),

                ),
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[100],
                    foregroundColor: Colors.black,
                  ),
                  onPressed: (){
                    setState(() {
                      addtask();
                    });
                  }, child: Text('Add')),
            ],
          ),
          
          Expanded(
            child: ListView.builder(
                itemCount: list_task.length,
                itemBuilder: (context, index){
                  return Card(
                    child: ListTile(
                      leading: Checkbox(value: false, onChanged: (_){}),
                      title: Text(list_task[index]),
                      trailing: IconButton(onPressed: (){delTask(index);}, icon: Icon(Icons.delete,color: Colors.red,))
                    ),
                  );
                }
            ),
          ),
        ],
      ),

    );
  }
}
