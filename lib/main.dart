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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            MaviKare(),
            SizedBox(
              height: 20,
            ),
            KirmiziKare(),
            SizedBox(
              height: 20,
            ),
            Yazi('merhaba', 20.5),
          ],
        ),
      ),
    );
  }
}

class MaviKare extends StatelessWidget {
  const MaviKare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blue,
    );
  }
}

class KirmiziKare extends StatelessWidget {
  const KirmiziKare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.red,
    );
  }
}

class Yazi extends StatelessWidget {
  final String icerik;
  final double boyut;
  const Yazi(this.icerik, this.boyut, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(icerik,style: TextStyle(fontSize: boyut),);
  }
}
