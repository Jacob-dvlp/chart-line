
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
