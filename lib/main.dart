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
          children:  [
            const MaviKare(),
            const SizedBox(
              height: 20,
            ),
            const KirmiziKare(),
            const SizedBox(
              height: 20,
            ),
            const Yazi('merhaba', 20.5),
            const SizedBox(height: 20,),
            Image.asset("images/yemekresim.jpeg"),
            const UzunYazi('patates kofte', 15),
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
    return Text(
      icerik,
      style: TextStyle(fontSize: boyut),
    );
  }
}

class UzunYazi extends StatelessWidget {
  final String yazi;
  final double boyut;
  const UzunYazi(this.yazi, this.boyut, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      yazi,
      style: TextStyle(
        fontSize: boyut,
        ),
    );
  }
}
