library chart_line.dart;


import 'imports.dart';

class ChartLine extends StatelessWidget {
  final String? label;
  final double? value;
  final Color? backgroundColor;
  final Color? backgroundColorLine;
  final TextStyle? textStyleLine;
  const ChartLine({
    Key? key,
    this.label,
    required this.value,
    required this.backgroundColor,
    this.textStyleLine,
    this.backgroundColorLine,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomWidget(
      backgroundColorLine: backgroundColorLine,
      label: label,
      value: value,
      backgroundColor: backgroundColor,
      textStyleLine: textStyleLine,
    );
  }
}
