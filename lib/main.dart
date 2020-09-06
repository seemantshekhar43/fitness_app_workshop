import 'package:fitness_app/components/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


// main --> MyApp() --> Material app ----> home(block)

//widget --> 1)stateful 2) stateless
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0e21),
        scaffoldBackgroundColor: Color(0xff0a0e21),
      ),
      home: HomePage()
    );
  }

}