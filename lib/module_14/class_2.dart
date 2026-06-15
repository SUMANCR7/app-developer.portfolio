import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shimmer/shimmer.dart';

class Module_14_Class_2 extends StatefulWidget {
  const Module_14_Class_2({super.key});

  @override
  State<Module_14_Class_2> createState() => _Module_14_Class_2State();
}

class _Module_14_Class_2State extends State<Module_14_Class_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Container(
              //   height: 200,
              //   width: 200,
              //   color: Colors.red[100],
              // ),
              //
              // SizedBox(height: 15,),
              //

              //-----------Package---1--- ScreenUtil-----------------------------//

              // Container(
              //   height: 180.h,
              //   width: 180.w,
              //   color: Colors.green[100],
              // ),
              //
              // Text('Hello without Responsive', style: TextStyle(fontSize: 25),),
              // Text('Hello with Responsive', style: TextStyle(fontSize: 25.sp),),


              //-------------Package---2-----staggered_grid_view------------------//

          // StaggeredGrid.count(
          //   crossAxisCount: 4,
          //   mainAxisSpacing: 4,
          //   crossAxisSpacing: 4,
          //   children: [
          //     StaggeredGridTile.count(
          //       crossAxisCellCount: 2,
          //       mainAxisCellCount: 2,
          //       child: Card(
          //         child: Column(
          //           children: [
          //             Image.network('https://images.pexels.com/photos/38075655/pexels-photo-38075655.jpeg'),
          //           const Text('Image'),
          //           ],
          //         ),
          //       ),
          //     ),
          //     StaggeredGridTile.count(
          //       crossAxisCellCount: 2,
          //       mainAxisCellCount: 1,
          //       child: Card(
          //         child: Column(
          //           children: [
          //             Image.network('https://images.pexels.com/photos/38075655/pexels-photo-38075655.jpeg'),
          //             const Text('Image'),
          //           ],
          //         ),
          //       ),
          //     ),
          //     StaggeredGridTile.count(
          //       crossAxisCellCount: 1,
          //       mainAxisCellCount: 1,
          //       child: Card(
          //         child: Column(
          //           children: [
          //             Image.network('https://images.pexels.com/photos/38075655/pexels-photo-38075655.jpeg'),
          //             const Text('Image'),
          //           ],
          //         ),
          //       ),
          //     ),
          //     StaggeredGridTile.count(
          //       crossAxisCellCount: 1,
          //       mainAxisCellCount: 1,
          //       child: Card(
          //         child: Column(
          //           children: [
          //             Image.network('https://images.pexels.com/photos/38075655/pexels-photo-38075655.jpeg'),
          //             const Text('Image'),
          //           ],
          //         ),
          //       ),
          //     ),
          //     StaggeredGridTile.count(
          //       crossAxisCellCount: 4,
          //       mainAxisCellCount: 2,
          //       child: Card(
          //         child: Column(
          //           children: [
          //             Image.network('https://images.pexels.com/photos/38075655/pexels-photo-38075655.jpeg'),
          //             const Text('Image'),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),


              // Expanded(
              //   child: MasonryGridView.count(
              //     crossAxisCount: 2,
              //    itemCount: 10,
              //     itemBuilder: (context, index){
              //       return Card(
              //         child: Column(
              //           children: [
              //             Image.network('https://images.pexels.com/photos/38075655/pexels-photo-38075655.jpeg'),
              //             const Text('Image'),
              //           ],
              //         ),
              //       );
              //     },
              //   ),
              // ),

              //----------Package---3-------Shimmer-----------------//
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index){
                      return Shimmer.fromColors(

                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                        child: ListTile(
                          leading: CircleAvatar(radius: 25, backgroundColor: Colors.white,),
                          title: Container(
                            height: 16,
                            color: Colors.white,
                          ),
                          subtitle: Container(
                            height: 12,
                            width: 12,
                            color: Colors.white,
                          ),
                        ),
                      );
                    }),
              )


            ],
          ),
        ),
      ),
    );
  }
}
