import 'package:flutter/material.dart';
import 'package:flutter_166/module_16/class_2/db/task_database.dart';
import 'package:flutter_166/module_16/class_2/models/task_model.dart';

class Task_Home extends StatefulWidget {
  const Task_Home({super.key});

  @override
  State<Task_Home> createState() => _Task_HomeState();
}

class _Task_HomeState extends State<Task_Home> {
  //----ALERT dialog
  void editAlertDialog(Task_Model task){
    taskController.text = task.title;

    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('Edit here'),
      content: TextFormField(
        controller: taskController,
        decoration: InputDecoration(
          helperText: 'Edit your task details',
          border: OutlineInputBorder(),
        ),
      ),
      actions: [
        TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Cancel')),
        ElevatedButton(onPressed: ()  {
          editTask(task);

          Navigator.pop(context);
        }, child: Text('Save')),
      ],
    ));
  }
  //----taken a empty list for keep data
  List<Task_Model> tasks = [];

  //----ALERT dialog


  //-----taken task controller
  final TextEditingController taskController = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    refreshTask();
  }

  //------taken 2 method for task add


//--------GET Task
  Future<void> refreshTask() async {
  tasks =  await Task_Database.getTask();
  setState(() {

  });

  }

  //----INSERT/ADD task
  Future<void> addTask() async {
    await Task_Database.insertTask(Task_Model(
        title: taskController.text,
        isDone: false));
    await refreshTask();
    taskController.clear();
  }

  //----DELETE task
  Future<void> deleteTask(int id) async {
    await Task_Database.deleteTask(id);
    await refreshTask();
    taskController.clear();
  }
  
  //----UPDATE task    toggle task
  Future<void> toggleTask(Task_Model task) async {
    await Task_Database.updateTask(
      Task_Model(title: task.title, isDone: !task.isDone, id: task.id)
    );
    await refreshTask();
  }
//--------EDIT task
  Future<void> editTask(Task_Model task) async {
    await Task_Database.updateTask(
        Task_Model(title: taskController.text, isDone: !task.isDone, id: task.id)
    );
    await refreshTask();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Database App'),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: taskController,
                    decoration: InputDecoration(
                      hintText: 'Enter task',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(onPressed: addTask, icon: Icon(Icons.add)),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return Card(
                  child: ListTile(
                    title: Text(task.title,style: TextStyle(
                      color: task.isDone? Colors.grey : Colors.black,
                      decoration: task.isDone? TextDecoration.lineThrough:null
                    ),),
                    leading: Checkbox(value: task.isDone, onChanged: (_) => toggleTask(task)),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            editAlertDialog(task);
                            },
                          icon: Icon(Icons.edit_note),
                        ),
                        IconButton(
                          onPressed: () {
                            deleteTask(task.id!);
                          },
                          icon: Icon(Icons.delete, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
