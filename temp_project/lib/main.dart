import 'dart:html';

import 'package:flutter/material.dart';


void main() =>runApp(MyApp());
class MyApp extends StatelessWidget{
@override
Widget build(BuildContext context)  {
    return MaterialApp(
      title: 'xyz',
      theme: ThemeData.dark(),
      home: Scaffold(appBar: AppBar(
        title: Text('xyz'),
      ),
      body: HomePage(),
      )
   );
 }
}
class HomePage extends StatefulWidget{  
  @override
  State<homepage> createState()=> _HomepageState();
  
}
class _HomepageState extends State<HomePage>{ 
  @override
  State<HomePage> createState()

}