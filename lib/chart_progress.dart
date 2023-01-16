import 'package:flutter/material.dart';

class ChartProgress extends StatelessWidget {
  const ChartProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircularProgressIndicator(),
    );
  }
}
