import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar( 
        title: Text(widget.title),
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(width: 100 ,height: 100,color: Colors.red,),
          ),
          Container(width: 100,height: 100,color: Colors.blue,),
          Padding(
            padding: const EdgeInsets.only(left: 5,top: 5,bottom: 7,right: 10),
            child: Container(width: 100,height: 100,color: Colors.green,),
          ),
        ],
      ),
    );
  }
}
