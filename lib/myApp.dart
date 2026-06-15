
import'package:flutter/material.dart';
import 'package:flutter_166/Eid_Practices/mod_10/cls_1.dart';
import 'package:flutter_166/Eid_Practices/mod_10/cls_2.dart';
import 'package:flutter_166/Eid_Practices/mod_10/cls_3.dart';
import 'package:flutter_166/Eid_Practices/mod_11/cls_1.dart';
import 'package:flutter_166/Eid_Practices/mod_11/cls_2.dart';
import 'package:flutter_166/Eid_Practices/mod_11/cls_3.dart';
import 'package:flutter_166/Eid_Practices/mod_11/custom_widget.dart';
import 'package:flutter_166/Eid_Practices/mod_12/cls_1.dart';
import 'package:flutter_166/Eid_Practices/mod_12/cls_2.dart';
import 'package:flutter_166/Eid_Practices/mod_12/cls_3.dart';
import 'package:flutter_166/Eid_Practices/mod_9/cls_3.dart';
import 'package:flutter_166/home.dart';
import 'package:flutter_166/module_10/class33.dart';
import 'package:flutter_166/module_10/class_1.dart';
import 'package:flutter_166/module_10/class_2.dart';
import 'package:flutter_166/module_10/class_3.dart';
import 'package:flutter_166/module_11/class_1.dart';
import 'package:flutter_166/module_11/class_2.dart';
import 'package:flutter_166/module_11/class_3.dart';
import 'package:flutter_166/module_11/custom_widget.dart';
import 'package:flutter_166/module_12/class_1.dart';
import 'package:flutter_166/module_12/class_2.dart';
import 'package:flutter_166/module_12/class_3.dart';
import 'package:flutter_166/module_13/pages/about.dart';
import 'package:flutter_166/module_13/pages/home1.dart';
import 'package:flutter_166/module_9/class-3.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'module_13/bottom_nav.dart';
import 'module_13/class_1.dart';
import 'module_13/class_2.dart';
import 'module_13/class_3.dart';
import 'module_14/class_1_todo.dart';
import 'module_14/class_2.dart';
//import 'package:flutter_166/module_9/class-3.da';

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child){
        return MaterialApp(
//debugShowCheckedModeBanner: false,

          title: 'Flutter 16',

          //home: Module_13_Class_2(),

          initialRoute: '/Module_14_Class_2'   ,


          routes: {
            '/About' : (context) => About_Cls(),//class name
            '/widgetLife' : (context) => WidgetLifeCycle(),//class name
            '/mod-13cls-2' : (context) => Module_13_Class_2(),//class name
            '/Module_13_Class_3' : (context) => Module_13_Class_3(),
            '/Bottom_Nav' : (context) => Bottom_Nav(),
            '/todo' : (context) => ToDO(),
            '/Module_14_Class_2' : (context) => Module_14_Class_2(),

          },
          //theme: ThemeData.dark(),
        );
      },
    );
  }
}
