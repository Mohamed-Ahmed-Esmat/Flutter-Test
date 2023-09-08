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

           child: Image(
             image: AssetImage('assets/Screenshot (1).png'),
             )

       ),


       floatingActionButton: FloatingActionButton(
         onPressed: () {  },
         child: Text("Click Me"),
         backgroundColor: Colors.lightGreen[600],
       ),
     );
   }
 }
 
