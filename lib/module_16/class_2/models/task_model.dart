class Task_Model{
  final int? id;
  final String title;
  final bool isDone;

  Task_Model({this.id, required this.title, required this.isDone});

  //I write also 2 method as if can re-use it multiple time and place
// 1 number is toMap and 2 number is formMap

//-------toMap
Map<String, dynamic> toMap(){
  return {
    'id' : id,
    'title' : title,
    'isDone' : isDone? 1:0,
  };
}

//--------formMap---that's called prozo class
factory Task_Model.formMap(Map<String, dynamic>map){
  return Task_Model(
      id: map['id'] ,
      title: map['title'],
      isDone: map['isDone']==1);
}
}

//////-------This model is called (JSON-->Dart) Model