import '../imports.dart';

class CustomWidget extends StatelessWidget {
  final String? label;
  final double? value;
  final Color? backgroundColor;
  final Color? backgroundColorLine;
  final TextStyle? textStyleLine;
  final BorderRadiusGeometry? borderRadius;
  const CustomWidget({
    Key? key,
    required this.label,
    required this.value,
    required this.backgroundColor,
    required this.backgroundColorLine,
    required this.textStyleLine,
    required this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label!.capitalizeFirstLetter(),
          style: textStyleLine ??
              const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 12),
        ),
        const SizedBox(
          width: 05,
        ),
        Text(
          "${ConvertValue.convertString(value)}%",
          style: textStyleLine ??
              const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 12),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 10,
          margin: const EdgeInsets.only(left: 15),
          child: ClipRRect(
            borderRadius:
                borderRadius ?? const BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              backgroundColor: backgroundColorLine ?? Colors.white,
              valueColor: AlwaysStoppedAnimation<Color>(backgroundColor!),
              value: ConvertValue.convertDouble(value),
            ),
          ),
        ),
      ],
    );
  }
}
