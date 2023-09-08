import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Home(),
  ));
}
 class Home extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Hello World"),
         centerTitle: true,
         backgroundColor: Colors.lightGreen[600],
       ),
       body: Center(
         child: IconButton(
           onPressed: (){
             print('You clicked');
           },
            icon: Icon(
              Icons.accessibility_sharp
            ),
         ),

       ),


       floatingActionButton: FloatingActionButton(
         onPressed: () {  },
         child: Text("Click"),
         backgroundColor: Colors.lightGreen[600],
       ),
     );
   }
 }
 
