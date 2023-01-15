import '../imports.dart';

class CustomWidget extends StatelessWidget {
  final String? label;
  final double? value;
  final Color? backgroundColor;
  final Color? backgroundColorLine;
  final TextStyle? textStyleLine;
  const CustomWidget({
    Key? key,
    required this.label,
    required this.value,
    required this.backgroundColor,
    required this.backgroundColorLine,
    this.textStyleLine,
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
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              backgroundColor: backgroundColorLine ??
                  const Color.fromARGB(255, 255, 255, 255),
              valueColor: AlwaysStoppedAnimation<Color>(backgroundColor!),
              value: ConvertValue.convertDouble(value),
            ),
          ),
        ),
      ],
    );
  }
}
