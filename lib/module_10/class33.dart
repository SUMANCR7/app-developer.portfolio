import 'package:flutter/material.dart';

class Class33 extends StatelessWidget {
  const Class33({super.key});

  @override
  Widget build(BuildContext context) {

    Size ScreenSize = MediaQuery.of(context).size;

    double ScreenW = ScreenSize.width;
    double ScreenH = ScreenSize.height;

    final Orientation orientation_1 = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Practice Session',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
      centerTitle: true,
      ),
      
      body: Center(
        child: orientation_1 == Orientation.portrait? Column(
          children: [
            Text(orientation_1.toString(),style: TextStyle(fontSize: 30),),
            Container(
              height: 100,
              width: 100,
              color: Colors.grey,
              child: Text('Hello আপনার কোর্স শেষ হতে যে ৩ মাস বাকি আছে, এরপর যখন আপনি জবে ঢুকবেন, তখন দেখবেন বেশিরভাগ কোম্পানিই তাদের ব্যবসার প্রসারে আপনার মতো দক্ষ ফ্লাটার ডেভেলপার খুঁজছে。 এমনকি আপনি যদি ভবিষ্যতে কানাডার কোনো কোম্পানিতে কাজ করার সুযোগ পান, সেখানেও এই এন্টারপ্রাইজ অ্যাপগুলোর বিশাল চাহিদা রয়েছে。',style: TextStyle(fontSize: 20,color: Colors.white),
              textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
        maxLines: 3,
              ),
            ),
           RichText(text: TextSpan(
             text: 'Have you an account...?',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
             children: [
               TextSpan(
                 text: ' Sign Up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),
               )
             ]
           )),

            Text('Without MQ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            SizedBox(height: 20,),

            Container(
              height: ScreenH*0.16,
              width: ScreenW*0.3,
              color: Colors.green,
            ),


            Text('With MQ',style: TextStyle(fontSize: ScreenW*0.05,fontWeight: FontWeight.bold),),

          ],
        ) : SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Text(orientation_1.toString(),style: TextStyle(fontSize: 30),),
              Container(
                height: 100,
                width: 100,
                color: Colors.grey,
                child: Text('Hello আপনার কোর্স শেষ হতে যে ৩ মাস বাকি আছে, এরপর যখন আপনি জবে ঢুকবেন, তখন দেখবেন বেশিরভাগ কোম্পানিই তাদের ব্যবসার প্রসারে আপনার মতো দক্ষ ফ্লাটার ডেভেলপার খুঁজছে。 এমনকি আপনি যদি ভবিষ্যতে কানাডার কোনো কোম্পানিতে কাজ করার সুযোগ পান, সেখানেও এই এন্টারপ্রাইজ অ্যাপগুলোর বিশাল চাহিদা রয়েছে。',style: TextStyle(fontSize: 20,color: Colors.white),

                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
              RichText(text: TextSpan(
                  text: 'Have you an account...?',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
                  children: [
                    TextSpan(
                      text: ' Sign Up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),
                    )
                  ]
              )),

              Text('Without MQ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              SizedBox(height: 20,),

              Container(
                height: ScreenH*0.16,
                width: ScreenW*0.3,
                color: Colors.green,
              ),


              Text('With MQ',style: TextStyle(fontSize: ScreenW*0.05,fontWeight: FontWeight.bold),),

            ],
          ),
        ),
      ),

    );
  }
}
