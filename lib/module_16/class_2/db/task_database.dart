import 'package:flutter_166/module_16/class_2/models/task_model.dart';
import 'package:path/path.dart' as pk;
import 'package:sqflite/sqflite.dart';

class Task_Database{
  static Database? _db;

  static Future<Database> getDB() async {
    //---check database
    if(_db != null)
      return _db!;

    //------Create Databae
    _db = await openDatabase(
      pk.join(await getDatabasesPath(), 'task.db'),

        //-------Create Table
        onCreate: (db, version){
      return db.execute(
        //----sql query--table name tasktable
          'CREATE TABLE tasktable(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, isDone INTEGER)'
      );
    },
    version: 2
    );
    return _db!;

  }

  //--- INSERT/ADD TASK
 static Future<void> insertTask(Task_Model taskModel) async {
    final db = await getDB();
    await db.insert('tasktable', taskModel.toMap(),
    //-----same data will be conflict so replace it
    conflictAlgorithm: ConflictAlgorithm.replace
    );
 }

 //-----GET TASK
  static Future<List<Task_Model>> getTask() async {
    final db = await getDB();
   final List<Map<String, dynamic>> maps = await db.query('tasktable');
   return List.generate(maps.length, (i)=> Task_Model.formMap(maps[i]));
  }

  //----DELETE TASK
  static Future<void> deleteTask(int id) async {
    final db = await getDB();
    db.delete('tasktable',where: 'id=?', whereArgs: [id]);
  }

  //----isDone for UPDATE method
  static Future<void> updateTask(Task_Model task) async {
    final db = await getDB();
    db.update('tasktable',task.toMap() ,where: 'id = ?',whereArgs: [task.id]);
  }

}