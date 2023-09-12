import "HomePage.dart";
import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context)  { 
    return MaterialApp( 
      title: "Tic Tac Toe Game",
      theme: ThemeData( 
        primarySwatch: Colors.purple
      ),
      home: HomePage(),
    );
  }
}
