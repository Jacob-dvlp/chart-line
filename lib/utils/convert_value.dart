class ConvertValue {
  static String convertString(value) {
    double x = value / 100;
    double initValue = x * 100;
    return initValue.toStringAsFixed(0);
  }
  static double convertDouble(value) {
    double x = value / 100;
    return x;
  }
}
