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
           child:  Text(
             "This is my first flutter app",
             style: TextStyle(
               fontSize: 20.0,
               fontWeight: FontWeight.bold,
               letterSpacing: 2.0,
               color: Colors.blueGrey,
               fontFamily: 'IndieFlower',
             ),
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
 
