
# chart_line

by: [Jacob Larte](https://github.com/Jacob-dvlp/chart-line.git) 

## Current Features 
- [X] Custom graphic
- [X] transition graphic
- [X] Animation tranition

## Supported Platforms
* Flutter Android
* Flutter iOS
* Flutter web
* Flutter desktop

## Preview

## Installation

Add `chart_line: ^0.0.1` to your `pubspec.yaml` dependencies. And import it:

```dart
import 'package:chart_line/chart_line.dart';
```

## How to use
```dart
Column(  
      children: [
       ChartLine(value: 5,  backgroundColor: Colors.blue,label:'One',),
       ChartLine(value: 10, backgroundColor: Colors.blue,label:'One',),
       ChartLine(value: 55, backgroundColor: Colors.blue,label:'One',),
       ChartLine(value: 12, backgroundColor: Colors.blue,label:'One',),
       ChartLine(value: 15, backgroundColor: Colors.blue,label:'One',),
      ],
    );
  ```
  
  ## General Example
```dart
class MySlideShow extends StatelessWidget {
  const MySlideShow({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF07111a),
      appBar: AppBar(
      
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
    );
  } 


}
  ```  
## Gif

Normal Example:

![normal](https://github.com/Jacob-dvlp/chart-line/blob/master/demo.gif)

```dart
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
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ChartLine(
              backgroundColorLine: Colors.white,
              value: 15,
              backgroundColor: Colors.pink,
              label: 'Pink',
              textStyleLine: TextStyle(color: Colors.blue),
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
    );
  }
}





```
