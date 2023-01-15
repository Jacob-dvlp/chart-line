extension FormatString on String {
  capitalizeFirstLetter() {
    return substring(0, 1).toUpperCase() + substring(1).toLowerCase();
  }
}
