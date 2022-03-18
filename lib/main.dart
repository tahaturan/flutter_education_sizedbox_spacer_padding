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
          Container(width: 80,height: 80,color: Colors.red,),
          SizedBox( //*normalde containerin boyutlandirmasi yapilabiliur fakat ornek olsun diye yaptik bazi wigget lari boyutlandirmak icin kullaniriz
            width: 75,
            height: 75,
            child: Container(width: 50,height: 50,color: Colors.blue,)
            ),
            const SizedBox(width: 50,height: 50,), //todo: bu sekilde de bosluk oluturmak icinde kullanabiliriz
          Container(width: 100,height: 100,color: Colors.green,),
        ],
      ),
    );
  }
}
