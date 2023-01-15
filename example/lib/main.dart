import 'package:chart_line/chart_line.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Exemple'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF07111a),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ChartLine(
              value: 50,
              backgroundColor: Colors.pink,
              label: 'Pink',
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ChartLine(
              value: 80,
              backgroundColor: Colors.blue,
              label: 'Blue',
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ChartLine(
              value: 90,
              backgroundColor: Colors.red,
              label: 'Red',
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ChartLine(
              value: 100,
              backgroundColor: Colors.orange,
              label: 'Ora',
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
